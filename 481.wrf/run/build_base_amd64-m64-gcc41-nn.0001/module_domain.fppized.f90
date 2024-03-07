!WRF:DRIVER_LAYER:DOMAIN_OBJECT
!
!  Following are the routines contained within this MODULE:

!  alloc_space_domain                1. Allocate the space for a single domain (constants
!                                       and null terminate pointers).
!                                    2. Connect the domains as a linked list.
!                                    3. Store all of the domain constants.
!                                    4. CALL alloc_space_field.

!  alloc_space_field                 1. Allocate space for the gridded data required for
!                                       each domain.

!  dealloc_space_domain              1. Reconnect linked list nodes since the current
!                                       node is removed.
!                                    2. CALL dealloc_space_field.
!                                    3. Deallocate single domain.

!  dealloc_space_field               1. Deallocate each of the fields for a particular
!                                       domain.

!  first_loc_integer                 1. Find the first incidence of a particular
!                                       domain identifier from an array of domain
!                                       identifiers.

MODULE module_domain

   USE module_driver_constants
   USE module_machine
   USE module_state_description
   USE module_wrf_error
   USE esmf_mod

   CHARACTER (LEN=80) program_name

   !  An entire domain.  This contains multiple meteorological fields by having
   !  arrays (such as "data_3d") of pointers for each field.  Also inside each
   !  domain is a link to a couple of other domains, one is just the "next"
   !  domain that is to be stored, the other is the next domain which happens to
   !  also be on the "same_level".

   TYPE domain_ptr
      TYPE(domain), POINTER :: ptr
   END TYPE domain_ptr

   INTEGER, PARAMETER :: HISTORY_ALARM=1, AUXHIST1_ALARM=2, AUXHIST2_ALARM=3,     &
                         AUXHIST3_ALARM=4, AUXHIST4_ALARM=5, AUXHIST5_ALARM=6,    &
                         AUXINPUT1_ALARM=7, AUXINPUT2_ALARM=8, AUXINPUT3_ALARM=9, &
                         AUXINPUT4_ALARM=10, AUXINPUT5_ALARM=11,                  &
                         RESTART_ALARM=12, BOUNDARY_ALARM=13, INPUTOUT_ALARM=14,  &  ! for outputing input (e.g. for 3dvar)
                         ALARM_SUBTIME=15

   TYPE domain

