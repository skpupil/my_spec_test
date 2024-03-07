!
MODULE MODULE_SF_MYJSFC
!
USE module_model_constants
!
!----------------------------------------------------------------------
!
! REFERENCES:  Janjic (2001), NCEP Office Note 437
!              Mellor and Yamada (1982), Rev. Geophys. Space Phys.
!              Mellor and Yamada (1974), J. Atmos. Sci.
!
! ABSTRACT:
!     MYJSFC generates the surface exchange coefficients for vertical
!     turbulent exchange based upon Monin_Obukhov theory with
!     various refinements.
!
!----------------------------------------------------------------------
!
      INTEGER :: ITRMX=5 ! Iteration count for sfc layer computations
!
      REAL,PARAMETER :: VKARMAN=0.4
      REAL,PARAMETER :: CAPA=R_D/CP,ELOCP=2.72E6/CP,RCAP=1./CAPA
      REAL,PARAMETER :: GOCP02=G/CP*2.,GOCP10=G/CP*10.
      REAL,PARAMETER :: EPSL=0.32,EPSRU=1.E-7,EPSRS=1.E-7 
      REAL,PARAMETER :: EPSU2=1.E-4,EPSUST=0.07,EPSZT=1.E-5
      REAL,PARAMETER :: A1=0.659888514560862645                        &
                       ,A2x=0.6574209922667784586                      &
                       ,B1=11.87799326209552761                        &
                       ,B2=7.226971804046074028                        &
                       ,C1=0.000830955950095854396
      REAL,PARAMETER :: A2S=17.2693882,A3S=273.16,A4S=35.86
      REAL,PARAMETER :: SEAFC=0.98,PQ0SEA=PQ0*SEAFC
      REAL,PARAMETER :: BETA=1./273.,CZIL=0.2,EXCML=0.001,EXCMS=0.001  &
                       ,GLKBR=10.,GLKBS=30.,PI=3.1415926               &
                       ,QVISC=2.1E-5,RIC=0.505,SMALL=0.35              &
                       ,SQPR=0.84,SQSC=0.84,SQVISC=258.2,TVISC=2.1E-5  &
                       ,USTC=0.7,USTR=0.225,VISC=1.5E-5                &
                       ,WWST=1.2,ZTFC=1.
!
      REAL,PARAMETER :: BTG=BETA*G,CZIV=SMALL*GLKBS                    &
!                      ,EP_1=R_V/R_D-1.,GRRS=GLKBR/GLKBS               &
                       ,GRRS=GLKBR/GLKBS               &
                       ,RB1=1./B1,RTVISC=1./TVISC,RVISC=1./VISC        &
                       ,ZQRZT=SQSC/SQPR
!
      REAL,PARAMETER :: ADNH= 9.*A1*A2x*A2x*(12.*A1+3.*B2)*BTG*BTG     &                  
                       ,ADNM=18.*A1*A1*A2x*(B2-3.*A2x)*BTG             & 
                       ,ANMH=-9.*A1*A2x*A2x*BTG*BTG                    &
                       ,ANMM=-3.*A1*A2x*(3.*A2x+3.*B2*C1+18.*A1*C1-B2) &
                                      *BTG                             &   
                       ,BDNH= 3.*A2x*(7.*A1+B2)*BTG                    &
                       ,BDNM= 6.*A1*A1                                 &
                       ,BEQH= A2x*B1*BTG+3.*A2x*(7.*A1+B2)*BTG         &
                       ,BEQM=-A1*B1*(1.-3.*C1)+6.*A1*A1                &
                       ,BNMH=-A2x*BTG                                  &     
                       ,BNMM=A1*(1.-3.*C1)                             &
                       ,BSHH=9.*A1*A2x*A2x*BTG                         &
                       ,BSHM=18.*A1*A1*A2x*C1                          &
                       ,BSMH=-3.*A1*A2x*(3.*A2x+3.*B2*C1+12.*A1*C1-B2) &
                                      *BTG                             &
                       ,CESH=A2x                                       &
                       ,CESM=A1*(1.-3.*C1)                             &
                       ,CNV=EP_1*G/BTG                                 &
                       ,ELFCS=VKARMAN*BTG                              &
                       ,FZQ1=RTVISC*QVISC*ZQRZT                        &
                       ,FZQ2=RTVISC*QVISC*ZQRZT                        &
                       ,FZT1=RVISC *TVISC*SQPR                         &
                       ,FZT2=CZIV*GRRS*TVISC*SQPR                      &
                       ,FZU1=CZIV*VISC                                 &
                       ,PIHF=0.5*PI                                    &
                       ,RQVISC=1./QVISC                                &
                       ,RRIC=1./RIC                                    &
                       ,USTFC=0.018/G                                  &
                       ,WWST2=WWST*WWST                                &
                       ,ZILFC=-CZIL*VKARMAN*SQVISC
!
!
!----------------------------------------------------------------------
!***  FREE TERM IN THE EQUILIBRIUM EQUATION FOR (L/Q)**2
!----------------------------------------------------------------------
!
      REAL,PARAMETER :: AEQH=9.*A1*A2x*A2x*B1*BTG*BTG                  &
                            +9.*A1*A2x*A2x*(12.*A1+3.*B2)*BTG*BTG      &
                       ,AEQM=3.*A1*A2x*B1*(3.*A2x+3.*B2*C1+18.*A1*C1-B2) &
                            *BTG+18.*A1*A1*A2x*(B2-3.*A2x)*BTG
!
!----------------------------------------------------------------------
!***  FORBIDDEN TURBULENCE AREA
!----------------------------------------------------------------------
!
      REAL,PARAMETER :: REQU=-AEQH/AEQM                                &
                       ,EPSGH=1.E-9,EPSGM=REQU*EPSGH
!----------------------------------------------------------------------
!***  NEAR ISOTROPY FOR SHEAR TURBULENCE, WW/Q2 LOWER LIMIT
!----------------------------------------------------------------------
!
      REAL,PARAMETER :: UBRYL=(18.*REQU*A1*A1*A2x*B2*C1*BTG            &
                               +9.*A1*A2x*A2x*B2*BTG*BTG)              &
                              /(REQU*ADNM+ADNH)                        &
                       ,UBRY=(1.+EPSRS)*UBRYL,UBRY3=3.*UBRY
