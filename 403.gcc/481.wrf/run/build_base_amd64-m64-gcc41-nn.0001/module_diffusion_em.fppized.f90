! WRF:MODEL_LAYER:PHYSICS
 
    MODULE module_diffusion_em

    USE module_configure
    USE module_bc
    USE module_state_description
    USE module_big_step_utilities_em
    USE module_model_constants    
    USE module_wrf_error

    CONTAINS

!=======================================================================
!=======================================================================

    SUBROUTINE cal_deform_and_div( config_flags, u, v, w, div,       &
                                   defor11, defor22, defor33,        &
                                   defor12, defor13, defor23,        &
                                   u_base, v_base,msfu, msfv, msft,  &
                                   rdx, rdy, dn, dnw, rdz, rdzw,     &
                                   fnm, fnp, cf1, cf2, cf3, zx, zy,  &
                                   ids, ide, jds, jde, kds, kde,     &
                                   ims, ime, jms, jme, kms, kme,     &
                                   its, ite, jts, jte, kts, kte      )

! History:     Sep 2003  Changes by Jason Knievel and George Bryan, NCAR
!              Oct 2001  Converted to mass core by Bill Skamarock, NCAR
!              ...        ...

! Purpose:     This routine calculates deformation and 3-d divergence.

! References:  Klemp and Wilhelmson (JAS 1978)
!              Chen and Dudhia (NCAR WRF physics report 2000)

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde, &
       ims, ime, jms, jme, kms, kme, &
       its, ite, jts, jte, kts, kte

    REAL, INTENT( IN )  &
    :: rdx, rdy, cf1, cf2, cf3

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: fnm, fnp, dn, dnw, u_base, v_base

    REAL, DIMENSION( ims:ime , jms:jme ),  INTENT( IN )  &
    :: msfu, msfv, msft

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    ::  u, v, w, zx, zy, rdz, rdzw

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: defor11, defor22, defor33, defor12, defor13, defor23, div 

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, ktes1, ktes2, i_start, i_end, j_start, j_end

    REAL  &
    :: tmp, tmpzx, tmpzy, tmpzeta_z, cft1, cft2

    REAL, DIMENSION( its:ite, jts:jte )  &
    :: mm, zzavg, zeta_zd12

    REAL, DIMENSION( its-2:ite+2, kts:kte, jts-2:jte+2 )  &
    :: tmp1, hat, hatavg

! End declarations.
!-----------------------------------------------------------------------

!=======================================================================
! In the following section, calculate 3-d divergence and the first three
! (defor11, defor22, defor33) of six deformation terms.

    ktes1   = kte-1
    ktes2   = kte-2

    cft2    = - 0.5 * dnw(ktes1) / dn(ktes1)
    cft1    = 1.0 - cft2

    ktf     = MIN( kte, kde-1 )

    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

! Square the map scale factor.

    DO j = j_start, j_end
    DO i = i_start, i_end
      mm(i,j) = msft(i,j) * msft(i,j)
    END DO
    END DO

!-----------------------------------------------------------------------
! Calculate du/dx.

! Apply a coordinate transformation to zonal velocity, u.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end+1
      hat(i,k,j) = u(i,k,j) / msfu(i,j)
    END DO
    END DO
    END DO

! Average in x and z.

    DO j=j_start,j_end
    DO k=kts+1,ktf
    DO i=i_start,i_end
      hatavg(i,k,j) = 0.5 *  &
                    ( fnm(k) * ( hat(i,k  ,j) + hat(i+1,  k,j) ) +  &
                      fnp(k) * ( hat(i,k-1,j) + hat(i+1,k-1,j) ) )
    END DO
    END DO
    END DO

! Extrapolate to top and bottom of domain (to w levels).

    DO j = j_start, j_end
    DO i = i_start, i_end
      hatavg(i,1,j)   =  0.5 * (  &
                         cf1 * hat(i  ,1,j) +  &
                         cf2 * hat(i  ,2,j) +  &
                         cf3 * hat(i  ,3,j) +  &
                         cf1 * hat(i+1,1,j) +  &
                         cf2 * hat(i+1,2,j) +  &
                         cf3 * hat(i+1,3,j) )
      hatavg(i,kte,j) =  0.5 * (  &
                        cft1 * ( hat(i,ktes1,j) + hat(i+1,ktes1,j) )  +  &
                        cft2 * ( hat(i,ktes2,j) + hat(i+1,ktes2,j) ) )
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmpzx       = 0.25 * (  &
                    zx(i,k  ,j) + zx(i+1,k  ,j) +  &
                    zx(i,k+1,j) + zx(i+1,k+1,j) )
      tmp1(i,k,j) = ( hatavg(i,k+1,j) - hatavg(i,k,j) ) *tmpzx * rdzw(i,k,j)
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = mm(i,j) * ( rdx * ( hat(i+1,k,j) - hat(i,k,j) ) -  &
                    tmp1(i,k,j))
    END DO
    END DO
    END DO

! End calculation of du/dx.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate defor11 (2*du/dx).

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      defor11(i,k,j) = 2.0 * tmp1(i,k,j)
    END DO
    END DO
    END DO

! End calculation of defor11.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate zonal divergence (du/dx) and add it to the divergence array.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      div(i,k,j) = tmp1(i,k,j)
    END DO
    END DO
    END DO

! End calculation of zonal divergence.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate dv/dy.

! Apply a coordinate transformation to meridional velocity, v.

    DO j = j_start, j_end+1
    DO k = kts, ktf
    DO i = i_start, i_end
      hat(i,k,j) = v(i,k,j) / msfv(i,j)
    END DO
    END DO
    END DO

! Account for the slope in y of eta surfaces.

    DO j=j_start,j_end
    DO k=kts+1,ktf
    DO i=i_start,i_end
      hatavg(i,k,j) = 0.5 * (  &
                      fnm(k) * ( hat(i,k  ,j) + hat(i,k  ,j+1) ) +  &
                      fnp(k) * ( hat(i,k-1,j) + hat(i,k-1,j+1) ) )
    END DO
    END DO
    END DO

! Extrapolate to top and bottom of domain (to w levels).

    DO j = j_start, j_end
    DO i = i_start, i_end
      hatavg(i,1,j)   =  0.5 * (  &
                         cf1 * hat(i,1,j  ) +  &
                         cf2 * hat(i,2,j  ) +  &
                         cf3 * hat(i,3,j  ) +  &
                         cf1 * hat(i,1,j+1) +  &
                         cf2 * hat(i,2,j+1) +  &
                         cf3 * hat(i,3,j+1) )
      hatavg(i,kte,j) =  0.5 * (  &
                        cft1 * ( hat(i,ktes1,j) + hat(i,ktes1,j+1) ) +  &
                        cft2 * ( hat(i,ktes2,j) + hat(i,ktes2,j+1) ) )
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmpzy       =  0.25 * (  &
                     zy(i,k  ,j) + zy(i,k  ,j+1) +  &
                     zy(i,k+1,j) + zy(i,k+1,j+1)  )
      tmp1(i,k,j) = ( hatavg(i,k+1,j) - hatavg(i,k,j) ) * tmpzy * rdzw(i,k,j)
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = mm(i,j) * (  &
                    rdy * ( hat(i,k,j+1) - hat(i,k,j) ) - tmp1(i,k,j) )
    END DO
    END DO
    END DO

! End calculation of dv/dy.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate defor22 (2*dv/dy).

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      defor22(i,k,j) = 2.0 * tmp1(i,k,j)
    END DO
    END DO
    END DO

! End calculation of defor22.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate meridional divergence (dv/dy) and add it to the divergence
! array.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      div(i,k,j) = div(i,k,j) + tmp1(i,k,j)
    END DO
    END DO
    END DO

! End calculation of meridional divergence.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate dw/dz.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = ( w(i,k+1,j) - w(i,k,j) ) * rdzw(i,k,j)
    END DO
    END DO
    END DO

! End calculation of dw/dz.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate defor33 (2*dw/dz).

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      defor33(i,k,j) = 2.0 * tmp1(i,k,j)
    END DO
    END DO
    END DO

! End calculation of defor33.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate vertical divergence (dw/dz) and add it to the divergence
! array.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      div(i,k,j) = div(i,k,j) + tmp1(i,k,j)
    END DO
    END DO
    END DO

! End calculation of vertical divergence. 
!-----------------------------------------------------------------------

! Three-dimensional divergence is now finished and values are in array
! "div."  Also, the first three (defor11, defor22, defor33) of six
! deformation terms are now calculated at pressure points.
!=======================================================================

!=======================================================================
! Calculate the final three deformations (defor12, defor13, defor23) at 
! vorticity points.

    i_start = its
    i_end   = ite
    j_start = jts
    j_end   = jte

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. & 
         config_flags%nested) i_end   = MIN( ide-1, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-1, jte )

!-----------------------------------------------------------------------
! Calculate du/dy.

! First, calculate an average mapscale factor.

    DO j = j_start, j_end
    DO i = i_start, i_end
      mm(i,j) = 0.25 * ( msfu(i,j-1) + msfu(i,j) ) * ( msfv(i-1,j) + msfv(i,j) )
    END DO
    END DO

! Apply a coordinate transformation to zonal velocity, u.

    DO j =j_start-1, j_end
    DO k =kts, ktf
    DO i =i_start, i_end
      hat(i,k,j) = u(i,k,j) / msfu(i,j)
    END DO
    END DO
    END DO

! Average in y and z.

    DO j=j_start,j_end
    DO k=kts+1,ktf
    DO i=i_start,i_end
      hatavg(i,k,j) = 0.5 * (  &
                      fnm(k) * ( hat(i,k  ,j-1) + hat(i,k  ,j) ) +  &
                      fnp(k) * ( hat(i,k-1,j-1) + hat(i,k-1,j) ) )
    END DO
    END DO
    END DO

! Extrapolate to top and bottom of domain (to w levels).

    DO j = j_start, j_end
    DO i = i_start, i_end
      hatavg(i,1,j)   =  0.5 * (  &
                         cf1 * hat(i,1,j-1) +  &
                         cf2 * hat(i,2,j-1) +  &
                         cf3 * hat(i,3,j-1) +  &
                         cf1 * hat(i,1,j  ) +  &
                         cf2 * hat(i,2,j  ) +  &
                         cf3 * hat(i,3,j  ) )
      hatavg(i,kte,j) =  0.5 * (  &
                        cft1 * ( hat(i,ktes1,j-1) + hat(i,ktes1,j) ) +  &
                        cft2 * ( hat(i,ktes2,j-1) + hat(i,ktes2,j) ) )
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmpzy       = 0.25 * (  &
                    zy(i-1,k  ,j) + zy(i,k  ,j) +  &
                    zy(i-1,k+1,j) + zy(i,k+1,j) )
      tmp1(i,k,j) = ( hatavg(i,k+1,j) - hatavg(i,k,j) ) *  &
                    0.5 * tmpzy * ( rdzw(i,k,j) + rdzw(i-1,k,j) )
    END DO
    END DO
    END DO

! End calculation of du/dy.
!---------------------------------------------------------------------- 

!-----------------------------------------------------------------------
! Add the first term to defor12 (du/dy+dv/dx) at vorticity points.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      defor12(i,k,j) = mm(i,j) * (  &
                       rdy * ( hat(i,k,j) - hat(i,k,j-1) ) - tmp1(i,k,j) )
    END DO
    END DO
    END DO

! End addition of the first term to defor12.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate dv/dx.

! Apply a coordinate transformation to meridional velocity, v.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start-1, i_end
       hat(i,k,j) = v(i,k,j) / msfv(i,j)
    END DO
    END DO
    END DO

! Account for the slope in x of eta surfaces.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      hatavg(i,k,j) = 0.5 * (  &
                      fnm(k) * ( hat(i-1,k  ,j) + hat(i,k  ,j) ) +  &
                      fnp(k) * ( hat(i-1,k-1,j) + hat(i,k-1,j) ) )
    END DO
    END DO
    END DO

! Extrapolate to top and bottom of domain (to w levels).

    DO j = j_start, j_end
    DO i = i_start, i_end
       hatavg(i,1,j)   =  0.5 * (  &
                          cf1 * hat(i-1,1,j) +  &
                          cf2 * hat(i-1,2,j) +  &
                          cf3 * hat(i-1,3,j) +  &
                          cf1 * hat(i  ,1,j) +  &
                          cf2 * hat(i  ,2,j) +  &
                          cf3 * hat(i  ,3,j) )
       hatavg(i,kte,j) =  0.5 * (  &
                         cft1 * ( hat(i,ktes1,j) + hat(i-1,ktes1,j) ) +  &
                         cft2 * ( hat(i,ktes2,j) + hat(i-1,ktes2,j) ) )
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tmpzx       = 0.25 * (  &
                    zx(i,k  ,j-1) + zx(i,k  ,j) +  &
                    zx(i,k+1,j-1) + zx(i,k+1,j) )
      tmp1(i,k,j) = ( hatavg(i,k+1,j) - hatavg(i,k,j) ) *  &
                    0.5 * tmpzx * ( rdzw(i,k,j) + rdzw(i,k,j-1) )
    END DO
    END DO
    END DO

! End calculation of dv/dx.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Add the second term to defor12 (du/dy+dv/dx) at vorticity points.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      defor12(i,k,j) = defor12(i,k,j) +  &
                       mm(i,j) * (  &
                       rdx * ( hat(i,k,j) - hat(i-1,k,j) ) - tmp1(i,k,j) )
    END DO
    END DO
    END DO

! End addition of the second term to defor12.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Update the boundary for defor12 (might need to change later).
 
    IF ( .NOT. config_flags%periodic_x .AND. i_start .EQ. ids+1 ) THEN
      DO j = jts, jte
      DO k = kts, kte
        defor12(ids,k,j) = defor12(ids+1,k,j)
      END DO
      END DO
    END IF
 
    IF ( .NOT. config_flags%periodic_y .AND. j_start .EQ. jds+1) THEN
      DO k = kts, kte
      DO i = its, ite
        defor12(i,k,jds) = defor12(i,k,jds+1)
      END DO
      END DO
    END IF

    IF ( .NOT. config_flags%periodic_x .AND. i_end .EQ. ide-1) THEN
      DO j = jts, jte
      DO k = kts, kte
        defor12(ide,k,j) = defor12(ide-1,k,j)
      END DO
      END DO
    END IF

    IF ( .NOT. config_flags%periodic_y .AND. j_end .EQ. jde-1) THEN
      DO k = kts, kte
      DO i = its, ite
        defor12(i,k,jde) = defor12(i,k,jde-1)
      END DO
      END DO
    END IF

! End update of boundary for defor12.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate dw/dx.

    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )

    IF ( config_flags%periodic_x ) i_end = MIN( ite, ide )
    IF ( config_flags%periodic_y ) j_end = MIN( jte, jde )

! Square the mapscale factor.

    DO j = jts, jte
    DO i = its, ite
      mm(i,j) = msfu(i,j) * msfu(i,j)
    END DO
    END DO

! Apply a coordinate transformation to vertical velocity, w.  This is for both
! defor13 and defor23.

    DO j = j_start, j_end
    DO k = kts, kte
    DO i = i_start, i_end
      hat(i,k,j) = w(i,k,j) / msft(i,j)
    END DO
    END DO
    END DO

    i = i_start-1
    DO j = j_start, MIN( jte, jde-1 )
    DO k = kts, kte
      hat(i,k,j) = w(i,k,j) / msft(i,j)
    END DO
    END DO

    j = j_start-1
    DO k = kts, kte
    DO i = i_start, MIN( ite, ide-1 )
      hat(i,k,j) = w(i,k,j) / msft(i,j)
    END DO
    END DO

! QUESTION: What is this for?

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      hatavg(i,k,j) = 0.25 * (  &
                      hat(i  ,k  ,j) +  &
                      hat(i  ,k+1,j) +  &
                      hat(i-1,k  ,j) +  &
                      hat(i-1,k+1,j) )
    END DO
    END DO
    END DO

! Calculate dw/dx.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = ( hatavg(i,k,j) - hatavg(i,k-1,j) ) * zx(i,k,j) *  &
                    0.5 * ( rdz(i,k,j) + rdz(i-1,k,j) )
    END DO
    END DO
    END DO

! End calculation of dw/dx.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Add the first term (dw/dx) to defor13 (dw/dx+du/dz) at vorticity
! points.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      defor13(i,k,j) = mm(i,j) * (  &
                       rdx * ( hat(i,k,j) - hat(i-1,k,j) ) - tmp1(i,k,j) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO i = i_start, i_end
      defor13(i,kts,j  ) = 0.0
      defor13(i,ktf+1,j) = 0.0
    END DO
    END DO

! End addition of the first term to defor13.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate du/dz.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = ( u(i,k,j) - u_base(k) - u(i,k-1,j) + u_base(k-1) ) *  &
                    0.5 * ( rdz(i,k,j) + rdz(i-1,k,j) )
    END DO
    END DO
    END DO

!-----------------------------------------------------------------------
! Add the second term (du/dz) to defor13 (dw/dx+du/dz) at vorticity
! points.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      defor13(i,k,j) = defor13(i,k,j) + tmp1(i,k,j)
    END DO
    END DO
    END DO

! End addition of the second term to defor13.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate dw/dy.

    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%periodic_y ) j_end = MIN( jte, jde )

! Square mapscale factor.

    DO j = jts, jte
    DO i = its, ite
      mm(i,j) = msfv(i,j) * msfv(i,j)
    END DO
    END DO

! QUESTION: What is this for?

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      hatavg(i,k,j) = 0.25 * (  &
                      hat(i,k  ,j  ) +  &
                      hat(i,k+1,j  ) +  &
                      hat(i,k  ,j-1) +  &
                      hat(i,k+1,j-1) )
    END DO
    END DO
    END DO

! Calculate dw/dy and store in tmp1.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = ( hatavg(i,k,j) - hatavg(i,k-1,j) ) * zy(i,k,j) *  &
                    0.5 * ( rdz(i,k,j) + rdz(i,k,j-1) )
    END DO
    END DO
    END DO