! SEE THE INCLUDE FILE FOR DEFINITIONS OF STATE FIELDS WITHIN THE DOMAIN DATA STRUCTURE
!STARTOFREGISTRYGENERATEDINCLUDE 'inc/state_struct.inc'
!
! WARNING This file is generated automatically by use_registry
! using the data base in the file named Registry.
! Do not edit.  Your changes to this file will be lost.
!
real                                     :: cfn
real                                     :: cfn1
real                                     :: epsts
integer                                  :: step_number
real                                     :: rdx
real                                     :: rdy
real                                     :: dts
real                                     :: dtseps
real                                     :: resm
real                                     :: zetatop
real                                     :: cf1
real                                     :: cf2
real                                     :: cf3
integer                                  :: number_at_same_level
integer                                  :: itimestep
integer                                  :: oid
integer                                  :: auxhist1_oid
integer                                  :: auxhist2_oid
integer                                  :: auxhist3_oid
integer                                  :: auxhist4_oid
integer                                  :: auxhist5_oid
integer                                  :: auxinput1_oid
integer                                  :: auxinput2_oid
integer                                  :: auxinput3_oid
integer                                  :: auxinput4_oid
integer                                  :: auxinput5_oid
integer                                  :: nframes
integer                                  :: lbc_fid
logical                                  :: tiled
logical                                  :: patched
logical                                  :: write_metadata
real                                     :: dtbc
integer                                  :: ifndsnowh
integer                                  :: ifndsoilw
real                                     :: u_frame
real                                     :: v_frame
real                                     :: p_top
integer                                  :: stepcu
integer                                  :: stepra
integer                                  :: stepbl
logical                                  :: warm_rain
integer                                  :: run_days
integer                                  :: run_hours
integer                                  :: run_minutes
integer                                  :: run_seconds
integer                                  :: start_year
integer                                  :: start_month
integer                                  :: start_day
integer                                  :: start_hour
integer                                  :: start_minute
integer                                  :: start_second
integer                                  :: end_year
integer                                  :: end_month
integer                                  :: end_day
integer                                  :: end_hour
integer                                  :: end_minute
integer                                  :: end_second
integer                                  :: interval_seconds
logical                                  :: input_from_file
integer                                  :: history_interval
integer                                  :: frames_per_outfile
logical                                  :: restart
integer                                  :: restart_interval
integer                                  :: io_form_input
integer                                  :: io_form_history
integer                                  :: io_form_restart
integer                                  :: io_form_boundary
integer                                  :: debug_level
character*256                               :: history_outname
character*256                               :: auxhist1_outname
character*256                               :: auxhist2_outname
character*256                               :: auxhist3_outname
character*256                               :: auxhist4_outname
character*256                               :: auxhist5_outname
character*256                               :: history_inname
character*256                               :: auxhist1_inname
character*256                               :: auxhist2_inname
character*256                               :: auxhist3_inname
character*256                               :: auxhist4_inname
character*256                               :: auxhist5_inname
integer                                  :: history_interval_mo
integer                                  :: history_interval_d
integer                                  :: history_interval_h
integer                                  :: history_interval_m
integer                                  :: history_interval_s
integer                                  :: inputout_interval_mo
integer                                  :: inputout_interval_d
integer                                  :: inputout_interval_h
integer                                  :: inputout_interval_m
integer                                  :: inputout_interval_s
integer                                  :: inputout_interval
integer                                  :: auxhist1_interval_mo
integer                                  :: auxhist1_interval_d
integer                                  :: auxhist1_interval_h
integer                                  :: auxhist1_interval_m
integer                                  :: auxhist1_interval_s
integer                                  :: auxhist1_interval
integer                                  :: auxhist2_interval_mo
integer                                  :: auxhist2_interval_d
integer                                  :: auxhist2_interval_h
integer                                  :: auxhist2_interval_m
integer                                  :: auxhist2_interval_s
integer                                  :: auxhist2_interval
integer                                  :: auxhist3_interval_mo
integer                                  :: auxhist3_interval_d
integer                                  :: auxhist3_interval_h
integer                                  :: auxhist3_interval_m
integer                                  :: auxhist3_interval_s
integer                                  :: auxhist3_interval
integer                                  :: auxhist4_interval_mo
integer                                  :: auxhist4_interval_d
integer                                  :: auxhist4_interval_h
integer                                  :: auxhist4_interval_m
integer                                  :: auxhist4_interval_s
integer                                  :: auxhist4_interval
integer                                  :: auxhist5_interval_mo
integer                                  :: auxhist5_interval_d
integer                                  :: auxhist5_interval_h
integer                                  :: auxhist5_interval_m
integer                                  :: auxhist5_interval_s
integer                                  :: auxhist5_interval
integer                                  :: auxinput1_interval_mo
integer                                  :: auxinput1_interval_d
integer                                  :: auxinput1_interval_h
integer                                  :: auxinput1_interval_m
integer                                  :: auxinput1_interval_s
integer                                  :: auxinput1_interval
integer                                  :: auxinput2_interval_mo
integer                                  :: auxinput2_interval_d
integer                                  :: auxinput2_interval_h
integer                                  :: auxinput2_interval_m
integer                                  :: auxinput2_interval_s
integer                                  :: auxinput2_interval
integer                                  :: auxinput3_interval_mo
integer                                  :: auxinput3_interval_d
integer                                  :: auxinput3_interval_h
integer                                  :: auxinput3_interval_m
integer                                  :: auxinput3_interval_s
integer                                  :: auxinput3_interval
integer                                  :: auxinput4_interval_mo
integer                                  :: auxinput4_interval_d
integer                                  :: auxinput4_interval_h
integer                                  :: auxinput4_interval_m
integer                                  :: auxinput4_interval_s
integer                                  :: auxinput4_interval
integer                                  :: auxinput5_interval_mo
integer                                  :: auxinput5_interval_d
integer                                  :: auxinput5_interval_h
integer                                  :: auxinput5_interval_m
integer                                  :: auxinput5_interval_s
integer                                  :: auxinput5_interval
integer                                  :: restart_interval_mo
integer                                  :: restart_interval_d
integer                                  :: restart_interval_h
integer                                  :: restart_interval_m
integer                                  :: restart_interval_s
integer                                  :: history_begin_y
integer                                  :: history_begin_mo
integer                                  :: history_begin_d
integer                                  :: history_begin_h
integer                                  :: history_begin_m
integer                                  :: history_begin_s
integer                                  :: inputout_begin_y
integer                                  :: inputout_begin_mo
integer                                  :: inputout_begin_d
integer                                  :: inputout_begin_h
integer                                  :: inputout_begin_m
integer                                  :: inputout_begin_s
integer                                  :: auxhist1_begin_y
integer                                  :: auxhist1_begin_mo
integer                                  :: auxhist1_begin_d
integer                                  :: auxhist1_begin_h
integer                                  :: auxhist1_begin_m
integer                                  :: auxhist1_begin_s
integer                                  :: auxhist2_begin_y
integer                                  :: auxhist2_begin_mo
integer                                  :: auxhist2_begin_d
integer                                  :: auxhist2_begin_h
integer                                  :: auxhist2_begin_m
integer                                  :: auxhist2_begin_s
integer                                  :: auxhist3_begin_y
integer                                  :: auxhist3_begin_mo
integer                                  :: auxhist3_begin_d
integer                                  :: auxhist3_begin_h
integer                                  :: auxhist3_begin_m
integer                                  :: auxhist3_begin_s
integer                                  :: auxhist4_begin_y
integer                                  :: auxhist4_begin_mo
integer                                  :: auxhist4_begin_d
integer                                  :: auxhist4_begin_h
integer                                  :: auxhist4_begin_m
integer                                  :: auxhist4_begin_s
integer                                  :: auxhist5_begin_y
integer                                  :: auxhist5_begin_mo
integer                                  :: auxhist5_begin_d
integer                                  :: auxhist5_begin_h
integer                                  :: auxhist5_begin_m
integer                                  :: auxhist5_begin_s
integer                                  :: auxinput1_begin_y
integer                                  :: auxinput1_begin_mo
integer                                  :: auxinput1_begin_d
integer                                  :: auxinput1_begin_h
integer                                  :: auxinput1_begin_m
integer                                  :: auxinput1_begin_s
integer                                  :: auxinput2_begin_y
integer                                  :: auxinput2_begin_mo
integer                                  :: auxinput2_begin_d
integer                                  :: auxinput2_begin_h
integer                                  :: auxinput2_begin_m
integer                                  :: auxinput2_begin_s
integer                                  :: auxinput3_begin_y
integer                                  :: auxinput3_begin_mo
integer                                  :: auxinput3_begin_d
integer                                  :: auxinput3_begin_h
integer                                  :: auxinput3_begin_m
integer                                  :: auxinput3_begin_s
integer                                  :: auxinput4_begin_y
integer                                  :: auxinput4_begin_mo
integer                                  :: auxinput4_begin_d
integer                                  :: auxinput4_begin_h
integer                                  :: auxinput4_begin_m
integer                                  :: auxinput4_begin_s
integer                                  :: auxinput5_begin_y
integer                                  :: auxinput5_begin_mo
integer                                  :: auxinput5_begin_d
integer                                  :: auxinput5_begin_h
integer                                  :: auxinput5_begin_m
integer                                  :: auxinput5_begin_s
integer                                  :: restart_begin_y
integer                                  :: restart_begin_mo
integer                                  :: restart_begin_d
integer                                  :: restart_begin_h
integer                                  :: restart_begin_m
integer                                  :: restart_begin_s
integer                                  :: history_end_y
integer                                  :: history_end_mo
integer                                  :: history_end_d
integer                                  :: history_end_h
integer                                  :: history_end_m
integer                                  :: history_end_s
integer                                  :: inputout_end_y
integer                                  :: inputout_end_mo
integer                                  :: inputout_end_d
integer                                  :: inputout_end_h
integer                                  :: inputout_end_m
integer                                  :: inputout_end_s
integer                                  :: auxhist1_end_y
integer                                  :: auxhist1_end_mo
integer                                  :: auxhist1_end_d
integer                                  :: auxhist1_end_h
integer                                  :: auxhist1_end_m
integer                                  :: auxhist1_end_s
integer                                  :: auxhist2_end_y
integer                                  :: auxhist2_end_mo
integer                                  :: auxhist2_end_d
integer                                  :: auxhist2_end_h
integer                                  :: auxhist2_end_m
integer                                  :: auxhist2_end_s
integer                                  :: auxhist3_end_y
integer                                  :: auxhist3_end_mo
integer                                  :: auxhist3_end_d
integer                                  :: auxhist3_end_h
integer                                  :: auxhist3_end_m
integer                                  :: auxhist3_end_s
integer                                  :: auxhist4_end_y
integer                                  :: auxhist4_end_mo
integer                                  :: auxhist4_end_d
integer                                  :: auxhist4_end_h
integer                                  :: auxhist4_end_m
integer                                  :: auxhist4_end_s
integer                                  :: auxhist5_end_y
integer                                  :: auxhist5_end_mo
integer                                  :: auxhist5_end_d
integer                                  :: auxhist5_end_h
integer                                  :: auxhist5_end_m
integer                                  :: auxhist5_end_s
integer                                  :: auxinput1_end_y
integer                                  :: auxinput1_end_mo
integer                                  :: auxinput1_end_d
integer                                  :: auxinput1_end_h
integer                                  :: auxinput1_end_m
integer                                  :: auxinput1_end_s
integer                                  :: auxinput2_end_y
integer                                  :: auxinput2_end_mo
integer                                  :: auxinput2_end_d
integer                                  :: auxinput2_end_h
integer                                  :: auxinput2_end_m
integer                                  :: auxinput2_end_s
integer                                  :: auxinput3_end_y
integer                                  :: auxinput3_end_mo
integer                                  :: auxinput3_end_d
integer                                  :: auxinput3_end_h
integer                                  :: auxinput3_end_m
integer                                  :: auxinput3_end_s
integer                                  :: auxinput4_end_y
integer                                  :: auxinput4_end_mo
integer                                  :: auxinput4_end_d
integer                                  :: auxinput4_end_h
integer                                  :: auxinput4_end_m
integer                                  :: auxinput4_end_s
integer                                  :: auxinput5_end_y
integer                                  :: auxinput5_end_mo
integer                                  :: auxinput5_end_d
integer                                  :: auxinput5_end_h
integer                                  :: auxinput5_end_m
integer                                  :: auxinput5_end_s
integer                                  :: io_form_auxinput1
integer                                  :: io_form_auxinput2
integer                                  :: io_form_auxinput3
integer                                  :: io_form_auxinput4
integer                                  :: io_form_auxinput5
integer                                  :: io_form_auxhist1
integer                                  :: io_form_auxhist2
integer                                  :: io_form_auxhist3
integer                                  :: io_form_auxhist4
integer                                  :: io_form_auxhist5
integer                                  :: julyr
integer                                  :: julday
real                                     :: gmt
character*256                               :: input_inname
character*256                               :: input_outname
character*256                               :: bdy_inname
character*256                               :: bdy_outname
character*256                               :: rst_inname
character*256                               :: rst_outname
logical                                  :: write_input
logical                                  :: write_restart_at_0h
integer                                  :: time_step
integer                                  :: time_step_fract_num
integer                                  :: time_step_fract_den
integer                                  :: max_dom
integer                                  :: s_we
integer                                  :: e_we
integer                                  :: s_sn
integer                                  :: e_sn
integer                                  :: s_vert
integer                                  :: e_vert
real                                     :: dx
real                                     :: dy
integer                                  :: grid_id
integer                                  :: parent_id
integer                                  :: level
integer                                  :: i_parent_start
integer                                  :: j_parent_start
integer                                  :: parent_grid_ratio
integer                                  :: parent_time_step_ratio
integer                                  :: feedback
integer                                  :: smooth_option
real                                     :: ztop
integer                                  :: moad_grid_ratio
integer                                  :: moad_time_step_ratio
integer                                  :: shw
integer                                  :: tile_sz_x
integer                                  :: tile_sz_y
integer                                  :: numtiles
integer                                  :: nproc_x
integer                                  :: nproc_y
integer                                  :: irand
real                                     :: dt
integer                                  :: mp_physics
integer                                  :: ra_lw_physics
integer                                  :: ra_sw_physics
real                                     :: radt
integer                                  :: sf_sfclay_physics
integer                                  :: sf_surface_physics
integer                                  :: bl_pbl_physics
real                                     :: bldt
integer                                  :: cu_physics
real                                     :: cudt
real                                     :: gsmdt
integer                                  :: isfflx
integer                                  :: ifsnow
integer                                  :: icloud
integer                                  :: surface_input_source
integer                                  :: num_soil_layers
integer                                  :: maxiens
integer                                  :: maxens
integer                                  :: maxens2
integer                                  :: maxens3
integer                                  :: ensdim
integer                                  :: chem_opt
integer                                  :: num_land_cat
integer                                  :: num_soil_cat
integer                                  :: dyn_opt
integer                                  :: rk_ord
integer                                  :: w_damping
integer                                  :: diff_opt
integer                                  :: km_opt
integer                                  :: damp_opt
real                                     :: zdamp
real                                     :: dampcoef
real                                     :: khdif
real                                     :: kvdif
real                                     :: smdiv
real                                     :: emdiv
real                                     :: epssm
logical                                  :: non_hydrostatic
integer                                  :: time_step_sound
integer                                  :: h_mom_adv_order
integer                                  :: v_mom_adv_order
integer                                  :: h_sca_adv_order
integer                                  :: v_sca_adv_order
logical                                  :: top_radiation
real                                     :: mix_cr_len
real                                     :: tke_upper_bound
real                                     :: kh_tke_upper_bound
real                                     :: kv_tke_upper_bound
real                                     :: tke_drag_coefficient
real                                     :: tke_heat_flux
logical                                  :: pert_coriolis
integer                                  :: spec_bdy_width
integer                                  :: spec_zone
integer                                  :: relax_zone
logical                                  :: specified
logical                                  :: periodic_x
logical                                  :: symmetric_xs
logical                                  :: symmetric_xe
logical                                  :: open_xs
logical                                  :: open_xe
logical                                  :: periodic_y
logical                                  :: symmetric_ys
logical                                  :: symmetric_ye
logical                                  :: open_ys
logical                                  :: open_ye
logical                                  :: nested
integer                                  :: real_data_init_type
real                                     :: cen_lat
real                                     :: cen_lon
real                                     :: truelat1
real                                     :: truelat2
real                                     :: moad_cen_lat
real                                     :: stand_lon
real                                     :: bdyfrq
integer                                  :: iswater
integer                                  :: isice
integer                                  :: isurban
integer                                  :: isoilwater
integer                                  :: map_proj
real      ,DIMENSION(:,:)     ,POINTER   :: lu_index
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_u_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_u_2
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_ru
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_v_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_v_2
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_rv
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_w_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_w_2
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_ww
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_rw
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_ph_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_ph_2
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_phb
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_phb_fine
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_ph0
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_php
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_t_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_t_2
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_t_init
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_tp_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_tp_2
real      ,DIMENSION(:,:)     ,POINTER   :: em_mu_1
real      ,DIMENSION(:,:)     ,POINTER   :: em_mu_2
real      ,DIMENSION(:,:)     ,POINTER   :: em_mub
real      ,DIMENSION(:,:)     ,POINTER   :: em_mub_fine
real      ,DIMENSION(:,:)     ,POINTER   :: em_mu0
real      ,DIMENSION(:,:)     ,POINTER   :: em_mudf
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_tke_1
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_tke_2
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_p
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_al
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_alt
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_alb
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_zx
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_zy
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_rdz
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_rdzw
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_pb
real      ,DIMENSION(:)       ,POINTER   :: em_fnm
real      ,DIMENSION(:)       ,POINTER   :: em_fnp
real      ,DIMENSION(:)       ,POINTER   :: em_rdnw
real      ,DIMENSION(:)       ,POINTER   :: em_rdn
real      ,DIMENSION(:)       ,POINTER   :: em_dnw
real      ,DIMENSION(:)       ,POINTER   :: em_dn
real      ,DIMENSION(:)       ,POINTER   :: em_znu
real      ,DIMENSION(:)       ,POINTER   :: em_znw
real      ,DIMENSION(:)       ,POINTER   :: em_t_base
real      ,DIMENSION(:,:,:)   ,POINTER   :: em_z
real      ,DIMENSION(:,:)     ,POINTER   :: q2
real      ,DIMENSION(:,:)     ,POINTER   :: t2
real      ,DIMENSION(:,:)     ,POINTER   :: th2
real      ,DIMENSION(:,:)     ,POINTER   :: psfc
real      ,DIMENSION(:,:)     ,POINTER   :: u10
real      ,DIMENSION(:,:)     ,POINTER   :: v10
integer   ,DIMENSION(:,:)     ,POINTER   :: imask
real      ,DIMENSION(:,:,:,:) ,POINTER   :: moist_1
real      ,DIMENSION(:,:,:,:) ,POINTER   :: moist_2
real      ,DIMENSION(:,:,:,:) ,POINTER   :: chem_1
real      ,DIMENSION(:,:,:,:) ,POINTER   :: chem_2
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_u_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_u_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_v_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_v_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_w_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_w_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_ph_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_ph_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_t_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_t_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_mu_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_mu_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_rqv_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: em_rqv_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqc_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqc_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqr_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqr_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqi_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqi_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqs_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqs_bt
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqg_b
real      ,DIMENSION(:,:,:,:) ,POINTER   :: rqg_bt
real      ,DIMENSION(:)       ,POINTER   :: fcx
real      ,DIMENSION(:)       ,POINTER   :: gcx
real      ,DIMENSION(:,:)     ,POINTER   :: sm000010
real      ,DIMENSION(:,:)     ,POINTER   :: sm010040
real      ,DIMENSION(:,:)     ,POINTER   :: sm040100
real      ,DIMENSION(:,:)     ,POINTER   :: sm100200
real      ,DIMENSION(:,:)     ,POINTER   :: sm010200
real      ,DIMENSION(:,:)     ,POINTER   :: soilm000
real      ,DIMENSION(:,:)     ,POINTER   :: soilm005
real      ,DIMENSION(:,:)     ,POINTER   :: soilm020
real      ,DIMENSION(:,:)     ,POINTER   :: soilm040
real      ,DIMENSION(:,:)     ,POINTER   :: soilm160
real      ,DIMENSION(:,:)     ,POINTER   :: soilm300
real      ,DIMENSION(:,:)     ,POINTER   :: sw000010
real      ,DIMENSION(:,:)     ,POINTER   :: sw010040
real      ,DIMENSION(:,:)     ,POINTER   :: sw040100
real      ,DIMENSION(:,:)     ,POINTER   :: sw100200
real      ,DIMENSION(:,:)     ,POINTER   :: sw010200
real      ,DIMENSION(:,:)     ,POINTER   :: soilw000
real      ,DIMENSION(:,:)     ,POINTER   :: soilw005
real      ,DIMENSION(:,:)     ,POINTER   :: soilw020
real      ,DIMENSION(:,:)     ,POINTER   :: soilw040
real      ,DIMENSION(:,:)     ,POINTER   :: soilw160
real      ,DIMENSION(:,:)     ,POINTER   :: soilw300
real      ,DIMENSION(:,:)     ,POINTER   :: st000010
real      ,DIMENSION(:,:)     ,POINTER   :: st010040
real      ,DIMENSION(:,:)     ,POINTER   :: st040100
real      ,DIMENSION(:,:)     ,POINTER   :: st100200
real      ,DIMENSION(:,:)     ,POINTER   :: st010200
real      ,DIMENSION(:,:)     ,POINTER   :: soilt000
real      ,DIMENSION(:,:)     ,POINTER   :: soilt005
real      ,DIMENSION(:,:)     ,POINTER   :: soilt020
real      ,DIMENSION(:,:)     ,POINTER   :: soilt040
real      ,DIMENSION(:,:)     ,POINTER   :: soilt160
real      ,DIMENSION(:,:)     ,POINTER   :: soilt300
real      ,DIMENSION(:,:)     ,POINTER   :: landmask
real      ,DIMENSION(:,:)     ,POINTER   :: topostdv
real      ,DIMENSION(:,:)     ,POINTER   :: toposlpx
real      ,DIMENSION(:,:)     ,POINTER   :: toposlpy
real      ,DIMENSION(:,:)     ,POINTER   :: shdmax
real      ,DIMENSION(:,:)     ,POINTER   :: shdmin
real      ,DIMENSION(:,:)     ,POINTER   :: snoalb
real      ,DIMENSION(:,:)     ,POINTER   :: slopecat
real      ,DIMENSION(:,:)     ,POINTER   :: toposoil
real      ,DIMENSION(:,:,:)   ,POINTER   :: landusef
real      ,DIMENSION(:,:,:)   ,POINTER   :: soilctop
real      ,DIMENSION(:,:,:)   ,POINTER   :: soilcbot
real      ,DIMENSION(:,:)     ,POINTER   :: soilcat
real      ,DIMENSION(:,:)     ,POINTER   :: vegcat
real      ,DIMENSION(:,:,:)   ,POINTER   :: tslb
real      ,DIMENSION(:)       ,POINTER   :: zs
real      ,DIMENSION(:)       ,POINTER   :: dzs
real      ,DIMENSION(:,:,:)   ,POINTER   :: smois
real      ,DIMENSION(:,:,:)   ,POINTER   :: sh2o
real      ,DIMENSION(:,:)     ,POINTER   :: xice
real      ,DIMENSION(:,:)     ,POINTER   :: smstav
real      ,DIMENSION(:,:)     ,POINTER   :: smstot
real      ,DIMENSION(:,:)     ,POINTER   :: sfcrunoff
real      ,DIMENSION(:,:)     ,POINTER   :: udrunoff
integer   ,DIMENSION(:,:)     ,POINTER   :: ivgtyp
integer   ,DIMENSION(:,:)     ,POINTER   :: isltyp
real      ,DIMENSION(:,:)     ,POINTER   :: vegfra
real      ,DIMENSION(:,:)     ,POINTER   :: sfcevp
real      ,DIMENSION(:,:)     ,POINTER   :: grdflx
real      ,DIMENSION(:,:)     ,POINTER   :: sfcexc
real      ,DIMENSION(:,:)     ,POINTER   :: acsnow
real      ,DIMENSION(:,:)     ,POINTER   :: acsnom
real      ,DIMENSION(:,:)     ,POINTER   :: snow
real      ,DIMENSION(:,:)     ,POINTER   :: snowh
real      ,DIMENSION(:,:)     ,POINTER   :: canwat
real      ,DIMENSION(:,:)     ,POINTER   :: sst
real      ,DIMENSION(:,:,:)   ,POINTER   :: smfr3d
real      ,DIMENSION(:,:,:)   ,POINTER   :: keepfr3dflag
real      ,DIMENSION(:,:)     ,POINTER   :: potevp
real      ,DIMENSION(:,:)     ,POINTER   :: snopcx
real      ,DIMENSION(:,:)     ,POINTER   :: soiltb
real      ,DIMENSION(:,:,:)   ,POINTER   :: tke_myj
real      ,DIMENSION(:,:)     ,POINTER   :: ct
real      ,DIMENSION(:,:)     ,POINTER   :: thz0
real      ,DIMENSION(:,:)     ,POINTER   :: z0
real      ,DIMENSION(:,:)     ,POINTER   :: qz0
real      ,DIMENSION(:,:)     ,POINTER   :: uz0
real      ,DIMENSION(:,:)     ,POINTER   :: vz0
real      ,DIMENSION(:,:)     ,POINTER   :: qsfc
real      ,DIMENSION(:,:)     ,POINTER   :: akhs
real      ,DIMENSION(:,:)     ,POINTER   :: akms
integer   ,DIMENSION(:,:)     ,POINTER   :: kpbl
real      ,DIMENSION(:,:)     ,POINTER   :: htop
real      ,DIMENSION(:,:)     ,POINTER   :: hbot
real      ,DIMENSION(:,:)     ,POINTER   :: cuppt
real      ,DIMENSION(:,:)     ,POINTER   :: totswdn
real      ,DIMENSION(:,:)     ,POINTER   :: totlwdn
real      ,DIMENSION(:,:)     ,POINTER   :: rswtoa
real      ,DIMENSION(:,:)     ,POINTER   :: rlwtoa
real      ,DIMENSION(:,:)     ,POINTER   :: czmean
real      ,DIMENSION(:,:)     ,POINTER   :: cfracl
real      ,DIMENSION(:,:)     ,POINTER   :: cfracm
real      ,DIMENSION(:,:)     ,POINTER   :: cfrach
real      ,DIMENSION(:,:)     ,POINTER   :: acfrst
integer   ,DIMENSION(:,:)     ,POINTER   :: ncfrst
real      ,DIMENSION(:,:)     ,POINTER   :: acfrcv
integer   ,DIMENSION(:,:)     ,POINTER   :: ncfrcv
real      ,DIMENSION(:,:,:)   ,POINTER   :: f_ice_phy
real      ,DIMENSION(:,:,:)   ,POINTER   :: f_rain_phy
real      ,DIMENSION(:,:,:)   ,POINTER   :: f_rimef_phy
real      ,DIMENSION(:,:,:)   ,POINTER   :: h_diabatic
real      ,DIMENSION(:,:)     ,POINTER   :: msft
real      ,DIMENSION(:,:)     ,POINTER   :: msfu
real      ,DIMENSION(:,:)     ,POINTER   :: msfv
real      ,DIMENSION(:,:)     ,POINTER   :: f
real      ,DIMENSION(:,:)     ,POINTER   :: e
real      ,DIMENSION(:,:)     ,POINTER   :: sina
real      ,DIMENSION(:,:)     ,POINTER   :: cosa
real      ,DIMENSION(:,:)     ,POINTER   :: ht
real      ,DIMENSION(:,:)     ,POINTER   :: ht_fine
real      ,DIMENSION(:,:)     ,POINTER   :: ht_int
real      ,DIMENSION(:,:)     ,POINTER   :: ht_input
real      ,DIMENSION(:,:)     ,POINTER   :: tsk
real      ,DIMENSION(:)       ,POINTER   :: u_base
real      ,DIMENSION(:)       ,POINTER   :: v_base
real      ,DIMENSION(:)       ,POINTER   :: qv_base
real      ,DIMENSION(:)       ,POINTER   :: z_base
real      ,DIMENSION(:,:,:)   ,POINTER   :: rthcuten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqvcuten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqrcuten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqccuten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqscuten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqicuten
real      ,DIMENSION(:,:,:)   ,POINTER   :: w0avg
real      ,DIMENSION(:,:)     ,POINTER   :: rainc
real      ,DIMENSION(:,:)     ,POINTER   :: rainnc
real      ,DIMENSION(:,:)     ,POINTER   :: raincv
real      ,DIMENSION(:,:)     ,POINTER   :: rainncv
real      ,DIMENSION(:,:)     ,POINTER   :: rainbl
real      ,DIMENSION(:,:)     ,POINTER   :: nca
integer   ,DIMENSION(:,:)     ,POINTER   :: lowlyr
real      ,DIMENSION(:,:)     ,POINTER   :: mass_flux
real      ,DIMENSION(:,:)     ,POINTER   :: apr_gr
real      ,DIMENSION(:,:)     ,POINTER   :: apr_w
real      ,DIMENSION(:,:)     ,POINTER   :: apr_mc
real      ,DIMENSION(:,:)     ,POINTER   :: apr_st
real      ,DIMENSION(:,:)     ,POINTER   :: apr_as
real      ,DIMENSION(:,:)     ,POINTER   :: apr_capma
real      ,DIMENSION(:,:)     ,POINTER   :: apr_capme
real      ,DIMENSION(:,:)     ,POINTER   :: apr_capmi
real      ,DIMENSION(:,:,:)   ,POINTER   :: xf_ens
real      ,DIMENSION(:,:,:)   ,POINTER   :: pr_ens
real      ,DIMENSION(:,:,:)   ,POINTER   :: rthften
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqvften
real      ,DIMENSION(:,:,:)   ,POINTER   :: rthraten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rthratenlw
real      ,DIMENSION(:,:,:)   ,POINTER   :: rthratensw
real      ,DIMENSION(:,:,:)   ,POINTER   :: cldfra
real      ,DIMENSION(:,:)     ,POINTER   :: swdown
real      ,DIMENSION(:,:)     ,POINTER   :: gsw
real      ,DIMENSION(:,:)     ,POINTER   :: glw
real      ,DIMENSION(:,:)     ,POINTER   :: xlat
real      ,DIMENSION(:,:)     ,POINTER   :: xlong
real      ,DIMENSION(:,:)     ,POINTER   :: albedo
real      ,DIMENSION(:,:)     ,POINTER   :: albbck
real      ,DIMENSION(:,:)     ,POINTER   :: emiss
real      ,DIMENSION(:,:)     ,POINTER   :: cldefi
real      ,DIMENSION(:,:,:)   ,POINTER   :: rublten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rvblten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rthblten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqvblten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqcblten
real      ,DIMENSION(:,:,:)   ,POINTER   :: rqiblten
real      ,DIMENSION(:,:)     ,POINTER   :: tmn
real      ,DIMENSION(:,:)     ,POINTER   :: xland
real      ,DIMENSION(:,:)     ,POINTER   :: znt
real      ,DIMENSION(:,:)     ,POINTER   :: ust
real      ,DIMENSION(:,:)     ,POINTER   :: mol
real      ,DIMENSION(:,:)     ,POINTER   :: pblh
real      ,DIMENSION(:,:)     ,POINTER   :: capg
real      ,DIMENSION(:,:)     ,POINTER   :: thc
real      ,DIMENSION(:,:)     ,POINTER   :: hfx
real      ,DIMENSION(:,:)     ,POINTER   :: qfx
real      ,DIMENSION(:,:)     ,POINTER   :: lh
real      ,DIMENSION(:,:)     ,POINTER   :: flhc
real      ,DIMENSION(:,:)     ,POINTER   :: flqc
real      ,DIMENSION(:,:)     ,POINTER   :: qsg
real      ,DIMENSION(:,:)     ,POINTER   :: qvg
real      ,DIMENSION(:,:)     ,POINTER   :: qcg
real      ,DIMENSION(:,:)     ,POINTER   :: soilt1
real      ,DIMENSION(:,:)     ,POINTER   :: tsnav
real      ,DIMENSION(:,:)     ,POINTER   :: snowc
real      ,DIMENSION(:,:)     ,POINTER   :: mavail
real      ,DIMENSION(:,:)     ,POINTER   :: tkesfcf
real      ,DIMENSION(:,:,:)   ,POINTER   :: taucldi
real      ,DIMENSION(:,:,:)   ,POINTER   :: taucldc
real      ,DIMENSION(:,:,:)   ,POINTER   :: defor11
real      ,DIMENSION(:,:,:)   ,POINTER   :: defor22
real      ,DIMENSION(:,:,:)   ,POINTER   :: defor12
real      ,DIMENSION(:,:,:)   ,POINTER   :: defor33
real      ,DIMENSION(:,:,:)   ,POINTER   :: defor13
real      ,DIMENSION(:,:,:)   ,POINTER   :: defor23
real      ,DIMENSION(:,:,:)   ,POINTER   :: xkmv
real      ,DIMENSION(:,:,:)   ,POINTER   :: xkmh
real      ,DIMENSION(:,:,:)   ,POINTER   :: xkmhd
real      ,DIMENSION(:,:,:)   ,POINTER   :: xkhv
real      ,DIMENSION(:,:,:)   ,POINTER   :: xkhh
real      ,DIMENSION(:,:,:)   ,POINTER   :: div
real      ,DIMENSION(:,:,:)   ,POINTER   :: bn2
!ENDOFREGISTRYGENERATEDINCLUDE

      INTEGER                                             :: comms( max_comms ), shift_x, shift_y

      INTEGER                                             :: id
      INTEGER                                             :: domdesc
      INTEGER                                             :: communicator
      INTEGER                                             :: iocommunicator
      INTEGER,POINTER                                     :: mapping(:,:)
      INTEGER,POINTER                                     :: i_start(:),i_end(:)
      INTEGER,POINTER                                     :: j_start(:),j_end(:)
      INTEGER                                             :: max_tiles
      INTEGER                                             :: num_tiles        ! taken out of namelist 20000908
      INTEGER                                             :: num_tiles_x      ! taken out of namelist 20000908
      INTEGER                                             :: num_tiles_y      ! taken out of namelist 20000908
      INTEGER                                             :: num_tiles_spec   ! place to store number of tiles computed from 
                                                                              ! externally specified params

      TYPE(domain_ptr) , DIMENSION( : ) , POINTER         :: parents                            
      TYPE(domain_ptr) , DIMENSION( : ) , POINTER         :: nests                            
      TYPE(domain) , POINTER                              :: sibling ! overlapped domains at same lev
      TYPE(domain) , POINTER                              :: intermediate_grid
      INTEGER                                             :: num_parents, num_nests, num_siblings
      INTEGER      , DIMENSION( max_parents )             :: child_of_parent
      INTEGER      , DIMENSION( max_nests )               :: active

      TYPE(domain) , POINTER                              :: next
      TYPE(domain) , POINTER                              :: same_level

      LOGICAL      , DIMENSION ( 4 )                      :: bdy_mask         ! which boundaries are on processor

      LOGICAL                                             :: first_force


      ! domain dimensions

      INTEGER    :: sd31,   ed31,   sd32,   ed32,   sd33,   ed33,         &
                    sd21,   ed21,   sd22,   ed22,                         &
                    sd11,   ed11

      INTEGER    :: sp31,   ep31,   sp32,   ep32,   sp33,   ep33,         &
                    sp21,   ep21,   sp22,   ep22,                         &
                    sp11,   ep11,                                         &
                    sm31,   em31,   sm32,   em32,   sm33,   em33,         &
                    sm21,   em21,   sm22,   em22,                         &
                    sm11,   em11,                                         &
                    sp31x,  ep31x,  sp32x,  ep32x,  sp33x,  ep33x,        &
                    sp21x,  ep21x,  sp22x,  ep22x,                        &
                    sm31x,  em31x,  sm32x,  em32x,  sm33x,  em33x,        &
                    sm21x,  em21x,  sm22x,  em22x,                        &
                    sp31y,  ep31y,  sp32y,  ep32y,  sp33y,  ep33y,        &
                    sp21y,  ep21y,  sp22y,  ep22y,                        &
                    sm31y,  em31y,  sm32y,  em32y,  sm33y,  em33y,        &
                    sm21y,  em21y,  sm22y,  em22y
      Type(ESMF_Clock)                                    :: domain_clock
      Type(ESMF_Time)                                     :: start_time, stop_time, current_time
      Type(ESMF_Time)                                     :: start_subtime, stop_subtime
      Type(ESMF_Time)                                     :: this_bdy_time, next_bdy_time
      Type(ESMF_TimeInterval) :: step_time
      Type(ESMF_Alarm), pointer :: alarms(:)

   END TYPE domain

   !  Now that a "domain" TYPE exists, we can use it to store a few pointers
   !  to this type.  These are primarily for use in traversing the linked list.
   !  The "head_grid" is always the pointer to the first domain that is
   !  allocated.  This is available and is not to be changed.  The others are
   !  just temporary pointers.

   TYPE(domain) , POINTER :: head_grid , new_grid , next_grid , old_grid

   !  To facilitate an easy integration of each of the domains that are on the
   !  same level, we have an array for the head pointer for each level.  This
   !  removed the need to search through the linked list at each time step to
   !  find which domains are to be active.

   TYPE domain_levels
      TYPE(domain) , POINTER                              :: first_domain
   END TYPE domain_levels

   TYPE(domain_levels) , DIMENSION(max_levels)            :: head_for_each_level
   