!
      REAL,PARAMETER :: AUBH=27.*A1*A2x*A2x*B2*BTG*BTG-ADNH*UBRY3      &
                       ,AUBM=54.*A1*A1*A2x*B2*C1*BTG -ADNM*UBRY3       &
                       ,BUBH=(9.*A1*A2x+3.*A2x*B2)*BTG-BDNH*UBRY3      &
                       ,BUBM=18.*A1*A1*C1           -BDNM*UBRY3        &
                       ,CUBR=1.                     -     UBRY3        &
                       ,RCUBR=1./CUBR
!----------------------------------------------------------------------
      INTEGER, PARAMETER :: KZTM=10001,KZTM2=KZTM-2
!
      REAL :: DZETA1,DZETA2,FH01,FH02,ZTMAX1,ZTMAX2,ZTMIN1,ZTMIN2
!
      REAL,DIMENSION(KZTM) :: PSIH1,PSIH2,PSIM1,PSIM2
!
!----------------------------------------------------------------------
!
CONTAINS
!
!----------------------------------------------------------------------
      SUBROUTINE MYJSFC(ITIMESTEP,HT,DZ                                & 
                       ,PMID,PINT,TH,T,QV,QC,U,V,Q2                    &
                       ,TSK,QSFC,THZ0,QZ0,UZ0,VZ0                      &
                       ,LOWLYR,XLAND                                   &
                       ,USTAR,ZNT,PBLH,MAVAIL                          &
                       ,AKHS,AKMS                                      &
                       ,CHS,CHS2,HFX,QFX,LH,FLHC,FLQC,QGH,CPM,CT       &
                       ,U10,V10,TSHLTR,TH10,QSHLTR,Q10,PSHLTR          &
                       ,IDS,IDE,JDS,JDE,KDS,KDE                        &
                       ,IMS,IME,JMS,JME,KMS,KME                        &
                       ,ITS,ITE,JTS,JTE,KTS,KTE)
!----------------------------------------------------------------------
!
      IMPLICIT NONE
!
!----------------------------------------------------------------------
      INTEGER,INTENT(IN) :: IDS,IDE,JDS,JDE,KDS,KDE                    &
                           ,IMS,IME,JMS,JME,KMS,KME                    &
                           ,ITS,ITE,JTS,JTE,KTS,KTE
!
      INTEGER,INTENT(IN) :: ITIMESTEP
!

      INTEGER,DIMENSION(IMS:IME,JMS:JME),INTENT(IN) :: LOWLYR
!
      REAL,DIMENSION(IMS:IME,JMS:JME),INTENT(IN) :: HT,XLAND,TSK,MAVAIL
!
      REAL,DIMENSION(IMS:IME,KMS:KME,JMS:JME),INTENT(IN) :: DZ         &
                                                           ,PMID,PINT  &
                                                           ,Q2,QC,QV   &
                                                           ,T,TH       &
                                                           ,U,V   
!
      REAL,DIMENSION(IMS:IME,JMS:JME),INTENT(OUT) :: HFX,PSHLTR        &
                                                    ,QFX,LH,Q10,QSHLTR &
                                                    ,TH10,TSHLTR       &
                                                    ,U10,V10
!
      REAL,DIMENSION(IMS:IME,JMS:JME),INTENT(INOUT) :: AKHS,AKMS       &
                                                      ,PBLH,QSFC
!
!
      REAL,DIMENSION(IMS:IME,JMS:JME),INTENT(INOUT) :: QZ0,THZ0        &
                                                      ,USTAR,UZ0,VZ0   &
                                                      ,ZNT
!
      REAL,DIMENSION(IMS:IME,JMS:JME),INTENT(OUT) :: FLHC,FLQC         &
                                                    ,QGH,CPM           &
                                                    ,CHS,CHS2,CT
!----------------------------------------------------------------------
!***
!***  LOCAL VARIABLES
!***
      INTEGER :: I,J,K,KFLIP,LMH,LPBL,NTSD
!
      REAL :: A,ADEN,APESFC,AUBR,B,BDEN,BTGX,BUBR,CWMLOW               &
             ,DQDT,DTDIF,DTDT,DUDT,DVDT                                &
             ,ELOQ2X,FIS,GHK,GMK                                       &
             ,P02P,P10P,PLOW,PSFC,PTOP,QLOW,QOL2ST,QOL2UN,QS02,QS10    &
             ,RAPA,RAPA02,RAPA10,RATIOMX,RDZ,SEAMASK,SM                &
             ,T02P,T10P,TEM,TH02P,TH10P,THLOW,THELOW,THM               &
             ,TLOW,TZ0,ULOW,VLOW,ZSL
!
      REAL,DIMENSION(KTS:KTE) :: CWMK,PK,Q2K,QK,THEK,THK,TK,UK,VK
!
      REAL,DIMENSION(KTS:KTE-1) :: AKHK,AKMK,EL,ELM,GH,GM
!
      REAL,DIMENSION(KTS:KTE+1) :: ZHK
!
      REAL,DIMENSION(ITS:ITE,JTS:JTE) :: THSK
!
      REAL,DIMENSION(ITS:ITE,KTS:KTE+1,JTS:JTE) :: ZINT
!
!----------------------------------------------------------------------
!**********************************************************************
!----------------------------------------------------------------------
!
!***  MAKE PREPARATIONS
!
!----------------------------------------------------------------------
      DO J=JTS,JTE
      DO K=KTS,KTE+1
      DO I=ITS,ITE
        ZINT(I,K,J)=0.
      ENDDO
      ENDDO
      ENDDO
!
      DO J=JTS,JTE
      DO I=ITS,ITE
        ZINT(I,KTE+1,J)=HT(I,J)     ! Z at bottom of lowest sigma layer
        PBLH(I,J)=-1.
!
!!!!!!!!!
!!!!!! UNCOMMENT THESE LINES IF USING ETA COORDINATES
!!!!!!!!!
!!!!!!  ZINT(I,KTE+1,J)=1.E-4       ! Z of bottom of lowest eta layer
!!!!!!  ZHK(KTE+1)=1.E-4            ! Z of bottom of lowest eta layer
!
      ENDDO
      ENDDO
!
      DO J=JTS,JTE
      DO K=KTE,KTS,-1
        KFLIP=KTE+1-K
        DO I=ITS,ITE
          ZINT(I,K,J)=ZINT(I,K+1,J)+DZ(I,KFLIP,J)
        ENDDO
      ENDDO
      ENDDO
!
      NTSD=ITIMESTEP
!
      IF(NTSD.EQ.1)THEN
        DO J=JTS,JTE
        DO I=ITS,ITE
          USTAR(I,J)=0.1
          FIS=HT(I,J)*G
          SM=XLAND(I,J)-1.