! End calculation of dw/dy.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Add the first term (dw/dy) to defor23 (dw/dy+dv/dz) at vorticity
! points.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      defor23(i,k,j) = mm(i,j) * (  &
                       rdy * ( hat(i,k,j) - hat(i,k,j-1) ) - tmp1(i,k,j) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO i = i_start, i_end
      defor23(i,kts,j  ) = 0.0
      defor23(i,ktf+1,j) = 0.0
    END DO
    END DO

! End addition of the first term to defor23.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Calculate dv/dz.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      tmp1(i,k,j) = ( v(i,k,j) - v_base(k) - v(i,k-1,j) + v_base(k-1) ) *  &
                    0.5 * ( rdz(i,k,j) + rdz(i,k,j-1) )
    END DO
    END DO
    END DO

! End calculation of dv/dz.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Add the second term (dv/dz) to defor23 (dw/dy+dv/dz) at vorticity
! points.

! Add tmp1 to defor23.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      defor23(i,k,j) = defor23(i,k,j) + tmp1(i,k,j)
    END DO
    END DO
    END DO

! End addition of the second term to defor23.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Update the boundary for defor13 and defor23 (might need to change
! later).

    IF ( .NOT. config_flags%periodic_x .AND. i_start .EQ. ids+1) THEN
      DO j = jts, jte
      DO k = kts, kte
        defor13(ids,k,j) = defor13(ids+1,k,j)
        defor23(ids,k,j) = defor23(ids+1,k,j)
      END DO
      END DO
    END IF

    IF ( .NOT. config_flags%periodic_y .AND. j_start .EQ. jds+1) THEN
      DO k = kts, kte
      DO i = its, ite
        defor13(i,k,jds) = defor13(i,k,jds+1)
        defor23(i,k,jds) = defor23(i,k,jds+1)
      END DO
      END DO
    END IF

    IF ( .NOT. config_flags%periodic_x .AND. i_end .EQ. ide-1) THEN
      DO j = jts, jte
      DO k = kts, kte
        defor13(ide,k,j) = defor13(ide-1,k,j)
        defor23(ide,k,j) = defor23(ide-1,k,j)
      END DO
      END DO
    END IF

    IF ( .NOT. config_flags%periodic_y .AND. j_end .EQ. jde-1) THEN
      DO k = kts, kte
      DO i = its, ite
        defor13(i,k,jde) = defor13(i,k,jde-1)
        defor23(i,k,jde) = defor23(i,k,jde-1)
      END DO
      END DO
    END IF

! End update of boundary for defor13 and defor23.
!-----------------------------------------------------------------------

! The second three (defor12, defor13, defor23) of six deformation terms
! are now calculated at vorticity points.
!=======================================================================

    END SUBROUTINE cal_deform_and_div

!=======================================================================
!=======================================================================

    SUBROUTINE calculate_km_kh( config_flags, dt,                        &
                                dampcoef, zdamp, damp_opt,               &
                                xkmh, xkmhd, xkmv, xkhh, xkhv,           &
                                BN2, khdif, kvdif, div,                  &
                                defor11, defor22, defor33,               &
                                defor12, defor13, defor23,               &
                                tke, p8w, t8w, theta, t, p, moist,       &
                                dn, dnw, dx, dy, rdz, rdzw, cr_len,      &
                                n_moist, cf1, cf2, cf3, warm_rain,       &
                                kh_tke_upper_bound, kv_tke_upper_bound,  &
                                ids, ide, jds, jde, kds, kde,            &
                                ims, ime, jms, jme, kms, kme,            &
                                its, ite, jts, jte, kts, kte             )

! History:     Sep 2003  Changes by George Bryan and Jason Knievel, NCAR
!              Oct 2001  Converted to mass core by Bill Skamarock, NCAR
!              ...       ...

! Purpose:     This routine calculates exchange coefficients for the TKE
!              scheme.

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980)
!              Chen and Dudhia (NCAR WRF physics report 2000)

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags   

    INTEGER, INTENT( IN )  &
    :: n_moist, damp_opt,             & 
       ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte 

    LOGICAL, INTENT( IN )  &
    :: warm_rain

    REAL, INTENT( IN )  &
    :: cr_len, dx, dy, zdamp, dt, dampcoef, cf1, cf2, cf3, khdif, kvdif

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: dnw, dn

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme, n_moist ), INTENT( INOUT )  &
    :: moist

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: xkmv, xkmh, xkmhd, xkhv, xkhh, BN2  

    REAL, DIMENSION( ims:ime , kms:kme, jms:jme ),  INTENT( IN )  &
    :: defor11, defor22, defor33, defor12, defor13, defor23,      &
       div, rdz, rdzw, p8w, t8w, theta, t, p

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: tke

    REAL, INTENT( IN )  &
    :: kh_tke_upper_bound, kv_tke_upper_bound

! Local variables.

    INTEGER  &
    :: i_start, i_end, j_start, j_end, ktf, i, j, k

! End declarations.
!-----------------------------------------------------------------------

    ktf     = MIN( kte, kde-1 )
    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    CALL calculate_N2( config_flags, BN2, moist,           &
                       theta, t, p, p8w, t8w,              &
                       dnw, dn, rdz, rdzw,                 &
                       n_moist, cf1, cf2, cf3, warm_rain,  &
                       ids, ide, jds, jde, kds, kde,       &
                       ims, ime, jms, jme, kms, kme,       &
                       its, ite, jts, jte, kts, kte        )

! Select a scheme for calculating diffusion coefficients.

    km_coef: SELECT CASE( config_flags%km_opt )

      CASE (1)
            CALL isotropic_km( config_flags, xkmh, xkmhd, xkmv,         &
                               xkhh, xkhv, khdif, kvdif,                &
                               ids, ide, jds, jde, kds, kde,            &
                               ims, ime, jms, jme, kms, kme,            &
                               its, ite, jts, jte, kts, kte             )
      CASE (2)  
            CALL tke_km(       config_flags, xkmh, xkmhd, xkmv,         &
                               xkhh, xkhv, BN2, tke, p8w, t8w, theta,   &
                               rdz, rdzw, dx, dy, cr_len,               &
                               kh_tke_upper_bound, kv_tke_upper_bound,  &
                               ids, ide, jds, jde, kds, kde,            &
                               ims, ime, jms, jme, kms, kme,            &
                               its, ite, jts, jte, kts, kte             )
      CASE (3)  
            CALL smag_km(      config_flags, xkmh, xkmhd, xkmv,         &
                               xkhh, xkhv, BN2, div,                    &
                               defor11, defor22, defor33,               &
                               defor12, defor13, defor23,               &
                               rdzw, dx, dy, cr_len,                    &
                               ids, ide, jds, jde, kds, kde,            &
                               ims, ime, jms, jme, kms, kme,            &
                               its, ite, jts, jte, kts, kte             )
      CASE (4)  
            CALL smag2d_km(    config_flags, xkmh, xkmhd, xkmv,         &
                               xkhh, xkhv, defor11, defor22, defor12,   &
                               rdzw, dx, dy,                            &
                               ids, ide, jds, jde, kds, kde,            &
                               ims, ime, jms, jme, kms, kme,            &
                               its, ite, jts, jte, kts, kte             )
      CASE DEFAULT
            CALL wrf_error_fatal( 'Please choose diffusion coefficient scheme' )

    END SELECT km_coef

    IF ( damp_opt .eq. 1 ) THEN
      CALL cal_dampkm( config_flags, xkmhd, xkmh, xkhh, xkmv, xkhv,   &
                       dx, dy, dt, dampcoef, rdz, rdzw, zdamp,  &
                       ids, ide, jds, jde, kds, kde,            &
                       ims, ime, jms, jme, kms, kme,            &
                       its, ite, jts, jte, kts, kte             )
    END IF

    END SUBROUTINE calculate_km_kh

!=======================================================================

SUBROUTINE cal_dampkm( config_flags,xkmhd,xkmh,xkhh,xkmv,xkhv,                 &
                       dx,dy,dt,dampcoef,                                      &
                       rdz, rdzw ,zdamp,                                       &
                       ids,ide, jds,jde, kds,kde,                              &
                       ims,ime, jms,jme, kms,kme,                              &
                       its,ite, jts,jte, kts,kte                              )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type) , INTENT(IN   ) :: config_flags

   INTEGER ,          INTENT(IN   )           :: ids, ide, jds, jde, kds, kde, &
                                                 ims, ime, jms, jme, kms, kme, &
                                                 its, ite, jts, jte, kts, kte

   REAL    ,          INTENT(IN   )           :: zdamp,dx,dy,dt,dampcoef


   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT)    ::    xkmhd, &
                                                                         xkmh , &
                                                                         xkhh , &
                                                                         xkmv , &
                                                                         xkhv 

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   )    ::     rdz,   &
                                                                         rdzw
! LOCAL VARS

   INTEGER :: i_start, i_end, j_start, j_end, ktf, ktfm1, i, j, k
   REAL    :: kmmax,kmmvmax,degrad90,dz,tmp
   REAL ,     DIMENSION( its:ite )                                ::   deltaz
   REAL , DIMENSION( its:ite, kts:kte, jts:jte)                   ::   dampk,dampkv

! End declarations.
!-----------------------------------------------------------------------

   ktf = min(kte,kde-1)
   ktfm1 = ktf-1

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   kmmax=dx*dx/dt
   degrad90=DEGRAD*90.
   DO j = j_start, j_end

      k=ktf
      DO i = i_start, i_end

!         deltaz(i)=0.5*dnw(k)/zeta_z(i,j)
!         dz=dnw(k)/zeta_z(i,j)
         dz = 1./rdzw(i,k,j)
         deltaz(i) = 0.5*dz

         kmmvmax=dz*dz/dt
         tmp=min(deltaz(i)/zdamp,1.)
         dampk(i,k,j)=cos(degrad90*tmp)*kmmax*dampcoef
         dampkv(i,k,j)=cos(degrad90*tmp)*kmmvmax*dampcoef
! set upper limit on vertical K (based on horizontal K)
         dampkv(i,k,j)=min(dampkv(i,k,j),dampk(i,k,j))

      ENDDO

      DO k = ktfm1,kts,-1
      DO i = i_start, i_end

!         deltaz(i)=deltaz(i)+dn(k)/zeta_z(i,j)
!         dz=dnw(k)/zeta_z(i,j)
         dz = 1./rdz(i,k,j)
         deltaz(i) = deltaz(i) + dz
         dz = 1./rdzw(i,k,j)

         kmmvmax=dz*dz/dt
         tmp=min(deltaz(i)/zdamp,1.)
         dampk(i,k,j)=cos(degrad90*tmp)*kmmax*dampcoef
         dampkv(i,k,j)=cos(degrad90*tmp)*kmmvmax*dampcoef
! set upper limit on vertical K (based on horizontal K)
         dampkv(i,k,j)=min(dampkv(i,k,j),dampk(i,k,j))
      ENDDO
      ENDDO

   ENDDO

   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end
      xkmhd(i,k,j)=max(xkmhd(i,k,j),dampk(i,k,j))
      xkmh(i,k,j)=max(xkmh(i,k,j),dampk(i,k,j))
      xkhh(i,k,j)=max(xkhh(i,k,j),dampk(i,k,j))
      xkmv(i,k,j)=max(xkmv(i,k,j),dampkv(i,k,j))
      xkhv(i,k,j)=max(xkhv(i,k,j),dampkv(i,k,j))
   ENDDO
   ENDDO
   ENDDO

END SUBROUTINE cal_dampkm

!=======================================================================
!=======================================================================

    SUBROUTINE calculate_N2( config_flags, BN2, moist,           &
                             theta, t, p, p8w, t8w,              &
                             dnw, dn, rdz, rdzw,                 &
                             n_moist, cf1, cf2, cf3, warm_rain,  &
                             ids, ide, jds, jde, kds, kde,       &
                             ims, ime, jms, jme, kms, kme,       &
                             its, ite, jts, jte, kts, kte        )

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: n_moist,  &
       ids, ide, jds, jde, kds, kde, &
       ims, ime, jms, jme, kms, kme, &
       its, ite, jts, jte, kts, kte

    LOGICAL, INTENT( IN )  &
    :: warm_rain

    REAL, INTENT( IN )  &
    :: cf1, cf2, cf3

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: BN2

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: rdz, rdzw, theta, t, p, p8w, t8w 

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: dnw, dn

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme, n_moist), INTENT( INOUT )  &
    :: moist

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, ispe, ktes1, ktes2,  &
       i_start, i_end, j_start, j_end

    REAL  &
    :: coefa, thetaep1, thetaem1, qc_cr, es, tc, qlpqi, qsw, qsi,  &
       tmpdz, xlvqv, thetaesfc, thetasfc, qvtop, qvsfc, thetatop, thetaetop

    REAL, DIMENSION( its:ite, jts:jte )  &
    :: tmp1sfc, tmp1top

    REAL, DIMENSION( its:ite, kts:kte, jts:jte )  &
    :: tmp1, qvs, qctmp

! End declarations.
!-----------------------------------------------------------------------

    qc_cr   = 0.00001  ! in Kg/Kg

    ktf     = MIN( kte, kde-1 )
    ktes1   = kte-1
    ktes2   = kte-2

    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested) i_end   = MIN( ide-2, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-2 ,jte )
 
    IF ( P_QC .GT. PARAM_FIRST_SCALAR) THEN
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
        qctmp(i,k,j) = moist(i,k,j,P_QC)
      END DO
      END DO
      END DO
    ELSE
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
         qctmp(i,k,j) = 0.0
      END DO
      END DO
      END DO
    END IF
 
    DO j = jts, jte
    DO k = kts, kte
    DO i = its, ite
      tmp1(i,k,j) = 0.0
    END DO
    END DO
    END DO
 
    DO j = jts,jte
    DO i = its,ite
      tmp1sfc(i,j) = 0.0
      tmp1top(i,j) = 0.0
    END DO
    END DO
 
    DO ispe = PARAM_FIRST_SCALAR, n_moist
      IF ( ispe .EQ. P_QV .OR. ispe .EQ. P_QC .OR. ispe .EQ. P_QI) THEN
        DO j = j_start, j_end
        DO k = kts, ktf
        DO i = i_start, i_end
          tmp1(i,k,j) = tmp1(i,k,j) + moist(i,k,j,ispe)
        END DO
        END DO
        END DO
 
        DO j = j_start, j_end
        DO i = i_start, i_end
          tmp1sfc(i,j) = tmp1sfc(i,j) +  &
                         cf1 * moist(i,1,j,ispe) +  &
                         cf2 * moist(i,2,j,ispe) +  &
                         cf3 * moist(i,3,j,ispe)
          tmp1top(i,j) = tmp1top(i,j) +  &
                         moist(i,ktes1,j,ispe) + &
                         ( moist(i,ktes1,j,ispe) - moist(i,ktes2,j,ispe) ) *  &
                         0.5 * dnw(ktes1) / dn(ktes1)
        END DO
        END DO
      END IF
    END DO

! Calculate saturation mixing ratio.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tc         = t(i,k,j) - SVPT0
      es         = 1000.0 * SVP1 * EXP( SVP2 * tc / ( t(i,k,j) - SVP3 ) )
      qvs(i,k,j) = EP_2 * es / ( p(i,k,j) - es )
    END DO
    END DO
    END DO
 
    DO j = j_start, j_end
    DO k = kts+1, ktf-1
    DO i = i_start, i_end
      tmpdz = 1.0 / rdz(i,k,j) + 1.0 / rdz(i,k+1,j)
      IF ( moist(i,k,j,P_QV) .GE. qvs(i,k,j) .OR. qctmp(i,k,j) .GE. qc_cr) THEN
        xlvqv      = XLV * moist(i,k,j,P_QV)
        coefa      = ( 1.0 + xlvqv / R_d / t(i,k,j) ) / &
                     ( 1.0 + XLV * xlvqv / Cp / R_v / t(i,k,j) / t(i,k,j) ) /  &
                     theta(i,k,j)
        thetaep1   = theta(i,k+1,j) *  &
                     ( 1.0 + XLV * qvs(i,k+1,j) / Cp / t(i,k+1,j) )
        thetaem1   = theta(i,k-1,j) *  &
                     ( 1.0 + XLV * qvs(i,k-1,j) / Cp / t(i,k-1,j) )
        BN2(i,k,j) = g * ( coefa * ( thetaep1 - thetaem1 ) / tmpdz -  &
                     ( tmp1(i,k+1,j) - tmp1(i,k-1,j) ) / tmpdz )
      ELSE
        BN2(i,k,j) = g * ( (theta(i,k+1,j) - theta(i,k-1,j) ) /  &
                     theta(i,k,j) / tmpdz +  &
                     1.61 * ( moist(i,k+1,j,P_QV) - moist(i,k-1,j,P_QV) ) / &
                     tmpdz -   &
                     ( tmp1(i,k+1,j) - tmp1(i,k-1,j) ) / tmpdz )
      ENDIF
    END DO
    END DO
    END DO

    k = kts
    DO j = j_start, j_end
    DO i = i_start, i_end
      tmpdz     = 1.0 / rdz(i,k+1,j) + 0.5 / rdzw(i,k,j)
      thetasfc  = T8w(i,kts,j) / ( p8w(i,k,j) / p1000mb )**( R_d / Cp )
      IF ( moist(i,k,j,P_QV) .GE. qvs(i,k,j) .OR. qctmp(i,k,j) .GE. qc_cr) THEN
        qvsfc     = cf1 * qvs(i,1,j) +  &
                    cf2 * qvs(i,2,j) +  &
                    cf3 * qvs(i,3,j)
        xlvqv      = XLV * moist(i,k,j,P_QV)
        coefa      = ( 1.0 + xlvqv / R_d / t(i,k,j) ) /  &
                     ( 1.0 + XLV * xlvqv / Cp / R_v / t(i,k,j) / t(i,k,j) ) /  &
                     theta(i,k,j)
        thetaep1   = theta(i,k+1,j) *  &
                     ( 1.0 + XLV * qvs(i,k+1,j) / Cp / t(i,k+1,j) )
        thetaesfc  = thetasfc *  &
                     ( 1.0 + XLV * qvsfc / Cp / t8w(i,kts,j) )
        BN2(i,k,j) = g * ( coefa * ( thetaep1 - thetaesfc ) / tmpdz -  &
                     ( tmp1(i,k+1,j) - tmp1sfc(i,j) ) / tmpdz )
      ELSE
        qvsfc     = cf1 * moist(i,1,j,P_QV) +  &
                    cf2 * moist(i,2,j,P_QV) +  &
                    cf3 * moist(i,3,j,P_QV)
