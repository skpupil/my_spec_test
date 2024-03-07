!WRF:DRIVER_LAYER:INTEGRATION
!

MODULE module_integrate

CONTAINS

RECURSIVE SUBROUTINE integrate ( grid )



   USE module_domain
   USE module_driver_constants
   USE module_nesting
   USE module_configure
   USE module_timing
   USE esmf_mod

   IMPLICIT NONE

   !  Input data.

   TYPE(domain) , POINTER :: grid

! module_integrate:integrate
! <DESCRIPTION> 
! This is a driver-level routine that controls the integration of a
! domain and subdomains rooted at the domain. 
! 
! The integrate routine takes a domain pointed to by the argument
! <em>grid</em> and advances the domain and its associated nests from the
! grid's current time, stored as grid%current_time, to a given time
! forward in the simulation, stored as grid%stop_subtime. The
! stop_subtime value is arbitrary and does not have to be the same as
! time that the domain finished integrating.  The simulation stop time
! for the grid is known to the grid's clock (grid%domain_clock) and that
! is checked with a call to ESMF_ClockIsStopTime prior to beginning the
! loop over time period that is specified by the
! current_time/stop_subtime interval.
! 
! The clock, the simulation stop time for the domain, and other timing
! aspects for the grid are set up in the routine
! (<a href="setup_timekeeping.html">setup_timekeeping</a>) at the time
! that the domain is initialized.
! The lower-level time library and the type declarations for the times
! and time intervals used are defined in external/esmf_time_f90.  Note
! that arithmetic and comparison is performed on these data types using
! F90 operator overloading, also defined in that library.
! 
! This routine is the lowest level of the WRF Driver Layer and for the most
! part the WRF routines that are called from here are in the topmost level
! of the Mediation Layer.  Mediation layer routines typically are not 
! defined in modules. Therefore, the routines that this routine calls
! have explicit interfaces specified in an interface block in this routine.
!
! As part of the Driver Layer, this routine is intended to be non model-specific
! and so a minimum of WRF-specific logic is coded at this level. Rather, there
! are a number of calls to mediation layer routines that contain this logic, some
! of which are merely stubs in WRF Mediation Layer that sits below this routine
! in the call tree.  The routines that integrate calls in WRF are defined in
! share/mediation_integrate.F.
! 
! Flow of control
! 
! 1. Check to see that the domain is not finished 
! by testing the value returned by ESMF_ClockIsStopTime for the
! domain.
! 
! 2. <a href=model_to_grid_config_rec.html>Model_to_grid_config_rec</a> is called to load the local config_flags
! structure with the configuration information for the grid stored
! in model_config_rec and indexed by the grid's unique integer id. These
! structures are defined in frame/module_configure.F.
! 
! 3. The current time of the domain is retrieved from the domain's clock
! using ESMF_ClockGetCurrTime.  There is another call to ESMF_ClockGetCurrTime
! inside the WHILE loop that follows.
! 
! 4. Iterate forward while the current time is less than the stop subtime.
! 
! 4.a. Start timing for this iteration (only on node zero in distributed-memory runs)
! 
! 4.b. Call <a href=med_setup_step.html>med_setup_step</a> to allow the mediation layer to 
! do anything that's needed to call the solver for this domain.  In WRF this means setting
! the indices into the 4D tracer arrays for the domain.
! 
! 4.c. Check for any nests that need to be started up at this time.  This is done 
! calling the logical function <a href=nests_to_open.html>nests_to_open</a> (defined in 
! frame/module_nesting.F) which returns true and the index into the current domain's list
! of children to use for the nest when one needs to be started.
! 
! 4.c.1  Call <a href=alloc_and_configure_domain.html>alloc_and_configure_domain</a> to allocate
! the new nest and link it as a child of this grid.
! 
! 4.c.2  Call <a href=setup_Timekeeping.html>setup_Timekeeping</a> for the nest.
! 
! 4.c.3  Initialize the nest's arrays by calling <a href=med_nest_initial.html>med_nest_initial</a>. This will
! either interpolate data from this grid onto the nest, read it in from a file, or both. In a restart run, this
! is also where the nest reads in its restart file.
! 
! 4.d  If a nest was opened above, check for and resolve overlaps (this is not implemented in WRF 2.0, which
! supports multiple nests on the same level but does not support overlapping).
! 
! 4.e  Give the mediation layer an opportunity to do something before the solver is called by
! calling <a href=med_before_solve_io.html>med_before_solve_io</a>. In WRF this is the point at which history and
! restart data is output.
! 
! 4.f  Call <a href=solve_interface.html>solve_interface</a> which calls the solver that advance the domain 
! one time step, then advance the domain's clock by calling ESMF_ClockAdvance.  Upon advancing the clock,
! the current time for the grid is updated by calling ESMF_ClockGetCurrTime. The enclosing WHILE loop around
! this section is for handling other domains with which this domain may overlap.  It is not active in WRF 2.0 and
! only executes one trip.  
! 
! 4.g Call med_calc_model_time and med_after_solve_io, which are stubs in WRF.
! 
! 4.h Iterate over the children of this domain (<tt>DO kid = 1, max_nests</tt>) and check each child pointer to see
! if it is associated (and therefore, active).
! 
! 4.h.1  Force the nested domain boundaries from this domain by calling <a href=med_nest_force.html>med_nest_force</a>.
! 
! 4.h.2  Setup the time period over which the nest is to run. Sine the current grid has been advanced one time step
! and the nest has not, the start for the nest is this grid's current time minus one time step.  The nest's stop_subtime
! is the current time, bringing the nest up the same time level as this grid, its parent.
! 
! 4.h.3  Recursively call this routine, integrate, to advance the nest's time.  Since it is recursive, this will
! also advance all the domains who are nests of this nest and so on.  In other words, when this call returns, all
! the domains rooted at the nest will be at the current time.
! 
! 4.h.4  Feedback data from the nested domain back onto this domain by calling <a href=med_nest_feedback.html>med_nest_feedback</a>.
! 
! 4.i  Write the time to compute this grid and its subtree. This marks the end of the loop begun at step 4, above.
! 
! 5. Give the mediation layer an opportunity to do I/O at the end of the sequence of steps that brought the
! grid up to stop_subtime with a call to <a href=med_last_solve_io.html>med_last_solve_io</a>.  In WRF, this 
! is used to generate the final history and/or restart output when the domain reaches the end of it's integration.
! There is logic here to make sure this occurs correctly on a nest, since the nest may finish before its parent.
! </DESCRIPTION>

   !  Local data.

   CHARACTER*32                           :: outname, rstname
   TYPE(domain) , POINTER                 :: grid_ptr , new_nest
   TYPE(domain)                           :: intermediate_grid
   INTEGER                                :: step
   INTEGER                                :: nestid , kid
   LOGICAL                                :: a_nest_was_opened
   INTEGER                                :: fid , rid
   LOGICAL                                :: lbc_opened
   REAL                                   :: time, btime, bfrq
   CHARACTER*256                          :: message, message2
   TYPE (grid_config_rec_type)            :: config_flags
   LOGICAL , EXTERNAL                     :: wrf_dm_on_monitor
   INTEGER                                :: idum1 , idum2 , ierr , open_status
   INTEGER                                :: rc

   ! interface
   INTERFACE
       ! mediation-supplied solver
     SUBROUTINE solve_interface ( grid )
       USE module_domain
       TYPE (domain) grid
     END SUBROUTINE solve_interface
       ! mediation-supplied routine to allow driver to pass time information
       ! down to mediation/model layer
     SUBROUTINE med_calc_model_time ( grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain) grid
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_calc_model_time
       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! perform I/O before the call ot the solve routine
     SUBROUTINE med_before_solve_io ( grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain) grid
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_before_solve_io
       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! perform I/O after the call ot the solve routine
     SUBROUTINE med_after_solve_io ( grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain) grid
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_after_solve_io
       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! perform I/O to initialize a new nest
     SUBROUTINE med_nest_initial ( parent , grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain), POINTER ::  grid , parent
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_nest_initial

       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! provide parent->nest forcing
     SUBROUTINE med_nest_force ( parent , grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain), POINTER ::  grid , parent
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_nest_force

     SUBROUTINE med_nest_move ( parent , grid , move_x, move_y, config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain), POINTER ::  grid , parent
       INTEGER move_x, move_y
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_nest_move

       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! provide parent->nest feedback
     SUBROUTINE med_nest_feedback ( parent , grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain), POINTER ::  grid , parent
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_nest_feedback

       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! perform I/O prior to the close of this call to integrate
     SUBROUTINE med_last_solve_io ( grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain) grid
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_last_solve_io
       ! mediation-supplied routine that gives mediation layer opportunity to 
       ! perform setup before iteration over steps in this call to integrate
     SUBROUTINE med_setup_step ( grid , config_flags )
       USE module_domain
       USE module_configure
       TYPE (domain) grid
       TYPE (grid_config_rec_type) config_flags
     END SUBROUTINE med_setup_step
       ! mediation-supplied routine that intializes the nest from the grid
       ! by interpolation

     SUBROUTINE Setup_Timekeeping( grid )
       USE module_domain
       TYPE(domain), POINTER :: grid
     END SUBROUTINE

   END INTERFACE

   IF ( .NOT. ESMF_ClockIsStopTime(grid%domain_clock ,rc=rc) ) THEN
      CALL model_to_grid_config_rec ( grid%id , model_config_rec , config_flags )
      CALL ESMF_ClockGetCurrTime( grid%domain_clock, grid%current_time, rc=rc )
      DO WHILE ( grid%current_time .LT. grid%stop_subtime )
         IF ( wrf_dm_on_monitor() ) THEN
           CALL start_timing
         END IF
         CALL med_setup_step ( grid , config_flags )
         a_nest_was_opened = .false.
         DO WHILE ( nests_to_open( grid , nestid , kid ) )
            a_nest_was_opened = .true.
            CALL alloc_and_configure_domain ( domain_id  = nestid ,                          &
                                              grid       = new_nest ,                        &
                                              parent     = grid ,                            &
                                              kid        = kid                               )
            CALL Setup_Timekeeping (new_nest)
            CALL med_nest_initial ( grid , new_nest , config_flags )
         END DO
         IF ( a_nest_was_opened ) THEN
            CALL set_overlaps ( grid )   ! find overlapping and set pointers
         END IF
         CALL med_before_solve_io ( grid , config_flags )
         grid_ptr => grid
         DO WHILE ( ASSOCIATED( grid_ptr ) )
            CALL wrf_debug( 100 , 'module_integrate: calling solve interface ' )
            CALL solve_interface ( grid_ptr ) 
            CALL ESMF_ClockAdvance( grid_ptr%domain_clock, rc=rc )
            CALL ESMF_ClockGetCurrTime( grid_ptr%domain_clock, grid_ptr%current_time, rc=rc )
            CALL wrf_debug( 100 , 'module_integrate: back from solve interface ' )
            grid_ptr => grid_ptr%sibling
         END DO
         CALL med_calc_model_time ( grid , config_flags )
         CALL med_after_solve_io ( grid , config_flags )
         grid_ptr => grid
         DO WHILE ( ASSOCIATED( grid_ptr ) )
            DO kid = 1, max_nests
              IF ( ASSOCIATED( grid_ptr%nests(kid)%ptr ) ) THEN
                ! Recursive -- advance nests from previous time level to this time level.
                CALL wrf_debug( 100 , 'module_integrate: calling med_nest_force ' )