!!!       Z0(I,J)=SM*Z0SEA+(1.-SM)*(Z0(I,J)*Z0MAX+FIS*FCM+Z0LAND)
!!!       ZNT(I,J)=SM*Z0SEA+(1.-SM)*(ZNT(I,J)*Z0MAX+FIS*FCM+Z0LAND)
        ENDDO
        ENDDO
      ENDIF
!
!!!!  IF(NTSD.EQ.1)THEN
        DO J=JTS,JTE
        DO I=ITS,ITE
          CT(I,J)=0.
        ENDDO
        ENDDO
!!!!  ENDIF
!
!----------------------------------------------------------------------
        setup_integration:  DO J=JTS,JTE
!----------------------------------------------------------------------
!
        DO I=ITS,ITE
!
!***  LOWEST LAYER ABOVE GROUND MUST BE FLIPPED
!
          LMH=KTE-LOWLYR(I,J)+1
!
          PTOP=PINT(I,KTE+1,J)      ! KTE+1=KME
          PSFC=PINT(I,LOWLYR(I,J),J)
! Define THSK here (for first timestep mostly)
          THSK(I,J)=TSK(I,J)/(PSFC*1.E-5)**CAPA
!
!***  CONVERT LAND MASK (1 FOR SEA; 0 FOR LAND)
!
          SEAMASK=XLAND(I,J)-1.
!
!***  FILL 1-D VERTICAL ARRAYS
!***  AND FLIP DIRECTION SINCE MYJ SCHEME
!***  COUNTS DOWNWARD FROM THE DOMAIN'S TOP
!
          DO K=KTE,KTS,-1
            KFLIP=KTE+1-K
            THK(K)=TH(I,KFLIP,J)
            TK(K)=T(I,KFLIP,J)
            RATIOMX=QV(I,KFLIP,J)
            QK(K)=RATIOMX/(1.+RATIOMX)
            PK(K)=PMID(I,KFLIP,J)
            CWMK(K)=QC(I,KFLIP,J)
            THEK(K)=(CWMK(K)*(-ELOCP/TK(K))+1.)*THK(K)
            Q2K(K)=2.*Q2(I,KFLIP,J)
!
!
!***  COMPUTE THE HEIGHTS OF THE LAYER INTERFACES
!
            ZHK(K)=ZINT(I,K,J)
!
          ENDDO
          ZHK(KTE+1)=HT(I,J)          ! Z at bottom of lowest sigma layer
!
          DO K=KTE,KTS,-1
            KFLIP=KTE+1-K
            UK(K)=U(I,KFLIP,J)
            VK(K)=V(I,KFLIP,J)
          ENDDO
!
!----------------------------------------------------------------------
!***  COMPUTE THE HEIGHT OF THE BOUNDARY LAYER
!----------------------------------------------------------------------
!
!
          DO K=KTS,LMH-1
            RDZ=2./(ZHK(K)-ZHK(K+2))
            GMK=((UK(K)-UK(K+1))**2+(VK(K)-VK(K+1))**2)*RDZ*RDZ
            GM(K)=MAX(GMK,EPSGM)
!
            TEM=(TK(K)+TK(K+1))*0.5
            THM=(THEK(K)+THEK(K+1))*0.5
!
            A=THM*P608
            B=(ELOCP/TEM-1.-P608)*THM
!
            GHK=((THEK(K)-THEK(K+1)+CT(I,J))                           &
                *((QK(K)+QK(K+1))*(0.5*P608)+1.)                       &
                +(QK(K)-QK(K+1))*A                                     &
                +(CWMK(K)-CWMK(K+1))*B)*RDZ
            IF(ABS(GHK).LE.EPSGH)GHK=EPSGH
!
            GH(K)=GHK
          ENDDO
!
!***  FIND MAXIMUM MIXING LENGTHS AND THE LEVEL OF THE PBL TOP
!
          LPBL=LMH
!
          DO K=1,LMH-1
            GMK=GM(K)
            GHK=GH(K)
!
            IF(GHK.GE.EPSGH)THEN
!
              IF(GMK/GHK.LE.REQU)THEN
                ELM(K)=EPSL
                LPBL=K
              ELSE
                AUBR=(AUBM*GMK+AUBH*GHK)*GHK
                BUBR= BUBM*GMK+BUBH*GHK
                QOL2ST=(-0.5*BUBR+SQRT(BUBR*BUBR*0.25-AUBR*CUBR))*RCUBR
                ELOQ2X=1./QOL2ST
                ELM(K)=MAX(SQRT(ELOQ2X*Q2K(K)),EPSL)
              ENDIF
!
            ELSE
              ADEN=(ADNM*GMK+ADNH*GHK)*GHK
              BDEN= BDNM*GMK+BDNH*GHK
              QOL2UN=-0.5*BDEN+SQRT(BDEN*BDEN*0.25-ADEN)
              ELOQ2X=1./(QOL2UN+EPSRU)  !  repsr1/qol2un
              ELM(K)=MAX(SQRT(ELOQ2X*Q2K(K)),EPSL)
            ENDIF
!
          ENDDO
!
          IF(ELM(LMH-1).EQ.EPSL)LPBL=LMH
!
!***  THE HEIGHT OF THE PBL
!
          PBLH(I,J)=ZHK(LPBL)-ZHK(LMH+1)
!
!----------------------------------------------------------------------
!***
!***  FIND THE SURFACE EXCHANGE COEFFICIENTS
!***
!----------------------------------------------------------------------
          PLOW=PK(LMH)
          TLOW=TK(LMH)
          THLOW=THK(LMH)
          THELOW=THEK(LMH)
          QLOW=QK(LMH)
          CWMLOW=CWMK(LMH)
          ULOW=UK(LMH)
          VLOW=VK(LMH)
          ZSL=(ZHK(LMH)-ZHK(LMH+1))*0.5
          APESFC=(PSFC*1.E-5)**CAPA
          TZ0=THZ0(I,J)*APESFC