!        BN2(i,k,j) = g * ( ( theta(i,k+1,j) - thetasfc ) /  &
!                     theta(i,k,j) / tmpdz +  &
!                     1.61 * ( moist(i,k+1,j,P_QV) - qvsfc ) /  &
!                     tmpdz -  &
!                     ( tmp1(i,k+1,j) - tmp1sfc(i,j) ) / tmpdz  )
!...... MARTA: change in computation of BN2 at the surface, WCS 040331

        tmpdz= 1./rdzw(i,k,j) ! controlare come calcola rdzw
        BN2(i,k,j) = g * ( ( theta(i,k+1,j) - theta(i,k,j)) /  &
                     theta(i,k,j) / tmpdz +  &
                     1.61 * ( moist(i,k+1,j,P_QV) - qvsfc ) /  &
                     tmpdz -  &
                     ( tmp1(i,k+1,j) - tmp1sfc(i,j) ) / tmpdz  )
! end of MARTA/WCS change

      ENDIF
    END DO
    END DO
 

!...... MARTA: change in computation of BN2 at the top, WCS 040331
    DO j = j_start, j_end
    DO i = i_start, i_end
       BN2(i,ktf,j)=BN2(i,ktf-1,j)
    END DO
    END DO   
! end of MARTA/WCS change

    END SUBROUTINE calculate_N2

!=======================================================================
!=======================================================================

SUBROUTINE isotropic_km( config_flags,                                         &
                         xkmh,xkmhd,xkmv,xkhh,xkhv,khdif,kvdif,                &
                         ids,ide, jds,jde, kds,kde,                            &
                         ims,ime, jms,jme, kms,kme,                            &
                         its,ite, jts,jte, kts,kte                            )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type) , INTENT(IN   ) :: config_flags

   INTEGER ,          INTENT(IN   )           :: ids, ide, jds, jde, kds, kde, &
                                                 ims, ime, jms, jme, kms, kme, &
                                                 its, ite, jts, jte, kts, kte

   REAL    ,          INTENT(IN   )           :: khdif,kvdif               

   REAL, DIMENSION( ims:ime , kms:kme , jms:jme ) , INTENT(INOUT) ::     xkmh, &
                                                                        xkmhd, &
                                                                         xkmv, &
                                                                         xkhh, &
                                                                         xkhv
! LOCAL VARS

   INTEGER :: i_start, i_end, j_start, j_end, ktf, i, j, k
   REAL    :: khdif3,kvdif3

! End declarations.
!-----------------------------------------------------------------------

   ktf = kte

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

!   khdif3=khdif*3.
!   kvdif3=kvdif*3.
   khdif3=khdif*prandtl
   kvdif3=kvdif*prandtl

   DO j = j_start, j_end
   DO k = kts, ktf
   DO i = i_start, i_end
      xkmh(i,k,j)=khdif
      xkmhd(i,k,j)=khdif
      xkmv(i,k,j)=kvdif
      xkhh(i,k,j)=khdif3
      xkhv(i,k,j)=kvdif3
   ENDDO
   ENDDO
   ENDDO

END SUBROUTINE isotropic_km

!=======================================================================
!=======================================================================

SUBROUTINE smag_km( config_flags,xkmh,xkmhd,xkmv,xkhh,xkhv,BN2,                &
                    div,defor11,defor22,defor33,defor12,                       &
                    defor13,defor23,                                           &
                    rdzw,dx,dy,cr_len_in,                                      &
                    ids,ide, jds,jde, kds,kde,                                 &
                    ims,ime, jms,jme, kms,kme,                                 &
                    its,ite, jts,jte, kts,kte                                  )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type) , INTENT(IN   ) :: config_flags

   INTEGER ,          INTENT(IN   )           :: ids, ide, jds, jde, kds, kde, &
                                                 ims, ime, jms, jme, kms, kme, &
                                                 its, ite, jts, jte, kts, kte

   REAL    ,          INTENT(IN   )           :: cr_len_in, dx, dy


   REAL, DIMENSION( ims:ime , kms:kme , jms:jme ) , INTENT(IN   ) ::      BN2, &
                                                                         rdzw

   REAL, DIMENSION( ims:ime , kms:kme , jms:jme ) , INTENT(INOUT) ::     xkmh, &
                                                                        xkmhd, &
                                                                         xkmv, &
                                                                         xkhh, &
                                                                         xkhv

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ),  INTENT(IN   )      ::      &    
                                                                      defor11, &
                                                                      defor22, &
                                                                      defor33, &
                                                                      defor12, &
                                                                      defor13, &
                                                                      defor23, &
                                                                          div

! LOCAL VARS

   INTEGER :: i_start, i_end, j_start, j_end, ktf, i, j, k
   REAL    :: deltas, tmp, pr, mlen_h, mlen_v, cr_len

   REAL, DIMENSION( its:ite , kts:kte , jts:jte )                 ::     def2

! End declarations.
!-----------------------------------------------------------------------

   ktf = min(kte,kde-1)

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

   pr=1./3.
   cr_len = cr_len_in

   do j=j_start,j_end
   do k=kts,ktf
   do i=i_start,i_end
      def2(i,k,j)=0.5*(defor11(i,k,j)*defor11(i,k,j) + &
                       defor22(i,k,j)*defor22(i,k,j) + &
                       defor33(i,k,j)*defor33(i,k,j))
   enddo
   enddo
   enddo

   do j=j_start,j_end
   do k=kts,ktf
   do i=i_start,i_end
      tmp=0.25*(defor12(i  ,k,j)+defor12(i  ,k,j+1)+ &
                defor12(i+1,k,j)+defor12(i+1,k,j+1))
      def2(i,k,j)=def2(i,k,j)+0.5*tmp*tmp
   enddo
   enddo
   enddo

   do j=j_start,j_end
   do k=kts,ktf
   do i=i_start,i_end
      tmp=0.25*(defor13(i  ,k+1,j)+defor13(i  ,k,j)+ &
                defor13(i+1,k+1,j)+defor13(i+1,k,j))
      def2(i,k,j)=def2(i,k,j)+0.5*tmp*tmp
   enddo
   enddo
   enddo

   do j=j_start,j_end
   do k=kts,ktf
   do i=i_start,i_end
      tmp=0.25*(defor23(i,k+1,j  )+defor23(i,k,j  )+ &
                defor23(i,k+1,j+1)+defor23(i,k,j+1))
      def2(i,k,j)=def2(i,k,j)+0.5*tmp*tmp
   enddo
   enddo
   enddo
!
   cr_len = dx + 1.  !  hardwire for mixing length = (dx*dy*dz)**(1/3).
                     !  remove this for the alternate formulation

   IF (dx .gt. cr_len) THEN
      mlen_h=sqrt(dx*dy)
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
         mlen_v= 1./rdzw(i,k,j)
         tmp=max(0.,def2(i,k,j)-BN2(i,k,j)/pr)
         tmp=tmp**0.5
         xkmh(i,k,j)=max(c_s*c_s*mlen_h*mlen_h*tmp, 1.0E-6*mlen_h*mlen_h )
         xkmh(i,k,j)=min(xkmh(i,k,j), 10.*mlen_h )
         xkmhd(i,k,j)=xkmh(i,k,j)
         xkmv(i,k,j)=max(c_s*c_s*mlen_v*mlen_v*tmp, 1.0E-6*mlen_v*mlen_v )
         xkmv(i,k,j)=min(xkmv(i,k,j), 10.*mlen_v )
         xkhh(i,k,j)=xkmh(i,k,j)/pr
         xkhv(i,k,j)=xkmv(i,k,j)/pr
      ENDDO
      ENDDO
      ENDDO
   ELSE
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
         deltas=(dx*dy/rdzw(i,k,j))**0.33333333
         tmp=max(0.,def2(i,k,j)-BN2(i,k,j)/pr)
         tmp=tmp**0.5
         xkmh(i,k,j)=max(c_s*c_s*deltas*deltas*tmp, 1.0E-6*deltas*deltas )
         xkmh(i,k,j)=min(xkmh(i,k,j), 10.*deltas )
         xkmhd(i,k,j)=xkmh(i,k,j)
         xkmv(i,k,j)=xkmh(i,k,j)
         xkhh(i,k,j)=xkmh(i,k,j)/pr
         xkhv(i,k,j)=xkmv(i,k,j)/pr
      ENDDO
      ENDDO
      ENDDO
   ENDIF

END SUBROUTINE smag_km

!=======================================================================
!=======================================================================

SUBROUTINE smag2d_km( config_flags,xkmh,xkmhd,xkmv,xkhh,xkhv,                  &
                    defor11,defor22,defor12,                                   &
                    rdzw,dx,dy,                                                &
                    ids,ide, jds,jde, kds,kde,                                 &
                    ims,ime, jms,jme, kms,kme,                                 &
                    its,ite, jts,jte, kts,kte                                  )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type) , INTENT(IN   ) :: config_flags

   INTEGER ,          INTENT(IN   )           :: ids, ide, jds, jde, kds, kde, &
                                                 ims, ime, jms, jme, kms, kme, &
                                                 its, ite, jts, jte, kts, kte

   REAL    ,          INTENT(IN   )           :: dx, dy


   REAL, DIMENSION( ims:ime , kms:kme , jms:jme ) , INTENT(IN   ) ::     rdzw

   REAL, DIMENSION( ims:ime , kms:kme , jms:jme ) , INTENT(INOUT) ::     xkmh, &
                                                                        xkmhd, &
                                                                         xkmv, &
                                                                         xkhh, &
                                                                         xkhv

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ),  INTENT(IN   )      ::      &    
                                                                      defor11, &
                                                                      defor22, &
                                                                      defor12

! LOCAL VARS

   INTEGER :: i_start, i_end, j_start, j_end, ktf, i, j, k
   REAL    :: deltas, tmp, pr, mlen_h

   REAL, DIMENSION( its:ite , kts:kte , jts:jte )                 ::     def2

! End declarations.
!-----------------------------------------------------------------------

   ktf = min(kte,kde-1)

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

   pr=1./3.

   do j=j_start,j_end
   do k=kts,ktf
   do i=i_start,i_end
      def2(i,k,j)=0.25*(defor11(i,k,j)-defor22(i,k,j))**2 + &
                       defor12(i,k,j)*defor12(i,k,j)
   enddo
   enddo
   enddo
!
      mlen_h=sqrt(dx*dy)
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
         tmp=def2(i,k,j)**0.5
!        xkmh(i,k,j)=max(c_s*c_s*mlen_h*mlen_h*tmp, 1.0E-6*mlen_h*mlen_h )
         xkmh(i,k,j)=c_s*c_s*mlen_h*mlen_h*tmp
         xkmh(i,k,j)=min(xkmh(i,k,j), 10.*mlen_h )
         xkmhd(i,k,j)=xkmh(i,k,j)
         xkmv(i,k,j)=0.
         xkhh(i,k,j)=xkmh(i,k,j)/pr
         xkhv(i,k,j)=0.
      ENDDO
      ENDDO
      ENDDO

END SUBROUTINE smag2d_km

!=======================================================================
!=======================================================================

    SUBROUTINE tke_km( config_flags, xkmh, xkmhd, xkmv, xkhh, xkhv,  &
                       bn2, tke, p8w, t8w, theta,                    &
                       rdz, rdzw, dx,dy, cr_len_in,                  &
                       kh_tke_upper_bound, kv_tke_upper_bound,       &
                       ids, ide, jds, jde, kds, kde,                 &
                       ims, ime, jms, jme, kms, kme,                 &
                       its, ite, jts, jte, kts, kte                  )

! History:     Sep 2003   Changes by Jason Knievel and George Bryan, NCAR
!              Oct 2001   Converted to mass core by Bill Skamarock, NCAR
!              ...        ...

! Purpose:     This routine calculates the exchange coefficients for the
!              TKE turbulence parameterization.

! References:  Klemp and Wilhelmson (JAS 1978)
!              Chen and Dudhia (NCAR WRF physics report 2000)

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    REAL, INTENT( IN )  &
    :: cr_len_in, dx, dy

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: tke, p8w, t8w, theta, rdz, rdzw, bn2

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: xkmh, xkmhd, xkmv, xkhh, xkhv

    REAL, INTENT( IN )  &
    :: kh_tke_upper_bound, kv_tke_upper_bound

! Local variables.

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme )  &
    :: l_scale

    REAL, DIMENSION( its:ite, kts:kte, jts:jte )  &
    :: dthrdn

    REAL  &
    :: deltas, tmp, mlen_s, mlen_h, mlen_v, tmpdz,  &
       thetasfc, thetatop, minkx, pr_inv, pr_inv_h, pr_inv_v, cr_len

    INTEGER  &
    :: i_start, i_end, j_start, j_end, ktf, i, j, k

    REAL, PARAMETER :: tke_seed_value = 1.e-06
    REAL            :: tke_seed
    REAL, PARAMETER :: epsilon = 1.e-10

! End declarations.
!-----------------------------------------------------------------------

    ktf     = MIN( kte, kde-1 )
    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested) i_end   = MIN( ide-2, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-2, jte)

! in the absence of surface drag or a surface heat flux, there
! is no way to generate tke without pre-existing tke.  Use
! tke_seed if the drag and flux are off.

    cr_len = cr_len_in
    tke_seed = tke_seed_value
    if( (config_flags%tke_drag_coefficient .gt. epsilon) .or.  &
        (config_flags%tke_heat_flux .gt. epsilon)  ) tke_seed = 0.

    DO j = j_start, j_end
    DO k = kts+1, ktf-1
    DO i = i_start, i_end
      tmpdz         = 1.0 / ( rdz(i,k+1,j) + rdz(i,k,j) )
      dthrdn(i,k,j) = ( theta(i,k+1,j) - theta(i,k-1,j) ) / tmpdz
    END DO
    END DO
    END DO

    k = kts
    DO j = j_start, j_end
    DO i = i_start, i_end
      tmpdz         = 1.0 / ( rdzw(i,k+1,j) + rdzw(i,k,j) )
      thetasfc      = T8w(i,kts,j) / ( p8w(i,k,j) / p1000mb )**( R_d / Cp )
      dthrdn(i,k,j) = ( theta(i,k+1,j) - thetasfc ) / tmpdz
    END DO
    END DO

    k = ktf
    DO j = j_start, j_end
    DO i = i_start, i_end
      tmpdz         = 1.0 / rdz(i,k,j) + 0.5 / rdzw(i,k,j)
      thetatop      = T8w(i,kde,j) / ( p8w(i,kde,j) / p1000mb )**( R_d / Cp )
      dthrdn(i,k,j) = ( thetatop - theta(i,k-1,j) ) / tmpdz
    END DO
    END DO

    cr_len = dx + 1.0 !  hardwire for mixing length = (dx*dy*dz)**(1/3).
                      !  remove this for the alternate formulation

    IF ( dx .gt. cr_len ) THEN
      mlen_h = SQRT( dx * dy )
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
        tmp    = SQRT( MAX( tke(i,k,j), tke_seed ) )
        deltas = 1.0 / rdzw(i,k,j)
        mlen_v = deltas
        IF ( dthrdn(i,k,j) .GT. 0.) THEN
          mlen_s = 0.76 * tmp / ( ABS( g / theta(i,k,j) * dthrdn(i,k,j) ) )**0.5
          mlen_v = MIN( mlen_v, mlen_s )
        END IF
        xkmh(i,k,j)  = MAX( c_k * tmp * mlen_h, 1.0E-6 * mlen_h * mlen_h )
        xkmh(i,k,j)  = MIN( xkmh(i,k,j), 10.0 * mlen_h )
        xkmhd(i,k,j) = xkmh(i,k,j)
        xkmv(i,k,j)  = MAX( c_k * tmp * mlen_v, 1.0E-6 * deltas * deltas )
        xkmv(i,k,j)  = MIN( xkmv(i,k,j), 10.0 * deltas )
        pr_inv_h     = 3.0
        pr_inv_v     = 1.0 + 2.0 * mlen_v / deltas
        xkhh(i,k,j)  = xkmh(i,k,j) * pr_inv_h
        xkhv(i,k,j)  = xkmv(i,k,j) * pr_inv_v
      END DO
      END DO
      END DO
    ELSE
      CALL calc_l_scale( config_flags, tke, BN2, l_scale,      &
                         i_start, i_end, ktf, j_start, j_end,  &
                         dx, dy, rdzw,                         &
                         ids, ide, jds, jde, kds, kde,         &
                         ims, ime, jms, jme, kms, kme,         &
                         its, ite, jts, jte, kts, kte          )
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
        tmp          = SQRT( MAX( tke(i,k,j), tke_seed ) )
        deltas       = ( dx * dy / rdzw(i,k,j) )**0.33333333
        xkmh(i,k,j)  = c_k * tmp * l_scale(i,k,j)
        xkmh(i,k,j)  = MIN( kh_tke_upper_bound,  xkmh(i,k,j) )
        xkmhd(i,k,j) = xkmh(i,k,j)
        xkmv(i,k,j)  = c_k * tmp * l_scale(i,k,j)
        xkmv(i,k,j)  = MIN( kv_tke_upper_bound,  xkmv(i,k,j) )
        pr_inv       = 1.0 + 2.0 * l_scale(i,k,j) / deltas
        xkhh(i,k,j)  = MIN( kh_tke_upper_bound, xkmh(i,k,j) * pr_inv )
        xkhv(i,k,j)  = MIN( kv_tke_upper_bound, xkmv(i,k,j) * pr_inv )
      END DO
      END DO
      END DO
    END IF

    END SUBROUTINE tke_km

!=======================================================================
!=======================================================================

    SUBROUTINE calc_l_scale( config_flags, tke, BN2, l_scale,      &
                             i_start, i_end, ktf, j_start, j_end,  &
                             dx, dy, rdzw,                         &
                             ids, ide, jds, jde, kds, kde,         &
                             ims, ime, jms, jme, kms, kme,         &
                             its, ite, jts, jte, kts, kte          )

! History:     Sep 2003   Written by Bryan and Knievel, NCAR

