! (old comment from when this file was a template)
! This is a template for adding a package-dependent implemetnation of
! the I/O API.  You can use the name xxx since that is already set up
! as a placeholder in module_io.F, md_calls.m4, and the Registry, or
! you can change the name here and in those other places.  For additional
! information on adding a package to WRF, see the latest version of the
! WRF Design and Implementation Document 1.1 (Draft). June 21, 2001
!
! Uses header manipulation routines in module_io_quilt.F
!

MODULE module_ext_internal

  INTEGER, PARAMETER :: int_num_handles = 99
  LOGICAL, DIMENSION(int_num_handles) :: okay_to_write, int_handle_in_use, okay_to_commit
  INTEGER, DIMENSION(int_num_handles) :: int_num_bytes_to_write
  CHARACTER*128, DIMENSION(int_num_handles) :: CurrentDateInFile
  REAL, POINTER    :: int_local_output_buffer(:)
  INTEGER          :: int_local_output_cursor

  INTEGER, PARAMETER           :: onebyte = 1
  INTEGER comm_io_servers, iserver, hdrbufsize, obufsize
  INTEGER itypesize, rtypesize, typesize
  INTEGER, DIMENSION(512)     :: hdrbuf
  INTEGER, DIMENSION(int_num_handles)       :: handle
  INTEGER, DIMENSION(512, int_num_handles)  :: open_file_descriptors

  CHARACTER*132 last_next_var 

  CONTAINS

    LOGICAL FUNCTION int_valid_handle( handle )
      IMPLICIT NONE
      INTEGER, INTENT(IN) ::  handle
      int_valid_handle = ( handle .ge. 8 .and. handle .le. int_num_handles ) 
    END FUNCTION int_valid_handle

    SUBROUTINE int_get_fresh_handle( retval )
      INTEGER i, retval
      retval = -1
! dont use first 8 handles
      DO i = 8, int_num_handles
        IF ( .NOT. int_handle_in_use(i) )  THEN
          retval = i
          GOTO 33
        ENDIF
      ENDDO
33    CONTINUE
      IF ( retval < 0 )  THEN
        CALL wrf_error_fatal("external/io_quilt/io_int.F90: int_get_fresh_handle() can not")
      ENDIF
      int_handle_in_use(i) = .TRUE.
      NULLIFY ( int_local_output_buffer )
    END SUBROUTINE int_get_fresh_handle

    !--- ioinit
    SUBROUTINE init_module_ext_internal
      IMPLICIT NONE
      CALL wrf_sizeof_integer( itypesize )
      CALL wrf_sizeof_real   ( rtypesize )
    END SUBROUTINE init_module_ext_internal

END MODULE module_ext_internal

SUBROUTINE ext_int_ioinit( Status )
  USE module_ext_internal
  IMPLICIT NONE
  INTEGER Status
  CALL init_module_ext_internal
END SUBROUTINE ext_int_ioinit