!
          CALL SFCDIF(NTSD,SEAMASK,THSK(I,J),QSFC(I,J),PSFC            &
                     ,UZ0(I,J),VZ0(I,J),TZ0,THZ0(I,J),QZ0(I,J)         &
                     ,USTAR(I,J),ZNT(I,J),CT(I,J)                      &
                     ,AKMS(I,J),AKHS(I,J),PBLH(I,J),MAVAIL(I,J)        &
                     ,CHS(I,J),CHS2(I,J),HFX(I,J),QFX(I,J),LH(I,J)     &
                     ,FLHC(I,J),FLQC(I,J),QGH(I,J),CPM(I,J)            &
                     ,ULOW,VLOW,TLOW,THLOW,THELOW,QLOW,CWMLOW          &
                     ,ZSL,PLOW                                         &
                     ,U10(I,J),V10(I,J),TSHLTR(I,J),TH10(I,J)          &
                     ,QSHLTR(I,J),Q10(I,J),PSHLTR(I,J)                 &
                     ,IDS,IDE,JDS,JDE,KDS,KDE                          &
                     ,IMS,IME,JMS,JME,KMS,KME                          &
                     ,ITS,ITE,JTS,JTE,KTS,KTE)
!
!***  REMOVE SUPERATURATION AT 2M AND 10M
!
          RAPA=APESFC
          TH02P=TSHLTR(I,J)
          TH10P=TH10(I,J)
!
          RAPA02=RAPA-GOCP02/TH02P
          RAPA10=RAPA-GOCP10/TH10P
!
          T02P=TH02P*RAPA02
          T10P=TH10P*RAPA10
!
          P02P=(RAPA02**RCAP)*1.E5
          P10P=(RAPA10**RCAP)*1.E5
!
          QS02=PQ0/P02P*EXP(A2*(T02P-A3)/(T02P-A4))
          QS10=PQ0/P10P*EXP(A2*(T10P-A3)/(T10P-A4))
!
          IF(QSHLTR(I,J).GT.QS02)QSHLTR(I,J)=QS02
          IF(Q10   (I,J).GT.QS10)Q10   (I,J)=QS10
!----------------------------------------------------------------------
!
        ENDDO
!
!----------------------------------------------------------------------
      ENDDO setup_integration
!----------------------------------------------------------------------
 
      END SUBROUTINE MYJSFC
!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
!----------------------------------------------------------------------
      SUBROUTINE SFCDIF(NTSD,SEAMASK,THS,QS,PSFC                       &
                       ,UZ0,VZ0,TZ0,THZ0,QZ0                           &
                       ,USTAR,Z0,CT,AKMS,AKHS,PBLH,WETM                &
                       ,CHS,CHS2,HFX,QFX,LH,FLHC,FLQC,QGH,CPM             &
                       ,ULOW,VLOW,TLOW,THLOW,THELOW,QLOW,CWMLOW        &
                       ,ZSL,PLOW                                       &
                       ,U10,V10,TH02,TH10,Q02,Q10,PSHLTR               &
                       ,IDS,IDE,JDS,JDE,KDS,KDE                        &
                       ,IMS,IME,JMS,JME,KMS,KME                        &
                       ,ITS,ITE,JTS,JTE,KTS,KTE)
!     ****************************************************************
!     *                                                              *
!     *                       SURFACE LAYER                          *
!     *                                                              *
!     ****************************************************************
!----------------------------------------------------------------------
!
      IMPLICIT NONE
!
!----------------------------------------------------------------------
      INTEGER,INTENT(IN) :: IDS,IDE,JDS,JDE,KDS,KDE                    &
                           ,IMS,IME,JMS,JME,KMS,KME                    &
                           ,ITS,ITE,JTS,JTE,KTS,KTE
!
      INTEGER,INTENT(IN) :: NTSD
!
      REAL,INTENT(IN) :: CWMLOW,PBLH,PLOW,QLOW,PSFC,SEAMASK            &
                        ,THELOW,THLOW,THS,TLOW,TZ0,ULOW,VLOW,WETM,ZSL
!
      REAL,INTENT(OUT) :: CHS,CHS2,HFX,QFX,LH,FLHC,FLQC,PSHLTR         &
                         ,QGH,CPM,CT,Q02,Q10,TH02,TH10,U10,V10
      REAL,INTENT(INOUT) :: AKHS,AKMS,QZ0,THZ0,USTAR,UZ0,VZ0,Z0,QS
!----------------------------------------------------------------------
!***
!***  LOCAL VARIABLES
!***
      INTEGER :: ITR,K
!
      REAL :: A,B,BTGH,BTGX,CXCHL,CXCHS,DTHV,DU2,ELFC,HLFLX,HSFLX      &
             ,PSH02,PSH10,PSHZ,PSHZL,PSM10,PSMZ,PSMZL                  &
             ,RDZ,RDZT,RIB,RLMA,RLMN,RLMO,RLMP                         &
             ,RLOGT,RLOGU,RWGH,RZ,RZST,RZSU,SIMH,SIMM,TEM,THM          &
             ,UMFLX,USTARK,VMFLX,WGHT,WGHTT,WGHTQ,WSTAR2               &
             ,X,XLT,XLT4,XLU,XLU4,XT,XT4,XU,XU4,ZETALT,ZETALU          &
             ,ZETAT,ZETAU,ZQ,ZSLT,ZSLU,ZT,ZU
!
!***  DIAGNOSTICS
!
      REAL :: AKHS02,AKHS10,AKMS02,AKMS10,EKMS10,QSAT10,QSAT2          &
             ,RLNT02,RLNT10,RLNU10,SIMH02,SIMH10,SIMM10,T02,T10        &
             ,TERM1,RLOW,U10E,V10E,WSTAR,XLT02,XLT024,XLT10            &
             ,XLT104,XLU10,XLU104,XU10,XU104,ZT02,ZT10,ZTAT02,ZTAT10   &
             ,ZTAU,ZTAU10,ZU10,ZUUZ
!----------------------------------------------------------------------
!**********************************************************************
!----------------------------------------------------------------------
      RDZ=1./ZSL
      CXCHL=EXCML*RDZ
      CXCHS=EXCMS*RDZ
!
      BTGX=G/THLOW
      ELFC=VKARMAN*BTGX
!
      IF(PBLH.GT.1000.)THEN
        BTGH=BTGX*PBLH
      ELSE
        BTGH=BTGX*1000.
      ENDIF
!
!----------------------------------------------------------------------
!
!***  SEA POINTS
!
!----------------------------------------------------------------------
!
      IF(SEAMASK.GT.0.)THEN 
!
!----------------------------------------------------------------------
        DO ITR=1,ITRMX
!----------------------------------------------------------------------
          Z0=MAX(USTFC*USTAR*USTAR,1.59E-5)
!
!***  VISCOUS SUBLAYER, JANJIC MWR 1994
!
!----------------------------------------------------------------------
          IF(USTAR.LT.USTC)THEN