! Purpose:     This routine calculates the length scale, based on stability,
!              for TKE parameterization of subgrid-scale turbulence.

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: i_start, i_end, ktf, j_start, j_end,  &
       ids, ide, jds, jde, kds, kde,         &
       ims, ime, jms, jme, kms, kme,         &
       its, ite, jts, jte, kts, kte

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: BN2, tke, rdzw

    REAL, INTENT( IN )  &
    :: dx, dy

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( OUT )  &
    :: l_scale

! Local variables.

    INTEGER  &
    :: i, j, k

    REAL  &
    :: deltas, tmp

! End declarations.
!-----------------------------------------------------------------------

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      deltas         = ( dx * dy / rdzw(i,k,j) )**0.33333333
      l_scale(i,k,j) = deltas

      IF ( BN2(i,k,j) .gt. 1.0e-6 ) THEN
        tmp            = SQRT( MAX( tke(i,k,j), 1.0e-6 ) )
        l_scale(i,k,j) = 0.76 * tmp / SQRT( BN2(i,k,j) )
        l_scale(i,k,j) = MIN( l_scale(i,k,j), deltas)
        l_scale(i,k,j) = MAX( l_scale(i,k,j), 0.001 * deltas )
      END IF

    END DO
    END DO
    END DO

    END SUBROUTINE calc_l_scale

!=======================================================================
!=======================================================================

SUBROUTINE horizontal_diffusion_2 ( rt_tendf, ru_tendf, rv_tendf, rw_tendf,    &
                                    tke_tendf,                                 &
                                    moist_tendf, n_moist,                      &
                                    scalar_tendf, n_scalar,                    &
                                    thp, theta, mu, tke, config_flags,         &
                                    defor11, defor22, defor12,                 &
                                    defor13, defor23, div,                     &
                                    moist, scalar,                             &
                                    msfu, msfv, msft, xkmh, xkhh,km_opt,       &
                                    rdx, rdy, rdz, rdzw, fnm, fnp,             &
                                    cf1, cf2, cf3, zx, zy, dn, dnw,            &
                                    ids, ide, jds, jde, kds, kde,              &
                                    ims, ime, jms, jme, kms, kme,              &
                                    its, ite, jts, jte, kts, kte               )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   INTEGER ,        INTENT(IN   ) ::        n_moist, n_scalar, km_opt

   REAL ,           INTENT(IN   ) ::        cf1, cf2, cf3

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) :: dnw
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::  dn

   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msfu, &
                                                                    msfv, &
                                                                    msft, &
                                                                      mu

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::rt_tendf,&
                                                                 ru_tendf,&
                                                                 rv_tendf,&
                                                                 rw_tendf,&
                                                                tke_tendf

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_moist),                 &
          INTENT(INOUT) ::                                    moist_tendf

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_scalar),                &
          INTENT(INOUT) ::                                   scalar_tendf

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_moist),                 &
          INTENT(IN   ) ::                                          moist

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_scalar) ,               &
          INTENT(IN   ) ::                                         scalar 

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::defor11, &
                                                                 defor22, &
                                                                 defor12, &
                                                                 defor13, &
                                                                 defor23, &
                                                                     div, &
                                                                    xkmh, &
                                                                    xkhh, &
                                                                      zx, &
                                                                      zy, &
                                                                   theta, &
                                                                     thp, &
                                                                     tke, &
                                                                     rdz, &
                                                                    rdzw


   REAL ,                                        INTENT(IN   ) ::    rdx, &
                                                                     rdy

! LOCAL VARS
   
   INTEGER :: im

!  REAL , DIMENSION(its-1:ite+1, kts:kte, jts-1:jte+1)       ::     xkhh

! End declarations.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Call diffusion subroutines.

    CALL horizontal_diffusion_u_2( ru_tendf, mu, config_flags,             &
                                   defor11, defor12, div,                  &
                                   tke(ims,kms,jms),                       &
                                   msfu, xkmh, rdx, rdy, fnm, fnp,         &
                                   zx, zy, rdzw,                           &
                                   ids, ide, jds, jde, kds, kde,           &
                                   ims, ime, jms, jme, kms, kme,           &
                                   its, ite, jts, jte, kts, kte           )

    CALL horizontal_diffusion_v_2( rv_tendf, mu, config_flags,             &
                                   defor12, defor22, div,                  &
                                   tke(ims,kms,jms),                       &
                                   msfv, xkmh, rdx, rdy, fnm, fnp,         &
                                   zx, zy, rdzw,                           &
                                   ids, ide, jds, jde, kds, kde,           &
                                   ims, ime, jms, jme, kms, kme,           &
                                   its, ite, jts, jte, kts, kte           )

    CALL horizontal_diffusion_w_2( rw_tendf, mu, config_flags,             &
                                   defor13, defor23, div,                  &
                                   tke(ims,kms,jms),                       &
                                   msft, xkmh, rdx, rdy, fnm, fnp,         &
                                   zx, zy, rdz,                            &
                                   ids, ide, jds, jde, kds, kde,           &
                                   ims, ime, jms, jme, kms, kme,           &
                                   its, ite, jts, jte, kts, kte           )

    CALL horizontal_diffusion_s  ( rt_tendf, mu, config_flags, thp,        &
                                   msft, msfu, msfv, xkhh, rdx, rdy,       &
                                   fnm, fnp, cf1, cf2, cf3,                &
                                   zx, zy, rdz, rdzw, dnw, dn,             &
                                   .false.,                                &
                                   ids, ide, jds, jde, kds, kde,           &
                                   ims, ime, jms, jme, kms, kme,           &
                                   its, ite, jts, jte, kts, kte           )

    IF (km_opt .eq. 2)                                                     &
    CALL horizontal_diffusion_s  ( tke_tendf(ims,kms,jms),                 &
                                   mu, config_flags,                       &
                                   tke(ims,kms,jms),                       &
                                   msft, msfu, msfv, xkhh, rdx, rdy,       &
                                   fnm, fnp, cf1, cf2, cf3,                &
                                   zx, zy, rdz, rdzw, dnw, dn,             &
                                   .true.,                                 &
                                   ids, ide, jds, jde, kds, kde,           &
                                   ims, ime, jms, jme, kms, kme,           &
                                   its, ite, jts, jte, kts, kte           )

    IF (n_moist .ge. PARAM_FIRST_SCALAR) THEN 

      moist_loop: do im = PARAM_FIRST_SCALAR, n_moist

          CALL horizontal_diffusion_s( moist_tendf(ims,kms,jms,im),       &
                                       mu, config_flags,                  &
                                       moist(ims,kms,jms,im),             &
                                       msft, msfu, msfv, xkhh, rdx, rdy,  &
                                       fnm, fnp, cf1, cf2, cf3,           &
                                       zx, zy, rdz, rdzw, dnw, dn,        &
                                       .false.,                           &
                                       ids, ide, jds, jde, kds, kde,      &
                                       ims, ime, jms, jme, kms, kme,      &
                                       its, ite, jts, jte, kts, kte      )

      ENDDO moist_loop

    ENDIF

    IF (n_scalar .ge. PARAM_FIRST_SCALAR) THEN 

      scalar_loop: do im = PARAM_FIRST_SCALAR, n_scalar

        CALL horizontal_diffusion_s( scalar_tendf(ims,kms,jms,im),     &
                                     mu, config_flags,                 &
                                     scalar(ims,kms,jms,im),           &
                                     msft, msfu, msfv, xkhh, rdx, rdy, &
                                     fnm, fnp, cf1, cf2, cf3,          &
                                     zx, zy, rdz, rdzw, dnw, dn,       &
                                     .false.,                          &
                                     ids, ide, jds, jde, kds, kde,     &
                                     ims, ime, jms, jme, kms, kme,     &
                                     its, ite, jts, jte, kts, kte     )

      ENDDO scalar_loop

    ENDIF

    END SUBROUTINE horizontal_diffusion_2

!=======================================================================
!=======================================================================

SUBROUTINE horizontal_diffusion_u_2( tendency, mu, config_flags,          &
                                     defor11, defor12, div, tke,          &
                                     msfu, xkmh, rdx, rdy, fnm, fnp,      &
                                     zx, zy, rdzw,                        &
                                     ids, ide, jds, jde, kds, kde,        &
                                     ims, ime, jms, jme, kms, kme,        &
                                     its, ite, jts, jte, kts, kte        )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp

   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msfu, &
                                                                      mu

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::tendency

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::   rdzw  
                                                                    
 
   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::defor11, &
                                                                 defor12, &
                                                                     div, &   
                                                                     tke, &   
                                                                    xkmh, &
                                                                      zx, &
                                                                      zy

   REAL ,                                        INTENT(IN   ) ::    rdx, &
                                                                     rdy
! Local data
   
   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end
   INTEGER :: is_ext,ie_ext,js_ext,je_ext  

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)    :: titau1avg, &
                                                              titau2avg, &
                                                                 titau1, & 
                                                                 titau2, & 
                                                                 xkxavg, & 
                                                                  rravg
! new
!                                                                 zxavg, & 
!                                                                 zyavg
   REAL :: mrdx, mrdy, rcoup

   REAL :: tmpzy, tmpzeta_z

   REAL :: term1, term2, term3

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
 
!-----------------------------------------------------------------------
! u :   p (.), u(|), w(-)
!       
!       p  u  p  u                                  u     u
!
! p  |  .  |  .  |  .  |   k+1                |  .  |  .  |  .  |   k+1
!           
! w     - 13  -     -      k+1                     13               k+1 
!
! p  |  11 O 11  |  .  |   k                  |  12 O 12  |  .  |   k      
!
! w     - 13  -     -      k                       13               k  
!
! p  |  .  |  .  |  .  |   k-1                |  .  |  .  |  .  |   k-1
!
!      i-1 i  i i+1                          j-1 j  j j+1 j+1         
!

   i_start = its
   i_end   = ite
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-1,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

! titau1 = titau11 
   is_ext=1
   ie_ext=0
   js_ext=0
   je_ext=0
   CALL cal_titau_11_22_33( config_flags, titau1,            &
                            mu, tke, xkmh, defor11,          &
                            is_ext, ie_ext, js_ext, je_ext,  &
                            ids, ide, jds, jde, kds, kde,    &
                            ims, ime, jms, jme, kms, kme,    &
                            its, ite, jts, jte, kts, kte     )

! titau2 = titau12
   is_ext=0
   ie_ext=0
   js_ext=0
   je_ext=1
   CALL cal_titau_12_21( config_flags, titau2,            &
                         mu, xkmh, defor12,               &
                         is_ext, ie_ext, js_ext, je_ext,  &
                         ids, ide, jds, jde, kds, kde,    &
                         ims, ime, jms, jme, kms, kme,    &
                         its, ite, jts, jte, kts, kte     )

! titau1avg = titau11avg
! titau2avg = titau12avg 

   DO j = j_start, j_end
   DO k = kts+1,ktf
   DO i = i_start, i_end
      titau1avg(i,k,j)=0.5*(fnm(k)*(titau1(i-1,k  ,j)+titau1(i,k  ,j))+ &
                            fnp(k)*(titau1(i-1,k-1,j)+titau1(i,k-1,j)))
      titau2avg(i,k,j)=0.5*(fnm(k)*(titau2(i,k  ,j+1)+titau2(i,k  ,j))+ &
                            fnp(k)*(titau2(i,k-1,j+1)+titau2(i,k-1,j)))
      tmpzy = 0.25*( zy(i-1,k,j  )+zy(i,k,j  )+ &
                     zy(i-1,k,j+1)+zy(i,k,j+1)  )
!      tmpzeta_z = 0.5*(zeta_z(i,j)+zeta_z(i-1,j))
!      titau1avg(i,k,j)=titau1avg(i,k,j)*zx(i,k,j)*tmpzeta_z
!      titau2avg(i,k,j)=titau2avg(i,k,j)*tmpzy    *tmpzeta_z

      titau1avg(i,k,j)=titau1avg(i,k,j)*zx(i,k,j)
      titau2avg(i,k,j)=titau2avg(i,k,j)*tmpzy    

   ENDDO
   ENDDO
   ENDDO
!
   DO j = j_start, j_end
   DO i = i_start, i_end
      titau1avg(i,kts,j)=0.
      titau1avg(i,ktf+1,j)=0.
      titau2avg(i,kts,j)=0.
      titau2avg(i,ktf+1,j)=0.
   ENDDO
   ENDDO
!
   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end

      mrdx=msfu(i,j)*rdx
      mrdy=msfu(i,j)*rdy
      tendency(i,k,j)=tendency(i,k,j)-                                    &
           (mrdx*(titau1(i,k,j  )-titau1(i-1,k,j))+                       &
            mrdy*(titau2(i,k,j+1)-titau2(i,k,j  ))-                       &
            msfu(i,j)*rdzw(i,k,j)*((titau1avg(i,k+1,j)-titau1avg(i,k,j))+ &
                                   (titau2avg(i,k+1,j)-titau2avg(i,k,j))  &
                                  )                                      )
   ENDDO
   ENDDO
   ENDDO

END SUBROUTINE horizontal_diffusion_u_2

!=======================================================================
!=======================================================================

SUBROUTINE horizontal_diffusion_v_2( tendency, mu, config_flags,          &
                                     defor12, defor22, div, tke,          &
                                     msfv, xkmh, rdx, rdy, fnm, fnp,      &
                                     zx, zy, rdzw,                        &
                                     ids, ide, jds, jde, kds, kde,        &
                                     ims, ime, jms, jme, kms, kme,        &
                                     its, ite, jts, jte, kts, kte        )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp

   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msfv, &
                                                                      mu

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) :: tendency

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::defor12, &
                                                                 defor22, &
                                                                     div, &
                                                                     tke, &
                                                                    xkmh, &
                                                                      zx, &
                                                                      zy, &
                                                                    rdzw

   REAL ,                                        INTENT(IN   ) ::    rdx, &
                                                                     rdy

! Local data

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end
   INTEGER :: is_ext,ie_ext,js_ext,je_ext  

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)    :: titau1avg, &
                                                              titau2avg, &
                                                                 titau1, &
                                                                 titau2, &
                                                                 xkxavg, &
                                                                  rravg
! new
!                                                                 zxavg, &
!                                                                 zyavg

   REAL :: mrdx, mrdy, rcoup

   REAL :: tmpzx, tmpzeta_z

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
 
!-----------------------------------------------------------------------
! v :   p (.), v(+), w(-)
!       
!       p  v  p  v                                  v     v
!
! p  +  .  +  .  +  .  +   k+1                +  .  +  .  +  .  +   k+1
!           
! w     - 23  -     -      k+1                     23               k+1 
!
! p  +  22 O 22  +  .  +   k                  +  21 O 21  +  .  +   k      
!
! w     - 23  -     -      k                       23               k  
!
! p  +  .  +  .  +  .  +   k-1                +  .  +  .  +  .  +   k-1
!
!      j-1 j  j j+1                          i-1 i  i i+1 i+1         
!

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = jte

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-1,jte)

! titau1 = titau21
   is_ext=0
   ie_ext=1
   js_ext=0
   je_ext=0
   CALL cal_titau_12_21( config_flags, titau1,          &
                         mu, xkmh, defor12,             &
                         is_ext,ie_ext,js_ext,je_ext,   &
                         ids, ide, jds, jde, kds, kde,  &
                         ims, ime, jms, jme, kms, kme,  &
                         its, ite, jts, jte, kts, kte   )

! titau2 = titau22
   is_ext=0
   ie_ext=0
   js_ext=1
   je_ext=0
   CALL cal_titau_11_22_33( config_flags, titau2,           &
                            mu, tke, xkmh, defor22,         &
                            is_ext, ie_ext, js_ext, je_ext, &
                            ids, ide, jds, jde, kds, kde,   &
                            ims, ime, jms, jme, kms, kme,   &
                            its, ite, jts, jte, kts, kte    )

   DO j = j_start, j_end
   DO k = kts+1,ktf
   DO i = i_start, i_end
      titau1avg(i,k,j)=0.5*(fnm(k)*(titau1(i+1,k  ,j)+titau1(i,k  ,j))+ &
                            fnp(k)*(titau1(i+1,k-1,j)+titau1(i,k-1,j)))
      titau2avg(i,k,j)=0.5*(fnm(k)*(titau2(i,k  ,j-1)+titau2(i,k  ,j))+ &
                            fnp(k)*(titau2(i,k-1,j-1)+titau2(i,k-1,j)))

      tmpzx = 0.25*( zx(i,k,j  )+zx(i+1,k,j  )+ &
                     zx(i,k,j-1)+zx(i+1,k,j-1)  )


      titau1avg(i,k,j)=titau1avg(i,k,j)*tmpzx
      titau2avg(i,k,j)=titau2avg(i,k,j)*zy(i,k,j)


   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO i = i_start, i_end
      titau1avg(i,kts,j)=0.
      titau1avg(i,ktf+1,j)=0.
      titau2avg(i,kts,j)=0.
      titau2avg(i,ktf+1,j)=0.
   ENDDO
   ENDDO
!
   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end
       
      mrdx=msfv(i,j)*rdx
      mrdy=msfv(i,j)*rdy
      tendency(i,k,j)=tendency(i,k,j)-                                    &
           (mrdy*(titau2(i  ,k,j)-titau2(i,k,j-1))+                       &
            mrdx*(titau1(i+1,k,j)-titau1(i,k,j  ))-                       &
            msfv(i,j)*rdzw(i,k,j)*((titau1avg(i,k+1,j)-titau1avg(i,k,j))+ &
                                   (titau2avg(i,k+1,j)-titau2avg(i,k,j))  &
                                )			                  &
           )

   ENDDO
   ENDDO
   ENDDO

END SUBROUTINE horizontal_diffusion_v_2

!=======================================================================
!=======================================================================

SUBROUTINE horizontal_diffusion_w_2( tendency, mu, config_flags,          &
                                     defor13, defor23, div, tke,          &
                                     msft, xkmh, rdx, rdy, fnm, fnp,      &
                                     zx, zy, rdz,                         &
                                     ids, ide, jds, jde, kds, kde,        &
                                     ims, ime, jms, jme, kms, kme,        &
                                     its, ite, jts, jte, kts, kte        )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp

   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msft, &
                                                                      mu

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) :: tendency

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::defor13, &
                                                                 defor23, &
                                                                     div, &
                                                                     tke, &
                                                                    xkmh, &
                                                                      zx, &
                                                                      zy, &
                                                                     rdz

   REAL ,                                        INTENT(IN   ) ::    rdx, &
                                                                     rdy