!--- open_for_write
SUBROUTINE ext_int_open_for_write( FileName , Comm_compute, Comm_io, SysDepInfo, &
                                   DataHandle , Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  CHARACTER*(*) :: FileName
  INTEGER ,       INTENT(IN)  :: Comm_compute , Comm_io
  CHARACTER*(*) :: SysDepInfo
  INTEGER ,       INTENT(OUT) :: DataHandle
  INTEGER ,       INTENT(OUT) :: Status

  CALL ext_int_open_for_write_begin( FileName , Comm_compute, Comm_io, SysDepInfo, &
                                     DataHandle , Status )
  IF ( Status .NE. 0 ) RETURN
  CALL ext_int_open_for_write_commit( DataHandle , Status )
  RETURN
END SUBROUTINE ext_int_open_for_write

!--- open_for_write_begin
SUBROUTINE ext_int_open_for_write_begin( FileName , Comm_compute, Comm_io, SysDepInfo, &
                                         DataHandle , Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  CHARACTER*(*) :: FileName
  INTEGER ,       INTENT(IN)  :: Comm_compute , Comm_io
  CHARACTER*(*) :: SysDepInfo
  INTEGER ,       INTENT(OUT) :: DataHandle
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER i, tasks_in_group, ierr, comm_io_group
  LOGICAL, EXTERNAL :: wrf_dm_on_monitor
  REAL dummy
  INTEGER io_form

  CALL int_get_fresh_handle(i)
  okay_to_write(i) = .false.
  DataHandle = i

  io_form = 100 ! dummy value
  CALL int_gen_ofwb_header( open_file_descriptors(1,i), hdrbufsize, itypesize, &
                            FileName,SysDepInfo,io_form,DataHandle )

  OPEN ( unit=DataHandle, file=TRIM(FileName), form='unformatted', iostat=Status )

  Status = 0
  RETURN  
END SUBROUTINE ext_int_open_for_write_begin

!--- open_for_write_commit
SUBROUTINE ext_int_open_for_write_commit( DataHandle , Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN ) :: DataHandle
  INTEGER ,       INTENT(OUT) :: Status
  CHARACTER*80   FileName,SysDepInfo
  REAL dummy

  IF ( int_valid_handle ( DataHandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      okay_to_write( DataHandle ) = .true.
    ENDIF
  ENDIF

  Status = 0

  RETURN  
END SUBROUTINE ext_int_open_for_write_commit

!--- open_for_read 
SUBROUTINE ext_int_open_for_read ( FileName , Comm_compute, Comm_io, SysDepInfo, &
                               DataHandle , Status )
  USE module_ext_internal
  IMPLICIT NONE
  CHARACTER*(*) :: FileName
  INTEGER ,       INTENT(IN)  :: Comm_compute , Comm_io
  CHARACTER*(*) :: SysDepInfo
  INTEGER ,       INTENT(OUT) :: DataHandle
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER i

  CALL int_get_fresh_handle(i)
  okay_to_write(i) = .false.
  DataHandle = i
  CurrentDateInFile(i) = ""

  CALL int_gen_ofr_header( open_file_descriptors(1,i), hdrbufsize, itypesize, &
                            FileName,SysDepInfo,DataHandle )

  OPEN ( unit=DataHandle, status="old", file=TRIM(FileName), form='unformatted', iostat=Status )

  RETURN  
END SUBROUTINE ext_int_open_for_read

!--- intio_nextrec  (INT_IO only)
SUBROUTINE ext_int_intio_nextrec ( DataHandle , NextRec , Status )
  USE module_ext_internal
  IMPLICIT NONE
  INTEGER , INTENT(IN)  :: DataHandle
  INTEGER               :: NextRec
  INTEGER               :: Status

  READ ( unit=DataHandle ) hdrbuf
  NextRec = hdrbuf(2)
  BACKSPACE (unit=DataHandle)

  RETURN  
END SUBROUTINE ext_int_intio_nextrec

!--- inquire_opened
SUBROUTINE ext_int_inquire_opened ( DataHandle, FileName , FileStatus, Status )
  USE module_ext_internal
  IMPLICIT NONE
  include 'wrf_io_flags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: FileName
  INTEGER ,       INTENT(OUT) :: FileStatus
  INTEGER ,       INTENT(OUT) :: Status

  Status = 0

  FileStatus = WRF_FILE_NOT_OPENED
  IF ( DataHandle .GE. 1 .AND. DataHandle .LE. int_num_handles ) THEN
    IF      ( int_handle_in_use( DataHandle ) .AND. okay_to_write( DataHandle ) ) THEN
      FileStatus = WRF_FILE_OPENED_AND_COMMITTED
    ELSE IF ( int_handle_in_use( DataHandle ) .AND. .NOT. okay_to_write( DataHandle ) ) THEN
      FileStatus = WRF_FILE_OPENED_NOT_COMMITTED
    ENDIF
  ENDIF
  Status = 0
  
  RETURN
END SUBROUTINE ext_int_inquire_opened

!--- inquire_filename
SUBROUTINE ext_int_inquire_filename ( DataHandle, FileName , FileStatus, Status )
  USE module_ext_internal
  IMPLICIT NONE
  include 'wrf_io_flags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: FileName
  INTEGER ,       INTENT(OUT) :: FileStatus
  INTEGER ,       INTENT(OUT) :: Status
  CHARACTER *80   SysDepInfo
  Status = 0
  FileStatus = WRF_FILE_NOT_OPENED
  IF ( int_valid_handle( DataHandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      CALL int_get_ofr_header( open_file_descriptors(1,DataHandle), hdrbufsize, itypesize, &
                               FileName,SysDepInfo,DataHandle )
      IF ( okay_to_write( DataHandle ) ) THEN
        FileStatus = WRF_FILE_OPENED_AND_COMMITTED
      ELSE
        FileStatus = WRF_FILE_OPENED_NOT_COMMITTED
      ENDIF
    ENDIF
  ENDIF
  Status = 0
END SUBROUTINE ext_int_inquire_filename

!--- sync
SUBROUTINE ext_int_iosync ( DataHandle, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  INTEGER ,       INTENT(OUT) :: Status

  Status = 0
  RETURN
END SUBROUTINE ext_int_iosync

!--- close
SUBROUTINE ext_int_ioclose ( DataHandle, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INTEGER DataHandle, Status

  IF ( int_valid_handle (DataHandle) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      CLOSE ( DataHandle ) 
    ENDIF
  ENDIF

  Status = 0

  RETURN
END SUBROUTINE ext_int_ioclose

!--- ioexit
SUBROUTINE ext_int_ioexit( Status )

  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER                     :: DataHandle
  INTEGER i,ierr
  REAL dummy

  RETURN  
END SUBROUTINE ext_int_ioexit

!--- get_next_time
SUBROUTINE ext_int_get_next_time ( DataHandle, DateStr, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: DateStr
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER         code
  CHARACTER*132   locElement, dummyvar
  INTEGER istat

!local
  INTEGER                        :: locDataHandle
  CHARACTER*132                  :: locDateStr
  CHARACTER*132                  :: locVarName
  integer                        :: locFieldType
  integer                        :: locComm
  integer                        :: locIOComm
  integer                        :: locDomainDesc
  character*132                  :: locMemoryOrder
  character*132                  :: locStagger
  character*132 , dimension (3)  :: locDimNames
  integer ,dimension(3)          :: locDomainStart, locDomainEnd
  integer ,dimension(3)          :: locMemoryStart, locMemoryEnd
  integer ,dimension(3)          :: locPatchStart,  locPatchEnd

  character*132 mess
  integer ii,jj,kk,myrank
  INTEGER inttypesize, realtypesize
  REAL, DIMENSION( 1 ) :: Field

  IF ( .NOT. int_valid_handle( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_get_next_time: invalid data handle" )
  ENDIF
  IF ( .NOT. int_handle_in_use( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_get_next_time: DataHandle not opened" )
  ENDIF
  inttypesize = itypesize
  realtypesize = rtypesize
  DO WHILE ( .TRUE. )
    READ( unit=DataHandle, iostat=istat ) hdrbuf   ! this is okay as long as no other record type has data that follows
!write(0,*)'+++ ',istat,hdrbuf(2)
    IF ( istat .EQ. 0 ) THEN
      code = hdrbuf(2)
      IF ( code .EQ. int_field ) THEN
        CALL int_get_write_field_header ( hdrbuf, hdrbufsize, inttypesize, typesize,           &
                                 locDataHandle , locDateStr , locVarName , Field , locFieldType , locComm , locIOComm,  &
                                 locDomainDesc , locMemoryOrder , locStagger , locDimNames ,              &
                                 locDomainStart , locDomainEnd ,                                    &
                                 locMemoryStart , locMemoryEnd ,                                    &
                                 locPatchStart , locPatchEnd )
!write(0,*)'>>> ',TRIM(locDateStr),' ',TRIM(CurrentDateInFile(DataHandle) ),' ',TRIM(locVarName)
        IF ( TRIM(locDateStr) .NE. TRIM(CurrentDateInFile(DataHandle) ) ) THEN  ! control break, return this date
          DateStr = TRIM(locDateStr)
          CurrentDateInFile(DataHandle) = TRIM(DateStr)
          BACKSPACE ( unit=DataHandle )
          Status = 0
          GOTO 7717
        ELSE
          READ( unit=DataHandle, iostat=istat )
        ENDIF
      ENDIF
    ELSE
      Status = 1
      GOTO 7717
    ENDIF
  ENDDO
7717 CONTINUE

  RETURN
END SUBROUTINE ext_int_get_next_time

!--- set_time
SUBROUTINE ext_int_set_time ( DataHandle, DateStr, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: DateStr
  INTEGER ,       INTENT(OUT) :: Status

  CALL int_gen_ti_header_char( hdrbuf, hdrbufsize, itypesize,        &
                               DataHandle, "TIMESTAMP", "", TRIM(DateStr), int_set_time )
  WRITE( unit=DataHandle ) hdrbuf
  Status = 0
  RETURN
END SUBROUTINE ext_int_set_time

!--- get_var_info
SUBROUTINE ext_int_get_var_info ( DataHandle , VarName , NDim , MemoryOrder , Stagger , &
                              DomainStart , DomainEnd , WrfType, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  integer               ,intent(in)     :: DataHandle
  character*(*)         ,intent(in)     :: VarName
  integer               ,intent(out)    :: NDim
  character*(*)         ,intent(out)    :: MemoryOrder
  character*(*)         ,intent(out)    :: Stagger
  integer ,dimension(*) ,intent(out)    :: DomainStart, DomainEnd
  integer               ,intent(out)    :: WrfType
  integer               ,intent(out)    :: Status

!local
  INTEGER                        :: locDataHandle
  CHARACTER*132                  :: locDateStr
  CHARACTER*132                  :: locVarName
  integer                        :: locFieldType
  integer                        :: locComm
  integer                        :: locIOComm
  integer                        :: locDomainDesc
  character*132                  :: locMemoryOrder
  character*132                  :: locStagger
  character*132 , dimension (3)  :: locDimNames
  integer ,dimension(3)          :: locDomainStart, locDomainEnd
  integer ,dimension(3)          :: locMemoryStart, locMemoryEnd
  integer ,dimension(3)          :: locPatchStart,  locPatchEnd

  character*132 mess
  integer ii,jj,kk,myrank
  INTEGER inttypesize, realtypesize, istat, code
  REAL, DIMENSION( 1 ) :: Field

  IF ( .NOT. int_valid_handle( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_get_var_info: invalid data handle" )
  ENDIF
  IF ( .NOT. int_handle_in_use( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_get_var_info: DataHandle not opened" )
  ENDIF
  inttypesize = itypesize
  realtypesize = rtypesize
  DO WHILE ( .TRUE. )
    READ( unit=DataHandle, iostat=istat ) hdrbuf   ! this is okay as long as no other record type has data that follows
    IF ( istat .EQ. 0 ) THEN
      code = hdrbuf(2)
      IF ( code .EQ. int_field ) THEN
        CALL int_get_write_field_header ( hdrbuf, hdrbufsize, inttypesize, typesize,           &
                                 locDataHandle , locDateStr , locVarName , Field , locFieldType , locComm , locIOComm,  &
                                 locDomainDesc , MemoryOrder , locStagger , locDimNames ,              &
                                 locDomainStart , locDomainEnd ,                                    &
                                 locMemoryStart , locMemoryEnd ,                                    &
                                 locPatchStart , locPatchEnd )
        
        IF ( LEN(TRIM(MemoryOrder)) .EQ. 3 ) THEN
          NDim = 3
        ELSE IF ( LEN(TRIM(MemoryOrder)) .EQ. 2 ) THEN
          NDim = 2
        ELSE IF ( TRIM(MemoryOrder) .EQ. '0' ) THEN
          NDim = 0
        ELSE 
          NDim = 1
        ENDIF
        Stagger = locStagger
        DomainStart(1:3) = locDomainStart(1:3)
        DomainEnd(1:3) = locDomainEnd(1:3)
        WrfType = locFieldType
        BACKSPACE ( unit=DataHandle )
        Status = 0
        GOTO 7717
      ENDIF
    ELSE
      Status = 1
      GOTO 7717
    ENDIF
  ENDDO
7717 CONTINUE

RETURN
END SUBROUTINE ext_int_get_var_info

!--- get_next_var  (not defined for IntIO)
SUBROUTINE ext_int_get_next_var ( DataHandle, VarName, Status )
  USE module_ext_internal
  IMPLICIT NONE
  include 'intio_tags.h'
  include 'wrf_status_codes.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: VarName
  INTEGER ,       INTENT(OUT) :: Status

!local
  INTEGER                        :: locDataHandle
  CHARACTER*132                  :: locDateStr
  CHARACTER*132                  :: locVarName
  integer                        :: locFieldType
  integer                        :: locComm
  integer                        :: locIOComm
  integer                        :: locDomainDesc
  character*132                  :: locMemoryOrder
  character*132                  :: locStagger
  character*132 , dimension (3)  :: locDimNames
  integer ,dimension(3)          :: locDomainStart, locDomainEnd
  integer ,dimension(3)          :: locMemoryStart, locMemoryEnd
  integer ,dimension(3)          :: locPatchStart,  locPatchEnd

character*128 locElement, strData, dumstr
integer loccode, loccount
integer idata(128)
real    rdata(128)

  character*132 mess
  integer ii,jj,kk,myrank
  INTEGER inttypesize, realtypesize, istat, code
  REAL, DIMENSION( 1 ) :: Field

  IF ( .NOT. int_valid_handle( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_get_next_var: invalid data handle" )
  ENDIF
  IF ( .NOT. int_handle_in_use( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_get_next_var: DataHandle not opened" )
  ENDIF
  inttypesize = itypesize
  realtypesize = rtypesize
  DO WHILE ( .TRUE. )
7727 CONTINUE
    READ( unit=DataHandle, iostat=istat ) hdrbuf   ! this is okay as long as no other record type has data that follows
    IF ( istat .EQ. 0 ) THEN
      code = hdrbuf(2)
      IF ( code .EQ. int_dom_ti_char ) THEN
        CALL int_get_ti_header_char( hdrbuf, hdrbufsize, itypesize, &
                                         locDataHandle, locElement, dumstr, strData, loccode )
      ENDIF
      IF ( code .EQ. int_dom_ti_integer ) THEN
        CALL int_get_ti_header( hdrbuf, hdrbufsize, itypesize, rtypesize, &
                                locDataHandle, locElement, iData, loccount, code )
      ENDIF
      IF ( code .EQ. int_dom_ti_real ) THEN
        CALL int_get_ti_header( hdrbuf, hdrbufsize, itypesize, rtypesize, &
                                locDataHandle, locElement, rData, loccount, code )
      ENDIF
      IF ( code .EQ. int_field ) THEN
        CALL int_get_write_field_header ( hdrbuf, hdrbufsize, inttypesize, typesize,           &
                                 locDataHandle , locDateStr , locVarName , Field , locFieldType , locComm , locIOComm,  &
                                 locDomainDesc , locMemoryOrder , locStagger , locDimNames ,              &
                                 locDomainStart , locDomainEnd ,                                    &
                                 locMemoryStart , locMemoryEnd ,                                    &
                                 locPatchStart , locPatchEnd )

        IF (TRIM(locDateStr) .NE. TRIM(CurrentDateInFile(DataHandle))) THEN
          Status = WRF_WARN_VAR_EOF !-6 ! signal past last var in time frame
          BACKSPACE ( unit=DataHandle )
          last_next_var = ""
          GOTO 7717
        ELSE
          VarName = TRIM(locVarName)
          IF ( last_next_var .NE. VarName ) THEN
            BACKSPACE ( unit=DataHandle )
            last_next_var = VarName
          ELSE
            READ( unit=DataHandle, iostat=istat )
            GOTO 7727
          ENDIF
          Status = 0
          GOTO 7717
        ENDIF
      ELSE
        GOTO 7727
      ENDIF
    ELSE
      Status = 1
      GOTO 7717
    ENDIF
  ENDDO
7717 CONTINUE
  RETURN
END SUBROUTINE ext_int_get_next_var

!--- get_dom_ti_real
SUBROUTINE ext_int_get_dom_ti_real ( DataHandle,Element,   Data, Count, Outcount, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  real ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Outcount
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER loccount, code, istat, locDataHandle
  CHARACTER*132                :: locElement, mess
  LOGICAL keepgoing

  IF ( int_valid_handle( DataHandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      keepgoing = .true.
      DO WHILE ( keepgoing ) 
        READ( unit=DataHandle , iostat = istat ) hdrbuf
        IF ( istat .EQ. 0 ) THEN
          code = hdrbuf(2)
          IF ( code .EQ. int_dom_ti_real ) THEN
            CALL int_get_ti_header( hdrbuf, hdrbufsize, itypesize, rtypesize, &
                                    locDataHandle, locElement, Data, loccount, code )
            IF ( TRIM(locElement) .EQ. TRIM(Element) ) THEN
              IF ( loccount .GT. Count ) THEN
                CALL wrf_error_fatal( 'io_int.F90: ext_int_get_dom_ti_real: loccount .GT. Count' )
              ENDIF
              keepgoing = .false. ;  Status = 0
            ENDIF
          ELSE IF ( .NOT. ( code .EQ. int_dom_ti_integer .OR. code .EQ. int_dom_ti_logical .OR. &
                            code .EQ. int_dom_ti_char    .OR. code .EQ. int_dom_ti_double         ) ) THEN
            BACKSPACE ( unit=DataHandle )
            keepgoing = .false. ; Status = 2
          ENDIF
        ELSE
          keepgoing = .false. ; Status = 1
        ENDIF
      ENDDO
    ENDIF
  ENDIF
RETURN
END SUBROUTINE ext_int_get_dom_ti_real 

!--- put_dom_ti_real
SUBROUTINE ext_int_put_dom_ti_real ( DataHandle,Element,   Data, Count,  Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  real ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
  REAL dummy
!

  IF ( int_valid_handle( DataHandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      CALL int_gen_ti_header( hdrbuf, hdrbufsize, itypesize, rtypesize, &
                              DataHandle, Element, Data, Count, int_dom_ti_real )
      WRITE( unit=DataHandle ) hdrbuf
    ENDIF
  ENDIF
  Status = 0
RETURN
END SUBROUTINE ext_int_put_dom_ti_real 

!--- get_dom_ti_double
SUBROUTINE ext_int_get_dom_ti_double ( DataHandle,Element,   Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  real*8 ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
  CALL wrf_message('ext_int_get_dom_ti_double not supported yet')
RETURN
END SUBROUTINE ext_int_get_dom_ti_double 

!--- put_dom_ti_double
SUBROUTINE ext_int_put_dom_ti_double ( DataHandle,Element,   Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  real*8 ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
  CALL wrf_message('ext_int_put_dom_ti_double not supported yet')
RETURN
END SUBROUTINE ext_int_put_dom_ti_double 

!--- get_dom_ti_integer
SUBROUTINE ext_int_get_dom_ti_integer ( DataHandle,Element,   Data, Count, Outcount, Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  integer ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER loccount, code, istat, locDataHandle
  CHARACTER*132   locElement, mess
  LOGICAL keepgoing

  IF ( int_valid_handle( DataHandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      keepgoing = .true.
      DO WHILE ( keepgoing )
        READ( unit=DataHandle , iostat = istat ) hdrbuf
        IF ( istat .EQ. 0 ) THEN
          code = hdrbuf(2)
          IF ( code .EQ. int_dom_ti_integer ) THEN
            CALL int_get_ti_header( hdrbuf, hdrbufsize, itypesize, rtypesize, &
                                    locDataHandle, locElement, Data, loccount, code )
            IF ( TRIM(locElement) .EQ. TRIM(Element) ) THEN
              IF ( loccount .GT. Count ) THEN
                CALL wrf_error_fatal( 'io_int.F90: ext_int_get_dom_ti_integer: loccount .GT. Count' )
              ENDIF
              keepgoing = .false. ;  Status = 0
            ENDIF
          ELSE IF ( .NOT. ( code .EQ. int_dom_ti_real .OR. code .EQ. int_dom_ti_logical .OR. &
                            code .EQ. int_dom_ti_char .OR. code .EQ. int_dom_ti_double         ) ) THEN
            BACKSPACE ( unit=DataHandle )
            keepgoing = .false. ; Status = 1
          ENDIF
        ELSE
          keepgoing = .false. ; Status = 1
        ENDIF
      ENDDO
    ENDIF
  ENDIF
RETURN
END SUBROUTINE ext_int_get_dom_ti_integer 

!--- put_dom_ti_integer
SUBROUTINE ext_int_put_dom_ti_integer ( DataHandle,Element,   Data, Count,  Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  INTEGER ,       INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
  REAL dummy
!
  IF ( int_valid_handle ( Datahandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      CALL int_gen_ti_header( hdrbuf, hdrbufsize, itypesize, itypesize, &
                              DataHandle, Element, Data, Count, int_dom_ti_integer )
      WRITE( unit=DataHandle ) hdrbuf 
    ENDIF
  ENDIF
  Status = 0
RETURN
END SUBROUTINE ext_int_put_dom_ti_integer 

!--- get_dom_ti_logical
SUBROUTINE ext_int_get_dom_ti_logical ( DataHandle,Element,   Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  logical ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
  CALL wrf_message('ext_int_get_dom_ti_logical not supported yet')
RETURN
END SUBROUTINE ext_int_get_dom_ti_logical 

!--- put_dom_ti_logical
SUBROUTINE ext_int_put_dom_ti_logical ( DataHandle,Element,   Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  logical ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
  CALL wrf_message('ext_int_put_dom_ti_logical not supported yet')
RETURN
END SUBROUTINE ext_int_put_dom_ti_logical 

!--- get_dom_ti_char
SUBROUTINE ext_int_get_dom_ti_char ( DataHandle,Element,   Data,  Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER istat, code, i
  CHARACTER*79 dumstr, locElement
  INTEGER locDataHandle
  LOGICAL keepgoing

  IF ( int_valid_handle( DataHandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      keepgoing = .true.
      DO WHILE ( keepgoing )
        READ( unit=DataHandle , iostat = istat ) hdrbuf

        IF ( istat .EQ. 0 ) THEN
          code = hdrbuf(2)
          IF ( code .EQ. int_dom_ti_char ) THEN
!            CALL blx( hdrbuf, hdrbufsize, itypesize, locDataHandle, locElement, dumstr, Data )
            CALL int_get_ti_header_char( hdrbuf, hdrbufsize, itypesize, &
                                         locDataHandle, locElement, dumstr, Data, code )
            IF ( TRIM(locElement) .EQ. TRIM(Element) ) THEN
              keepgoing = .false. ;  Status = 0
            ENDIF
          ELSE IF ( .NOT. ( code .EQ. int_dom_ti_real    .OR. code .EQ. int_dom_ti_logical .OR. &
                            code .EQ. int_dom_ti_integer .OR. code .EQ. int_dom_ti_double         ) ) THEN
            BACKSPACE ( unit=DataHandle )
            keepgoing = .false. ; Status = 1
          ENDIF
        ELSE
          keepgoing = .false. ; Status = 1
        ENDIF
      ENDDO
    ENDIF
  ENDIF
RETURN
END SUBROUTINE ext_int_get_dom_ti_char 

!--- put_dom_ti_char
SUBROUTINE ext_int_put_dom_ti_char ( DataHandle, Element,  Data,  Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER i
  REAL dummy
  INTEGER                 :: Count

  IF ( int_valid_handle ( Datahandle ) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      CALL int_gen_ti_header_char( hdrbuf, hdrbufsize, itypesize,  &
                                   DataHandle, Element, "", Data, int_dom_ti_char )
      WRITE( unit=DataHandle ) hdrbuf 
    ENDIF
  ENDIF
  Status = 0
RETURN
END SUBROUTINE ext_int_put_dom_ti_char 

!--- get_dom_td_real
SUBROUTINE ext_int_get_dom_td_real ( DataHandle,Element, DateStr,  Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  real ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_dom_td_real 

!--- put_dom_td_real
SUBROUTINE ext_int_put_dom_td_real ( DataHandle,Element, DateStr,  Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  real ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_dom_td_real 

!--- get_dom_td_double
SUBROUTINE ext_int_get_dom_td_double ( DataHandle,Element, DateStr,  Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  real*8 ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_dom_td_double 

!--- put_dom_td_double
SUBROUTINE ext_int_put_dom_td_double ( DataHandle,Element, DateStr,  Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  real*8 ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_dom_td_double 

!--- get_dom_td_integer
SUBROUTINE ext_int_get_dom_td_integer ( DataHandle,Element, DateStr,  Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  integer ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_dom_td_integer 

!--- put_dom_td_integer
SUBROUTINE ext_int_put_dom_td_integer ( DataHandle,Element, DateStr,  Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  integer ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_dom_td_integer 

!--- get_dom_td_logical
SUBROUTINE ext_int_get_dom_td_logical ( DataHandle,Element, DateStr,  Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  logical ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_dom_td_logical 

!--- put_dom_td_logical
SUBROUTINE ext_int_put_dom_td_logical ( DataHandle,Element, DateStr,  Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  logical ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_dom_td_logical 

!--- get_dom_td_char
SUBROUTINE ext_int_get_dom_td_char ( DataHandle,Element, DateStr,  Data,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_dom_td_char 

!--- put_dom_td_char
SUBROUTINE ext_int_put_dom_td_char ( DataHandle,Element, DateStr,  Data,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_dom_td_char 

!--- get_var_ti_real
SUBROUTINE ext_int_get_var_ti_real ( DataHandle,Element,  Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  real ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_ti_real 

!--- put_var_ti_real
SUBROUTINE ext_int_put_var_ti_real ( DataHandle,Element,  Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  real ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_ti_real 

!--- get_var_ti_double
SUBROUTINE ext_int_get_var_ti_double ( DataHandle,Element,  Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  real*8 ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_ti_double 

!--- put_var_ti_double
SUBROUTINE ext_int_put_var_ti_double ( DataHandle,Element,  Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  real*8 ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_ti_double 

!--- get_var_ti_integer
SUBROUTINE ext_int_get_var_ti_integer ( DataHandle,Element,  Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  integer ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_ti_integer 

!--- put_var_ti_integer
SUBROUTINE ext_int_put_var_ti_integer ( DataHandle,Element,  Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  integer ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_ti_integer 

!--- get_var_ti_logical
SUBROUTINE ext_int_get_var_ti_logical ( DataHandle,Element,  Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  logical ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_ti_logical 

!--- put_var_ti_logical
SUBROUTINE ext_int_put_var_ti_logical ( DataHandle,Element,  Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  logical ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_ti_logical 

!--- get_var_ti_char
SUBROUTINE ext_int_get_var_ti_char ( DataHandle,Element,  Varname, Data,  Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
  INTEGER locDataHandle, code
  CHARACTER*132 locElement, locVarName
  IF ( int_valid_handle (DataHandle) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      READ( unit=DataHandle ) hdrbuf
      IF ( hdrbuf(2) .EQ. int_var_ti_char ) THEN
        CALL int_get_ti_header_char( hdrbuf, hdrbufsize, itypesize, &
                                locDataHandle, locElement, locVarName, Data, code )
      ENDIF
    ENDIF
  ENDIF
  Status = 0
RETURN
END SUBROUTINE ext_int_get_var_ti_char 

!--- put_var_ti_char
SUBROUTINE ext_int_put_var_ti_char ( DataHandle,Element,  Varname, Data,  Status )
  USE module_ext_internal
  IMPLICIT NONE
  INCLUDE 'intio_tags.h'
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: VarName 
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
  REAL dummy
  INTEGER                 :: Count
  IF ( int_valid_handle (DataHandle) ) THEN
    IF ( int_handle_in_use( DataHandle ) ) THEN
      CALL int_gen_ti_header_char( hdrbuf, hdrbufsize, itypesize,  &
                              DataHandle, TRIM(Element), TRIM(VarName), TRIM(Data), int_var_ti_char )
      WRITE( unit=DataHandle ) hdrbuf
    ENDIF
  ENDIF
  Status = 0
RETURN
END SUBROUTINE ext_int_put_var_ti_char 

!--- get_var_td_real
SUBROUTINE ext_int_get_var_td_real ( DataHandle,Element,  DateStr,Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  real ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_td_real 

!--- put_var_td_real
SUBROUTINE ext_int_put_var_td_real ( DataHandle,Element,  DateStr,Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  real ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_td_real 

!--- get_var_td_double
SUBROUTINE ext_int_get_var_td_double ( DataHandle,Element,  DateStr,Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  real*8 ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_td_double 

!--- put_var_td_double
SUBROUTINE ext_int_put_var_td_double ( DataHandle,Element,  DateStr,Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  real*8 ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_td_double 

!--- get_var_td_integer
SUBROUTINE ext_int_get_var_td_integer ( DataHandle,Element,  DateStr,Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  integer ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_td_integer 

!--- put_var_td_integer
SUBROUTINE ext_int_put_var_td_integer ( DataHandle,Element,  DateStr,Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  integer ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_td_integer 

!--- get_var_td_logical
SUBROUTINE ext_int_get_var_td_logical ( DataHandle,Element,  DateStr,Varname, Data, Count, Outcount, Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  logical ,            INTENT(OUT) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT)  :: OutCount
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_td_logical 

!--- put_var_td_logical
SUBROUTINE ext_int_put_var_td_logical ( DataHandle,Element,  DateStr,Varname, Data, Count,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  logical ,            INTENT(IN) :: Data(*)
  INTEGER ,       INTENT(IN)  :: Count
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_td_logical 

!--- get_var_td_char
SUBROUTINE ext_int_get_var_td_char ( DataHandle,Element,  DateStr,Varname, Data,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_get_var_td_char 

!--- put_var_td_char
SUBROUTINE ext_int_put_var_td_char ( DataHandle,Element,  DateStr,Varname, Data,  Status )
  IMPLICIT NONE
  INTEGER ,       INTENT(IN)  :: DataHandle
  CHARACTER*(*) :: Element
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName 
  CHARACTER*(*) :: Data
  INTEGER ,       INTENT(OUT) :: Status
RETURN
END SUBROUTINE ext_int_put_var_td_char 

!--- read_field
SUBROUTINE ext_int_read_field ( DataHandle , DateStr , VarName , Field , FieldType , Comm , IOComm, &
                            DomainDesc , MemoryOrder , Stagger , DimNames ,              &
                            DomainStart , DomainEnd ,                                    &
                            MemoryStart , MemoryEnd ,                                    &
                            PatchStart , PatchEnd ,                                      &
                            Status )
  USE module_ext_internal
  IMPLICIT NONE
  include 'wrf_io_flags.h'
  include 'intio_tags.h'
  INTEGER ,       INTENT(IN)    :: DataHandle 
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName
  integer                       ,intent(inout)    :: FieldType
  integer                       ,intent(inout) :: Comm
  integer                       ,intent(inout) :: IOComm
  integer                       ,intent(inout)    :: DomainDesc
  character*(*)                 ,intent(inout)    :: MemoryOrder
  character*(*)                 ,intent(inout)    :: Stagger
  character*(*) , dimension (*) ,intent(inout)    :: DimNames
  integer ,dimension(*)         ,intent(inout)    :: DomainStart, DomainEnd
  integer ,dimension(*)         ,intent(inout)    :: MemoryStart, MemoryEnd
  integer ,dimension(*)         ,intent(inout)    :: PatchStart,  PatchEnd
  integer                       ,intent(out)   :: Status

!local
  INTEGER                        :: locDataHandle
  CHARACTER*132                  :: locDateStr
  CHARACTER*132                  :: locVarName
  integer                        :: locFieldType
  integer                        :: locComm
  integer                        :: locIOComm
  integer                        :: locDomainDesc
  character*132                  :: locMemoryOrder
  character*132                  :: locStagger
  character*132 , dimension (3)  :: locDimNames
  integer ,dimension(3)          :: locDomainStart, locDomainEnd
  integer ,dimension(3)          :: locMemoryStart, locMemoryEnd
  integer ,dimension(3)          :: locPatchStart,  locPatchEnd

  character*132 mess

  integer ii,jj,kk,myrank


!  REAL, DIMENSION( MemoryStart(1):MemoryEnd(1), &
!                   MemoryStart(2):MemoryEnd(2), &
!                   MemoryStart(3):MemoryEnd(3) ) :: Field
  REAL, DIMENSION(*)    :: Field

  INTEGER inttypesize, realtypesize, istat, code

  IF ( .NOT. int_valid_handle( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_read_field: invalid data handle" )
  ENDIF
  IF ( .NOT. int_handle_in_use( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_read_field: DataHandle not opened" )
  ENDIF

  inttypesize = itypesize
  realtypesize = rtypesize

  DO WHILE ( .TRUE. ) 
    READ( unit=DataHandle, iostat=istat ) hdrbuf   ! this is okay as long as no other record type has data that follows
    IF ( istat .EQ. 0 ) THEN
      code = hdrbuf(2)
      IF ( code .EQ. int_field ) THEN
        CALL int_get_write_field_header ( hdrbuf, hdrbufsize, inttypesize, typesize,           &
                                 locDataHandle , locDateStr , locVarName , Field , locFieldType , locComm , locIOComm,  &
                                 locDomainDesc , locMemoryOrder , locStagger , locDimNames ,              &
                                 locDomainStart , locDomainEnd ,                                    &
                                 locMemoryStart , locMemoryEnd ,                                    &
                                 locPatchStart , locPatchEnd )
        IF ( TRIM(locVarName) .EQ. TRIM(VarName) ) THEN
          IF      ( FieldType .EQ. WRF_REAL ) THEN
            CALL rfieldread( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
          ELSE IF ( FieldType .EQ. WRF_INTEGER ) THEN
            CALL ifieldread( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
          ELSE
            CALL wrf_message('io_int.F90: ext_int_read_field: types other than WRF_REAL not supported yet')
            READ( unit=DataHandle )
          ENDIF
        ELSE
          WRITE(mess,*)'ext_int_read_field: ',TRIM(locVarName),' NE ',TRIM(VarName)
          CALL wrf_message(mess)
          READ( unit=DataHandle )
        ENDIF
        Status = 0
        GOTO 7717
      ENDIF
    ELSE
      Status = 1
      GOTO 7717
    ENDIF
  ENDDO

7717 CONTINUE

  RETURN

END SUBROUTINE ext_int_read_field

!--- write_field
SUBROUTINE ext_int_write_field ( DataHandle , DateStr , VarName , Field , FieldType , Comm , IOComm,  &
                             DomainDesc , MemoryOrder , Stagger , DimNames ,              &
                             DomainStart , DomainEnd ,                                    &
                             MemoryStart , MemoryEnd ,                                    &
                             PatchStart , PatchEnd ,                                      &
                             Status )
  USE module_ext_internal
  IMPLICIT NONE
  include 'wrf_io_flags.h'
  INTEGER ,       INTENT(IN)    :: DataHandle 
  CHARACTER*(*) :: DateStr
  CHARACTER*(*) :: VarName
  integer                       ,intent(in)    :: FieldType
  integer                       ,intent(inout) :: Comm
  integer                       ,intent(inout) :: IOComm
  integer                       ,intent(in)    :: DomainDesc
  character*(*)                 ,intent(in)    :: MemoryOrder
  character*(*)                 ,intent(in)    :: Stagger
  character*(*) , dimension (*) ,intent(in)    :: DimNames
  integer ,dimension(*)         ,intent(in)    :: DomainStart, DomainEnd
  integer ,dimension(*)         ,intent(in)    :: MemoryStart, MemoryEnd
  integer ,dimension(*)         ,intent(in)    :: PatchStart,  PatchEnd
  integer                       ,intent(out)   :: Status

  integer ii,jj,kk,myrank

!  REAL, DIMENSION( MemoryStart(1):MemoryEnd(1), &
!                   MemoryStart(2):MemoryEnd(2), &
!                   MemoryStart(3):MemoryEnd(3) ) :: Field

  REAL, DIMENSION(*)    :: Field

  INTEGER inttypesize, realtypesize

  IF ( .NOT. int_valid_handle( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_write_field: invalid data handle" )
  ENDIF
  IF ( .NOT. int_handle_in_use( DataHandle ) ) THEN
    CALL wrf_error_fatal("external/io_quilt/io_int.F90: ext_int_write_field: DataHandle not opened" )
  ENDIF

  inttypesize = itypesize
  realtypesize = rtypesize
  IF      ( FieldType .EQ. WRF_REAL .OR. FieldType .EQ. WRF_DOUBLE) THEN
    typesize = rtypesize
 ! ELSE IF ( FieldType .EQ. WRF_DOUBLE ) THEN
 !   CALL wrf_error_fatal( 'io_int.F90: ext_int_write_field, WRF_DOUBLE not yet supported')
  ELSE IF ( FieldType .EQ. WRF_INTEGER ) THEN
    typesize = itypesize
  ELSE IF ( FieldType .EQ. WRF_LOGICAL ) THEN
    CALL wrf_error_fatal( 'io_int.F90: ext_int_write_field, WRF_LOGICAL not yet supported')
  ENDIF

  IF ( okay_to_write( DataHandle ) ) THEN

    CALL int_gen_write_field_header ( hdrbuf, hdrbufsize, inttypesize, typesize,           &
                             DataHandle , DateStr , VarName , Field , FieldType , Comm , IOComm,  &
                             DomainDesc , MemoryOrder , Stagger , DimNames ,              &
                             DomainStart , DomainEnd ,                                    &
                             MemoryStart , MemoryEnd ,                                    &
                             PatchStart , PatchEnd )
    WRITE( unit=DataHandle ) hdrbuf
    IF      ( FieldType .EQ. WRF_REAL ) THEN
      CALL rfieldwrite( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
    ELSE IF ( FieldType .EQ. WRF_INTEGER ) THEN
      CALL ifieldwrite( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
    ENDIF
  ENDIF
  Status = 0
  RETURN
END SUBROUTINE ext_int_write_field

SUBROUTINE rfieldwrite( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
  INTEGER ,       INTENT(IN)    :: DataHandle 
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: MemoryStart, MemoryEnd
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: PatchStart,  PatchEnd
  REAL, DIMENSION( MemoryStart(1):MemoryEnd(1), &
                   MemoryStart(2):MemoryEnd(2), &
                   MemoryStart(3):MemoryEnd(3) ) :: Field
  WRITE( unit=DataHandle ) Field(PatchStart(1):PatchEnd(1),PatchStart(2):PatchEnd(2),PatchStart(3):PatchEnd(3))
  RETURN
END SUBROUTINE rfieldwrite

SUBROUTINE ifieldwrite( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
  INTEGER ,       INTENT(IN)    :: DataHandle 
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: MemoryStart, MemoryEnd
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: PatchStart,  PatchEnd
  INTEGER, DIMENSION( MemoryStart(1):MemoryEnd(1), &
                      MemoryStart(2):MemoryEnd(2), &
                      MemoryStart(3):MemoryEnd(3) ) :: Field
  WRITE( unit=DataHandle ) Field(PatchStart(1):PatchEnd(1),PatchStart(2):PatchEnd(2),PatchStart(3):PatchEnd(3))
  RETURN
END SUBROUTINE ifieldwrite

SUBROUTINE rfieldread( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
  INTEGER ,       INTENT(IN)    :: DataHandle
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: MemoryStart, MemoryEnd
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: PatchStart,  PatchEnd
  REAL, DIMENSION( MemoryStart(1):MemoryEnd(1), &
                   MemoryStart(2):MemoryEnd(2), &
                   MemoryStart(3):MemoryEnd(3) ) :: Field
  READ( unit=DataHandle ) Field(PatchStart(1):PatchEnd(1),PatchStart(2):PatchEnd(2),PatchStart(3):PatchEnd(3))
  RETURN
END SUBROUTINE rfieldread

SUBROUTINE ifieldread( DataHandle, Field, MemoryStart, MemoryEnd, PatchStart, PatchEnd )
  INTEGER ,       INTENT(IN)    :: DataHandle
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: MemoryStart, MemoryEnd
  INTEGER ,DIMENSION(*)         ,INTENT(IN)    :: PatchStart,  PatchEnd
  INTEGER, DIMENSION( MemoryStart(1):MemoryEnd(1), &
                      MemoryStart(2):MemoryEnd(2), &
                      MemoryStart(3):MemoryEnd(3) ) :: Field
  READ( unit=DataHandle ) Field(PatchStart(1):PatchEnd(1),PatchStart(2):PatchEnd(2),PatchStart(3):PatchEnd(3))
  RETURN
END SUBROUTINE ifieldread