!----------------------------------------------------------------------
!
            IF(USTAR.LT.USTR)THEN
              IF(NTSD.EQ.1)THEN
                AKMS=CXCHS
                AKHS=CXCHS
                QS=QLOW
              ENDIF
              ZU=FZU1*SQRT(SQRT(Z0*USTAR*RVISC))/USTAR
              WGHT=AKMS*ZU*RVISC
              RWGH=WGHT/(WGHT+1.)
              UZ0=(ULOW*RWGH+UZ0)*0.5
              VZ0=(VLOW*RWGH+VZ0)*0.5
!
              ZT=FZT1*ZU
              ZQ=FZQ1*ZT
              WGHTT=AKHS*ZT*RTVISC
              WGHTQ=AKHS*ZQ*RQVISC
!
              IF(NTSD.GT.1)THEN
                THZ0=((WGHTT*THLOW+THS)/(WGHTT+1.)+THZ0)*0.5
                QZ0=((WGHTQ*QLOW+QS)/(WGHTQ+1.)+QZ0)*0.5
              ELSE
                THZ0=(WGHTT*THLOW+THS)/(WGHTT+1.)
                QZ0=(WGHTQ*QLOW+QS)/(WGHTQ+1.)
              ENDIF
!
            ENDIF
!
            IF(USTAR.GE.USTR.AND.USTAR.LT.USTC)THEN
              ZU=Z0
              UZ0=0.
              VZ0=0.
!
              ZT=FZT2*SQRT(SQRT(Z0*USTAR*RVISC))/USTAR
              ZQ=FZQ2*ZT
              WGHTT=AKHS*ZT*RTVISC
              WGHTQ=AKHS*ZQ*RQVISC
!
              IF(NTSD.GT.1)THEN
                THZ0=((WGHTT*THLOW+THS)/(WGHTT+1.)+THZ0)*0.5
                QZ0=((WGHTQ*QLOW+QS)/(WGHTQ+1.)+QZ0)*0.5
              ELSE
                THZ0=(WGHTT*THLOW+THS)/(WGHTT+1.)
                QZ0=(WGHTQ*QLOW+QS)/(WGHTQ+1.)
              ENDIF
!
            ENDIF
!----------------------------------------------------------------------
          ELSE
!----------------------------------------------------------------------
            ZU=Z0
            UZ0=0.
            VZ0=0.
!
            ZT=Z0
            THZ0=THS
!
            ZQ=Z0
            QZ0=QS
!----------------------------------------------------------------------
          ENDIF
!----------------------------------------------------------------------
          TEM=(TLOW+TZ0)*0.5
          THM=(THELOW+THZ0)*0.5
!
          A=THM*P608
          B=(ELOCP/TEM-1.-P608)*THM
!
          DTHV=((THELOW-THZ0)*((QLOW+QZ0)*(0.5*P608)+1.)               &
              +(QLOW-QZ0)*A+CWMLOW*B)
!
          DU2=MAX((ULOW-UZ0)**2+(VLOW-VZ0)**2,EPSU2)
          RIB=BTGX*DTHV*ZSL/DU2
!----------------------------------------------------------------------
!         IF(RIB.GE.RIC)THEN
!----------------------------------------------------------------------
!           AKMS=MAX( VISC*RDZ,CXCHS)
!           AKHS=MAX(TVISC*RDZ,CXCHS)
!----------------------------------------------------------------------
!         ELSE  !  turbulent branch
!----------------------------------------------------------------------
            ZSLU=ZSL+ZU
            ZSLT=ZSL+ZT
!
            RZSU=ZSLU/ZU
            RZST=ZSLT/ZT
!
            RLOGU=LOG(RZSU)
            RLOGT=LOG(RZST)
!
!----------------------------------------------------------------------
!***  1./MONIN-OBUKHOV LENGTH
!----------------------------------------------------------------------
!
            RLMO=ELFC*AKHS*DTHV/USTAR**3
!
            ZETALU=ZSLU*RLMO
            ZETALT=ZSLT*RLMO
            ZETAU=ZU*RLMO
            ZETAT=ZT*RLMO
!
            ZETALU=MIN(MAX(ZETALU,ZTMIN1),ZTMAX1)
            ZETALT=MIN(MAX(ZETALT,ZTMIN1),ZTMAX1)
            ZETAU=MIN(MAX(ZETAU,ZTMIN1/RZSU),ZTMAX1/RZSU)
            ZETAT=MIN(MAX(ZETAT,ZTMIN1/RZST),ZTMAX1/RZST)
!
!----------------------------------------------------------------------
!***   WATER FUNCTIONS
!----------------------------------------------------------------------
!
            RZ=(ZETAU-ZTMIN1)/DZETA1
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSMZ=(PSIM1(K+2)-PSIM1(K+1))*RDZT+PSIM1(K+1)
!
            RZ=(ZETALU-ZTMIN1)/DZETA1
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSMZL=(PSIM1(K+2)-PSIM1(K+1))*RDZT+PSIM1(K+1)
!
            SIMM=PSMZL-PSMZ+RLOGU
!
            RZ=(ZETAT-ZTMIN1)/DZETA1
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSHZ=(PSIH1(K+2)-PSIH1(K+1))*RDZT+PSIH1(K+1)
!
            RZ=(ZETALT-ZTMIN1)/DZETA1
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSHZL=(PSIH1(K+2)-PSIH1(K+1))*RDZT+PSIH1(K+1)
!
            SIMH=(PSHZL-PSHZ+RLOGT)*FH01
!----------------------------------------------------------------------
            USTARK=USTAR*VKARMAN
            AKMS=MAX(USTARK/SIMM,CXCHS)
            AKHS=MAX(USTARK/SIMH,CXCHS)
!
!----------------------------------------------------------------------
!***  BELJAARS CORRECTION FOR USTAR
!----------------------------------------------------------------------
!
            WSTAR2=WWST2*ABS(BTGH*AKHS*DTHV)**(2./3.)
            USTAR=MAX(SQRT(AKMS*SQRT(DU2+WSTAR2)),EPSUST)
!----------------------------------------------------------------------
!         ENDIF  !  End of turbulent branch
!----------------------------------------------------------------------
!
        ENDDO  !  End of the iteration loop over sea points
!
!----------------------------------------------------------------------
!
!***  LAND POINTS
!
!----------------------------------------------------------------------
!
      ELSE  
!
!----------------------------------------------------------------------
        ZU=Z0
        UZ0=0.
        VZ0=0.
!
        ZT=ZU*ZTFC
        THZ0=THS