! Local data

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end
   INTEGER :: is_ext,ie_ext,js_ext,je_ext  

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)    :: titau1avg, &
                                                              titau2avg, &
                                                                 titau1, &
                                                                 titau2, &
                                                                 xkxavg, &
                                                                  rravg
! new
!                                                                 zxavg, &
!                                                                 zyavg

   REAL :: mrdx, mrdy, rcoup

   REAL :: tmpzx, tmpzy, tmpzeta_z

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
 
!-----------------------------------------------------------------------
! w :   p (.), u(|), v(+), w(-)
!       
!       p  u  p  u                               p  v  p  v 
!
! w     -     -     -      k+1             w     -     -     -      k+1 
!
! p     .  | 33  |  .      k               p     .  + 33  +  .      k      
!
! w     -  31 O 31  -      k               w     -  32 O 32  -      k   
!
! p     .  | 33  |  .      k-1             p     .  | 33  |  .      k-1 
!
! w     -     -     -      k-1             w     -     -     -      k-1 
!
!      i-1 i  i i+1                             j-1 j  j j+1         
!
   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

! titau1 = titau31
   is_ext=0
   ie_ext=1
   js_ext=0
   je_ext=0
   CALL cal_titau_13_31( config_flags, titau1, defor13,   &
                         mu, xkmh, fnm, fnp,              &
                         is_ext, ie_ext, js_ext, je_ext,  &
                         ids, ide, jds, jde, kds, kde,    &
                         ims, ime, jms, jme, kms, kme,    &
                         its, ite, jts, jte, kts, kte     )

! titau2 = titau32
   is_ext=0
   ie_ext=0
   js_ext=0
   je_ext=1
   CALL cal_titau_23_32( config_flags, titau2, defor23,   &
                         mu, xkmh, fnm, fnp,              &
                         is_ext, ie_ext, js_ext, je_ext,  &
                         ids, ide, jds, jde, kds, kde,    &
                         ims, ime, jms, jme, kms, kme,    &
                         its, ite, jts, jte, kts, kte     )

! titau1avg = titau31avg * zx * zeta_z = titau13avg * zx * zeta_z
! titau2avg = titau32avg * zy * zeta_z = titau23avg * zy * zeta_z

   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end
      titau1avg(i,k,j)=0.25*(titau1(i+1,k+1,j)+titau1(i,k+1,j)+ &
                             titau1(i+1,k  ,j)+titau1(i,k  ,j))
      titau2avg(i,k,j)=0.25*(titau2(i,k+1,j+1)+titau2(i,k+1,j)+ &
                             titau2(i,k  ,j+1)+titau2(i,k  ,j))
! new
      tmpzx  =0.25*( zx(i,k  ,j)+zx(i+1,k  ,j)+ &
                     zx(i,k+1,j)+zx(i+1,k+1,j)  )
      tmpzy  =0.25*( zy(i,k  ,j)+zy(i,k  ,j+1)+ &
                     zy(i,k+1,j)+zy(i,k+1,j+1)  )

      titau1avg(i,k,j)=titau1avg(i,k,j)*tmpzx
      titau2avg(i,k,j)=titau2avg(i,k,j)*tmpzy
!      titau1avg(i,k,j)=titau1avg(i,k,j)*tmpzx*zeta_z(i,j)
!      titau2avg(i,k,j)=titau2avg(i,k,j)*tmpzy*zeta_z(i,j)
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO i = i_start, i_end
      titau1avg(i,kts  ,j)=0.
      titau2avg(i,kts  ,j)=0.
      titau1avg(i,ktf+1,j)=0.
      titau2avg(i,ktf+1,j)=0.
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO k = kts+1,ktf
   DO i = i_start, i_end

      mrdx=msft(i,j)*rdx
      mrdy=msft(i,j)*rdy

      tendency(i,k,j)=tendency(i,k,j)-                                 &
           (mrdx*(titau1(i+1,k,j)-titau1(i,k,j))+                      &
            mrdy*(titau2(i,k,j+1)-titau2(i,k,j))-                      &
            msft(i,j)*rdz(i,k,j)*(titau1avg(i,k,j)-titau1avg(i,k-1,j)+ &
                                  titau2avg(i,k,j)-titau2avg(i,k-1,j)  &
                               )				       &
           )
!            msft(i,j)/dn(k)*(titau1avg(i,k,j)-titau1avg(i,k-1,j)+ &
!                                titau2avg(i,k,j)-titau2avg(i,k-1,j)  &
!                               )				     &
!           )
   ENDDO
   ENDDO
   ENDDO

END SUBROUTINE horizontal_diffusion_w_2

!=======================================================================
!=======================================================================

SUBROUTINE horizontal_diffusion_s (tendency, mu, config_flags, var,       &
                                   msft, msfu, msfv, xkhh, rdx, rdy,      &
                                   fnm, fnp, cf1, cf2, cf3,               &
                                   zx, zy, rdz, rdzw, dn, dnw,            &
                                   doing_tke,                             &
                                   ids, ide, jds, jde, kds, kde,          &
                                   ims, ime, jms, jme, kms, kme,          &
                                   its, ite, jts, jte, kts, kte           )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   LOGICAL,         INTENT(IN   ) ::        doing_tke

   REAL , INTENT(IN   )           ::        cf1, cf2, cf3

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::     dn
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    dnw

   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msfu
   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msfv
   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   msft

   REAL , DIMENSION( ims:ime, jms:jme) ,         INTENT(IN   ) ::   mu

!  REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1),                 &
!         INTENT(IN   ) ::                                         xkhh

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) :: tendency

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::         &
                                                                    xkhh, &
                                                                     rdz, &
                                                                     rdzw

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::    var, &
                                                                      zx, &
                                                                      zy

   REAL ,                                        INTENT(IN   ) ::    rdx, &
                                                                     rdy

! Local data

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)    ::     H1avg, &
                                                                  H2avg, &
                                                                     H1, &
                                                                     H2, &
                                                                 xkxavg
! new
!                                                                 zxavg, &
!                                                                 zyavg

   REAL , DIMENSION( its:ite, kts:kte, jts:jte)            ::  tmptendf

   REAL    :: mrdx, mrdy, rcoup
   REAL    :: tmpzx, tmpzy, tmpzeta_z
   INTEGER :: ktes1,ktes2

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
 
!-----------------------------------------------------------------------
! scalars:   t (.), u(|), v(+), w(-)
!       
!       t  u  t  u                               t  v  t  v 
!
! w     -     3     -      k+1             w     -     3     -      k+1 
!
! t     .  1  O  1  .      k               t     .  2  O  2  .      k      
!
! w     -     3     -      k               w     -     3     -      k   
!
! t     .  |  .  |  .      k-1             t     .  +  .  +  .      k-1 
!
! w     -     -     -      k-1             w     -     -     -      k-1 
!
! t    i-1 i  i i+1                             j-1 j  j j+1         
!

   ktes1=kte-1
   ktes2=kte-2

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

! diffusion of the TKE needs mutiple 2

   IF ( doing_tke ) THEN
      DO j = j_start, j_end
      DO k = kts,ktf
      DO i = i_start, i_end
         tmptendf(i,k,j)=tendency(i,k,j)
      ENDDO
      ENDDO
      ENDDO
   ENDIF

! H1 = partial var over partial x

   DO j = j_start, j_end
   DO k = kts, ktf
   DO i = i_start, i_end + 1
! new
!     zxavg(i,k,j) =0.5*( zx(i-1,k,j)+ zx(i,k,j))
      xkxavg(i,k,j)=0.5*(xkhh(i-1,k,j)+xkhh(i,k,j))
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO k = kts+1, ktf
   DO i = i_start, i_end + 1
      H1avg(i,k,j)=0.5*(fnm(k)*(var(i-1,k  ,j)+var(i,k  ,j))+  &
                        fnp(k)*(var(i-1,k-1,j)+var(i,k-1,j)))
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO i = i_start, i_end + 1
      H1avg(i,kts  ,j)=0.5*(cf1*var(i  ,1,j)+cf2*var(i  ,2,j)+ &
                            cf3*var(i  ,3,j)+cf1*var(i-1,1,j)+  &
                            cf2*var(i-1,2,j)+cf3*var(i-1,3,j))
      H1avg(i,ktf+1,j)=0.5*(var(i,ktes1,j)+(var(i,ktes1,j)- &
                            var(i,ktes2,j))*0.5*dnw(ktes1)/dn(ktes1)+ &
                            var(i-1,ktes1,j)+(var(i-1,ktes1,j)- &
                            var(i-1,ktes2,j))*0.5*dnw(ktes1)/dn(ktes1))
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO k = kts, ktf
   DO i = i_start, i_end + 1
! new
      tmpzx = 0.5*( zx(i,k,j)+ zx(i,k+1,j))
      H1(i,k,j)=-msfu(i,j)*xkxavg(i,k,j)*(                      &
                 rdx*(var(i,k,j)-var(i-1,k,j)) - tmpzx*         &
                     (H1avg(i,k+1,j)-H1avg(i,k,j))*rdzw(i,k,j) )

!      tmpzeta_z = 0.5*(zeta_z(i,j)+zeta_z(i-1,j))
!      H1(i,k,j)=-msfu(i,j)*xkxavg(i,k,j)*(                         &
!                 rdx*(var(i,k,j)-var(i-1,k,j)) - tmpzx*tmpzeta_z*  &
!                     (H1avg(i,k+1,j)-H1avg(i,k,j))/dnw(k))
   ENDDO
   ENDDO
   ENDDO

! H2 = partial var over partial y

   DO j = j_start, j_end + 1
   DO k = kts, ktf
   DO i = i_start, i_end
! new
!     zyavg(i,k,j) =0.5*( zy(i,k,j-1)+ zy(i,k,j))
      xkxavg(i,k,j)=0.5*(xkhh(i,k,j-1)+xkhh(i,k,j))
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end + 1
   DO k = kts+1,   ktf
   DO i = i_start, i_end
! new
      H2avg(i,k,j)=0.5*(fnm(k)*(var(i,k  ,j-1)+var(i,k  ,j))+  &
                        fnp(k)*(var(i,k-1,j-1)+var(i,k-1,j)))
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end + 1
   DO i = i_start, i_end
      H2avg(i,kts  ,j)=0.5*(cf1*var(i,1,j  )+cf2*var(i  ,2,j)+ &
                            cf3*var(i,3,j  )+cf1*var(i,1,j-1)+  &
                            cf2*var(i,2,j-1)+cf3*var(i,3,j-1))
      H2avg(i,ktf+1,j)=0.5*(var(i,ktes1,j)+(var(i,ktes1,j)- &
                            var(i,ktes2,j))*0.5*dnw(ktes1)/dn(ktes1)+ &
                            var(i,ktes1,j-1)+(var(i,ktes1,j-1)- &
                            var(i,ktes2,j-1))*0.5*dnw(ktes1)/dn(ktes1))
   ENDDO
   ENDDO

   DO j = j_start, j_end + 1
   DO k = kts, ktf
   DO i = i_start, i_end
! new
      tmpzy = 0.5*( zy(i,k,j)+ zy(i,k+1,j))

      H2(i,k,j)=-msfv(i,j)*xkxavg(i,k,j)*(                       &
                 rdy*(var(i,k,j)-var(i,k,j-1)) - tmpzy*          &
                     (H2avg(i ,k+1,j)-H2avg(i,k,j))*rdzw(i,k,j))

!      tmpzeta_z = 0.5*(zeta_z(i,j)+zeta_z(i,j-1))
!      H2(i,k,j)=-msfv(i,j)*xkxavg(i,k,j)*(                         &
!                 rdy*(var(i,k,j)-var(i,k,j-1)) - tmpzy*tmpzeta_z*  &
!                     (H2avg(i ,k+1,j)-H2avg(i,k,j))/dnw(k))
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO k = kts+1, ktf
   DO i = i_start, i_end
      H1avg(i,k,j)=0.5*(fnm(k)*(H1(i+1,k  ,j)+H1(i,k  ,j))+  &
                        fnp(k)*(H1(i+1,k-1,j)+H1(i,k-1,j)))
      H2avg(i,k,j)=0.5*(fnm(k)*(H2(i,k  ,j+1)+H2(i,k  ,j))+  &
                        fnp(k)*(H2(i,k-1,j+1)+H2(i,k-1,j)))
! new
!     zxavg(i,k,j)=fnm(k)*zx(i,k,j)+fnp(k)*zx(i,k-1,j)
!     zyavg(i,k,j)=fnm(k)*zy(i,k,j)+fnp(k)*zy(i,k-1,j)

! H1avg(i,k,j)=zx*H1avg*zeta_z
! H2avg(i,k,j)=zy*H2avg*zeta_z

      tmpzx = 0.5*( zx(i,k,j)+ zx(i+1,k,j  ))
      tmpzy = 0.5*( zy(i,k,j)+ zy(i  ,k,j+1))

      H1avg(i,k,j)=H1avg(i,k,j)*tmpzx
      H2avg(i,k,j)=H2avg(i,k,j)*tmpzy

!      H1avg(i,k,j)=H1avg(i,k,j)*tmpzx*zeta_z(i,j)
!      H2avg(i,k,j)=H2avg(i,k,j)*tmpzy*zeta_z(i,j)
   ENDDO
   ENDDO
   ENDDO
 
   DO j = j_start, j_end
   DO i = i_start, i_end
      H1avg(i,kts  ,j)=0.
      H1avg(i,ktf+1,j)=0.
      H2avg(i,kts  ,j)=0.
      H2avg(i,ktf+1,j)=0.
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end

      mrdx=msft(i,j)*rdx
      mrdy=msft(i,j)*rdy

      tendency(i,k,j)=tendency(i,k,j)-                      &
           (mrdx*0.5*((mu(i+1,j)+mu(i,j))*H1(i+1,k,j)-      &
                      (mu(i-1,j)+mu(i,j))*H1(i  ,k,j))+     &
            mrdy*0.5*((mu(i,j+1)+mu(i,j))*H2(i,k,j+1)-      &
                      (mu(i,j-1)+mu(i,j))*H2(i,k,j  ))-     &
            msft(i,j)*mu(i,j)*(H1avg(i,k+1,j)-H1avg(i,k,j)+ &
                       H2avg(i,k+1,j)-H2avg(i,k,j)          &
                                )*rdzw(i,k,j)               &
                                                          )

   ENDDO
   ENDDO
   ENDDO
           
   IF ( doing_tke ) THEN
      DO j = j_start, j_end
      DO k = kts,ktf
      DO i = i_start, i_end
          tendency(i,k,j)=tmptendf(i,k,j)+2.* &
                          (tendency(i,k,j)-tmptendf(i,k,j))
      ENDDO
      ENDDO
      ENDDO
   ENDIF

END SUBROUTINE horizontal_diffusion_s

!=======================================================================
!=======================================================================

SUBROUTINE vertical_diffusion_2   ( ru_tendf, rv_tendf, rw_tendf, rt_tendf,   &
                                    tke_tendf, moist_tendf, n_moist,          &
                                    scalar_tendf, n_scalar,                   &
                                    u_2, v_2,                                 &
                                    thp,u_base,v_base,t_base,qv_base,mu,tke,  &
                                    config_flags,defor13,defor23,defor33,div, &
                                    moist, scalar, xkmv, xkhv,km_opt,         &
                                    fnm, fnp, dn, dnw, rdz, rdzw,             &
                                    ids, ide, jds, jde, kds, kde,             &
                                    ims, ime, jms, jme, kms, kme,             &
                                    its, ite, jts, jte, kts, kte             )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   INTEGER ,        INTENT(IN   ) ::        n_moist, n_scalar, km_opt

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) :: fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) :: fnp
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) :: dnw
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::  dn
   REAL , DIMENSION( ims:ime , jms:jme ) ,  INTENT(IN   )      ::  mu

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) :: qv_base
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::  u_base
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::  v_base
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::  t_base

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::ru_tendf,&
                                                                 rv_tendf,&
                                                                 rw_tendf,&
                                                                tke_tendf,&
                                                                rt_tendf  

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_moist),                 &
          INTENT(INOUT) ::                                    moist_tendf

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_scalar) ,               &
          INTENT(INOUT) ::                                   scalar_tendf

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_moist),                 &
          INTENT(INOUT) ::                                          moist

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme, n_scalar) ,               &
          INTENT(IN   ) ::                                         scalar

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(IN   ) ::defor13, &
                                                                 defor23, &
                                                                 defor33, &
                                                                     div, &
                                                                    xkmv, &
                                                                    xkhv, &
                                                                     tke, &
                                                                     rdz, &
                                                                     u_2, &
                                                                     v_2, &
                                                                    rdzw

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::    thp

! LOCAL VAR

   LOGICAL, PARAMETER :: filter_perturbations = .true.
 
   REAL , DIMENSION( ims:ime, kms:kme, jms:jme)  ::    var_mix

   INTEGER :: im, i,j,k
   INTEGER :: i_start, i_end, j_start, j_end

!  REAL , DIMENSION( its:ite, kts:kte, jts:jte) :: xkhv

!***************************************************************************
!***************************************************************************
!MODIFICA VARIABILI PER I FLUSSI
!
    REAL , DIMENSION( ims:ime, jms:jme) :: Cd
    REAL :: V0_u,V0_v,tao_xz,tao_yz,ustar,cd0
    REAL :: xsfc,psi1,vk2,zrough,lnz
    REAL :: heat_flux
!
!FINE MODIFICA VARIABILI PER I FLUSSI
!***************************************************************************
!

! End declarations.
!-----------------------------------------------------------------------

   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)