CONTAINS

   SUBROUTINE get_ijk_from_grid (  grid ,                   &
                           ids, ide, jds, jde, kds, kde,    &
                           ims, ime, jms, jme, kms, kme,    &
                           ips, ipe, jps, jpe, kps, kpe    )

    IMPLICIT NONE

    TYPE( domain ), INTENT (IN)  :: grid
    INTEGER, INTENT(OUT) ::                                 &
                           ids, ide, jds, jde, kds, kde,    &
                           ims, ime, jms, jme, kms, kme,    &
                           ips, ipe, jps, jpe, kps, kpe

    data_ordering : SELECT CASE ( model_data_order )
       CASE  ( DATA_ORDER_XYZ )
           ids             = grid%sd31 
           ide             = grid%ed31 
           jds             = grid%sd32 
           jde             = grid%ed32 
           kds             = grid%sd33 
           kde             = grid%ed33 
           ims             = grid%sm31 
           ime             = grid%em31 
           jms             = grid%sm32 
           jme             = grid%em32 
           kms             = grid%sm33 
           kme             = grid%em33 
           ips             = grid%sp31 
           ipe             = grid%ep31 
           jps             = grid%sp32 
           jpe             = grid%ep32 
           kps             = grid%sp33 
           kpe             = grid%ep33 

       CASE  ( DATA_ORDER_YXZ )
           ids             = grid%sd32 
           ide             = grid%ed32 
           jds             = grid%sd31 
           jde             = grid%ed31 
           kds             = grid%sd33 
           kde             = grid%ed33 
           ims             = grid%sm32 
           ime             = grid%em32 
           jms             = grid%sm31 
           jme             = grid%em31 
           kms             = grid%sm33 
           kme             = grid%em33 
           ips             = grid%sp32 
           ipe             = grid%ep32 
           jps             = grid%sp31 
           jpe             = grid%ep31 
           kps             = grid%sp33 
           kpe             = grid%ep33 

       CASE  ( DATA_ORDER_ZXY )
           ids             = grid%sd32 
           ide             = grid%ed32 
           jds             = grid%sd33 
           jde             = grid%ed33 
           kds             = grid%sd31 
           kde             = grid%ed31 
           ims             = grid%sm32 
           ime             = grid%em32 
           jms             = grid%sm33 
           jme             = grid%em33 
           kms             = grid%sm31 
           kme             = grid%em31 
           ips             = grid%sp32 
           ipe             = grid%ep32 
           jps             = grid%sp33 
           jpe             = grid%ep33 
           kps             = grid%sp31 
           kpe             = grid%ep31 

       CASE  ( DATA_ORDER_ZYX )
           ids             = grid%sd33 
           ide             = grid%ed33 
           jds             = grid%sd32 
           jde             = grid%ed32 
           kds             = grid%sd31 
           kde             = grid%ed31 
           ims             = grid%sm33 
           ime             = grid%em33 
           jms             = grid%sm32 
           jme             = grid%em32 
           kms             = grid%sm31 
           kme             = grid%em31 
           ips             = grid%sp33 
           ipe             = grid%ep33 
           jps             = grid%sp32 
           jpe             = grid%ep32 
           kps             = grid%sp31 
           kpe             = grid%ep31 

       CASE  ( DATA_ORDER_XZY )
           ids             = grid%sd31 
           ide             = grid%ed31 
           jds             = grid%sd33 
           jde             = grid%ed33 
           kds             = grid%sd32 
           kde             = grid%ed32 
           ims             = grid%sm31 
           ime             = grid%em31 
           jms             = grid%sm33 
           jme             = grid%em33 
           kms             = grid%sm32 
           kme             = grid%em32 
           ips             = grid%sp31 
           ipe             = grid%ep31 
           jps             = grid%sp33 
           jpe             = grid%ep33 
           kps             = grid%sp32 
           kpe             = grid%ep32 

       CASE  ( DATA_ORDER_YZX )
           ids             = grid%sd33 
           ide             = grid%ed33 
           jds             = grid%sd31 
           jde             = grid%ed31 
           kds             = grid%sd32 
           kde             = grid%ed32 
           ims             = grid%sm33 
           ime             = grid%em33 
           jms             = grid%sm31 
           jme             = grid%em31 
           kms             = grid%sm32 
           kme             = grid%em32 
           ips             = grid%sp33 
           ipe             = grid%ep33 
           jps             = grid%sp31 
           jpe             = grid%ep31 
           kps             = grid%sp32 
           kpe             = grid%ep32 

    END SELECT data_ordering
   END SUBROUTINE get_ijk_from_grid

! Default version ; Otherwise module containing interface to DM library will provide

   SUBROUTINE wrf_patch_domain( id , domdesc , parent, parent_id , parent_domdesc , &
                            sd1 , ed1 , sp1 , ep1 , sm1 , em1 , &
                            sd2 , ed2 , sp2 , ep2 , sm2 , em2 , &
                            sd3 , ed3 , sp3 , ep3 , sm3 , em3 , &
                                        sp1x , ep1x , sm1x , em1x , &
                                        sp2x , ep2x , sm2x , em2x , &
                                        sp3x , ep3x , sm3x , em3x , &
                                        sp1y , ep1y , sm1y , em1y , &
                                        sp2y , ep2y , sm2y , em2y , &
                                        sp3y , ep3y , sm3y , em3y , &
                            bdx , bdy , bdy_mask )
!<DESCRIPTION>
! Wrf_patch_domain is called as part of the process of initiating a new
! domain.  Based on the global domain dimension information that is
! passed in it computes the patch and memory dimensions on this
! distributed-memory process for parallel compilation when DM_PARALLEL is
! defined in configure.wrf.  In this case, it relies on an external
! communications package-contributed routine, wrf_dm_patch_domain. For
! non-parallel compiles, it returns the patch and memory dimensions based
! on the entire domain. In either case, the memory dimensions will be
! larger than the patch dimensions, since they allow for distributed
! memory halo regions (DM_PARALLEL only) and for boundary regions around
! the domain (used for idealized cases only).  The width of the boundary
! regions to be accommodated is passed in as bdx and bdy.
! 
! The bdy_mask argument is a four-dimensional logical array, each element
! of which is set to true for any boundaries that this process's patch
! contains (all four are true in the non-DM_PARALLEL case) and false
! otherwise. The indices into the bdy_mask are defined in
! frame/module_state_description.F. P_XSB corresponds boundary that
! exists at the beginning of the X-dimension; ie. the western boundary;
! P_XEB to the boundary that corresponds to the end of the X-dimension
! (east). Likewise for Y (south and north respectively).
! 
! The correspondence of the first, second, and third dimension of each
! set (domain, memory, and patch) with the coordinate axes of the model
! domain is based on the setting of the variable model_data_order, which
! comes into this routine through USE association of
! module_driver_constants in the enclosing module of this routine,
! module_domain.  Model_data_order is defined by the Registry, based on
! the dimspec entries which associate dimension specifiers (e.g. 'k') in
! the Registry with a coordinate axis and specify which dimension of the
! arrays they represent. For WRF, the sd1 , ed1 , sp1 , ep1 , sm1 , and
! em1 correspond to the starts and ends of the global, patch, and memory
! dimensions in X; those with 2 specify Z (vertical); and those with 3
! specify Y.  Note that the WRF convention is to overdimension to allow
! for staggered fields so that sd<em>n</em>:ed<em>n</em> are the starts
! and ends of the staggered domains in X.  The non-staggered grid runs
! sd<em>n</em>:ed<em>n</em>-1. The extra row or column on the north or
! east boundaries is not used for non-staggered fields.
! 
! The domdesc and parent_domdesc arguments are for external communication
! packages (e.g. RSL) that establish and return to WRF integer handles
! for referring to operations on domains.  These descriptors are not set
! or used otherwise and they are opaque, which means they are never
! accessed or modified in WRF; they are only only passed between calls to
! the external package.
!</DESCRIPTION>

   USE module_machine
   IMPLICIT NONE
   LOGICAL, DIMENSION(4), INTENT(OUT)  :: bdy_mask
   INTEGER, INTENT(IN)   :: sd1 , ed1 , sd2 , ed2 , sd3 , ed3 , bdx , bdy
   INTEGER, INTENT(OUT)  :: sp1  , ep1  , sp2  , ep2  , sp3  , ep3  , &  ! z-xpose (std)
                            sm1  , em1  , sm2  , em2  , sm3  , em3
   INTEGER, INTENT(OUT)  :: sp1x , ep1x , sp2x , ep2x , sp3x , ep3x , &  ! x-xpose
                            sm1x , em1x , sm2x , em2x , sm3x , em3x
   INTEGER, INTENT(OUT)  :: sp1y , ep1y , sp2y , ep2y , sp3y , ep3y , &  ! y-xpose
                            sm1y , em1y , sm2y , em2y , sm3y , em3y
   INTEGER, INTENT(IN)   :: id , parent_id , parent_domdesc
   INTEGER, INTENT(INOUT)  :: domdesc
   TYPE(domain), POINTER :: parent