!
        ZQ=ZT
        QZ0=QS
!----------------------------------------------------------------------
        TEM=(TLOW+TZ0)*0.5
        THM=(THELOW+THZ0)*0.5
!
        A=THM*P608
        B=(ELOCP/TEM-1.-P608)*THM
!
        DTHV=((THELOW-THZ0)*((QLOW+QZ0)*(0.5*P608)+1.)                 &
            +(QLOW-QZ0)*A+CWMLOW*B)
!
        DU2=MAX((ULOW-UZ0)**2+(VLOW-VZ0)**2,EPSU2)
        RIB=BTGX*DTHV*ZSL/DU2
!----------------------------------------------------------------------
!       IF(RIB.GE.RIC)THEN
!         AKMS=MAX( VISC*RDZ,CXCHL)
!         AKHS=MAX(TVISC*RDZ,CXCHL)
!----------------------------------------------------------------------
!       ELSE  !  Turbulent branch
!----------------------------------------------------------------------
          ZSLU=ZSL+ZU
          ZSLT=ZSL+ZT
!
          RZSU=ZSLU/ZU
!
          RLOGU=LOG(RZSU)
!----------------------------------------------------------------------
!
          DO ITR=1,ITRMX
!
!----------------------------------------------------------------------
!***  ZILITINKEVITCH FIX FOR ZT
!----------------------------------------------------------------------
!
            ZT=MAX(EXP(ZILFC*SQRT(USTAR*ZU))*ZU,EPSZT)
!zj         ZT=EXP(ZILFC*SQRT(USTAR*ZU))*ZU
            RZST=ZSLT/ZT
            RLOGT=LOG(RZST)
!
!----------------------------------------------------------------------
!***  1./MONIN-OBUKHOV LENGTH-SCALE
!----------------------------------------------------------------------
!
            RLMO=ELFC*AKHS*DTHV/USTAR**3
            ZETALU=ZSLU*RLMO
            ZETALT=ZSLT*RLMO
            ZETAU=ZU*RLMO
            ZETAT=ZT*RLMO
!
            ZETALU=MIN(MAX(ZETALU,ZTMIN2),ZTMAX2)
            ZETALT=MIN(MAX(ZETALT,ZTMIN2),ZTMAX2)
            ZETAU=MIN(MAX(ZETAU,ZTMIN2/RZSU),ZTMAX2/RZSU)
            ZETAT=MIN(MAX(ZETAT,ZTMIN2/RZST),ZTMAX2/RZST)
!
!----------------------------------------------------------------------
!***  LAND FUNCTIONS
!----------------------------------------------------------------------
!
            RZ=(ZETAU-ZTMIN2)/DZETA2
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSMZ=(PSIM2(K+2)-PSIM2(K+1))*RDZT+PSIM2(K+1)
!
            RZ=(ZETALU-ZTMIN2)/DZETA2
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSMZL=(PSIM2(K+2)-PSIM2(K+1))*RDZT+PSIM2(K+1)
!
            SIMM=PSMZL-PSMZ+RLOGU
!
            RZ=(ZETAT-ZTMIN2)/DZETA2
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSHZ=(PSIH2(K+2)-PSIH2(K+1))*RDZT+PSIH2(K+1)
!
            RZ=(ZETALT-ZTMIN2)/DZETA2
            K=INT(RZ)
            RDZT=RZ-REAL(K)
            K=MIN(K,KZTM2)
            K=MAX(K,0)
            PSHZL=(PSIH2(K+2)-PSIH2(K+1))*RDZT+PSIH2(K+1)
!
            SIMH=(PSHZL-PSHZ+RLOGT)*FH02
!----------------------------------------------------------------------
            USTARK=USTAR*VKARMAN
            AKMS=MAX(USTARK/SIMM,CXCHL)
            AKHS=MAX(USTARK/SIMH,CXCHL)
!
!----------------------------------------------------------------------
!***  BELJAARS CORRECTION FOR USTAR
!----------------------------------------------------------------------
!
            WSTAR2=WWST2*ABS(BTGH*AKHS*DTHV)**(2./3.)
            USTAR=MAX(SQRT(AKMS*SQRT(DU2+WSTAR2)),EPSUST)
!----------------------------------------------------------------------
          ENDDO  !  End of iteration for land points
!----------------------------------------------------------------------
!
!       ENDIF  !  End of turbulant branch over land
!
!----------------------------------------------------------------------
!
      ENDIF  !  End of land/sea branch
!
!----------------------------------------------------------------------
!***  COUNTERGRADIENT FIX
!----------------------------------------------------------------------
!     HV=-AKHS*DTHV
!     IF(HV.GT.0.)THEN
!       FCT=-10.*(BTGX)**(-1./3.)
!       CT=FCT*(HV/(PBLH*PBLH))**(2./3.)
!     ELSE
        CT=0.
!     ENDIF
!----------------------------------------------------------------------
!----------------------------------------------------------------------
!***  THE FOLLOWING DIAGNOSTIC BLOCK PRODUCES 2-m and 10-m VALUES
!***  FOR TEMPERATURE, MOISTURE, AND WINDS.  IT IS DONE HERE SINCE
!***  THE VARIOUS QUANTITIES NEEDED FOR THE COMPUTATION ARE LOST
!***  UPON EXIT FROM THE ROTUINE.
!----------------------------------------------------------------------
!----------------------------------------------------------------------
!
      WSTAR=SQRT(WSTAR2)/WWST
!
      UMFLX=AKMS*(ULOW -UZ0 )
      VMFLX=AKMS*(VLOW -VZ0 )
      HSFLX=AKHS*(THLOW-THZ0)
      HLFLX=AKHS*(QLOW -QZ0 )
!----------------------------------------------------------------------
!     IF(RIB.GE.RIC)THEN
!----------------------------------------------------------------------
!       IF(SEAMASK.GT.0.)THEN
!         AKMS10=MAX( VISC/10.,CXCHS)
!         AKHS02=MAX(TVISC/02.,CXCHS)
!         AKHS10=MAX(TVISC/10.,CXCHS)
!       ELSE
!         AKMS10=MAX( VISC/10.,CXCHL)
!         AKHS02=MAX(TVISC/02.,CXCHL)
!         AKHS10=MAX(TVISC/10.,CXCHL)
!       ENDIF
!----------------------------------------------------------------------
!     ELSE
!----------------------------------------------------------------------
        ZU10=ZU+10.
        ZT02=ZT+02.
        ZT10=ZT+10.