!
!-----------------------------------------------------------------------

      CALL vertical_diffusion_u_2( ru_tendf, config_flags, mu,    &
                                   defor13, xkmv,                 &
                                   dnw, rdzw, fnm, fnp,           &
                                   ids, ide, jds, jde, kds, kde,  &
                                   ims, ime, jms, jme, kms, kme,  &
                                   its, ite, jts, jte, kts, kte  )


      CALL vertical_diffusion_v_2( rv_tendf, config_flags, mu,    &
                                   defor23, xkmv,                 &
                                   dnw, rdzw, fnm, fnp,           &
                                   ids, ide, jds, jde, kds, kde,  &
                                   ims, ime, jms, jme, kms, kme,  &
                                   its, ite, jts, jte, kts, kte  )

      CALL vertical_diffusion_w_2( rw_tendf, config_flags, mu,    &
                                   defor33, tke(ims,kms,jms),     &
                                   div, xkmv,                     &
                                   dn, rdz,                       &  
                                   ids, ide, jds, jde, kds, kde,  &
                                   ims, ime, jms, jme, kms, kme,  &
                                   its, ite, jts, jte, kts, kte  )

!*****************************************
!*****************************************
!  MODIFICA al flusso di momento alla parete
!
    cd0 = config_flags%tke_drag_coefficient  ! constant drag coefficient
                                             ! set in namelist.input
    DO j = j_start, j_end+1
    DO i = i_start, i_end+1
       Cd(i,j)=  cd0
    ENDDO
    ENDDO
!
!calcolo del modulo della velocita
    DO j = j_start, j_end
    DO i = i_start, i_end+1
       V0_u=0.
       tao_xz=0.
       V0_u=    sqrt((u_2(i,kts,j)**2) +         &
                        (((v_2(i  ,kts,j  )+          &
                           v_2(i  ,kts,j+1)+          &
                           v_2(i-1,kts,j  )+          &
                           v_2(i-1,kts,j+1))/4)**2))+epsilon
       tao_xz=Cd(i,j)*V0_u*u_2(i,kts,j)
       ru_tendf(i,kts,j)=ru_tendf(i,kts,j)            &
                         -0.25*(mu(i,j)+mu(i-1,j))*tao_xz*(rdzw(i,kts,j)+rdzw(i-1,kts,j))
    ENDDO
    ENDDO
 
!
    DO j = j_start, j_end+1
    DO i = i_start, i_end
       V0_v=0.
       tao_yz=0.
       V0_v=    sqrt((v_2(i,kts,j)**2) +         &
                        (((u_2(i  ,kts,j  )+          &
                           u_2(i  ,kts,j-1)+          &
                           u_2(i+1,kts,j  )+          &
                           u_2(i+1,kts,j-1))/4)**2))+epsilon
       tao_yz=Cd(i,j)*V0_v*v_2(i,kts,j)
       rv_tendf(i,kts,j)=rv_tendf(i,kts,j)            &
                         -0.25*(mu(i,j)+mu(i,j-1))*tao_yz*(rdzw(i,kts,j)+rdzw(i,kts,j-1))
    ENDDO
    ENDDO
!
!  FINE MODIFICA al flusso di momento alla parete
!*****************************************
!*****************************************

   IF (filter_perturbations) THEN

    DO j=jts,min(jte,jde-1)
    DO k=kts,kte-1
    DO i=its,min(ite,ide-1)
      var_mix(i,k,j) = thp(i,k,j) - t_base(k)
    ENDDO
    ENDDO
    ENDDO

   ELSE

    DO j=jts,min(jte,jde-1)
    DO k=kts,kte-1
    DO i=its,min(ite,ide-1)
      var_mix(i,k,j) = thp(i,k,j)
    ENDDO
    ENDDO
    ENDDO

   END IF

   CALL vertical_diffusion_s( rt_tendf, config_flags, var_mix, mu, xkhv, &
                              dn, dnw, rdz, rdzw, fnm, fnp,          &
                              .false.,                               &
                              ids, ide, jds, jde, kds, kde,          &
                              ims, ime, jms, jme, kms, kme,          &
                              its, ite, jts, jte, kts, kte          )


!*****************************************
!*****************************************
!MODIFICA al flusso di calore
!
!
    heat_flux = config_flags%tke_heat_flux  ! constant heat flux value
                                            ! set in namelist.input
    DO j = j_start, j_end
    DO i = i_start, i_end

       rt_tendf(i,kts,j)=rt_tendf(i,kts,j)  &
            +mu(i,j)*heat_flux*rdzw(i,kts,j)

    ENDDO
    ENDDO
!
! FINE MODIFICA al flusso di calore
!*****************************************
!*****************************************

   If (km_opt .eq. 2) then
   CALL vertical_diffusion_s( tke_tendf(ims,kms,jms),               &
                              config_flags, tke(ims,kms,jms),       &
                              mu, xkhv,                             &
                              dn, dnw, rdz, rdzw, fnm, fnp,         &
                              .true.,                               &
                              ids, ide, jds, jde, kds, kde,         &
                              ims, ime, jms, jme, kms, kme,         &
                              its, ite, jts, jte, kts, kte         )
   endif
 
   IF (n_moist .ge. PARAM_FIRST_SCALAR) THEN 

     moist_loop: do im = PARAM_FIRST_SCALAR, n_moist

       IF (filter_perturbations .and. (im == P_QV)) THEN

         DO j=jts,min(jte,jde-1)
         DO k=kts,kte-1
         DO i=its,min(ite,ide-1)
          var_mix(i,k,j) = moist(i,k,j,im) - qv_base(k)
         ENDDO
         ENDDO
         ENDDO

       ELSE

         DO j=jts,min(jte,jde-1)
         DO k=kts,kte-1
         DO i=its,min(ite,ide-1)
          var_mix(i,k,j) = moist(i,k,j,im)
         ENDDO
         ENDDO
         ENDDO

       END IF


          CALL vertical_diffusion_s( moist_tendf(ims,kms,jms,im),         &
                                     config_flags, var_mix,               &
                                     mu, xkhv,                            &
                                     dn, dnw, rdz, rdzw, fnm, fnp,        &
                                     .false.,                             &
                                     ids, ide, jds, jde, kds, kde,        &
                                     ims, ime, jms, jme, kms, kme,        &
                                     its, ite, jts, jte, kts, kte        )

     ENDDO moist_loop

   ENDIF


   IF (n_scalar .ge. PARAM_FIRST_SCALAR) THEN 

     scalar_loop: do im = PARAM_FIRST_SCALAR, n_scalar

          CALL vertical_diffusion_s( scalar_tendf(ims,kms,jms,im),         &
                                     config_flags, scalar(ims,kms,jms,im), &
                                     mu, xkhv,                             &
                                     dn, dnw, rdz, rdzw, fnm, fnp,         &
                                     .false.,                              &
                                     ids, ide, jds, jde, kds, kde,         &
                                     ims, ime, jms, jme, kms, kme,         &
                                     its, ite, jts, jte, kts, kte         )
     ENDDO scalar_loop

   ENDIF

END SUBROUTINE vertical_diffusion_2

!=======================================================================
!=======================================================================

SUBROUTINE vertical_diffusion_u_2( tendency, config_flags, mu,            &
                                   defor13, xkmv,                         &
                                   dnw, rdzw, fnm, fnp,                   &
                                   ids, ide, jds, jde, kds, kde,          &
                                   ims, ime, jms, jme, kms, kme,          &
                                   its, ite, jts, jte, kts, kte          )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,         INTENT(IN   ) ::       ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp
   REAL , DIMENSION( kms:kme ) ,            INTENT(IN   )      :: dnw
!   REAL , DIMENSION( ims:ime , jms:jme ) ,  INTENT(IN   )      :: zeta_z

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::tendency

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ) ,                       &
                                            INTENT(IN   )      ::defor13, &
                                                                    xkmv, &
                                                                      rdzw
   REAL , DIMENSION( ims:ime , jms:jme ) ,  INTENT(IN   )      :: mu

! LOCAL VARS

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end
   INTEGER :: is_ext,ie_ext,js_ext,je_ext  

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)        :: titau3

   REAL , DIMENSION( its:ite, jts:jte)                         ::  zzavg

   REAL :: rdzu

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
  
   i_start = its
   i_end   = ite
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-1,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

! titau3 = titau13
   is_ext=0
   ie_ext=0
   js_ext=0
   je_ext=0
   CALL cal_titau_13_31( config_flags, titau3, defor13,   &
                         mu, xkmv, fnm, fnp,              &
                         is_ext, ie_ext, js_ext, je_ext,  &
                         ids, ide, jds, jde, kds, kde,    &
                         ims, ime, jms, jme, kms, kme,    &
                         its, ite, jts, jte, kts, kte     )
!
      DO j = j_start, j_end
      DO k=kts,ktf
      DO i = i_start, i_end

         rdzu = 2./(1./rdzw(i,k,j) + 1./rdzw(i-1,k,j))
         tendency(i,k,j)=tendency(i,k,j)-rdzu*(titau3(i,k+1,j)-titau3(i,k,j))

      ENDDO
      ENDDO
      ENDDO

! ******** MODIF...
!  we will pick up the surface drag (titau3(i,kts,j)) later
!
       DO j = j_start, j_end
       k=kts
       DO i = i_start, i_end
 
          rdzu = 2./(1./rdzw(i,k,j) + 1./rdzw(i-1,k,j))
          tendency(i,k,j)=tendency(i,k,j)-rdzu*(titau3(i,k+1,j))
       ENDDO
       ENDDO
! ******** MODIF...

END SUBROUTINE vertical_diffusion_u_2

!=======================================================================
!=======================================================================

SUBROUTINE vertical_diffusion_v_2( tendency, config_flags, mu,            &
                                   defor23, xkmv,                         &
                                   dnw, rdzw, fnm, fnp,                   &
                                   ids, ide, jds, jde, kds, kde,          &
                                   ims, ime, jms, jme, kms, kme,          &
                                   its, ite, jts, jte, kts, kte          )
!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,         INTENT(IN   ) ::       ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp
   REAL , DIMENSION( kms:kme ) ,            INTENT(IN   )      :: dnw
!   REAL , DIMENSION( ims:ime , jms:jme ) ,  INTENT(IN   )      :: zeta_z

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::tendency

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ) ,                       &
                                            INTENT(IN   )      ::defor23, &
                                                                    xkmv, &
                                                                    rdzw

   REAL , DIMENSION( ims:ime , jms:jme ) ,  INTENT(IN   )      :: mu

! LOCAL VARS

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end
   INTEGER :: is_ext,ie_ext,js_ext,je_ext  

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)        :: titau3

   REAL , DIMENSION( its:ite, jts:jte)                         ::  zzavg

   REAL  :: rdzv

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
  
   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = jte

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-1,jte)

! titau3 = titau23
   is_ext=0
   ie_ext=0
   js_ext=0
   je_ext=0
   CALL cal_titau_23_32( config_flags, titau3, defor23,   &
                         mu, xkmv, fnm, fnp,              &
                         is_ext, ie_ext, js_ext, je_ext,  &
                         ids, ide, jds, jde, kds, kde,    &
                         ims, ime, jms, jme, kms, kme,    &
                         its, ite, jts, jte, kts, kte     )

   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end

      rdzv = 2./(1./rdzw(i,k,j) + 1./rdzw(i,k,j-1))
      tendency(i,k,j)=tendency(i,k,j)-rdzv*(titau3(i,k+1,j)-titau3(i,k,j))

   ENDDO
   ENDDO
   ENDDO

! ******** MODIF...
!  we will pick up the surface drag (titau3(i,kts,j)) later
!
       DO j = j_start, j_end
       k=kts
       DO i = i_start, i_end
 
          rdzv = 2./(1./rdzw(i,k,j) + 1./rdzw(i,k,j-1))
          tendency(i,k,j)=tendency(i,k,j)-rdzv*(titau3(i,k+1,j))
 
       ENDDO
       ENDDO
! ******** MODIF...

END SUBROUTINE vertical_diffusion_v_2

!=======================================================================
!=======================================================================

SUBROUTINE vertical_diffusion_w_2(tendency, config_flags, mu,             &
                                defor33, tke, div, xkmv,                  &
                                dn, rdz,                                  &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                its, ite, jts, jte, kts, kte              )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,         INTENT(IN   ) ::       ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   REAL , DIMENSION( kms:kme ) ,            INTENT(IN   )      ::  dn

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::tendency

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ) ,                       &
                                            INTENT(IN   )      ::defor33, &
                                                                     tke, &
                                                                     div, &
                                                                    xkmv, &
                                                                     rdz

   REAL , DIMENSION( ims:ime, jms:jme), INTENT(IN   ) :: mu

! LOCAL VARS

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end
   INTEGER :: is_ext,ie_ext,js_ext,je_ext  

   REAL , DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1)        :: titau3

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
  
   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

! titau3 = titau33
   is_ext=0
   ie_ext=0
   js_ext=0
   je_ext=0
   CALL cal_titau_11_22_33( config_flags, titau3,            &
                            mu, tke, xkmv, defor33,          &
                            is_ext, ie_ext, js_ext, je_ext,  &
                            ids, ide, jds, jde, kds, kde,    &
                            ims, ime, jms, jme, kms, kme,    &
                            its, ite, jts, jte, kts, kte     )

!   DO j = j_start, j_end
!   DO k = kts+1, ktf
!   DO i = i_start, i_end
!      titau3(i,k,j)=titau3(i,k,j)*zeta_z(i,j)
!   ENDDO
!   ENDDO
!   ENDDO

   DO j = j_start, j_end
   DO k = kts+1, ktf
   DO i = i_start, i_end
      tendency(i,k,j)=tendency(i,k,j)-rdz(i,k,j)*(titau3(i,k,j)-titau3(i,k-1,j))
   ENDDO
   ENDDO
   ENDDO

END SUBROUTINE vertical_diffusion_w_2

!=======================================================================
!=======================================================================

SUBROUTINE vertical_diffusion_s( tendency, config_flags, var, mu, xkhv,   &
                                 dn, dnw, rdz, rdzw, fnm, fnp,            &
                                 doing_tke,                               &
                                 ids, ide, jds, jde, kds, kde,            &
                                 ims, ime, jms, jme, kms, kme,            &
                                 its, ite, jts, jte, kts, kte            )

!-----------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,         INTENT(IN   ) ::       ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            its, ite, jts, jte, kts, kte

   LOGICAL,         INTENT(IN   ) ::        doing_tke

   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnm
   REAL , DIMENSION( kms:kme ) ,                 INTENT(IN   ) ::    fnp
   REAL , DIMENSION( kms:kme ) ,            INTENT(IN   )      ::  dn
   REAL , DIMENSION( kms:kme ) ,            INTENT(IN   )      :: dnw

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::tendency

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ) , INTENT(IN) ::   xkhv

   REAL , DIMENSION( ims:ime , jms:jme ) , INTENT(IN) ::   mu

   REAL , DIMENSION( ims:ime , kms:kme, jms:jme ) ,                       &
                                            INTENT(IN   )      ::    var, &
                                                                     rdz, &
                                                                    rdzw
! LOCAL VARS

   INTEGER :: i, j, k, ktf

   INTEGER :: i_start, i_end, j_start, j_end

   REAL , DIMENSION( its:ite, kts:kte, jts:jte)            ::        H3, &
                                                                 xkxavg, &
                                                                  rravg

   REAL , DIMENSION( its:ite, kts:kte, jts:jte)            ::  tmptendf

! End declarations.
!-----------------------------------------------------------------------

   ktf=MIN(kte,kde-1)
  
   i_start = its
   i_end   = MIN(ite,ide-1)
   j_start = jts
   j_end   = MIN(jte,jde-1)

   IF ( config_flags%open_xs .or. config_flags%specified .or. &
        config_flags%nested) i_start = MAX(ids+1,its)
   IF ( config_flags%open_xe .or. config_flags%specified .or. &
        config_flags%nested) i_end   = MIN(ide-2,ite)
   IF ( config_flags%open_ys .or. config_flags%specified .or. &
        config_flags%nested) j_start = MAX(jds+1,jts)
   IF ( config_flags%open_ye .or. config_flags%specified .or. &
        config_flags%nested) j_end   = MIN(jde-2,jte)

   IF (doing_tke) THEN
      DO j = j_start, j_end
      DO k = kts,ktf
      DO i = i_start, i_end
         tmptendf(i,k,j)=tendency(i,k,j)
      ENDDO
      ENDDO
      ENDDO
   ENDIF

! H3

   xkxavg = 0.

   DO j = j_start, j_end
   DO k = kts+1,ktf
   DO i = i_start, i_end
      xkxavg(i,k,j)=fnm(k)*xkhv(i,k,j)+fnp(k)*xkhv(i,k-1,j)
      H3(i,k,j)=-xkxavg(i,k,j)*(var(i,k,j)-var(i,k-1,j))*rdz(i,k,j)
!      H3(i,k,j)=-xkxavg(i,k,j)*zeta_z(i,j)* &
!                 (var(i,k,j)-var(i,k-1,j))/dn(k)
   ENDDO
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO i = i_start, i_end
      H3(i,kts,j)=0.
      H3(i,ktf+1,j)=0.
!      H3(i,kts,j)=H3(i,kts+1,j)
!      H3(i,ktf+1,j)=H3(i,ktf,j)
   ENDDO
   ENDDO

   DO j = j_start, j_end
   DO k = kts,ktf
   DO i = i_start, i_end
      tendency(i,k,j)=tendency(i,k,j)  &
                       -mu(i,j)*(H3(i,k+1,j)-H3(i,k,j))*rdzw(i,k,j)
   ENDDO
   ENDDO
   ENDDO

   IF (doing_tke) THEN
      DO j = j_start, j_end
      DO k = kts,ktf
      DO i = i_start, i_end
          tendency(i,k,j)=tmptendf(i,k,j)+2.* &
                          (tendency(i,k,j)-tmptendf(i,k,j))
      ENDDO
      ENDDO
      ENDDO
   ENDIF

END SUBROUTINE vertical_diffusion_s

!=======================================================================
!=======================================================================

    SUBROUTINE cal_titau_11_22_33( config_flags, titau,              &
                                   mu, tke, xkx, defor,              &
                                   is_ext, ie_ext, js_ext, je_ext,   &
                                   ids, ide, jds, jde, kds, kde,     &
                                   ims, ime, jms, jme, kms, kme,     &
                                   its, ite, jts, jte, kts, kte      )

! History:     Sep 2003  Changes by George Bryan and Jason Knievel, NCAR
!              Oct 2001  Converted to mass core by Bill Skamarock, NCAR
!              Aug 2000  Original code by Shu-Hua Chen, UC-Davis