!local data

   INTEGER spec_bdy_width

   CALL get_spec_bdy_width( spec_bdy_width )


   bdy_mask = .true.     ! only one processor so all 4 boundaries are there

! this is a trivial version -- 1 patch per processor; 
! use version in module_dm to compute for DM
   sp1 = sd1 ; sp2 = sd2 ; sp3 = sd3
   ep1 = ed1 ; ep2 = ed2 ; ep3 = ed3
   SELECT CASE ( model_data_order )
      CASE ( DATA_ORDER_XYZ )
         sm1  = sp1 - bdx ; em1 = ep1 + bdx
         sm2  = sp2 - bdy ; em2 = ep2 + bdy
         sm3  = sp3       ; em3 = ep3
      CASE ( DATA_ORDER_YXZ )
         sm1 = sp1 - bdy ; em1 = ep1 + bdy
         sm2 = sp2 - bdx ; em2 = ep2 + bdx
         sm3 = sp3       ; em3 = ep3
      CASE ( DATA_ORDER_ZXY )
         sm1 = sp1       ; em1 = ep1
         sm2 = sp2 - bdx ; em2 = ep2 + bdx
         sm3 = sp3 - bdy ; em3 = ep3 + bdy
      CASE ( DATA_ORDER_ZYX )
         sm1 = sp1       ; em1 = ep1
         sm2 = sp2 - bdy ; em2 = ep2 + bdy
         sm3 = sp3 - bdx ; em3 = ep3 + bdx
      CASE ( DATA_ORDER_XZY )
         sm1 = sp1 - bdx ; em1 = ep1 + bdx
         sm2 = sp2       ; em2 = ep2
         sm3 = sp3 - bdy ; em3 = ep3 + bdy
      CASE ( DATA_ORDER_YZX )
         sm1 = sp1 - bdy ; em1 = ep1 + bdy
         sm2 = sp2       ; em2 = ep2
         sm3 = sp3 - bdx ; em3 = ep3 + bdx
   END SELECT
   sm1x = sm1       ; em1x = em1    ! just copy
   sm2x = sm2       ; em2x = em2
   sm3x = sm3       ; em3x = em3
   sm1y = sm1       ; em1y = em1    ! just copy
   sm2y = sm2       ; em2y = em2
   sm3y = sm3       ; em3y = em3
! assigns mostly just to suppress warning messages that INTENT OUT vars not assigned
   sp1x = sp1 ; ep1x = ep1 ; sp2x = sp2 ; ep2x = ep2 ; sp3x = sp3 ; ep3x = ep3
   sp1y = sp1 ; ep1y = ep1 ; sp2y = sp2 ; ep2y = ep2 ; sp3y = sp3 ; ep3y = ep3


   RETURN
   END SUBROUTINE wrf_patch_domain
!
   SUBROUTINE alloc_and_configure_domain ( domain_id , grid , parent, kid )

!<DESCRIPTION>
! This subroutine is used to allocate a domain data structure of
! TYPE(DOMAIN) pointed to by the argument <em>grid</em>, link it into the
! nested domain hierarchy, and set it's configuration information from
! the appropriate settings in the WRF namelist file. Specifically, if the
! domain being allocated and configured is nest, the <em>parent</em>
! argument will point to the already existing domain data structure for
! the parent domain and the <em>kid</em> argument will be set to an
! integer indicating which child of the parent this grid will be (child
! indices start at 1).  If this is the top-level domain, the parent and
! kid arguments are ignored.  <b>WRF domains may have multiple children
! but only ever have one parent.</b>
!
! The <em>domain_id</em> argument is the
! integer handle by which this new domain will be referred; it comes from
! the grid_id setting in the namelist, and these grid ids correspond to
! the ordering of settings in the namelist, starting with 1 for the
! top-level domain. The id of 1 always corresponds to the top-level
! domain.  and these grid ids correspond to the ordering of settings in
! the namelist, starting with 1 for the top-level domain.
! 
! Model_data_order is provide by USE association of
! module_driver_constants and is set from dimspec entries in the
! Registry.
! 
! The allocation of the TYPE(DOMAIN) itself occurs in this routine.
! However, the numerous multi-dimensional arrays that make up the members
! of the domain are allocated in the call to alloc_space_field, after
! wrf_patch_domain has been called to determine the dimensions in memory
! that should be allocated.  It bears noting here that arrays and code
! that indexes these arrays are always global, regardless of how the
! model is decomposed over patches. Thus, when arrays are allocated on a
! given process, the start and end of an array dimension are the global
! indices of the start and end of that process's subdomain.
! 
! Configuration information for the domain (that is, information from the
! namelist) is added by the call to <a href=med_add_config_info_to_grid.html>med_add_config_info_to_grid</a>, defined
! in share/mediation_wrfmain.F. 
!</DESCRIPTION>

      
      IMPLICIT NONE

      !  Input data.

      INTEGER , INTENT(IN)                           :: domain_id
      TYPE( domain ) , POINTER                       :: grid
      TYPE( domain ) , POINTER                       :: parent
      INTEGER , INTENT(IN)                           :: kid    ! which kid of parent am I?

      !  Local data.
      INTEGER                     :: sd1 , ed1 , sp1 , ep1 , sm1 , em1
      INTEGER                     :: sd2 , ed2 , sp2 , ep2 , sm2 , em2
      INTEGER                     :: sd3 , ed3 , sp3 , ep3 , sm3 , em3

      INTEGER                     :: sd1x , ed1x , sp1x , ep1x , sm1x , em1x
      INTEGER                     :: sd2x , ed2x , sp2x , ep2x , sm2x , em2x
      INTEGER                     :: sd3x , ed3x , sp3x , ep3x , sm3x , em3x

      INTEGER                     :: sd1y , ed1y , sp1y , ep1y , sm1y , em1y
      INTEGER                     :: sd2y , ed2y , sp2y , ep2y , sm2y , em2y
      INTEGER                     :: sd3y , ed3y , sp3y , ep3y , sm3y , em3y

      TYPE(domain) , POINTER      :: new_grid
      INTEGER                     :: i
      INTEGER                     :: parent_id , parent_domdesc , new_domdesc
      INTEGER                     :: bdyzone_x , bdyzone_y


! This next step uses information that is listed in the registry as namelist_derived
! to properly size the domain and the patches; this in turn is stored in the new_grid
! data structure


      data_ordering : SELECT CASE ( model_data_order )
        CASE  ( DATA_ORDER_XYZ )

          CALL get_s_we( domain_id , sd1 )
          CALL get_e_we( domain_id , ed1 )
          CALL get_s_sn( domain_id , sd2 )
          CALL get_e_sn( domain_id , ed2 )
          CALL get_s_vert( domain_id , sd3 )
          CALL get_e_vert( domain_id , ed3 )

        CASE  ( DATA_ORDER_YXZ )

          CALL get_s_sn( domain_id , sd1 )
          CALL get_e_sn( domain_id , ed1 )
          CALL get_s_we( domain_id , sd2 )
          CALL get_e_we( domain_id , ed2 )
          CALL get_s_vert( domain_id , sd3 )
          CALL get_e_vert( domain_id , ed3 )

        CASE  ( DATA_ORDER_ZXY )

          CALL get_s_vert( domain_id , sd1 )
          CALL get_e_vert( domain_id , ed1 )
          CALL get_s_we( domain_id , sd2 )
          CALL get_e_we( domain_id , ed2 )
          CALL get_s_sn( domain_id , sd3 )
          CALL get_e_sn( domain_id , ed3 )

        CASE  ( DATA_ORDER_ZYX )

          CALL get_s_vert( domain_id , sd1 )
          CALL get_e_vert( domain_id , ed1 )
          CALL get_s_sn( domain_id , sd2 )
          CALL get_e_sn( domain_id , ed2 )
          CALL get_s_we( domain_id , sd3 )
          CALL get_e_we( domain_id , ed3 )

        CASE  ( DATA_ORDER_XZY )

          CALL get_s_we( domain_id , sd1 )
          CALL get_e_we( domain_id , ed1 )
          CALL get_s_vert( domain_id , sd2 )
          CALL get_e_vert( domain_id , ed2 )
          CALL get_s_sn( domain_id , sd3 )
          CALL get_e_sn( domain_id , ed3 )

        CASE  ( DATA_ORDER_YZX )

          CALL get_s_sn( domain_id , sd1 )
          CALL get_e_sn( domain_id , ed1 )
          CALL get_s_vert( domain_id , sd2 )
          CALL get_e_vert( domain_id , ed2 )
          CALL get_s_we( domain_id , sd3 )
          CALL get_e_we( domain_id , ed3 )

      END SELECT data_ordering


      if ( num_time_levels > 3 ) then
        WRITE ( wrf_err_message , * ) 'module_domain: alloc_and_configure_domain: Incorrect value for num_time_levels ', &
                                       num_time_levels
        CALL wrf_error_fatal ( TRIM ( wrf_err_message ) )
      endif

      IF (ASSOCIATED(parent)) THEN
        parent_id = parent%id
        parent_domdesc = parent%domdesc
      ELSE
        parent_id = -1
        parent_domdesc = -1
      ENDIF

      CALL get_bdyzone_x( bdyzone_x )
      CALL get_bdyzone_y( bdyzone_y )

      ALLOCATE ( new_grid )
      ALLOCATE ( new_grid%parents( max_parents ) )
      ALLOCATE ( new_grid%nests( max_nests ) )
      NULLIFY( new_grid%sibling )
      DO i = 1, max_nests
         NULLIFY( new_grid%nests(i)%ptr )
      ENDDO
      NULLIFY  (new_grid%next)
      NULLIFY  (new_grid%same_level)
      NULLIFY  (new_grid%i_start)
      NULLIFY  (new_grid%j_start)
      NULLIFY  (new_grid%i_end)
      NULLIFY  (new_grid%j_end)
      NULLIFY  (new_grid%alarms)    ! set with call to ESMF_ClockGetAlarmList

      ! set up the pointers that represent the nest hierarchy
      ! set this up *prior* to calling the patching or allocation
      ! routines so that implementations of these routines can
      ! traverse the nest hierarchy (through the root head_grid)
      ! if they need to 

 
      IF ( domain_id .NE. 1 ) THEN
         new_grid%parents(1)%ptr => parent
         new_grid%num_parents = 1
         parent%nests(kid)%ptr => new_grid
         new_grid%child_of_parent(1) = kid    ! note assumption that nest can have only 1 parent
         parent%num_nests = parent%num_nests + 1
      END IF
      new_grid%id = domain_id                 ! this needs to be assigned prior to calling wrf_patch_domain

      CALL wrf_patch_domain( domain_id  , new_domdesc , parent, parent_id, parent_domdesc , &

                             sd1 , ed1 , sp1 , ep1 , sm1 , em1 , &     ! z-xpose dims
                             sd2 , ed2 , sp2 , ep2 , sm2 , em2 , &     ! (standard)
                             sd3 , ed3 , sp3 , ep3 , sm3 , em3 , &

                                     sp1x , ep1x , sm1x , em1x , &     ! x-xpose dims
                                     sp2x , ep2x , sm2x , em2x , &
                                     sp3x , ep3x , sm3x , em3x , &

                                     sp1y , ep1y , sm1y , em1y , &     ! y-xpose dims
                                     sp2y , ep2y , sm2y , em2y , &
                                     sp3y , ep3y , sm3y , em3y , &

                         bdyzone_x  , bdyzone_y , new_grid%bdy_mask &
      ) 

      new_grid%domdesc = new_domdesc
      new_grid%num_nests = 0
      new_grid%num_siblings = 0
      new_grid%num_parents = 0
      new_grid%max_tiles   = 0
      new_grid%num_tiles_spec   = 0

      CALL alloc_space_field ( new_grid, domain_id ,                   &
                               sd1, ed1, sd2, ed2, sd3, ed3, &
                               sm1,  em1,  sm2,  em2,  sm3,  em3, &
                               sm1x, em1x, sm2x, em2x, sm3x, em3x, &   ! x-xpose
                               sm1y, em1y, sm2y, em2y, sm3y, em3y  &   ! y-xpose
      )

      new_grid%sd31                            = sd1 
      new_grid%ed31                            = ed1
      new_grid%sp31                            = sp1 
      new_grid%ep31                            = ep1 
      new_grid%sm31                            = sm1 
      new_grid%em31                            = em1
      new_grid%sd32                            = sd2 
      new_grid%ed32                            = ed2
      new_grid%sp32                            = sp2 
      new_grid%ep32                            = ep2 
      new_grid%sm32                            = sm2 
      new_grid%em32                            = em2
      new_grid%sd33                            = sd3 
      new_grid%ed33                            = ed3
      new_grid%sp33                            = sp3 
      new_grid%ep33                            = ep3 
      new_grid%sm33                            = sm3 
      new_grid%em33                            = em3

      new_grid%sp31x                           = sp1x
      new_grid%ep31x                           = ep1x
      new_grid%sm31x                           = sm1x
      new_grid%em31x                           = em1x
      new_grid%sp32x                           = sp2x
      new_grid%ep32x                           = ep2x
      new_grid%sm32x                           = sm2x
      new_grid%em32x                           = em2x
      new_grid%sp33x                           = sp3x
      new_grid%ep33x                           = ep3x
      new_grid%sm33x                           = sm3x
      new_grid%em33x                           = em3x

      new_grid%sp31y                           = sp1y
      new_grid%ep31y                           = ep1y
      new_grid%sm31y                           = sm1y
      new_grid%em31y                           = em1y
      new_grid%sp32y                           = sp2y
      new_grid%ep32y                           = ep2y
      new_grid%sm32y                           = sm2y
      new_grid%em32y                           = em2y
      new_grid%sp33y                           = sp3y
      new_grid%ep33y                           = ep3y
      new_grid%sm33y                           = sm3y
      new_grid%em33y                           = em3y

      SELECT CASE ( model_data_order )
         CASE  ( DATA_ORDER_XYZ )
            new_grid%sd21 = sd1 ; new_grid%sd22 = sd2 ;
            new_grid%ed21 = ed1 ; new_grid%ed22 = ed2 ;
            new_grid%sp21 = sp1 ; new_grid%sp22 = sp2 ;
            new_grid%ep21 = ep1 ; new_grid%ep22 = ep2 ;
            new_grid%sm21 = sm1 ; new_grid%sm22 = sm2 ;
            new_grid%em21 = em1 ; new_grid%em22 = em2 ;
            new_grid%sd11 = sd1
            new_grid%ed11 = ed1
            new_grid%sp11 = sp1
            new_grid%ep11 = ep1
            new_grid%sm11 = sm1
            new_grid%em11 = em1
         CASE  ( DATA_ORDER_YXZ )
            new_grid%sd21 = sd1 ; new_grid%sd22 = sd2 ;
            new_grid%ed21 = ed1 ; new_grid%ed22 = ed2 ;
            new_grid%sp21 = sp1 ; new_grid%sp22 = sp2 ;
            new_grid%ep21 = ep1 ; new_grid%ep22 = ep2 ;
            new_grid%sm21 = sm1 ; new_grid%sm22 = sm2 ;
            new_grid%em21 = em1 ; new_grid%em22 = em2 ;
            new_grid%sd11 = sd1
            new_grid%ed11 = ed1
            new_grid%sp11 = sp1
            new_grid%ep11 = ep1
            new_grid%sm11 = sm1
            new_grid%em11 = em1
         CASE  ( DATA_ORDER_ZXY )
            new_grid%sd21 = sd2 ; new_grid%sd22 = sd3 ;
            new_grid%ed21 = ed2 ; new_grid%ed22 = ed3 ;
            new_grid%sp21 = sp2 ; new_grid%sp22 = sp3 ;
            new_grid%ep21 = ep2 ; new_grid%ep22 = ep3 ;
            new_grid%sm21 = sm2 ; new_grid%sm22 = sm3 ;
            new_grid%em21 = em2 ; new_grid%em22 = em3 ;
            new_grid%sd11 = sd2
            new_grid%ed11 = ed2
            new_grid%sp11 = sp2
            new_grid%ep11 = ep2
            new_grid%sm11 = sm2
            new_grid%em11 = em2
         CASE  ( DATA_ORDER_ZYX )
            new_grid%sd21 = sd2 ; new_grid%sd22 = sd3 ;
            new_grid%ed21 = ed2 ; new_grid%ed22 = ed3 ;
            new_grid%sp21 = sp2 ; new_grid%sp22 = sp3 ;
            new_grid%ep21 = ep2 ; new_grid%ep22 = ep3 ;
            new_grid%sm21 = sm2 ; new_grid%sm22 = sm3 ;
            new_grid%em21 = em2 ; new_grid%em22 = em3 ;
            new_grid%sd11 = sd2
            new_grid%ed11 = ed2
            new_grid%sp11 = sp2
            new_grid%ep11 = ep2
            new_grid%sm11 = sm2
            new_grid%em11 = em2
         CASE  ( DATA_ORDER_XZY )
            new_grid%sd21 = sd1 ; new_grid%sd22 = sd3 ;
            new_grid%ed21 = ed1 ; new_grid%ed22 = ed3 ;
            new_grid%sp21 = sp1 ; new_grid%sp22 = sp3 ;
            new_grid%ep21 = ep1 ; new_grid%ep22 = ep3 ;
            new_grid%sm21 = sm1 ; new_grid%sm22 = sm3 ;
            new_grid%em21 = em1 ; new_grid%em22 = em3 ;
            new_grid%sd11 = sd1
            new_grid%ed11 = ed1
            new_grid%sp11 = sp1
            new_grid%ep11 = ep1
            new_grid%sm11 = sm1
            new_grid%em11 = em1
         CASE  ( DATA_ORDER_YZX )
            new_grid%sd21 = sd1 ; new_grid%sd22 = sd3 ;
            new_grid%ed21 = ed1 ; new_grid%ed22 = ed3 ;
            new_grid%sp21 = sp1 ; new_grid%sp22 = sp3 ;
            new_grid%ep21 = ep1 ; new_grid%ep22 = ep3 ;
            new_grid%sm21 = sm1 ; new_grid%sm22 = sm3 ;
            new_grid%em21 = em1 ; new_grid%em22 = em3 ;
            new_grid%sd11 = sd1
            new_grid%ed11 = ed1
            new_grid%sp11 = sp1
            new_grid%ep11 = ep1
            new_grid%sm11 = sm1
            new_grid%em11 = em1
      END SELECT

      CALL med_add_config_info_to_grid ( new_grid )           ! this is a mediation layer routine