!
        RLNU10=LOG(ZU10/ZU)
        RLNT02=LOG(ZT02/ZT)
        RLNT10=LOG(ZT10/ZT)
!
        ZTAU10=ZU10*RLMO
        ZTAT02=ZT02*RLMO
        ZTAT10=ZT10*RLMO
!
!----------------------------------------------------------------------
!***  SEA
!----------------------------------------------------------------------
!
        IF(SEAMASK.GT.0.)THEN
!
!----------------------------------------------------------------------
          ZTAU10=MIN(MAX(ZTAU10,ZTMIN1),ZTMAX1)
          ZTAT02=MIN(MAX(ZTAT02,ZTMIN1),ZTMAX1)
          ZTAT10=MIN(MAX(ZTAT10,ZTMIN1),ZTMAX1)
!----------------------------------------------------------------------
          RZ=(ZTAU10-ZTMIN1)/DZETA1
          K=INT(RZ)
          RDZT=RZ-REAL(K)
          K=MIN(K,KZTM2)
          K=MAX(K,0)
          PSM10=(PSIM1(K+2)-PSIM1(K+1))*RDZT+PSIM1(K+1)
!
          SIMM10=PSM10-PSMZ+RLNU10
!
          RZ=(ZTAT02-ZTMIN1)/DZETA1
          K=INT(RZ)
          RDZT=RZ-REAL(K)
          K=MIN(K,KZTM2)
          K=MAX(K,0)
          PSH02=(PSIH1(K+2)-PSIH1(K+1))*RDZT+PSIH1(K+1)
!
          SIMH02=(PSH02-PSHZ+RLNT02)*FH01
!
          RZ=(ZTAT10-ZTMIN1)/DZETA1
          K=INT(RZ)
          RDZT=RZ-REAL(K)
          K=MIN(K,KZTM2)
          K=MAX(K,0)
          PSH10=(PSIH1(K+2)-PSIH1(K+1))*RDZT+PSIH1(K+1)
!
          SIMH10=(PSH10-PSHZ+RLNT10)*FH01
!
          AKMS10=MAX(USTARK/SIMM10,CXCHS)
          AKHS02=MAX(USTARK/SIMH02,CXCHS)
          AKHS10=MAX(USTARK/SIMH10,CXCHS)
!
!----------------------------------------------------------------------
!***  LAND
!----------------------------------------------------------------------
!
        ELSE
!
!----------------------------------------------------------------------
          ZTAU10=MIN(MAX(ZTAU10,ZTMIN2),ZTMAX2)
          ZTAT02=MIN(MAX(ZTAT02,ZTMIN2),ZTMAX2)
          ZTAT10=MIN(MAX(ZTAT10,ZTMIN2),ZTMAX2)
!----------------------------------------------------------------------
          RZ=(ZTAU10-ZTMIN2)/DZETA2
          K=INT(RZ)
          RDZT=RZ-REAL(K)
          K=MIN(K,KZTM2)
          K=MAX(K,0)
          PSM10=(PSIM2(K+2)-PSIM2(K+1))*RDZT+PSIM2(K+1)
!
          SIMM10=PSM10-PSMZ+RLNU10
!
          RZ=(ZTAT02-ZTMIN2)/DZETA2
          K=INT(RZ)
          RDZT=RZ-REAL(K)
          K=MIN(K,KZTM2)
          K=MAX(K,0)
          PSH02=(PSIH2(K+2)-PSIH2(K+1))*RDZT+PSIH2(K+1)
!
          SIMH02=(PSH02-PSHZ+RLNT02)*FH02
!
          RZ=(ZTAT10-ZTMIN2)/DZETA2
          K=INT(RZ)
          RDZT=RZ-REAL(K)
          K=MIN(K,KZTM2)
          K=MAX(K,0)
          PSH10=(PSIH2(K+2)-PSIH2(K+1))*RDZT+PSIH2(K+1)
!
          SIMH10=(PSH10-PSHZ+RLNT10)*FH02
!
          AKMS10=MAX(USTARK/SIMM10,CXCHL)
          AKHS02=MAX(USTARK/SIMH02,CXCHL)
          AKHS10=MAX(USTARK/SIMH10,CXCHL)
!----------------------------------------------------------------------
        ENDIF
!----------------------------------------------------------------------
!     ENDIF
!----------------------------------------------------------------------
      U10 =UMFLX/AKMS10+UZ0
      V10 =VMFLX/AKMS10+VZ0
      TH02=HSFLX/AKHS02+THZ0
      TH10=HSFLX/AKHS10+THZ0
      Q02 =HLFLX/AKHS02+QZ0
      Q10 =HLFLX/AKHS10+QZ0
      TERM1=-0.068283/TLOW
      PSHLTR=PSFC*EXP(TERM1)
!
!----------------------------------------------------------------------
!***  SET OTHER WRF DRIVER ARRAYS
!----------------------------------------------------------------------
      RLOW=PLOW/(R_D*TLOW)
      CHS=AKHS
      CHS2=AKHS02
      HFX=-RLOW*CP*HSFLX
      QFX=-RLOW*HLFLX
      LH=XLV*QFX
      FLHC=RLOW*CP*AKHS
      FLQC=RLOW*AKHS*WETM
!!!   QGH=PQ0/PSHLTR*EXP(A2S*(TSK-A3S)/(TSK-A4S))
      QGH=((1.-SEAMASK)*PQ0+SEAMASK*PQ0SEA)                            &
           /PLOW*EXP(A2S*(TLOW-A3S)/(TLOW-A4S))
! CONVERT TO MIXING RATIO
      QGH=QGH/(1.-QGH)
! QS IS QSFC (USED IN DIAGNOSTICS)
      QS=QLOW+QFX/(RLOW*AKHS)
      QS=QS/(1.-QS)
      CPM=CP*(1.+0.8*QLOW)
!----------------------------------------------------------------------
!
      END SUBROUTINE SFCDIF
!
!----------------------------------------------------------------------
      SUBROUTINE MYJSFCINIT(LOWLYR,USTAR,Z0                            &
                           ,SEAMASK,XICE,IVGTYP,RESTART                &
                           ,IDS,IDE,JDS,JDE,KDS,KDE                    &
                           ,IMS,IME,JMS,JME,KMS,KME                    &
                           ,ITS,ITE,JTS,JTE,KTS,KTE)
!----------------------------------------------------------------------
      IMPLICIT NONE
!----------------------------------------------------------------------
      LOGICAL , INTENT(IN) :: RESTART