! Purpose:     This routine calculates stress terms (taus) for use in
!              the calculation of production of TKE by sheared wind

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980)
!              Chen and Dudhia (NCAR WRF physics report 2000)

! Key:

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    INTEGER, INTENT( IN )  &
    :: is_ext, ie_ext, js_ext, je_ext  

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 ), INTENT( INOUT )  &
    :: titau 

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: defor, xkx, tke

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, i_start, i_end, j_start, j_end

! End declarations.
!-----------------------------------------------------------------------

    ktf = MIN( kte, kde-1 )

    i_start = its
    i_end   = ite
    j_start = jts
    j_end   = jte

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested) i_end   = MIN( ide-1, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-1, jte )

    i_start = i_start - is_ext
    i_end   = i_end   + ie_ext   
    j_start = j_start - js_ext
    j_end   = j_end   + je_ext   

    IF ( config_flags%km_opt .EQ. 2) THEN
      DO j = j_start,j_end
      DO k = kts,ktf
      DO i = i_start,i_end  
        titau(i,k,j) = mu(i,j) * ( - xkx(i,k,j) * ( defor(i,k,j) ) )       
      END DO
      END DO
      END DO
    ELSE
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
        titau(i,k,j) = - mu(i,j) * xkx(i,k,j) * defor(i,k,j)
      END DO
      END DO
      END DO
    END IF

    END SUBROUTINE cal_titau_11_22_33

!=======================================================================
!=======================================================================

    SUBROUTINE cal_titau_12_21( config_flags, titau,             &
                                mu, xkx, defor,                  &
                                is_ext, ie_ext, js_ext, je_ext,  &
                                ids, ide, jds, jde, kds, kde,    &
                                ims, ime, jms, jme, kms, kme,    &
                                its, ite, jts, jte, kts, kte     )

! History:     Sep 2003   Modifications by George Bryan and Jason Knievel, NCAR
!              Oct 2001   Converted to mass core by Bill Skamarock, NCAR
!              Aug 2000   Original code by Shu-Hua Chen, UC-Davis

! Pusrpose     This routine calculates the stress terms (taus) for use in
!              the calculation of production of TKE by sheared wind

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980)
!              Chen and Dudhia (NCAR WRF physics report 2000)

! Key:

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    INTEGER, INTENT( IN )  &
    :: is_ext, ie_ext, js_ext, je_ext  

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 ), INTENT( INOUT )  &
    :: titau 
 
    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: defor, xkx

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, i_start, i_end, j_start, j_end

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 )  &
    :: xkxavg  

    REAL, DIMENSION( its-1:ite+1, jts-1:jte+1 )  &
    :: muavg

! End declarations.
!-----------------------------------------------------------------------

    ktf = MIN( kte, kde-1 )

! Needs one more point in the x and y directions.

    i_start = its
    i_end   = ite
    j_start = jts
    j_end   = jte

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested ) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested ) i_end   = MIN( ide-1, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested ) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested ) j_end   = MIN( jde-1, jte )

    i_start = i_start - is_ext
    i_end   = i_end   + ie_ext   
    j_start = j_start - js_ext
    j_end   = j_end   + je_ext   

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      xkxavg(i,k,j) = 0.25 * ( xkx(i-1,k,j  ) + xkx(i,k,j  ) +  &
                               xkx(i-1,k,j-1) + xkx(i,k,j-1) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO i = i_start, i_end
      muavg(i,j) = 0.25 * ( mu(i-1,j  ) + mu(i,j  ) +  &
                            mu(i-1,j-1) + mu(i,j-1) )
    END DO
    END DO

! titau12 or titau21

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      titau(i,k,j) = - muavg(i,j) * xkxavg(i,k,j) * defor(i,k,j)
    END DO
    END DO
    END DO

    END SUBROUTINE cal_titau_12_21

!=======================================================================

    SUBROUTINE cal_titau_13_31( config_flags, titau,             &
                                defor, mu, xkx, fnm, fnp,        &
                                is_ext, ie_ext, js_ext, je_ext,  &
                                ids, ide, jds, jde, kds, kde,    &
                                ims, ime, jms, jme, kms, kme,    &
                                its, ite, jts, jte, kts, kte     )

! History:     Sep 2003   Modifications by George Bryan and Jason Knievel, NCAR
!              Oct 2001   Converted to mass core by Bill Skamarock, NCAR
!              Aug 2000   Original code by Shu-Hua Chen, UC-Davis

! Purpose:     This routine calculates the stress terms (taus) for use in
!              the calculation of production of TKE by sheared wind

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980)
!              Chen and Dudhia (NCAR WRF physics report 2000)

! Key:

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    INTEGER, INTENT( IN )  &
    :: is_ext, ie_ext, js_ext, je_ext  

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: fnm, fnp

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 ), INTENT( INOUT )  &
    :: titau 
 
    REAL, DIMENSION( ims:ime, kms:kme, jms:jme), INTENT( IN )  &
    :: defor, xkx

    REAL, DIMENSION( ims:ime, jms:jme), INTENT( IN )  &
    :: mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, i_start, i_end, j_start, j_end

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 )  &
    :: xkxavg 

    REAL, DIMENSION( its-1:ite+1, jts-1:jte+1 )  &
    :: muavg

! End declarations.
!-----------------------------------------------------------------------

    ktf = MIN( kte, kde-1 )

! Find ide-1 and jde-1 for averaging to p point.

    i_start = its
    i_end   = ite
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested) i_end   = MIN( ide-1, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-2, jte )

    i_start = i_start - is_ext
    i_end   = i_end   + ie_ext   
    j_start = j_start - js_ext
    j_end   = j_end   + je_ext   

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      xkxavg(i,k,j) = 0.5 * ( fnm(k) * ( xkx(i,k  ,j) + xkx(i-1,k  ,j) ) +  &
                              fnp(k) * ( xkx(i,k-1,j) + xkx(i-1,k-1,j) ) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO i = i_start, i_end
      muavg(i,j) = 0.5 * ( mu(i,j) + mu(i-1,j) )
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      titau(i,k,j) = - muavg(i,j) * xkxavg(i,k,j) * defor(i,k,j)
    ENDDO
    ENDDO
    ENDDO

    DO j = j_start, j_end
    DO i = i_start, i_end
      titau(i,kts  ,j) = 0.0
      titau(i,ktf+1,j) = 0.0
    ENDDO
    ENDDO

    END SUBROUTINE cal_titau_13_31

!=======================================================================
!=======================================================================

    SUBROUTINE cal_titau_23_32( config_flags, titau, defor,      &
                                mu, xkx, fnm, fnp,               &
                                is_ext, ie_ext, js_ext, je_ext,  &
                                ids, ide, jds, jde, kds, kde,    &
                                ims, ime, jms, jme, kms, kme,    &
                                its, ite, jts, jte, kts, kte     )

! History:     Sep 2003  Changes by George Bryan and Jason Knievel, NCAR
!              Oct 2001  Converted to mass core by Bill Skamarock, NCAR
!              Aug 2000  Original code by Shu-Hua Chen, UC-Davis

! Purpose:     This routine calculates stress terms (taus) for use in
!              the calculation of production of TKE by sheared wind

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980)
!              Chen and Dudhia (NCAR WRF physics report 2000)

! Key:

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    INTEGER, INTENT( IN )  &
    :: is_ext,ie_ext,js_ext,je_ext  

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: fnm, fnp

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 ), INTENT( INOUT )  &  
    :: titau 
 
    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: defor, xkx
  
    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    ::  mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, i_start, i_end, j_start, j_end

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 )  &
    :: xkxavg 
                                                                   
    REAL, DIMENSION( its-1:ite+1, jts-1:jte+1 )  &
    :: muavg

! End declarations.
!-----------------------------------------------------------------------

     ktf = MIN( kte, kde-1 )

! Find ide-1 and jde-1 for averaging to p point.

    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = jte

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested) i_end   = MIN( ide-2, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-1, jte )

    i_start = i_start - is_ext
    i_end   = i_end   + ie_ext   
    j_start = j_start - js_ext
    j_end   = j_end   + je_ext   

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      xkxavg(i,k,j) = 0.5 * ( fnm(k) * ( xkx(i,k  ,j) + xkx(i,k  ,j-1) ) +  &
                              fnp(k) * ( xkx(i,k-1,j) + xkx(i,k-1,j-1) ) )
    END DO
    END DO
    END DO
 
    DO j = j_start, j_end
    DO i = i_start, i_end
      muavg(i,j) = 0.5 * ( mu(i,j) + mu(i,j-1) )
    END DO
    END DO
 
    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
       titau(i,k,j) = - muavg(i,j) * xkxavg(i,k,j) * defor(i,k,j)
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO i = i_start, i_end
      titau(i,kts  ,j) = 0.0
      titau(i,ktf+1,j) = 0.0
    END DO
    END DO

    END SUBROUTINE cal_titau_23_32

!=======================================================================
!=======================================================================

SUBROUTINE phy_bc ( config_flags,div,defor11,defor22,defor33,              &
                    defor12,defor13,defor23,xkmh,xkmhd,xkmv,xkhh,xkhv,tke, &
                    RUBLTEN, RVBLTEN,                                      &
                    ids, ide, jds, jde, kds, kde,                          &
                    ims, ime, jms, jme, kms, kme,                          &
                    ips, ipe, jps, jpe, kps, kpe,                          &
                    its, ite, jts, jte, kts, kte                           )

!------------------------------------------------------------------------------
! Begin declarations.

   IMPLICIT NONE

   TYPE(grid_config_rec_type), INTENT(IN   ) :: config_flags

   INTEGER ,        INTENT(IN   ) ::        ids, ide, jds, jde, kds, kde, &
                                            ims, ime, jms, jme, kms, kme, &
                                            ips, ipe, jps, jpe, kps, kpe, &
                                            its, ite, jts, jte, kts, kte

   REAL , DIMENSION( ims:ime, kms:kme, jms:jme), INTENT(INOUT) ::RUBLTEN, &
                                                                 RVBLTEN, &
                                                                 defor11, &
                                                                 defor22, &
                                                                 defor33, &
                                                                 defor12, &
                                                                 defor13, &
                                                                 defor23, &
                                                                    xkmh, &
                                                                   xkmhd, &
                                                                    xkmv, &
                                                                    xkhh, &
                                                                    xkhv, &
                                                                     tke, &
                                                                     div