! Some miscellaneous state that is in the Registry but not namelist data

      new_grid%tiled                           = .false.
      new_grid%patched                         = .false.
      NULLIFY(new_grid%mapping)

! This next set of includes causes all but the namelist_derived variables to be
! properly assigned to the new_grid record

      grid => new_grid


   END SUBROUTINE alloc_and_configure_domain

!

!  This routine ALLOCATEs the required space for the meteorological fields
!  for a specific domain.  The fields are simply ALLOCATEd as an -1.  They
!  are referenced as wind, temperature, moisture, etc. in routines that are
!  below this top-level of data allocation and management (in the solve routine
!  and below).

   SUBROUTINE alloc_space_field ( grid,   id,                         &
                                  sd31, ed31, sd32, ed32, sd33, ed33, &
                                  sm31 , em31 , sm32 , em32 , sm33 , em33 , &
                                  sm31x, em31x, sm32x, em32x, sm33x, em33x, &
                                  sm31y, em31y, sm32y, em32y, sm33y, em33y )

      
      USE module_configure
      IMPLICIT NONE
 

      !  Input data.

      TYPE(domain)               , POINTER          :: grid
      INTEGER , INTENT(IN)            :: id
      INTEGER , INTENT(IN)            :: sd31, ed31, sd32, ed32, sd33, ed33
      INTEGER , INTENT(IN)            :: sm31, em31, sm32, em32, sm33, em33
      INTEGER , INTENT(IN)            :: sm31x, em31x, sm32x, em32x, sm33x, em33x
      INTEGER , INTENT(IN)            :: sm31y, em31y, sm32y, em32y, sm33y, em33y

      !  Local data.
      INTEGER dyn_opt, idum1, idum2, spec_bdy_width
      INTEGER num_bytes_allocated
      REAL    initial_data_value
      CHARACTER (LEN=256) message

      !declare ierr variable for error checking ALLOCATE calls
      INTEGER ierr

      INTEGER                              :: loop

      CALL get_initial_data_value ( initial_data_value )

      CALL get_dyn_opt( dyn_opt )
      CALL get_spec_bdy_width( spec_bdy_width )

      CALL set_scalar_indices_from_config( id , idum1 , idum2 )

      num_bytes_allocated = 0 


      IF      ( .FALSE. )           THEN

      ELSE IF ( dyn_opt == DYN_EM ) THEN
        CALL wrf_message ( 'DYNAMICS OPTION: Eulerian Mass Coordinate ')