!
      INTEGER,INTENT(IN) :: IDS,IDE,JDS,JDE,KDS,KDE                    &
                           ,IMS,IME,JMS,JME,KMS,KME                    &
                           ,ITS,ITE,JTS,JTE,KTS,KTE
!
      INTEGER,DIMENSION(IMS:,JMS:),INTENT(IN) :: IVGTYP
!
      INTEGER,DIMENSION(IMS:,JMS:),INTENT(INOUT) :: LOWLYR
!
      REAL,DIMENSION(IMS:,JMS:),INTENT(IN) :: SEAMASK,XICE
!
      REAL,DIMENSION(IMS:,JMS:),INTENT(INOUT) :: USTAR,Z0
!
      REAL,DIMENSION(0:30) :: VZ0TBL
!
      INTEGER :: I,J,K,ITF,JTF,KTF
!
      REAL :: SM,X,ZETA1,ZETA2,ZRNG1,ZRNG2
!
      REAL :: PIHF=3.1415926/2.,EPS=1.E-6
!----------------------------------------------------------------------
      VZ0TBL=                                                          &
        (/0.,                                                          &
          2.653,0.826,0.563,1.089,0.854,0.856,0.035,0.238,0.065,0.076  &
         ,0.011,0.035,0.011,0.000,0.000,0.000,0.000,0.000,0.000,0.000  &
         ,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000/)
!----------------------------------------------------------------------
!
      JTF=MIN0(JTE,JDE-1)
      KTF=MIN0(KTE,KDE-1)
      ITF=MIN0(ITE,IDE-1)
!
!
!***  FOR NOW, ASSUME SIGMA MODE FOR LOWEST MODEL LAYER
!
      DO J=JTS,JTF
      DO I=ITS,ITF
        LOWLYR(I,J)=1
!       USTAR(I,J)=EPSUST
      ENDDO
      ENDDO
!----------------------------------------------------------------------
!----------------------------------------------------------------------
      IF(.NOT.RESTART)THEN
        DO J=JTS,JTE
        DO I=ITS,ITF
          USTAR(I,J)=0.1
        ENDDO
        ENDDO
      ENDIF
!----------------------------------------------------------------------
!
!***  COMPUTE SURFACE LAYER INTEGRAL FUNCTIONS
!
!----------------------------------------------------------------------
      FH01=1.
      FH02=1.
!
      ZTMIN1=-10.0
      ZTMAX1=2.0
!
      ZTMIN2=-10.0
      ZTMAX2=2.0
!
      ZRNG1=ZTMAX1-ZTMIN1
      ZRNG2=ZTMAX2-ZTMIN2
!
      DZETA1=ZRNG1/(KZTM-1)
      DZETA2=ZRNG2/(KZTM-1)
!
!----------------------------------------------------------------------
!***  FUNCTION DEFINITION LOOP
!----------------------------------------------------------------------
!
      ZETA1=ZTMIN1
      ZETA2=ZTMIN2
!
      DO K=1,KZTM
!
!----------------------------------------------------------------------
!***  UNSTABLE RANGE
!----------------------------------------------------------------------
!
        IF(ZETA1.LT.0.)THEN
!
!----------------------------------------------------------------------
!***  PAULSON 1970 FUNCTIONS
!----------------------------------------------------------------------
          X=SQRT(SQRT(1.-16.*ZETA1))
!
          PSIM1(K)=-2.*LOG((X+1.)/2.)-LOG((X*X+1.)/2.)+2.*ATAN(X)-PIHF
          PSIH1(K)=-2.*LOG((X*X+1.)/2.)
!
!----------------------------------------------------------------------
!***  STABLE RANGE
!----------------------------------------------------------------------
!
        ELSE
!
!----------------------------------------------------------------------
!***  PAULSON 1970 FUNCTIONS
!----------------------------------------------------------------------
!
!         PSIM1(K)=5.*ZETA1
!         PSIH1(K)=5.*ZETA1
!----------------------------------------------------------------------
!***   HOLTSLAG AND DE BRUIN 1988
!----------------------------------------------------------------------
!
          PSIM1(K)=0.7*ZETA1+0.75*ZETA1*(6.-0.35*ZETA1)*EXP(-0.35*ZETA1)
          PSIH1(K)=0.7*ZETA1+0.75*ZETA1*(6.-0.35*ZETA1)*EXP(-0.35*ZETA1)
!----------------------------------------------------------------------
!
        ENDIF
!
!----------------------------------------------------------------------
!***  UNSTABLE RANGE
!----------------------------------------------------------------------
!
        IF(ZETA2.LT.0.)THEN
!
!----------------------------------------------------------------------
!***  PAULSON 1970 FUNCTIONS
!----------------------------------------------------------------------
!
          X=SQRT(SQRT(1.-16.*ZETA2))
!
          PSIM2(K)=-2.*LOG((X+1.)/2.)-LOG((X*X+1.)/2.)+2.*ATAN(X)-PIHF
          PSIH2(K)=-2.*LOG((X*X+1.)/2.)
!----------------------------------------------------------------------
!***  STABLE RANGE
!----------------------------------------------------------------------
!
        ELSE
!
!----------------------------------------------------------------------
!***  PAULSON 1970 FUNCTIONS
!----------------------------------------------------------------------
!
!         PSIM2(K)=5.*ZETA2
!         PSIH2(K)=5.*ZETA2
!
!----------------------------------------------------------------------
!***  HOLTSLAG AND DE BRUIN 1988
!----------------------------------------------------------------------
!
          PSIM2(K)=0.7*ZETA2+0.75*ZETA2*(6.-0.35*ZETA2)*EXP(-0.35*ZETA2)
          PSIH2(K)=0.7*ZETA2+0.75*ZETA2*(6.-0.35*ZETA2)*EXP(-0.35*ZETA2)
!----------------------------------------------------------------------
!
        ENDIF
!
!----------------------------------------------------------------------
        IF(K.EQ.KZTM)THEN
          ZTMAX1=ZETA1
          ZTMAX2=ZETA2
        ENDIF
!
        ZETA1=ZETA1+DZETA1
        ZETA2=ZETA2+DZETA2
!----------------------------------------------------------------------
      ENDDO
!----------------------------------------------------------------------
      ZTMAX1=ZTMAX1-EPS
      ZTMAX2=ZTMAX2-EPS
!----------------------------------------------------------------------
!
      END SUBROUTINE MYJSFCINIT
!
!----------------------------------------------------------------------
!
      END MODULE MODULE_SF_MYJSFC
!
!----------------------------------------------------------------------