! End declarations.
!-----------------------------------------------------------------------

   IF(config_flags%bl_pbl_physics .GT. 0) THEN

        CALL set_physical_bc3d( RUBLTEN , 't', config_flags,              &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

        CALL set_physical_bc3d( RVBLTEN , 't', config_flags,              &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   ENDIF

   IF(config_flags%diff_opt .eq. 2) THEN

   CALL set_physical_bc3d( xkmh    , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( xkmhd   , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( xkmv    , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( xkhh    , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( xkhv    , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( tke     , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( div     , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( defor11 , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( defor22 , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( defor33 , 't', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( defor12 , 'd', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( defor13 , 'e', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   CALL set_physical_bc3d( defor23 , 'f', config_flags,                   &
                                ids, ide, jds, jde, kds, kde,             &
                                ims, ime, jms, jme, kms, kme,             &
                                ips, ipe, jps, jpe, kps, kpe,             &
                                its, ite, jts, jte, kts, kte              )

   ENDIF

END SUBROUTINE phy_bc 

!=======================================================================
!=======================================================================

    SUBROUTINE tke_rhs( tendency, BN2, config_flags,            &
                        defor11, defor22, defor33,              &
                        defor12, defor13, defor23,              &
                        u, v, w, div, tke, mu,                  &
                        theta, p, p8w, t8w, z, fnm, fnp,        &
                        cf1, cf2, cf3, msft, xkmh, xkmv, xkhv,  &
                        rdx, rdy, dx, dy, dt, zx, zy,           &
                        rdz, rdzw, dn, dnw, cr_len,             &
                        ids, ide, jds, jde, kds, kde,           &
                        ims, ime, jms, jme, kms, kme,           &
                        its, ite, jts, jte, kts, kte            )

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    REAL, INTENT( IN )  &
    :: cf1, cf2, cf3, dt, rdx, rdy, dx, dy, cr_len

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: fnm, fnp, dnw, dn

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: msft

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: tendency

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: defor11, defor22, defor33, defor12, defor13, defor23,  &
       div, BN2, tke, xkmh, xkmv, xkhv, zx, zy, u, v, w, theta,  &
       p, p8w, t8w, z, rdz, rdzw

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, i_start, i_end, j_start, j_end

! End declarations.
!-----------------------------------------------------------------------

    CALL tke_shear(    tendency, config_flags,                &
                       defor11, defor22, defor33,             &
                       defor12, defor13, defor23,             &
                       u, v, w, tke, mu, fnm, fnp,            &
                       cf1, cf2, cf3, msft, xkmh, xkmv,       &
                       rdx, rdy, zx, zy, rdz, rdzw, dnw, dn,  &
                       ids, ide, jds, jde, kds, kde,          &
                       ims, ime, jms, jme, kms, kme,          &
                       its, ite, jts, jte, kts, kte           )

    CALL tke_buoyancy( tendency, config_flags, mu,            &
                       tke, xkhv, BN2, dt,                    &
                       ids, ide, jds, jde, kds, kde,          &
                       ims, ime, jms, jme, kms, kme,          &
                       its, ite, jts, jte, kts, kte           )

    CALL tke_dissip(   tendency, config_flags,                &
                       mu, tke, bn2, theta, p8w, t8w, z,      &
                       dx, dy,rdz, rdzw, cr_len,              &
                       ids, ide, jds, jde, kds, kde,          &
                       ims, ime, jms, jme, kms, kme,          &
                       its, ite, jts, jte, kts, kte           )

! Set a lower limit on TKE.

    ktf     = MIN( kte, kde-1 )
    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .or. config_flags%specified .or. &
         config_flags%nested) i_start = MAX(ids+1,its)
    IF ( config_flags%open_xe .or. config_flags%specified .or. &
         config_flags%nested) i_end   = MIN(ide-2,ite)
    IF ( config_flags%open_ys .or. config_flags%specified .or. &
         config_flags%nested) j_start = MAX(jds+1,jts)
    IF ( config_flags%open_ye .or. config_flags%specified .or. &
         config_flags%nested) j_end   = MIN(jde-2,jte)
 
    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = max( tendency(i,k,j), -mu(i,j) * max( 0.0 , tke(i,k,j) ) / dt )
    END DO
    END DO
    END DO

    END SUBROUTINE tke_rhs

!=======================================================================
!=======================================================================

    SUBROUTINE tke_buoyancy( tendency, config_flags, mu,    &
                             tke, xkhv, BN2, dt,            &
                             ids, ide, jds, jde, kds, kde,  &
                             ims, ime, jms, jme, kms, kme,  &
                             its, ite, jts, jte, kts, kte   )

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    REAL, INTENT( IN )  &
    :: dt

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: tendency

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: xkhv, tke, BN2   

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf

    INTEGER  &
    :: i_start, i_end, j_start, j_end

    REAL :: heat_flux

! End declarations.
!-----------------------------------------------------------------------

!-----------------------------------------------------------------------
! Add to the TKE tendency the term that accounts for production of TKE
! due to buoyant motions.

    ktf     = MIN( kte, kde-1 )
    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested ) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested ) i_end   = MIN( ide-2, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested ) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested ) j_end   = MIN( jde-2, jte )
 
    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) - mu(i,j) * xkhv(i,k,j) * BN2(i,k,j)
    END DO
    END DO
    END DO

! MARTA: change in the computation of the tke's tendency  at the surface.
!  the buoyancy flux is the average of the surface heat flux (0.06) and the
!   flux at the first w level
!
! WCS 040331

   heat_flux = config_flags%tke_heat_flux  ! constant heat flux value
                                           ! set in namelist.input

   K=KTS
   DO j = j_start, j_end
   DO i = i_start, i_end
      tendency(i,k,j)= tendency(i,k,j) - &

                   mu(i,j)*((xkhv(i,k,j)*BN2(i,k,j))- heat_flux)/2.

   ENDDO
   ENDDO   
! end of MARTA/WCS change

! The tendency array now includes production of TKE from buoyant
! motions.
!-----------------------------------------------------------------------

    END SUBROUTINE tke_buoyancy

!=======================================================================
!=======================================================================

    SUBROUTINE tke_dissip( tendency, config_flags,            &
                           mu, tke, bn2, theta, p8w, t8w, z,  &
                           dx, dy, rdz, rdzw, cr_len_in,      &
                           ids, ide, jds, jde, kds, kde,      &
                           ims, ime, jms, jme, kms, kme,      &
                           its, ite, jts, jte, kts, kte       )

! History:     Sep 2003  Changes by George Bryan and Jason Knievel, NCAR
!              Oct 2001  Converted to mass core by Bill Skamarock, NCAR
!              Aug 2000  Original code by Shu-Hua Chen, UC-Davis

! Purpose:     This routine calculates dissipation of turbulent kinetic
!              energy.

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980)
!              Chen and Dudhia (NCAR WRF physics report 2000)

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    ::  ids, ide, jds, jde, kds, kde,  &
        ims, ime, jms, jme, kms, kme,  &
        its, ite, jts, jte, kts, kte

    REAL, INTENT( IN )  &
    :: dx, dy, cr_len_in
 
    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: tendency
 
    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: tke, bn2, theta, p8w, t8w, z, rdz, rdzw

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: mu

! Local variables.

    REAL, DIMENSION( its:ite, kts:kte, jts:jte )  &
    :: dthrdn

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme )  &
    :: l_scale

    REAL, DIMENSION( its:ite )  & 
    :: sumtke,  sumtkez

    INTEGER  &
    :: i, j, k, ktf, i_start, i_end, j_start, j_end

    REAL  &
    :: disp_len, deltas, coefc, tmpdz, len_s, thetasfc,  &
       thetatop, len_0, tketmp, tmp, cr_len, ce1, ce2

! End declarations.
!-----------------------------------------------------------------------

    ce1 = ( c_k / 0.10 ) * 0.19
    ce2 = max( 0.0 , 0.93 - ce1 )

    ktf     = MIN( kte, kde-1 )
    i_start = its
    i_end   = MIN(ite,ide-1)
    j_start = jts
    j_end   = MIN(jte,jde-1)

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested) i_end   = MIN( ide-2, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested) j_end   = MIN( jde-2, jte )

    cr_len = cr_len_in
    cr_len = dx + 1.0 !  hardwire for mixing length = (dx*dy*dz)**(1/3).
                      !  remove this for the alternate formulation

    IF (dx .gt. cr_len) THEN

      DO j = j_start, j_end
        DO i = i_start, i_end
          sumtke(i)  = 0.0
          sumtkez(i) = 0.0
        END DO
        DO k = kts, ktf
        DO i = i_start, i_end
          tketmp     = MAX( tke(i,k,j), 0.0 )
          sumtke(i)  = sumtke(i) + SQRT(tketmp) / rdzw(i,k,j)
          sumtkez(i) = sumtkez(i)+ sumtke(i) * z(i,k,j)
          IF ( ABS( sumtke(i) ) .gt. 0.01 ) THEN
            len_0 = 0.2 * sumtkez(i) / sumtke(i)
          ELSE
            len_0 = 80.0
          ENDIF
          len_0 = MIN( 80.0, len_0)
          l_scale(i,k,j)  = KARMAN * z(i,k,j) /  &
                            ( 1.0 + KARMAN * z(i,k,j) / len_0 )
          tendency(i,k,j) = tendency(i,k,j) -                     &
                            mu(i,j) * 2.0 * SQRT( 2.0 ) / 15.0 *  &
                            tketmp**1.5 / l_scale(i,k,j)
        END DO
        END DO
      END DO
    ELSE
      CALL calc_l_scale( config_flags, tke, BN2, l_scale,      &
                         i_start, i_end, ktf, j_start, j_end,  &
                         dx, dy, rdzw,                         &
                         ids, ide, jds, jde, kds, kde,         &
                         ims, ime, jms, jme, kms, kme,         &
                         its, ite, jts, jte, kts, kte          )
      DO j = j_start, j_end
      DO k = kts, ktf
      DO i = i_start, i_end
        deltas  = ( dx * dy / rdzw(i,k,j) )**0.33333333
        tketmp  = MAX( tke(i,k,j), 1.0e-6 )

! Apply Deardorff's (1980) "wall effect" at the bottom of the domain. 

        IF ( k .eq. kts .or. k .eq. ktf ) then
          coefc = 3.9
        ELSE
          coefc = ce1 + ce2 * l_scale(i,k,j) / deltas
        END IF

        tendency(i,k,j) = tendency(i,k,j) - &
                          mu(i,j) * coefc * tketmp**1.5 / l_scale(i,k,j)
      END DO
      END DO
      END DO
    ENDIF

    END SUBROUTINE tke_dissip

!=======================================================================
!=======================================================================

    SUBROUTINE tke_shear( tendency, config_flags,                &
                          defor11, defor22, defor33,             &
                          defor12, defor13, defor23,             &
                          u, v, w, tke, mu, fnm, fnp,            &
                          cf1, cf2, cf3, msft, xkmh, xkmv,       &
                          rdx, rdy, zx, zy, rdz, rdzw, dn, dnw,  &
                          ids, ide, jds, jde, kds, kde,          &
                          ims, ime, jms, jme, kms, kme,          &
                          its, ite, jts, jte, kts, kte           )

! History:     Sep 2003   Rewritten by George Bryan and Jason Knievel,
!                         NCAR
!              Oct 2001   Converted to mass core by Bill Skamarock, NCAR
!              Aug 2000   Original code by Shu-Hua Chen, UC-Davis

! Purpose:     This routine calculates the production of turbulent
!              kinetic energy by stresses due to sheared wind.

! References:  Klemp and Wilhelmson (JAS 1978)
!              Deardorff (B-L Meteor 1980) 
!              Chen and Dudhia (NCAR WRF physics report 2000)

! Key:

! avg          temporary working array
! cf1          
! cf2         
! cf3
! defor11      deformation term ( du/dx + du/dx )
! defor12      deformation term ( dv/dx + du/dy ); same as defor21
! defor13      deformation term ( dw/dx + du/dz ); same as defor31
! defor22      deformation term ( dv/dy + dv/dy )
! defor23      deformation term ( dw/dy + dv/dz ); same as defor32
! defor33      deformation term ( dw/dz + dw/dz )
! div          3-d divergence
! dn
! dnw
! fnm
! fnp
! msft
! rdx
! rdy
! tendency
! titau        tau (stress tensor) with a tilde, indicating division by
!              a map-scale factor and the fraction of the total modeled
!              atmosphere beneath a given altitude (titau = tau/m/zeta)
! tke          turbulent kinetic energy

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    REAL, INTENT( IN )  &
    :: cf1, cf2, cf3, rdx, rdy

    REAL, DIMENSION( kms:kme ), INTENT( IN )  &
    :: fnm, fnp, dn, dnw

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: msft

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( INOUT )  &
    :: tendency

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &  
    :: defor11, defor22, defor33, defor12, defor13, defor23,    &
       tke, xkmh, xkmv, zx, zy, u, v, w, rdz, rdzw

    REAL, DIMENSION( ims:ime, jms:jme ), INTENT( IN )  &
    :: mu

! Local variables.

    INTEGER  &
    :: i, j, k, ktf, ktes1, ktes2,      &
       i_start, i_end, j_start, j_end,  &
       is_ext, ie_ext, js_ext, je_ext   

    REAL  &
    :: mtau

    REAL, DIMENSION( its-1:ite+1, kts:kte, jts-1:jte+1 )  &
    :: avg, titau, tmp2

    REAL, DIMENSION( its:ite, kts:kte, jts:jte )  &
    :: titau12, tmp1, zxavg, zyavg

    REAL :: absU, cd0

! End declarations.
!-----------------------------------------------------------------------

    ktf    = MIN( kte, kde-1 )
    ktes1  = kte-1
    ktes2  = kte-2
   
    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    IF ( config_flags%open_xs .OR. config_flags%specified .OR. &
         config_flags%nested ) i_start = MAX( ids+1, its )
    IF ( config_flags%open_xe .OR. config_flags%specified .OR. &
         config_flags%nested ) i_end   = MIN( ide-2, ite )
    IF ( config_flags%open_ys .OR. config_flags%specified .OR. &
         config_flags%nested ) j_start = MAX( jds+1, jts )
    IF ( config_flags%open_ye .OR. config_flags%specified .OR. &
         config_flags%nested ) j_end   = MIN( jde-2, jte )

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      zxavg(i,k,j) = 0.25 * ( zx(i,k  ,j) + zx(i+1,k  ,j) + &
                              zx(i,k+1,j) + zx(i+1,k+1,j)  )
      zyavg(i,k,j) = 0.25 * ( zy(i,k  ,j) + zy(i,k  ,j+1) + &
                              zy(i,k+1,j) + zy(i,k+1,j+1)  )
    END DO
    END DO
    END DO

! Begin calculating production of turbulence due to shear.  The approach
! is to add together contributions from six terms, each of which is the
! square of a deformation that is then multiplied by an exchange
! coefficiant.  The same exchange coefficient is assumed for horizontal
! and vertical coefficients for some of the terms (the vertical value is
! the one used). 

! For defor11.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) + 0.5 *  &
                        mu(i,j) * xkmh(i,k,j) * ( ( defor11(i,k,j) )**2 )
    END DO
    END DO
    END DO

! For defor22.

    DO j = j_start, j_end 
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) + 0.5 *  &
                        mu(i,j) * xkmh(i,k,j) * ( ( defor22(i,k,j) )**2 )
    END DO
    END DO
    END DO

! For defor33.

    DO j = j_start, j_end 
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) + 0.5 *  &
                        mu(i,j) * xkmv(i,k,j) * ( ( defor33(i,k,j) )**2 )
    END DO
    END DO
    END DO

! For defor12.

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      avg(i,k,j) = 0.25 *  &
                   ( ( defor12(i  ,k,j)**2 ) + ( defor12(i  ,k,j+1)**2 ) +  &
                     ( defor12(i+1,k,j)**2 ) + ( defor12(i+1,k,j+1)**2 ) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) + mu(i,j) * xkmh(i,k,j) * avg(i,k,j)
    END DO
    END DO
    END DO

! For defor13.

    DO j = j_start, j_end
    DO k = kts+1, ktf
    DO i = i_start, i_end+1
      tmp2(i,k,j) = defor13(i,k,j)
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO i = i_start, i_end+1
      tmp2(i,kts  ,j) = 0.0
      tmp2(i,ktf+1,j) = 0.0
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      avg(i,k,j) = 0.25 *  &
                   ( ( tmp2(i  ,k+1,j)**2 ) + ( tmp2(i  ,k,j)**2 ) +  &
                     ( tmp2(i+1,k+1,j)**2 ) + ( tmp2(i+1,k,j)**2 ) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) + mu(i,j) * xkmv(i,k,j) * avg(i,k,j)
    END DO
    END DO
    END DO

!MARTA: add the drug at the surface; WCS 040331
    K=KTS

    cd0 = config_flags%tke_drag_coefficient  ! drag coefficient set 
                                             ! in namelist.input
    DO j = j_start, j_end   
    DO i = i_start, i_end

      absU=0.5*sqrt((u(i,k,j)+u(i+1,k,j))**2+(v(i,k,j)+v(i,k,j+1))**2)

      tendency(i,k,j) = tendency(i,k,j) +       &
           mu(i,j)*( (u(i,k,j)+u(i+1,k,j))*0.5* &
                     cd0*absU*defor13(i,kts+1,j))

    END DO
    END DO
! end of MARTA/WCS change

! For defor23.

    DO j = j_start, j_end+1
    DO k = kts+1, ktf
    DO i = i_start, i_end
      tmp2(i,k,j) = defor23(i,k,j)
    END DO
    END DO
    END DO

    DO j = j_start, j_end+1
    DO i = i_start, i_end
      tmp2(i,kts,  j) = 0.0
      tmp2(i,ktf+1,j) = 0.0
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      avg(i,k,j) = 0.25 *  &
                   ( ( tmp2(i,k+1,j  )**2 ) + ( tmp2(i,k,j  )**2) +  &
                     ( tmp2(i,k+1,j+1)**2 ) + ( tmp2(i,k,j+1)**2) )
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO k = kts, ktf
    DO i = i_start, i_end
      tendency(i,k,j) = tendency(i,k,j) + mu(i,j) * xkmv(i,k,j) * avg(i,k,j)
    END DO
    END DO
    END DO

!MARTA: add the drug at the surface; WCS 040331
    K=KTS

    cd0 = config_flags%tke_drag_coefficient   ! constant drag coefficient 
                                              ! set in namelist.input
    DO j = j_start, j_end   
    DO i = i_start, i_end

      tendency(i,k,j) = tendency(i,k,j) +       &
           mu(i,j)*( (v(i,k,j)+v(i,k,j+1))*0.5* &
                     cd0*absU*defor23(i,kts+1,j))

    END DO
    END DO
! end of MARTA/WCS change

    END SUBROUTINE tke_shear

!=======================================================================
!=======================================================================

    SUBROUTINE compute_diff_metrics( config_flags, ph, phb, z, rdz, rdzw,  &
                                     zx, zy, rdx, rdy,                     &
                                     ids, ide, jds, jde, kds, kde,         &
                                     ims, ime, jms, jme, kms, kme,         &
                                     its, ite, jts, jte, kts, kte         )

!-----------------------------------------------------------------------
! Begin declarations.

    IMPLICIT NONE

    TYPE( grid_config_rec_type ), INTENT( IN )  &
    :: config_flags

    INTEGER, INTENT( IN )  &
    :: ids, ide, jds, jde, kds, kde,  &
       ims, ime, jms, jme, kms, kme,  &
       its, ite, jts, jte, kts, kte

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( IN )  &
    :: ph, phb

    REAL, DIMENSION( ims:ime, kms:kme, jms:jme ), INTENT( OUT )  &
    :: rdz, rdzw, zx, zy, z

    REAL, INTENT( IN )  &
    :: rdx, rdy

! Local variables.

    INTEGER  &
    :: i, j, k, i_start, i_end, j_start, j_end, ktf

! End declarations.
!-----------------------------------------------------------------------

    ktf = MIN( kte, kde-1 )

! Bug fix, WCS, 22 april 2002.

! We need rdzw in halo for average to u and v points.

    j_start = jts-1
    j_end   = jte

! Begin with dz computations.

    DO j = j_start, j_end

      IF ( ( j_start >= jts ) .AND. ( j_end <= MIN( jte, jde-1 ) ) ) THEN
        i_start = its-1
        i_end   = ite
      ELSE
        i_start = its
        i_end   = MIN( ite, ide-1 )
      END IF

! Compute z at w points for rdz and rdzw computations.  We'll switch z
! to z at p points before returning

      DO k = 1, kte

! Bug fix, WCS, 22 april 2002

      DO i = i_start, i_end
        z(i,k,j) = ( ph(i,k,j) + phb(i,k,j) ) / g
      END DO
      END DO

      DO k = 1, ktf
      DO i = i_start, i_end
        rdzw(i,k,j) = 1.0 / ( z(i,k+1,j) - z(i,k,j) )
      END DO
      END DO

      DO k = 2, ktf
      DO i = i_start, i_end
        rdz(i,k,j) = 2.0 / ( z(i,k+1,j) - z(i,k-1,j) )
      END DO
      END DO

! Bug fix, WCS, 22 april 2002; added the following code

      DO i = i_start, i_end
        rdz(i,1,j) = 2./(z(i,2,j)-z(i,1,j))
      END DO

    END DO

! End bug fix.

! Now compute zx and zy; we'll assume that the halo for ph and phb is
! properly filled.

    i_start = its
    i_end   = MIN( ite, ide-1 )
    j_start = jts
    j_end   = MIN( jte, jde-1 )

    DO j = j_start, j_end
    DO k = 1, kte
    DO i = MAX( ids+1, its ), i_end
      zx(i,k,j) = rdx * ( phb(i,k,j) - phb(i-1,k,j) ) / g
    END DO
    END DO
    END DO

    DO j = j_start, j_end
    DO k = 1, kte
    DO i = MAX( ids+1, its ), i_end
      zx(i,k,j) = zx(i,k,j) + rdx * ( ph(i,k,j) - ph(i-1,k,j) ) / g
    END DO
    END DO
    END DO

    DO j = MAX( jds+1, jts ), j_end
    DO k = 1, kte
    DO i = i_start, i_end
      zy(i,k,j) = rdy * ( phb(i,k,j) - phb(i,k,j-1) ) / g
    END DO
    END DO
    END DO

    DO j = MAX( jds+1, jts ), j_end
    DO k = 1, kte
    DO i = i_start, i_end
      zy(i,k,j) = zy(i,k,j) + rdy * ( ph(i,k,j) - ph(i,k,j-1) ) / g
    END DO
    END DO
    END DO

! Some b.c. on zx and zy.

    IF ( .NOT. config_flags%periodic_x ) THEN

      IF ( ite == ide ) THEN
        DO j = j_start, j_end
        DO k = 1, ktf
          zx(ide,k,j) = 0.0
        END DO
        END DO
      END IF

      IF ( its == ids ) THEN
        DO j = j_start, j_end
        DO k = 1, ktf
          zx(ids,k,j) = 0.0
        END DO
        END DO
      END IF

    ELSE

      IF ( ite == ide ) THEN
        DO j=j_start,j_end
        DO k=1,ktf
         zx(ide,k,j) = rdx * ( phb(ide,k,j) - phb(ide-1,k,j) ) / g
        END DO
        END DO

        DO j = j_start, j_end
        DO k = 1, ktf
          zx(ide,k,j) = zx(ide,k,j) + rdx * ( ph(ide,k,j) - ph(ide-1,k,j) ) / g
        END DO
        END DO
      END IF

      IF ( its == ids ) THEN
        DO j = j_start, j_end
        DO k = 1, ktf
          zx(ids,k,j) = rdx * ( phb(ids,k,j) - phb(ids-1,k,j) ) / g
        END DO
        END DO

        DO j =j_start,j_end
        DO k =1,ktf
          zx(ids,k,j) = zx(ids,k,j) + rdx * ( ph(ids,k,j) - ph(ids-1,k,j) ) / g
        END DO
        END DO
      END IF

    END IF

    IF ( .NOT. config_flags%periodic_y ) THEN

      IF ( jte == jde ) THEN
        DO k =1, ktf
        DO i =i_start, i_end
          zy(i,k,jde) = 0.0
        END DO
        END DO
      END IF

      IF ( jts == jds ) THEN
        DO k =1, ktf
        DO i =i_start, i_end
          zy(i,k,jds) = 0.0
        END DO
        END DO
      END IF

    ELSE

      IF ( jte == jde ) THEN
        DO j=j_start, j_end
        DO k=1, ktf
          zy(i,k,jde) = rdy * ( phb(i,k,jde) - phb(i,k,jde-1) ) / g
        END DO
        END DO

        DO j = j_start, j_end
        DO k = 1, ktf
          zy(i,k,jde) = zy(i,k,jde) + rdy * ( ph(i,k,jde) - ph(i,k,jde-1) ) / g
        END DO
        END DO
      END IF

      IF ( jts == jds ) THEN
        DO j = j_start, j_end
        DO k = 1, ktf
          zy(i,k,jds) = rdy * ( phb(i,k,jds) - phb(i,k,jds-1) ) / g
        END DO
        END DO

        DO j = j_start, j_end
        DO k = 1, ktf
          zy(i,k,jds) = zy(i,k,jds) + rdy * ( ph(i,k,jds) - ph(i,k,jds-1) ) / g
        END DO
        END DO
      END IF

    END IF
      
! Calculate z at p points.

    DO j = j_start, j_end
      DO k = 1, ktf
      DO i = i_start, i_end
        z(i,k,j) = 0.5 *  &
                   ( ph(i,k,j) + phb(i,k,j) + ph(i,k+1,j) + phb(i,k+1,j) ) / g
      END DO
      END DO
    END DO

    END SUBROUTINE compute_diff_metrics

!=======================================================================
!=======================================================================

    END MODULE module_diffusion_em

!=======================================================================
!=======================================================================