!                CALL med_nest_move ( grid_ptr , grid_ptr%nests(kid)%ptr , 1, 1, config_flags )

                CALL med_nest_force ( grid_ptr , grid_ptr%nests(kid)%ptr , config_flags )
                CALL wrf_debug( 100 , 'module_integrate: back from med_nest_force ' )
                grid_ptr%nests(kid)%ptr%start_subtime = grid%current_time - grid%step_time
                grid_ptr%nests(kid)%ptr%stop_subtime = grid%current_time
                CALL integrate ( grid_ptr%nests(kid)%ptr ) 
                CALL wrf_debug( 100 , 'module_integrate: back from recursive call to integrate ' )
                CALL wrf_debug( 100 , 'module_integrate: calling med_nest_feedback ' )
                CALL med_nest_feedback ( grid_ptr , grid_ptr%nests(kid)%ptr , config_flags )
                CALL wrf_debug( 100 , 'module_integrate: back from med_nest_feedback ' )
              END IF
            END DO
            grid_ptr => grid_ptr%sibling
         END DO
         !  Report on the timing for a single time step.
         IF ( wrf_dm_on_monitor() ) THEN
           CALL ESMF_TimeGetString( grid%current_time, message2, rc=rc )
         !  WRITE ( message , FMT = '("main: time ",A," on domain ",I3)' ) TRIM(message2), grid%id
           WRITE ( 6, FMT = '("main: time ",A," em_t_2",F16.8)' ) TRIM(message2), grid%em_t_2(24,10,20)
           CALL end_timing ( TRIM(message) )
         END IF
      END DO
      ! Avoid double writes on nests if this is not really the last time;
      ! Do check for write if the parent domain is ending.
      IF ( grid%id .EQ. 1 ) THEN               ! head_grid
        CALL med_last_solve_io ( grid , config_flags )
      ELSE
        IF ( ESMF_ClockIsStopTime(grid%domain_clock , rc=rc) .OR. &
             ESMF_ClockIsStopTime(grid%parents(1)%ptr%domain_clock , rc=rc ) ) THEN
           CALL med_last_solve_io ( grid , config_flags )
        ENDIF
      ENDIF
   END IF

END SUBROUTINE integrate

END MODULE module_integrate