!STARTOFREGISTRYGENERATEDINCLUDE 'inc/em_allocs.inc'
!
! WARNING This file is generated automatically by use_registry
! using the data base in the file named Registry.
! Do not edit.  Your changes to this file will be lost.
!
ALLOCATE(grid%lu_index(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%lu_index(sm31:em31,sm33:em33). ')
 endif
  grid%lu_index=initial_data_value
ALLOCATE(grid%em_u_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_u_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_u_1=initial_data_value
ALLOCATE(grid%em_u_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_u_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_u_2=initial_data_value
ALLOCATE(grid%em_ru(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ru(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_ru=initial_data_value
ALLOCATE(grid%em_v_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_v_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_v_1=initial_data_value
ALLOCATE(grid%em_v_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_v_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_v_2=initial_data_value
ALLOCATE(grid%em_rv(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rv(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_rv=initial_data_value
ALLOCATE(grid%em_w_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_w_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_w_1=initial_data_value
ALLOCATE(grid%em_w_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_w_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_w_2=initial_data_value
ALLOCATE(grid%em_ww(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ww(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_ww=initial_data_value
ALLOCATE(grid%em_rw(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rw(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_rw=initial_data_value
ALLOCATE(grid%em_ph_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ph_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_ph_1=initial_data_value
ALLOCATE(grid%em_ph_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ph_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_ph_2=initial_data_value
ALLOCATE(grid%em_phb(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_phb(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_phb=initial_data_value
ALLOCATE(grid%em_phb_fine(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_phb_fine(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_phb_fine=initial_data_value
ALLOCATE(grid%em_ph0(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ph0(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_ph0=initial_data_value
ALLOCATE(grid%em_php(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_php(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_php=initial_data_value
ALLOCATE(grid%em_t_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_t_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_t_1=initial_data_value
ALLOCATE(grid%em_t_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_t_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_t_2=initial_data_value
ALLOCATE(grid%em_t_init(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_t_init(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_t_init=initial_data_value
ALLOCATE(grid%em_tp_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_tp_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_tp_1=initial_data_value
ALLOCATE(grid%em_tp_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_tp_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_tp_2=initial_data_value
ALLOCATE(grid%em_mu_1(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mu_1(sm31:em31,sm33:em33). ')
 endif
  grid%em_mu_1=initial_data_value
ALLOCATE(grid%em_mu_2(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mu_2(sm31:em31,sm33:em33). ')
 endif
  grid%em_mu_2=initial_data_value
ALLOCATE(grid%em_mub(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mub(sm31:em31,sm33:em33). ')
 endif
  grid%em_mub=initial_data_value
ALLOCATE(grid%em_mub_fine(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mub_fine(sm31:em31,sm33:em33). ')
 endif
  grid%em_mub_fine=initial_data_value
ALLOCATE(grid%em_mu0(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mu0(sm31:em31,sm33:em33). ')
 endif
  grid%em_mu0=initial_data_value
ALLOCATE(grid%em_mudf(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mudf(sm31:em31,sm33:em33). ')
 endif
  grid%em_mudf=initial_data_value
ALLOCATE(grid%em_tke_1(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_tke_1(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_tke_1=initial_data_value
ALLOCATE(grid%em_tke_2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_tke_2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_tke_2=initial_data_value
ALLOCATE(grid%em_p(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_p(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_p=initial_data_value
ALLOCATE(grid%em_al(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_al(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_al=initial_data_value
ALLOCATE(grid%em_alt(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_alt(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_alt=initial_data_value
ALLOCATE(grid%em_alb(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_alb(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_alb=initial_data_value
ALLOCATE(grid%em_zx(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_zx(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_zx=initial_data_value
ALLOCATE(grid%em_zy(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_zy(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_zy=initial_data_value
ALLOCATE(grid%em_rdz(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rdz(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_rdz=initial_data_value
ALLOCATE(grid%em_rdzw(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rdzw(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_rdzw=initial_data_value
ALLOCATE(grid%em_pb(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_pb(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_pb=initial_data_value
ALLOCATE(grid%em_fnm(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_fnm(sm32:em32). ')
 endif
  grid%em_fnm=initial_data_value
ALLOCATE(grid%em_fnp(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_fnp(sm32:em32). ')
 endif
  grid%em_fnp=initial_data_value
ALLOCATE(grid%em_rdnw(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rdnw(sm32:em32). ')
 endif
  grid%em_rdnw=initial_data_value
ALLOCATE(grid%em_rdn(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rdn(sm32:em32). ')
 endif
  grid%em_rdn=initial_data_value
ALLOCATE(grid%em_dnw(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_dnw(sm32:em32). ')
 endif
  grid%em_dnw=initial_data_value
ALLOCATE(grid%em_dn(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_dn(sm32:em32). ')
 endif
  grid%em_dn=initial_data_value
ALLOCATE(grid%em_znu(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_znu(sm32:em32). ')
 endif
  grid%em_znu=initial_data_value
ALLOCATE(grid%em_znw(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_znw(sm32:em32). ')
 endif
  grid%em_znw=initial_data_value
ALLOCATE(grid%em_t_base(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_t_base(sm32:em32). ')
 endif
  grid%em_t_base=initial_data_value
ALLOCATE(grid%em_z(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_z(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%em_z=initial_data_value
grid%cfn=initial_data_value
grid%cfn1=initial_data_value
grid%epsts=initial_data_value
grid%step_number=0
ALLOCATE(grid%q2(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%q2(sm31:em31,sm33:em33). ')
 endif
  grid%q2=initial_data_value
ALLOCATE(grid%t2(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%t2(sm31:em31,sm33:em33). ')
 endif
  grid%t2=initial_data_value
ALLOCATE(grid%th2(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%th2(sm31:em31,sm33:em33). ')
 endif
  grid%th2=initial_data_value
ALLOCATE(grid%psfc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%psfc(sm31:em31,sm33:em33). ')
 endif
  grid%psfc=initial_data_value
ALLOCATE(grid%u10(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%u10(sm31:em31,sm33:em33). ')
 endif
  grid%u10=initial_data_value
ALLOCATE(grid%v10(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%v10(sm31:em31,sm33:em33). ')
 endif
  grid%v10=initial_data_value
grid%rdx=initial_data_value
grid%rdy=initial_data_value
grid%dts=initial_data_value
grid%dtseps=initial_data_value
grid%resm=initial_data_value
grid%zetatop=initial_data_value
grid%cf1=initial_data_value
grid%cf2=initial_data_value
grid%cf3=initial_data_value
grid%number_at_same_level=0
grid%itimestep=0
grid%oid=0
grid%auxhist1_oid=0
grid%auxhist2_oid=0
grid%auxhist3_oid=0
grid%auxhist4_oid=0
grid%auxhist5_oid=0
grid%auxinput1_oid=0
grid%auxinput2_oid=0
grid%auxinput3_oid=0
grid%auxinput4_oid=0
grid%auxinput5_oid=0
grid%nframes=0
grid%lbc_fid=0
ALLOCATE(grid%imask(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%imask(sm31:em31,sm33:em33). ')
 endif
  grid%imask=0
ALLOCATE(grid%moist_1(sm31:em31,sm32:em32,sm33:em33,num_moist),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%moist_1(sm31:em31,sm32:em32,sm33:em33,num_moist). ')
 endif
  grid%moist_1=initial_data_value
ALLOCATE(grid%moist_2(sm31:em31,sm32:em32,sm33:em33,num_moist),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%moist_2(sm31:em31,sm32:em32,sm33:em33,num_moist). ')
 endif
  grid%moist_2=initial_data_value
ALLOCATE(grid%chem_1(sm31:em31,sm32:em32,sm33:em33,num_chem),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%chem_1(sm31:em31,sm32:em32,sm33:em33,num_chem). ')
 endif
  grid%chem_1=initial_data_value
ALLOCATE(grid%chem_2(sm31:em31,sm32:em32,sm33:em33,num_chem),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%chem_2(sm31:em31,sm32:em32,sm33:em33,num_chem). ')
 endif
  grid%chem_2=initial_data_value
ALLOCATE(grid%em_u_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_u_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_u_b=initial_data_value
ALLOCATE(grid%em_u_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_u_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_u_bt=initial_data_value
ALLOCATE(grid%em_v_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_v_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_v_b=initial_data_value
ALLOCATE(grid%em_v_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_v_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_v_bt=initial_data_value
ALLOCATE(grid%em_w_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_w_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_w_b=initial_data_value
ALLOCATE(grid%em_w_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_w_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_w_bt=initial_data_value
ALLOCATE(grid%em_ph_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ph_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_ph_b=initial_data_value
ALLOCATE(grid%em_ph_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_ph_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_ph_bt=initial_data_value
ALLOCATE(grid%em_t_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_t_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_t_b=initial_data_value
ALLOCATE(grid%em_t_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_t_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_t_bt=initial_data_value
ALLOCATE(grid%em_mu_b(max(ed31,ed33),1,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mu_b(max(ed31,ed33),1,spec_bdy_width,4). ')
 endif
  grid%em_mu_b=initial_data_value
ALLOCATE(grid%em_mu_bt(max(ed31,ed33),1,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_mu_bt(max(ed31,ed33),1,spec_bdy_width,4). ')
 endif
  grid%em_mu_bt=initial_data_value
ALLOCATE(grid%em_rqv_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rqv_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_rqv_b=initial_data_value
ALLOCATE(grid%em_rqv_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%em_rqv_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%em_rqv_bt=initial_data_value
ALLOCATE(grid%rqc_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqc_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqc_b=initial_data_value
ALLOCATE(grid%rqc_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqc_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqc_bt=initial_data_value
ALLOCATE(grid%rqr_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqr_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqr_b=initial_data_value
ALLOCATE(grid%rqr_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqr_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqr_bt=initial_data_value
ALLOCATE(grid%rqi_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqi_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqi_b=initial_data_value
ALLOCATE(grid%rqi_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqi_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqi_bt=initial_data_value
ALLOCATE(grid%rqs_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqs_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqs_b=initial_data_value
ALLOCATE(grid%rqs_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqs_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqs_bt=initial_data_value
ALLOCATE(grid%rqg_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqg_b(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqg_b=initial_data_value
ALLOCATE(grid%rqg_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqg_bt(max(ed31,ed33),sd32:ed32,spec_bdy_width,4). ')
 endif
  grid%rqg_bt=initial_data_value
ALLOCATE(grid%fcx(model_config_rec%spec_bdy_width),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%fcx(model_config_rec%spec_bdy_width). ')
 endif
  grid%fcx=initial_data_value
ALLOCATE(grid%gcx(model_config_rec%spec_bdy_width),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%gcx(model_config_rec%spec_bdy_width). ')
 endif
  grid%gcx=initial_data_value
grid%dtbc=initial_data_value
ALLOCATE(grid%sm000010(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sm000010(sm31:em31,sm33:em33). ')
 endif
  grid%sm000010=initial_data_value
ALLOCATE(grid%sm010040(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sm010040(sm31:em31,sm33:em33). ')
 endif
  grid%sm010040=initial_data_value
ALLOCATE(grid%sm040100(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sm040100(sm31:em31,sm33:em33). ')
 endif
  grid%sm040100=initial_data_value
ALLOCATE(grid%sm100200(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sm100200(sm31:em31,sm33:em33). ')
 endif
  grid%sm100200=initial_data_value
ALLOCATE(grid%sm010200(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sm010200(sm31:em31,sm33:em33). ')
 endif
  grid%sm010200=initial_data_value
ALLOCATE(grid%soilm000(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilm000(sm31:em31,sm33:em33). ')
 endif
  grid%soilm000=initial_data_value
ALLOCATE(grid%soilm005(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilm005(sm31:em31,sm33:em33). ')
 endif
  grid%soilm005=initial_data_value
ALLOCATE(grid%soilm020(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilm020(sm31:em31,sm33:em33). ')
 endif
  grid%soilm020=initial_data_value
ALLOCATE(grid%soilm040(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilm040(sm31:em31,sm33:em33). ')
 endif
  grid%soilm040=initial_data_value
ALLOCATE(grid%soilm160(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilm160(sm31:em31,sm33:em33). ')
 endif
  grid%soilm160=initial_data_value
ALLOCATE(grid%soilm300(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilm300(sm31:em31,sm33:em33). ')
 endif
  grid%soilm300=initial_data_value
ALLOCATE(grid%sw000010(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sw000010(sm31:em31,sm33:em33). ')
 endif
  grid%sw000010=initial_data_value
ALLOCATE(grid%sw010040(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sw010040(sm31:em31,sm33:em33). ')
 endif
  grid%sw010040=initial_data_value
ALLOCATE(grid%sw040100(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sw040100(sm31:em31,sm33:em33). ')
 endif
  grid%sw040100=initial_data_value
ALLOCATE(grid%sw100200(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sw100200(sm31:em31,sm33:em33). ')
 endif
  grid%sw100200=initial_data_value
ALLOCATE(grid%sw010200(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sw010200(sm31:em31,sm33:em33). ')
 endif
  grid%sw010200=initial_data_value
ALLOCATE(grid%soilw000(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilw000(sm31:em31,sm33:em33). ')
 endif
  grid%soilw000=initial_data_value
ALLOCATE(grid%soilw005(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilw005(sm31:em31,sm33:em33). ')
 endif
  grid%soilw005=initial_data_value
ALLOCATE(grid%soilw020(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilw020(sm31:em31,sm33:em33). ')
 endif
  grid%soilw020=initial_data_value
ALLOCATE(grid%soilw040(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilw040(sm31:em31,sm33:em33). ')
 endif
  grid%soilw040=initial_data_value
ALLOCATE(grid%soilw160(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilw160(sm31:em31,sm33:em33). ')
 endif
  grid%soilw160=initial_data_value
ALLOCATE(grid%soilw300(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilw300(sm31:em31,sm33:em33). ')
 endif
  grid%soilw300=initial_data_value
ALLOCATE(grid%st000010(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%st000010(sm31:em31,sm33:em33). ')
 endif
  grid%st000010=initial_data_value
ALLOCATE(grid%st010040(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%st010040(sm31:em31,sm33:em33). ')
 endif
  grid%st010040=initial_data_value
ALLOCATE(grid%st040100(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%st040100(sm31:em31,sm33:em33). ')
 endif
  grid%st040100=initial_data_value
ALLOCATE(grid%st100200(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%st100200(sm31:em31,sm33:em33). ')
 endif
  grid%st100200=initial_data_value
ALLOCATE(grid%st010200(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%st010200(sm31:em31,sm33:em33). ')
 endif
  grid%st010200=initial_data_value
ALLOCATE(grid%soilt000(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt000(sm31:em31,sm33:em33). ')
 endif
  grid%soilt000=initial_data_value
ALLOCATE(grid%soilt005(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt005(sm31:em31,sm33:em33). ')
 endif
  grid%soilt005=initial_data_value
ALLOCATE(grid%soilt020(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt020(sm31:em31,sm33:em33). ')
 endif
  grid%soilt020=initial_data_value
ALLOCATE(grid%soilt040(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt040(sm31:em31,sm33:em33). ')
 endif
  grid%soilt040=initial_data_value
ALLOCATE(grid%soilt160(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt160(sm31:em31,sm33:em33). ')
 endif
  grid%soilt160=initial_data_value
ALLOCATE(grid%soilt300(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt300(sm31:em31,sm33:em33). ')
 endif
  grid%soilt300=initial_data_value
ALLOCATE(grid%landmask(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%landmask(sm31:em31,sm33:em33). ')
 endif
  grid%landmask=initial_data_value
ALLOCATE(grid%topostdv(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%topostdv(sm31:em31,sm33:em33). ')
 endif
  grid%topostdv=initial_data_value
ALLOCATE(grid%toposlpx(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%toposlpx(sm31:em31,sm33:em33). ')
 endif
  grid%toposlpx=initial_data_value
ALLOCATE(grid%toposlpy(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%toposlpy(sm31:em31,sm33:em33). ')
 endif
  grid%toposlpy=initial_data_value
ALLOCATE(grid%shdmax(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%shdmax(sm31:em31,sm33:em33). ')
 endif
  grid%shdmax=initial_data_value
ALLOCATE(grid%shdmin(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%shdmin(sm31:em31,sm33:em33). ')
 endif
  grid%shdmin=initial_data_value
ALLOCATE(grid%snoalb(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%snoalb(sm31:em31,sm33:em33). ')
 endif
  grid%snoalb=initial_data_value
ALLOCATE(grid%slopecat(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%slopecat(sm31:em31,sm33:em33). ')
 endif
  grid%slopecat=initial_data_value
ALLOCATE(grid%toposoil(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%toposoil(sm31:em31,sm33:em33). ')
 endif
  grid%toposoil=initial_data_value
ALLOCATE(grid%landusef(sm31:em31,model_config_rec%num_land_cat,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%landusef(sm31:em31,model_config_rec%num_land_cat,sm33:em33). ')
 endif
  grid%landusef=initial_data_value
ALLOCATE(grid%soilctop(sm31:em31,model_config_rec%num_soil_cat,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilctop(sm31:em31,model_config_rec%num_soil_cat,sm33:em33). ')
 endif
  grid%soilctop=initial_data_value
ALLOCATE(grid%soilcbot(sm31:em31,model_config_rec%num_soil_cat,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilcbot(sm31:em31,model_config_rec%num_soil_cat,sm33:em33). ')
 endif
  grid%soilcbot=initial_data_value
ALLOCATE(grid%soilcat(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilcat(sm31:em31,sm33:em33). ')
 endif
  grid%soilcat=initial_data_value
ALLOCATE(grid%vegcat(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%vegcat(sm31:em31,sm33:em33). ')
 endif
  grid%vegcat=initial_data_value
ALLOCATE(grid%tslb(sm31:em31,model_config_rec%num_soil_layers,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%tslb(sm31:em31,model_config_rec%num_soil_layers,sm33:em33). ')
 endif
  grid%tslb=initial_data_value
ALLOCATE(grid%zs(model_config_rec%num_soil_layers),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%zs(model_config_rec%num_soil_layers). ')
 endif
  grid%zs=initial_data_value
ALLOCATE(grid%dzs(model_config_rec%num_soil_layers),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%dzs(model_config_rec%num_soil_layers). ')
 endif
  grid%dzs=initial_data_value
ALLOCATE(grid%smois(sm31:em31,model_config_rec%num_soil_layers,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%smois(sm31:em31,model_config_rec%num_soil_layers,sm33:em33). ')
 endif
  grid%smois=initial_data_value
ALLOCATE(grid%sh2o(sm31:em31,model_config_rec%num_soil_layers,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sh2o(sm31:em31,model_config_rec%num_soil_layers,sm33:em33). ')
 endif
  grid%sh2o=initial_data_value
ALLOCATE(grid%xice(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xice(sm31:em31,sm33:em33). ')
 endif
  grid%xice=initial_data_value
ALLOCATE(grid%smstav(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%smstav(sm31:em31,sm33:em33). ')
 endif
  grid%smstav=initial_data_value
ALLOCATE(grid%smstot(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%smstot(sm31:em31,sm33:em33). ')
 endif
  grid%smstot=initial_data_value
ALLOCATE(grid%sfcrunoff(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sfcrunoff(sm31:em31,sm33:em33). ')
 endif
  grid%sfcrunoff=initial_data_value
ALLOCATE(grid%udrunoff(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%udrunoff(sm31:em31,sm33:em33). ')
 endif
  grid%udrunoff=initial_data_value
ALLOCATE(grid%ivgtyp(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ivgtyp(sm31:em31,sm33:em33). ')
 endif
  grid%ivgtyp=0
ALLOCATE(grid%isltyp(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%isltyp(sm31:em31,sm33:em33). ')
 endif
  grid%isltyp=0
ALLOCATE(grid%vegfra(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%vegfra(sm31:em31,sm33:em33). ')
 endif
  grid%vegfra=initial_data_value
ALLOCATE(grid%sfcevp(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sfcevp(sm31:em31,sm33:em33). ')
 endif
  grid%sfcevp=initial_data_value
ALLOCATE(grid%grdflx(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%grdflx(sm31:em31,sm33:em33). ')
 endif
  grid%grdflx=initial_data_value
ALLOCATE(grid%sfcexc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sfcexc(sm31:em31,sm33:em33). ')
 endif
  grid%sfcexc=initial_data_value
ALLOCATE(grid%acsnow(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%acsnow(sm31:em31,sm33:em33). ')
 endif
  grid%acsnow=initial_data_value
ALLOCATE(grid%acsnom(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%acsnom(sm31:em31,sm33:em33). ')
 endif
  grid%acsnom=initial_data_value
ALLOCATE(grid%snow(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%snow(sm31:em31,sm33:em33). ')
 endif
  grid%snow=initial_data_value
ALLOCATE(grid%snowh(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%snowh(sm31:em31,sm33:em33). ')
 endif
  grid%snowh=initial_data_value
ALLOCATE(grid%canwat(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%canwat(sm31:em31,sm33:em33). ')
 endif
  grid%canwat=initial_data_value
ALLOCATE(grid%sst(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sst(sm31:em31,sm33:em33). ')
 endif
  grid%sst=initial_data_value
grid%ifndsnowh=0
grid%ifndsoilw=0
ALLOCATE(grid%smfr3d(sm31:em31,model_config_rec%num_soil_layers,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%smfr3d(sm31:em31,model_config_rec%num_soil_layers,sm33:em33). ')
 endif
  grid%smfr3d=initial_data_value
ALLOCATE(grid%keepfr3dflag(sm31:em31,model_config_rec%num_soil_layers,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%keepfr3dflag(sm31:em31,model_config_rec%num_soil_layers,sm33:em33). ')
 endif
  grid%keepfr3dflag=initial_data_value
ALLOCATE(grid%potevp(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%potevp(sm31:em31,sm33:em33). ')
 endif
  grid%potevp=initial_data_value
ALLOCATE(grid%snopcx(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%snopcx(sm31:em31,sm33:em33). ')
 endif
  grid%snopcx=initial_data_value
ALLOCATE(grid%soiltb(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soiltb(sm31:em31,sm33:em33). ')
 endif
  grid%soiltb=initial_data_value
ALLOCATE(grid%tke_myj(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%tke_myj(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%tke_myj=initial_data_value
ALLOCATE(grid%ct(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ct(sm31:em31,sm33:em33). ')
 endif
  grid%ct=initial_data_value
ALLOCATE(grid%thz0(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%thz0(sm31:em31,sm33:em33). ')
 endif
  grid%thz0=initial_data_value
ALLOCATE(grid%z0(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%z0(sm31:em31,sm33:em33). ')
 endif
  grid%z0=initial_data_value
ALLOCATE(grid%qz0(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qz0(sm31:em31,sm33:em33). ')
 endif
  grid%qz0=initial_data_value
ALLOCATE(grid%uz0(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%uz0(sm31:em31,sm33:em33). ')
 endif
  grid%uz0=initial_data_value
ALLOCATE(grid%vz0(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%vz0(sm31:em31,sm33:em33). ')
 endif
  grid%vz0=initial_data_value
ALLOCATE(grid%qsfc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qsfc(sm31:em31,sm33:em33). ')
 endif
  grid%qsfc=initial_data_value
ALLOCATE(grid%akhs(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%akhs(sm31:em31,sm33:em33). ')
 endif
  grid%akhs=initial_data_value
ALLOCATE(grid%akms(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%akms(sm31:em31,sm33:em33). ')
 endif
  grid%akms=initial_data_value
ALLOCATE(grid%kpbl(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%kpbl(sm31:em31,sm33:em33). ')
 endif
  grid%kpbl=0
ALLOCATE(grid%htop(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%htop(sm31:em31,sm33:em33). ')
 endif
  grid%htop=initial_data_value
ALLOCATE(grid%hbot(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%hbot(sm31:em31,sm33:em33). ')
 endif
  grid%hbot=initial_data_value
ALLOCATE(grid%cuppt(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cuppt(sm31:em31,sm33:em33). ')
 endif
  grid%cuppt=initial_data_value
ALLOCATE(grid%totswdn(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%totswdn(sm31:em31,sm33:em33). ')
 endif
  grid%totswdn=initial_data_value
ALLOCATE(grid%totlwdn(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%totlwdn(sm31:em31,sm33:em33). ')
 endif
  grid%totlwdn=initial_data_value
ALLOCATE(grid%rswtoa(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rswtoa(sm31:em31,sm33:em33). ')
 endif
  grid%rswtoa=initial_data_value
ALLOCATE(grid%rlwtoa(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rlwtoa(sm31:em31,sm33:em33). ')
 endif
  grid%rlwtoa=initial_data_value
ALLOCATE(grid%czmean(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%czmean(sm31:em31,sm33:em33). ')
 endif
  grid%czmean=initial_data_value
ALLOCATE(grid%cfracl(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cfracl(sm31:em31,sm33:em33). ')
 endif
  grid%cfracl=initial_data_value
ALLOCATE(grid%cfracm(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cfracm(sm31:em31,sm33:em33). ')
 endif
  grid%cfracm=initial_data_value
ALLOCATE(grid%cfrach(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cfrach(sm31:em31,sm33:em33). ')
 endif
  grid%cfrach=initial_data_value
ALLOCATE(grid%acfrst(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%acfrst(sm31:em31,sm33:em33). ')
 endif
  grid%acfrst=initial_data_value
ALLOCATE(grid%ncfrst(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ncfrst(sm31:em31,sm33:em33). ')
 endif
  grid%ncfrst=0
ALLOCATE(grid%acfrcv(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%acfrcv(sm31:em31,sm33:em33). ')
 endif
  grid%acfrcv=initial_data_value
ALLOCATE(grid%ncfrcv(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ncfrcv(sm31:em31,sm33:em33). ')
 endif
  grid%ncfrcv=0
ALLOCATE(grid%f_ice_phy(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%f_ice_phy(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%f_ice_phy=initial_data_value
ALLOCATE(grid%f_rain_phy(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%f_rain_phy(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%f_rain_phy=initial_data_value
ALLOCATE(grid%f_rimef_phy(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%f_rimef_phy(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%f_rimef_phy=initial_data_value
ALLOCATE(grid%h_diabatic(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%h_diabatic(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%h_diabatic=initial_data_value
ALLOCATE(grid%msft(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%msft(sm31:em31,sm33:em33). ')
 endif
  grid%msft=initial_data_value
ALLOCATE(grid%msfu(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%msfu(sm31:em31,sm33:em33). ')
 endif
  grid%msfu=initial_data_value
ALLOCATE(grid%msfv(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%msfv(sm31:em31,sm33:em33). ')
 endif
  grid%msfv=initial_data_value
ALLOCATE(grid%f(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%f(sm31:em31,sm33:em33). ')
 endif
  grid%f=initial_data_value
ALLOCATE(grid%e(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%e(sm31:em31,sm33:em33). ')
 endif
  grid%e=initial_data_value
ALLOCATE(grid%sina(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%sina(sm31:em31,sm33:em33). ')
 endif
  grid%sina=initial_data_value
ALLOCATE(grid%cosa(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cosa(sm31:em31,sm33:em33). ')
 endif
  grid%cosa=initial_data_value
ALLOCATE(grid%ht(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ht(sm31:em31,sm33:em33). ')
 endif
  grid%ht=initial_data_value
ALLOCATE(grid%ht_fine(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ht_fine(sm31:em31,sm33:em33). ')
 endif
  grid%ht_fine=initial_data_value
ALLOCATE(grid%ht_int(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ht_int(sm31:em31,sm33:em33). ')
 endif
  grid%ht_int=initial_data_value
ALLOCATE(grid%ht_input(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ht_input(sm31:em31,sm33:em33). ')
 endif
  grid%ht_input=initial_data_value
ALLOCATE(grid%tsk(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%tsk(sm31:em31,sm33:em33). ')
 endif
  grid%tsk=initial_data_value
ALLOCATE(grid%u_base(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%u_base(sm32:em32). ')
 endif
  grid%u_base=initial_data_value
ALLOCATE(grid%v_base(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%v_base(sm32:em32). ')
 endif
  grid%v_base=initial_data_value
ALLOCATE(grid%qv_base(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qv_base(sm32:em32). ')
 endif
  grid%qv_base=initial_data_value
ALLOCATE(grid%z_base(sm32:em32),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%z_base(sm32:em32). ')
 endif
  grid%z_base=initial_data_value
grid%u_frame=initial_data_value
grid%v_frame=initial_data_value
grid%p_top=initial_data_value
ALLOCATE(grid%rthcuten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rthcuten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rthcuten=initial_data_value
ALLOCATE(grid%rqvcuten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqvcuten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqvcuten=initial_data_value
ALLOCATE(grid%rqrcuten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqrcuten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqrcuten=initial_data_value
ALLOCATE(grid%rqccuten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqccuten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqccuten=initial_data_value
ALLOCATE(grid%rqscuten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqscuten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqscuten=initial_data_value
ALLOCATE(grid%rqicuten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqicuten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqicuten=initial_data_value
ALLOCATE(grid%w0avg(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%w0avg(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%w0avg=initial_data_value
ALLOCATE(grid%rainc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rainc(sm31:em31,sm33:em33). ')
 endif
  grid%rainc=initial_data_value
ALLOCATE(grid%rainnc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rainnc(sm31:em31,sm33:em33). ')
 endif
  grid%rainnc=initial_data_value
ALLOCATE(grid%raincv(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%raincv(sm31:em31,sm33:em33). ')
 endif
  grid%raincv=initial_data_value
ALLOCATE(grid%rainncv(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rainncv(sm31:em31,sm33:em33). ')
 endif
  grid%rainncv=initial_data_value
ALLOCATE(grid%rainbl(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rainbl(sm31:em31,sm33:em33). ')
 endif
  grid%rainbl=initial_data_value
ALLOCATE(grid%nca(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%nca(sm31:em31,sm33:em33). ')
 endif
  grid%nca=initial_data_value
ALLOCATE(grid%lowlyr(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%lowlyr(sm31:em31,sm33:em33). ')
 endif
  grid%lowlyr=0
ALLOCATE(grid%mass_flux(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%mass_flux(sm31:em31,sm33:em33). ')
 endif
  grid%mass_flux=initial_data_value
ALLOCATE(grid%apr_gr(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_gr(sm31:em31,sm33:em33). ')
 endif
  grid%apr_gr=initial_data_value
ALLOCATE(grid%apr_w(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_w(sm31:em31,sm33:em33). ')
 endif
  grid%apr_w=initial_data_value
ALLOCATE(grid%apr_mc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_mc(sm31:em31,sm33:em33). ')
 endif
  grid%apr_mc=initial_data_value
ALLOCATE(grid%apr_st(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_st(sm31:em31,sm33:em33). ')
 endif
  grid%apr_st=initial_data_value
ALLOCATE(grid%apr_as(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_as(sm31:em31,sm33:em33). ')
 endif
  grid%apr_as=initial_data_value
ALLOCATE(grid%apr_capma(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_capma(sm31:em31,sm33:em33). ')
 endif
  grid%apr_capma=initial_data_value
ALLOCATE(grid%apr_capme(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_capme(sm31:em31,sm33:em33). ')
 endif
  grid%apr_capme=initial_data_value
ALLOCATE(grid%apr_capmi(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%apr_capmi(sm31:em31,sm33:em33). ')
 endif
  grid%apr_capmi=initial_data_value
ALLOCATE(grid%xf_ens(sm31:em31,sm33:em33,model_config_rec%ensdim),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xf_ens(sm31:em31,sm33:em33,model_config_rec%ensdim). ')
 endif
  grid%xf_ens=initial_data_value
ALLOCATE(grid%pr_ens(sm31:em31,sm33:em33,model_config_rec%ensdim),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%pr_ens(sm31:em31,sm33:em33,model_config_rec%ensdim). ')
 endif
  grid%pr_ens=initial_data_value
ALLOCATE(grid%rthften(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rthften(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rthften=initial_data_value
ALLOCATE(grid%rqvften(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqvften(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqvften=initial_data_value
grid%stepcu=0
ALLOCATE(grid%rthraten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rthraten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rthraten=initial_data_value
ALLOCATE(grid%rthratenlw(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rthratenlw(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rthratenlw=initial_data_value
ALLOCATE(grid%rthratensw(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rthratensw(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rthratensw=initial_data_value
ALLOCATE(grid%cldfra(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cldfra(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%cldfra=initial_data_value
ALLOCATE(grid%swdown(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%swdown(sm31:em31,sm33:em33). ')
 endif
  grid%swdown=initial_data_value
ALLOCATE(grid%gsw(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%gsw(sm31:em31,sm33:em33). ')
 endif
  grid%gsw=initial_data_value
ALLOCATE(grid%glw(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%glw(sm31:em31,sm33:em33). ')
 endif
  grid%glw=initial_data_value
ALLOCATE(grid%xlat(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xlat(sm31:em31,sm33:em33). ')
 endif
  grid%xlat=initial_data_value
ALLOCATE(grid%xlong(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xlong(sm31:em31,sm33:em33). ')
 endif
  grid%xlong=initial_data_value
ALLOCATE(grid%albedo(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%albedo(sm31:em31,sm33:em33). ')
 endif
  grid%albedo=initial_data_value
ALLOCATE(grid%albbck(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%albbck(sm31:em31,sm33:em33). ')
 endif
  grid%albbck=initial_data_value
ALLOCATE(grid%emiss(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%emiss(sm31:em31,sm33:em33). ')
 endif
  grid%emiss=initial_data_value
ALLOCATE(grid%cldefi(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%cldefi(sm31:em31,sm33:em33). ')
 endif
  grid%cldefi=initial_data_value
grid%stepra=0
ALLOCATE(grid%rublten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rublten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rublten=initial_data_value
ALLOCATE(grid%rvblten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rvblten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rvblten=initial_data_value
ALLOCATE(grid%rthblten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rthblten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rthblten=initial_data_value
ALLOCATE(grid%rqvblten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqvblten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqvblten=initial_data_value
ALLOCATE(grid%rqcblten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqcblten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqcblten=initial_data_value
ALLOCATE(grid%rqiblten(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%rqiblten(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%rqiblten=initial_data_value
ALLOCATE(grid%tmn(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%tmn(sm31:em31,sm33:em33). ')
 endif
  grid%tmn=initial_data_value
ALLOCATE(grid%xland(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xland(sm31:em31,sm33:em33). ')
 endif
  grid%xland=initial_data_value
ALLOCATE(grid%znt(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%znt(sm31:em31,sm33:em33). ')
 endif
  grid%znt=initial_data_value
ALLOCATE(grid%ust(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%ust(sm31:em31,sm33:em33). ')
 endif
  grid%ust=initial_data_value
ALLOCATE(grid%mol(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%mol(sm31:em31,sm33:em33). ')
 endif
  grid%mol=initial_data_value
ALLOCATE(grid%pblh(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%pblh(sm31:em31,sm33:em33). ')
 endif
  grid%pblh=initial_data_value
ALLOCATE(grid%capg(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%capg(sm31:em31,sm33:em33). ')
 endif
  grid%capg=initial_data_value
ALLOCATE(grid%thc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%thc(sm31:em31,sm33:em33). ')
 endif
  grid%thc=initial_data_value
ALLOCATE(grid%hfx(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%hfx(sm31:em31,sm33:em33). ')
 endif
  grid%hfx=initial_data_value
ALLOCATE(grid%qfx(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qfx(sm31:em31,sm33:em33). ')
 endif
  grid%qfx=initial_data_value
ALLOCATE(grid%lh(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%lh(sm31:em31,sm33:em33). ')
 endif
  grid%lh=initial_data_value
ALLOCATE(grid%flhc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%flhc(sm31:em31,sm33:em33). ')
 endif
  grid%flhc=initial_data_value
ALLOCATE(grid%flqc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%flqc(sm31:em31,sm33:em33). ')
 endif
  grid%flqc=initial_data_value
ALLOCATE(grid%qsg(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qsg(sm31:em31,sm33:em33). ')
 endif
  grid%qsg=initial_data_value
ALLOCATE(grid%qvg(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qvg(sm31:em31,sm33:em33). ')
 endif
  grid%qvg=initial_data_value
ALLOCATE(grid%qcg(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%qcg(sm31:em31,sm33:em33). ')
 endif
  grid%qcg=initial_data_value
ALLOCATE(grid%soilt1(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%soilt1(sm31:em31,sm33:em33). ')
 endif
  grid%soilt1=initial_data_value
ALLOCATE(grid%tsnav(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%tsnav(sm31:em31,sm33:em33). ')
 endif
  grid%tsnav=initial_data_value
ALLOCATE(grid%snowc(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%snowc(sm31:em31,sm33:em33). ')
 endif
  grid%snowc=initial_data_value
ALLOCATE(grid%mavail(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%mavail(sm31:em31,sm33:em33). ')
 endif
  grid%mavail=initial_data_value
ALLOCATE(grid%tkesfcf(sm31:em31,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%tkesfcf(sm31:em31,sm33:em33). ')
 endif
  grid%tkesfcf=initial_data_value
grid%stepbl=0
ALLOCATE(grid%taucldi(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%taucldi(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%taucldi=initial_data_value
ALLOCATE(grid%taucldc(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%taucldc(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%taucldc=initial_data_value
ALLOCATE(grid%defor11(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%defor11(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%defor11=initial_data_value
ALLOCATE(grid%defor22(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%defor22(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%defor22=initial_data_value
ALLOCATE(grid%defor12(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%defor12(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%defor12=initial_data_value
ALLOCATE(grid%defor33(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%defor33(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%defor33=initial_data_value
ALLOCATE(grid%defor13(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%defor13(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%defor13=initial_data_value
ALLOCATE(grid%defor23(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%defor23(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%defor23=initial_data_value
ALLOCATE(grid%xkmv(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xkmv(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%xkmv=initial_data_value
ALLOCATE(grid%xkmh(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xkmh(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%xkmh=initial_data_value
ALLOCATE(grid%xkmhd(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xkmhd(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%xkmhd=initial_data_value
ALLOCATE(grid%xkhv(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xkhv(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%xkhv=initial_data_value
ALLOCATE(grid%xkhh(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%xkhh(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%xkhh=initial_data_value
ALLOCATE(grid%div(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%div(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%div=initial_data_value
ALLOCATE(grid%bn2(sm31:em31,sm32:em32,sm33:em33),STAT=ierr)
 if (ierr.ne.0) then
 CALL wrf_error_fatal ( &
'frame/module_domain.f: Failed to allocate grid%bn2(sm31:em31,sm32:em32,sm33:em33). ')
 endif
  grid%bn2=initial_data_value
grid%run_days=0
grid%run_hours=0
grid%run_minutes=0
grid%run_seconds=0
grid%start_year=0
grid%start_month=0
grid%start_day=0
grid%start_hour=0
grid%start_minute=0
grid%start_second=0
grid%end_year=0
grid%end_month=0
grid%end_day=0
grid%end_hour=0
grid%end_minute=0
grid%end_second=0
grid%interval_seconds=0
grid%history_interval=0
grid%frames_per_outfile=0
grid%restart_interval=0
grid%io_form_input=0
grid%io_form_history=0
grid%io_form_restart=0
grid%io_form_boundary=0
grid%debug_level=0
grid%history_interval_mo=0
grid%history_interval_d=0
grid%history_interval_h=0
grid%history_interval_m=0
grid%history_interval_s=0
grid%inputout_interval_mo=0
grid%inputout_interval_d=0
grid%inputout_interval_h=0
grid%inputout_interval_m=0
grid%inputout_interval_s=0
grid%inputout_interval=0
grid%auxhist1_interval_mo=0
grid%auxhist1_interval_d=0
grid%auxhist1_interval_h=0
grid%auxhist1_interval_m=0
grid%auxhist1_interval_s=0
grid%auxhist1_interval=0
grid%auxhist2_interval_mo=0
grid%auxhist2_interval_d=0
grid%auxhist2_interval_h=0
grid%auxhist2_interval_m=0
grid%auxhist2_interval_s=0
grid%auxhist2_interval=0
grid%auxhist3_interval_mo=0
grid%auxhist3_interval_d=0
grid%auxhist3_interval_h=0
grid%auxhist3_interval_m=0
grid%auxhist3_interval_s=0
grid%auxhist3_interval=0
grid%auxhist4_interval_mo=0
grid%auxhist4_interval_d=0
grid%auxhist4_interval_h=0
grid%auxhist4_interval_m=0
grid%auxhist4_interval_s=0
grid%auxhist4_interval=0
grid%auxhist5_interval_mo=0
grid%auxhist5_interval_d=0
grid%auxhist5_interval_h=0
grid%auxhist5_interval_m=0
grid%auxhist5_interval_s=0
grid%auxhist5_interval=0
grid%auxinput1_interval_mo=0
grid%auxinput1_interval_d=0
grid%auxinput1_interval_h=0
grid%auxinput1_interval_m=0
grid%auxinput1_interval_s=0
grid%auxinput1_interval=0
grid%auxinput2_interval_mo=0
grid%auxinput2_interval_d=0
grid%auxinput2_interval_h=0
grid%auxinput2_interval_m=0
grid%auxinput2_interval_s=0
grid%auxinput2_interval=0
grid%auxinput3_interval_mo=0
grid%auxinput3_interval_d=0
grid%auxinput3_interval_h=0
grid%auxinput3_interval_m=0
grid%auxinput3_interval_s=0
grid%auxinput3_interval=0
grid%auxinput4_interval_mo=0
grid%auxinput4_interval_d=0
grid%auxinput4_interval_h=0
grid%auxinput4_interval_m=0
grid%auxinput4_interval_s=0
grid%auxinput4_interval=0
grid%auxinput5_interval_mo=0
grid%auxinput5_interval_d=0
grid%auxinput5_interval_h=0
grid%auxinput5_interval_m=0
grid%auxinput5_interval_s=0
grid%auxinput5_interval=0
grid%restart_interval_mo=0
grid%restart_interval_d=0
grid%restart_interval_h=0
grid%restart_interval_m=0
grid%restart_interval_s=0
grid%history_begin_y=0
grid%history_begin_mo=0
grid%history_begin_d=0
grid%history_begin_h=0
grid%history_begin_m=0
grid%history_begin_s=0
grid%inputout_begin_y=0
grid%inputout_begin_mo=0
grid%inputout_begin_d=0
grid%inputout_begin_h=0
grid%inputout_begin_m=0
grid%inputout_begin_s=0
grid%auxhist1_begin_y=0
grid%auxhist1_begin_mo=0
grid%auxhist1_begin_d=0
grid%auxhist1_begin_h=0
grid%auxhist1_begin_m=0
grid%auxhist1_begin_s=0
grid%auxhist2_begin_y=0
grid%auxhist2_begin_mo=0
grid%auxhist2_begin_d=0
grid%auxhist2_begin_h=0
grid%auxhist2_begin_m=0
grid%auxhist2_begin_s=0
grid%auxhist3_begin_y=0
grid%auxhist3_begin_mo=0
grid%auxhist3_begin_d=0
grid%auxhist3_begin_h=0
grid%auxhist3_begin_m=0
grid%auxhist3_begin_s=0
grid%auxhist4_begin_y=0
grid%auxhist4_begin_mo=0
grid%auxhist4_begin_d=0
grid%auxhist4_begin_h=0
grid%auxhist4_begin_m=0
grid%auxhist4_begin_s=0
grid%auxhist5_begin_y=0
grid%auxhist5_begin_mo=0
grid%auxhist5_begin_d=0
grid%auxhist5_begin_h=0
grid%auxhist5_begin_m=0
grid%auxhist5_begin_s=0
grid%auxinput1_begin_y=0
grid%auxinput1_begin_mo=0
grid%auxinput1_begin_d=0
grid%auxinput1_begin_h=0
grid%auxinput1_begin_m=0
grid%auxinput1_begin_s=0
grid%auxinput2_begin_y=0
grid%auxinput2_begin_mo=0
grid%auxinput2_begin_d=0
grid%auxinput2_begin_h=0
grid%auxinput2_begin_m=0
grid%auxinput2_begin_s=0
grid%auxinput3_begin_y=0
grid%auxinput3_begin_mo=0
grid%auxinput3_begin_d=0
grid%auxinput3_begin_h=0
grid%auxinput3_begin_m=0
grid%auxinput3_begin_s=0
grid%auxinput4_begin_y=0
grid%auxinput4_begin_mo=0
grid%auxinput4_begin_d=0
grid%auxinput4_begin_h=0
grid%auxinput4_begin_m=0
grid%auxinput4_begin_s=0
grid%auxinput5_begin_y=0
grid%auxinput5_begin_mo=0
grid%auxinput5_begin_d=0
grid%auxinput5_begin_h=0
grid%auxinput5_begin_m=0
grid%auxinput5_begin_s=0
grid%restart_begin_y=0
grid%restart_begin_mo=0
grid%restart_begin_d=0
grid%restart_begin_h=0
grid%restart_begin_m=0
grid%restart_begin_s=0
grid%history_end_y=0
grid%history_end_mo=0
grid%history_end_d=0
grid%history_end_h=0
grid%history_end_m=0
grid%history_end_s=0
grid%inputout_end_y=0
grid%inputout_end_mo=0
grid%inputout_end_d=0
grid%inputout_end_h=0
grid%inputout_end_m=0
grid%inputout_end_s=0
grid%auxhist1_end_y=0
grid%auxhist1_end_mo=0
grid%auxhist1_end_d=0
grid%auxhist1_end_h=0
grid%auxhist1_end_m=0
grid%auxhist1_end_s=0
grid%auxhist2_end_y=0
grid%auxhist2_end_mo=0
grid%auxhist2_end_d=0
grid%auxhist2_end_h=0
grid%auxhist2_end_m=0
grid%auxhist2_end_s=0
grid%auxhist3_end_y=0
grid%auxhist3_end_mo=0
grid%auxhist3_end_d=0
grid%auxhist3_end_h=0
grid%auxhist3_end_m=0
grid%auxhist3_end_s=0
grid%auxhist4_end_y=0
grid%auxhist4_end_mo=0
grid%auxhist4_end_d=0
grid%auxhist4_end_h=0
grid%auxhist4_end_m=0
grid%auxhist4_end_s=0
grid%auxhist5_end_y=0
grid%auxhist5_end_mo=0
grid%auxhist5_end_d=0
grid%auxhist5_end_h=0
grid%auxhist5_end_m=0
grid%auxhist5_end_s=0
grid%auxinput1_end_y=0
grid%auxinput1_end_mo=0
grid%auxinput1_end_d=0
grid%auxinput1_end_h=0
grid%auxinput1_end_m=0
grid%auxinput1_end_s=0
grid%auxinput2_end_y=0
grid%auxinput2_end_mo=0
grid%auxinput2_end_d=0
grid%auxinput2_end_h=0
grid%auxinput2_end_m=0
grid%auxinput2_end_s=0
grid%auxinput3_end_y=0
grid%auxinput3_end_mo=0
grid%auxinput3_end_d=0
grid%auxinput3_end_h=0
grid%auxinput3_end_m=0
grid%auxinput3_end_s=0
grid%auxinput4_end_y=0
grid%auxinput4_end_mo=0
grid%auxinput4_end_d=0
grid%auxinput4_end_h=0
grid%auxinput4_end_m=0
grid%auxinput4_end_s=0
grid%auxinput5_end_y=0
grid%auxinput5_end_mo=0
grid%auxinput5_end_d=0
grid%auxinput5_end_h=0
grid%auxinput5_end_m=0
grid%auxinput5_end_s=0
grid%io_form_auxinput1=0
grid%io_form_auxinput2=0
grid%io_form_auxinput3=0
grid%io_form_auxinput4=0
grid%io_form_auxinput5=0
grid%io_form_auxhist1=0
grid%io_form_auxhist2=0
grid%io_form_auxhist3=0
grid%io_form_auxhist4=0
grid%io_form_auxhist5=0
grid%julyr=0
grid%julday=0
grid%gmt=initial_data_value
grid%time_step=0
grid%time_step_fract_num=0
grid%time_step_fract_den=0
grid%max_dom=0
grid%s_we=0
grid%e_we=0
grid%s_sn=0
grid%e_sn=0
grid%s_vert=0
grid%e_vert=0
grid%dx=initial_data_value
grid%dy=initial_data_value
grid%grid_id=0
grid%parent_id=0
grid%level=0
grid%i_parent_start=0
grid%j_parent_start=0
grid%parent_grid_ratio=0
grid%parent_time_step_ratio=0
grid%feedback=0
grid%smooth_option=0
grid%ztop=initial_data_value
grid%moad_grid_ratio=0
grid%moad_time_step_ratio=0
grid%shw=0
grid%tile_sz_x=0
grid%tile_sz_y=0
grid%numtiles=0
grid%nproc_x=0
grid%nproc_y=0
grid%irand=0
grid%dt=initial_data_value
grid%mp_physics=0
grid%ra_lw_physics=0
grid%ra_sw_physics=0
grid%radt=initial_data_value
grid%sf_sfclay_physics=0
grid%sf_surface_physics=0
grid%bl_pbl_physics=0
grid%bldt=initial_data_value
grid%cu_physics=0
grid%cudt=initial_data_value
grid%gsmdt=initial_data_value
grid%isfflx=0
grid%ifsnow=0
grid%icloud=0
grid%surface_input_source=0
grid%num_soil_layers=0
grid%maxiens=0
grid%maxens=0
grid%maxens2=0
grid%maxens3=0
grid%ensdim=0
grid%chem_opt=0
grid%num_land_cat=0
grid%num_soil_cat=0
grid%dyn_opt=0
grid%rk_ord=0
grid%w_damping=0
grid%diff_opt=0
grid%km_opt=0
grid%damp_opt=0
grid%zdamp=initial_data_value
grid%dampcoef=initial_data_value
grid%khdif=initial_data_value
grid%kvdif=initial_data_value
grid%smdiv=initial_data_value
grid%emdiv=initial_data_value
grid%epssm=initial_data_value
grid%time_step_sound=0
grid%h_mom_adv_order=0
grid%v_mom_adv_order=0
grid%h_sca_adv_order=0
grid%v_sca_adv_order=0
grid%mix_cr_len=initial_data_value
grid%tke_upper_bound=initial_data_value
grid%kh_tke_upper_bound=initial_data_value
grid%kv_tke_upper_bound=initial_data_value
grid%tke_drag_coefficient=initial_data_value
grid%tke_heat_flux=initial_data_value
grid%spec_bdy_width=0
grid%spec_zone=0
grid%relax_zone=0
grid%real_data_init_type=0
grid%cen_lat=initial_data_value
grid%cen_lon=initial_data_value
grid%truelat1=initial_data_value
grid%truelat2=initial_data_value
grid%moad_cen_lat=initial_data_value
grid%stand_lon=initial_data_value
grid%bdyfrq=initial_data_value
grid%iswater=0
grid%isice=0
grid%isurban=0
grid%isoilwater=0
grid%map_proj=0
!ENDOFREGISTRYGENERATEDINCLUDE

!### 13. Edit frame/module_domain.F to add case for DYN_EXP to
!### alloc_space_field.  (This is a bug;
!### one should never have to edit the framework code; will fix this in
!### coming versions).  Same goes for share/start_domain.F, although this
!### is not a framework routine.
      ELSE
        WRITE( wrf_err_message , * )'Invalid specification of dynamics: dyn_opt = ',dyn_opt
        CALL wrf_error_fatal ( TRIM ( wrf_err_message ) )
      ENDIF

      WRITE(message,*)'alloc_space_field: domain ',id,' ',num_bytes_allocated
      CALL  wrf_debug( 1, message )

   END SUBROUTINE alloc_space_field

!

!  This routine is used to DEALLOCATE space for a single domain.  First
!  the pointers in the linked list are fixed (so the one in the middle can
!  be removed).  Second, the field data are all removed through a CALL to 
!  the dealloc_space_domain routine.  Finally, the pointer to the domain
!  itself is DEALLOCATEd.

   SUBROUTINE dealloc_space_domain ( id )
      
      IMPLICIT NONE

      !  Input data.

      INTEGER , INTENT(IN)            :: id

      !  Local data.

      TYPE(domain) , POINTER          :: grid
      LOGICAL                         :: found

      !  Initializations required to start the routine.

      grid => head_grid
      old_grid => head_grid
      found = .FALSE.

      !  The identity of the domain to delete is based upon the "id".
      !  We search all of the possible grids.  It is required to find a domain
      !  otherwise it is a fatal error.  

      find_grid : DO WHILE ( ASSOCIATED(grid) ) 
         IF ( grid%id == id ) THEN
            found = .TRUE.
            old_grid%next => grid%next
            CALL dealloc_space_field ( grid )
            DEALLOCATE(grid)
            EXIT find_grid
         END IF
         old_grid => grid
         grid     => grid%next
      END DO find_grid

      IF ( .NOT. found ) THEN
         WRITE ( wrf_err_message , * ) 'module_domain: dealloc_space_domain: Could not de-allocate grid id ',id
         CALL wrf_error_fatal ( TRIM( wrf_err_message ) ) 
      END IF

   END SUBROUTINE dealloc_space_domain

!

!  This routine DEALLOCATEs each gridded field for this domain.  For each type of
!  different array (1d, 2d, 3d, etc.), the space for each pointer is DEALLOCATEd
!  for every -1 (i.e., each different meteorological field).

   SUBROUTINE dealloc_space_field ( grid )
      
      IMPLICIT NONE

      !  Input data.

      TYPE(domain)              , POINTER :: grid

      !  Local data.

      INTEGER                             :: loop

   END SUBROUTINE dealloc_space_field

!
!
   RECURSIVE SUBROUTINE find_grid_by_id ( id, in_grid, result_grid )
      IMPLICIT NONE
      INTEGER, INTENT(IN) :: id
      TYPE(domain), POINTER     :: in_grid 
      TYPE(domain), POINTER     :: result_grid
! <DESCRIPTION>
! This is a recursive subroutine that traverses the domain hierarchy rooted
! at the input argument <em>in_grid</em>, a pointer to TYPE(domain), and returns
! a pointer to the domain matching the integer argument <em>id</em> if it exists.
!
! </DESCRIPTION>
      TYPE(domain), POINTER     :: grid_ptr
      INTEGER                   :: kid
      LOGICAL                   :: found
      found = .FALSE.
      IF ( ASSOCIATED( in_grid ) ) THEN
      IF ( in_grid%id .EQ. id ) THEN
         result_grid => in_grid
      ELSE
         grid_ptr => in_grid
         DO WHILE ( ASSOCIATED( grid_ptr ) .AND. .NOT. found )
            DO kid = 1, max_nests
               IF ( ASSOCIATED( grid_ptr%nests(kid)%ptr ) .AND. .NOT. found ) THEN
                  CALL find_grid_by_id ( id, grid_ptr%nests(kid)%ptr, result_grid )
                  IF ( ASSOCIATED( result_grid ) ) THEN
                    IF ( result_grid%id .EQ. id ) found = .TRUE.
                  ENDIF
               ENDIF
            ENDDO
            IF ( .NOT. found ) grid_ptr => grid_ptr%sibling
         ENDDO
      ENDIF
      ENDIF
      RETURN
   END SUBROUTINE find_grid_by_id


   FUNCTION first_loc_integer ( array , search ) RESULT ( loc ) 
 
      IMPLICIT NONE

      !  Input data.

      INTEGER , INTENT(IN) , DIMENSION(:) :: array
      INTEGER , INTENT(IN)                :: search

      !  Output data.

      INTEGER                             :: loc

!<DESCRIPTION>
!  This routine is used to find a specific domain identifier in an array
!  of domain identifiers.
!
!</DESCRIPTION>
      
      !  Local data.

      INTEGER :: loop

      loc = -1
      find : DO loop = 1 , SIZE(array)
         IF ( search == array(loop) ) THEN         
            loc = loop
            EXIT find
         END IF
      END DO find

   END FUNCTION first_loc_integer
!
   SUBROUTINE init_module_domain
   END SUBROUTINE init_module_domain

END MODULE module_domain