$# LS-DYNA Keyword file created by LS-PrePost(R) V4.7.1 - 23Nov2019
$# Created on Apr-20-2021 (23:44:32)
$
$
$
$-------------------------------------------------------------------------------
$
$ DISCLAIMER:
$
$ This is a part of some standard models that LSTC has developed to serve
$ as "Learning Aids". We hope that our Worldwide Users will find them to
$ be enormously useful in improving their CAE methodology and learning the
$ inner intricacies of the way LS-Dyna handles various modeling techniques.
$
$ Please understand that LSTC takes no responsibility for errors in these
$ models/files and conclusions drawn through their application during the
$ Product Development phase. The user must verify his own results.
$
$ These models are integral parts of our continued efforts in giving back
$ our valued customers the very best.
$
$ 
$ Sarba Guha
$ (LSTC, Troy Office, Michigan, USA)
$
$ Date: 29th October, 2008
$
$-------------------------------------------------------------------------------
$
$
$
*KEYWORD
$
$
$
*TITLE
$
$#                                                                         title
Driver-Belt Template With Load_Limiting_Pyro_Retractor
$
$
$
$ This deck works together with:
$
$ VehicleEnvironment.TemplateWithPitchDropYawPulse.k
$ LSTC.50thRigidFE.PostFeb28.WithBeltVehicleModelTemplate.k
$
$
$
$ Prepared By:
$
$ Sarba Guha
$ LSTC, Troy Office, Michigan, USA
$
$ Date: 29th October, 2008
$
$
$
*DATABASE_SBTOUT
$#      dt    binary      lcur     ioopt     
      0.08         1         0         1
$
$
$
$$$$$$$$$$$$$$$ Begin CONTACT Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
*CONTACT_AUTOMATIC_NODES_TO_SURFACE
$#     cid                                                                 title
$
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   2060000   1000011         2         2         0         0         0         0
$
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.8       0.8       0.0       0.0       0.0         0       0.01.00000E20
$
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$
$
*SET_PART_LIST
$
$ seatbelt shell elements
$#     sid       da1       da2       da3       da4    solver      
   2060000       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   2060000         0         0         0         0         0         0         0
$
$
$
*CONTACT_AUTOMATIC_NODES_TO_SURFACE
$#     cid                                                                 title
$
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   2060000   1000012         2         2         0         0         0         0
$
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.8       0.8       0.0       0.0       0.0         0       0.01.00000E20
$
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       1.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$
$
$$$$$$$$$$$$$$$ End CONTACT Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$
$************** Begin FE_FABRIC SEATBELT Block *********************************
$
$
$
*PART
$
$#                                                                         title
SHOULDER_LAP_PART_60000
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2060000   2060000   2060000         0         0         0         0         0
$
$
$
$ The *SECTION_SHELL Card for Part-2060000 follows.
$
$ NOTE: It is VERY IMPORTANT to understand the following *SECTION_SHELL Card.
$
$ The main cards are further down below but for ease of understanding, I am
$ repeating the lines here, commenting them out.
$
$
$$$*SECTION_SHELL
$
$  2060000         9     0.000         0         0         0         1
$
$     1.20      1.20      1.20      1.20
$
$  (Angle)   (Angle)
$     90.0       0.0
$
$
$ Also read 29.28 in the LS971 Manual for column headers.
$
$
$       Here "icomp=1" in field-7 of the first card.
$       That allows us to define the "third card" defining "Fabric Angles".
$       The Angle b1=90 degrees, "switches" the "a-axis" of the FE-Belt Fabric.
$
$       How to determine the "a-axis" in LSPP is described in the notes just
$       before Load Curve ID 2060001.
$
$       It can be viewed in LSPP that "as modeled", the "a-axis" points in
$       the "lateral direction" of the belt. That is why the "switch is needed.
$
$       After switching, the "a" axis points in the "longitudinal" direction.
$
$       The Angle b2=0 degrees, keeps the "b" axis in the "lateral" direction
$       of the FE-Belt.
$
$       This is also tied up with the option "aopt=0" in the following
$       *MAT_FABRIC (*MAT_034) card, in which LCs 2060001 & 2060002 are used.
$
$       A Very Detailed explanation is given just after Load Curve 2060002 .
$
$       All this is very important because Fabric Load Curves 2060001 & 2060002
$       are applied in the "longitudinal" and "lateral" directions of the belt
$       respectively. Lack of understanding can cause them to be applied wrong!!
$
$       Please go thoroughly through all explanations given before and after
$       Load Curves 2060001 and 2060002.
$
$
$ The actual Section_Shell Card is the following:
$
*SECTION_SHELL
$
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   2060000         9       0.0         0       1.0         0         1         1
$
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       1.2       1.2       1.2       1.2       0.0       0.0       0.0         0
$
$  (Angle)   (Angle)
$#      bi        bi        bi        bi        bi        bi        bi        bi
      90.0       0.0       0.0       0.0       0.0       0.0       0.0       0.0
$
$
$
$
*MAT_FABRIC
$
$     ea = young's modulus, longitidinal direction
$     eb = young's modulus, traverse direction
$     ec = young's modulus, normal direction
$    cse = 1 to eliminate compress stress
$
$ Also read Page-155 (MAT) in the LS971 Manual for column headers.
$
$#     mid        ro        ea        eb         -      prba      prab         -
   20600001.00000E-6       2.0       2.0       2.0       0.3       0.3       0.3
$
$#     gab         -         -       cse        el       prl    lratio      damp
     0.769     0.769     0.769       0.0       0.0       0.0       0.0       0.1
$
$     aopt    flc/x2    fac/x3       ela      lnrc      form     fvopt    tsrfac
$#    aopt       flc       fac       ela      lnrc      form     fvopt    tsrfac
       0.0       0.0       0.0       0.0       0.0         4         0       0.0
$
$#  unused    rgbrth     a0ref        a1        a2        a3        x0        x1
                 0.0         0       1.0       0.0       0.0       0.0       0.0
$
$#      v1        v2        v3         -         -         -      beta    isrefg
       0.0       0.0       0.0       0.0       0.0       0.0       0.0         0
$
$
$ "lca" is the Load Curve applied in the "longitudinal" direction of the belt.
$ "lcb" is the Load Curve applied in the "lateral" direction of the belt.
$ They are connected to "aopt=0", "form=4" and the above *SECTION_SHELL.
$
$ For a complete understanding read the notes above *SECTION_SHELL and the
$ extensive notes before and after Load_Curves with ID 2060001 & 2060002 .
$
$#     lca       lcb      lcab      lcua      lcub     lcuab        rl  
   2060001   2060002         0         0         0         0       0.0
$
$
$
$************** End FE_FABRIC SEATBELT Block ***********************************
$
$
$
$
$
$
$
$ The following part is the "Segment Belt" connection from one edge of the
$ FE Lap Belt to the Anchor at Floor Pan.
$
$ The Section and Material Properties follow immediately.
$
$ The strength of the belt is characterized by the Loading and Unloading curves
$ "llcid" and "ulcid" respectively, in *Mat_Seatbelt.
$
$ "lmin=1.000" does not have any real use in this particular belt segment.
$ However, it has "tremendous" significance in some of the other belt segments
$ which go around "D-rings" and "Buckles". That is explained in those parts.
$
$
$
*PART
$
$ This Part is for the Belt Segment from FE-Lapbelt to Floor-Anchor.
$ It is a "single line" or "segment belt" (not Fabric FE belt).
$
$#                                                                         title
Belt_From_Lap_To_Anchor
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2065000   2065000   2065000         0         0         0         0         0
$
$
$
*SECTION_SEATBELT
$
$#   secid      area     thick     
   2065000       0.0       0.0
$
$
$
*MAT_SEATBELT
$
$ This is only for "single line" or "segment belts" (not Fabric FE belts).
$
$ Also read Page-797 (MAT) in the LS971 Manual for column header explanation.
$
$ mpul  = Mass per Unit Length, kg/mm
$ llcid = Loading Curve Number for Belt "Force vs. Strain" Properties
$ ulcid = Unloading Curve Number for Belt "Force vs. Strain" Properties
$
$ lmin  = Minimum allowable length for belt elements.
$         This is really important for belt segments passing through
$         D-Rings and Buckles.
$         Since this particular Belt Part is from FE-Lapbelt to Floor-Anchor,
$         "lmin" is not important here.
$
$  2065000 8.0000E-5   2065000   2065000     1.000
$#     mid      mpul     llcid     ulcid      lmin       cse      damp         e
   20650008.00000E-5   2065000   2065000       3.0       0.0       0.0       0.0
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin BEAM AT ANCHOR Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
*PART
$
$#                                                                         title
Beam_At_Belt_Anchor
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2065001   2065001   2010000         0         0         0         0         0
$
$
$
*SECTION_BEAM
$
$#   secid    elform      shrf   qr/irid       cst     scoor       nsm     naupd
   2065001         1       1.0         1         1       0.0       0.0         0
$
$#     ts1       ts2       tt1       tt2     nsloc     ntloc     
       2.0       2.0       0.0       0.0       0.0       0.0
$
$
$
*MAT_RIGID
$
$ cmo  = 1 constraints applied in global directions
$ con1 = 7 constrained in x, y, z displacement, 4 constrain y & x dis.
$ con2 = 7 constrained in x, y, z rotations,    6 constrain x & z rot.
$
$#     mid        ro         e        pr         n    couple         m     alias
   20100007.82000E-6     203.0       0.3       0.0       0.0       0.0          
$
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
$
$$$$$$$$$$$$$$$ End BEAM AT ANCHOR Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin SEGMENT BELT THROUGH BUCKLE Block ************************
$
$
$
*PART
$
$ This Part is for the Belt Segment going through the Buckle.
$ It is a "single line" or "segment belt" (not Fabric FE belt).
$
$#                                                                         title
Belt_Through_Buckle
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2066000   2065000   2067000         0         0         0         0         0
$
$
$
$ The Seat_Belt Material Description follows.
$
$ The same material is shared between the "Belt Through Buckle" (PID 2066000) &
$ the "Belt From Retractor Through D-Ring to Shoulder" (PID 2067000).
$
$$$*MAT_SEATBELT
$
$
$ This is only for "single line" or "segment belts" (not Fabric FE belts).
$
$ Also read Page-797 (MAT) in the LS971 Manual for column header explanation.
$
$ mpul  = Mass per Unit Length, kg/mm
$ llcid = Loading Curve Number for Belt "Force vs. Strain" Properties
$ ulcid = Unloading Curve Number for Belt "Force vs. Strain" Properties
$
$ lmin  = Minimum allowable length for belt elements.
$         It is VERY IMPORTANT to understand this.
$
$         The "minimum length" is really important for belt segments passing
$         through D-Rings and Buckles.
$
$         When the Belt passes from one side of the Buckle or D-Ring to the
$         other, Dyna might want to "reduce the modeled segment length" in order
$         to do the operation efficiently.
$
$         The advantage for Dyna is that the "lower the length", the easier it
$         becomes computationally to do the job. However, the "disadvantage for
$         us" in the matter is that the lower the length, the lower becomes the
$         Time-Step of computation during that time.
$
$         Now, a "balance" has to be struck. That is why, if we "specify a
$         minimum length", Dyna will not take the belt element length below it.
$
$         The "minimum length" is chosen purely through experience.
$
$         It is my experience that a minimum length of 1-mm is "required" by
$         Dyna to do the job efficiently. I have also found it unnecessary to
$         specify a length any lower than that.
$
$
$
$ ADDITIONAL NOTE ON TIME_STEP (Very Important):
$
$ The process of passing a belt through a D-Ring or a Buckle often "requires"
$ Dyna to have a smaller Time_Step than usual. Therefore, it is NOT a good idea
$ to try running the job with Seatbelts using Fixed Time_Step with Mass Scaling.
$
$ Therefore, it is best to use "Natural Time_Step" and let Dyna fluctuate the
$ TS as is necessary at any given point of time. Even if we do use some kind of
$ Mass Scaling, we should not try to scale beyond 1-microsecond Time_Step.
$
$ I have done that by using the "Natural Time Step" in *CONTROL_TIMESTEP of the
$ "Dummy Model" and the "Vehicle Environment Model".
$ Please search for this card inside the above models and verify.
$
$
*MAT_SEATBELT
$
$  2067000 8.0000E-5   2065002   2065002  1.000000
$#     mid      mpul     llcid     ulcid      lmin       cse      damp         e
   20670008.00000E-5   2065002   2065002       3.0       0.0       0.0       0.0
$
$
$
$************** End SEGMENT BELT THROUGH BUCKLE Block **************************
$
$
$
$
$
$
*PART
$
$#                                                                         title
Belt_Anchor_Beam
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2066001   2066001   2010000         0         0         0         0         0
$
$
$
*SECTION_BEAM
$
$#   secid    elform      shrf   qr/irid       cst     scoor       nsm     naupd
   2066001         1       1.0         1         1       0.0       0.0         0
$
$#     ts1       ts2       tt1       tt2     nsloc     ntloc     
       2.0       2.0       0.0       0.0       0.0       0.0
$
$
$
$
$
$
$$$$$$$$$$ Begin SEGMENT BELT FROM RETRACTOR TO DRING TO SHOULDER Block $$$$$$$$
$
$
$
*PART
$
$#                                                                         title
Belt_From_Retractor_Through_Dring_To_Shoulder_FE_Belt
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2067000   2065000   2067000         0         0         0         0         0
$
$
$ NOTE: For description of Material-ID 2067000 see above. It is very important
$       to understand the "*MAT_SEATBELT" description.
$
$
$
$$$$$$$$$$ End SEGMENT BELT FROM RETRACTOR TO DRING TO SHOULDER Block $$$$$$$$$$
$
$
$
$************** Begin BEAM AT D-RING Block *************************************
$
$
$
*PART
$
$#                                                                         title
BEAM_PART_67001_AT_D-RING
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2067001   2067001   2010000         0         0         0         0         0
$
$
$
*SECTION_BEAM
$
$#   secid    elform      shrf   qr/irid       cst     scoor       nsm     naupd
   2067001         1       1.0         1         1       0.0       0.0         0
$
$#     ts1       ts2       tt1       tt2     nsloc     ntloc     
       2.0       2.0       0.0       0.0       0.0       0.0
$
$
$
$************** End BEAM AT D-RING Block ***************************************
$
$
$
$
$
$
*PART
$
$#                                                                         title
BEAM_PART_67002_RETRACTOR
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2067002   2067001   2010000         0         0         0         0         0
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin SEGMENT BELT FROM BUCKLE TO GROUND Block $$$$$$$$$$$$$$$$$
$
$
$
*PART
$
$#                                                                         title
Buckle_To_Ground_Belt
$
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   2067003   2065000   2067003         0         0         0         0         0
$
$
$
*MAT_SEATBELT
$
$ mpul = mass per unit length, kg/mm
$  2067003 8.0000E-5   2067006   2067006  1.000000
$#     mid      mpul     llcid     ulcid      lmin       cse      damp         e
   20670038.00000E-5   2067006   2067006       3.0       0.0       0.0       0.0
$
$
$
$$$$$$$$$$$$$$$ End SEGMENT BELT FROM BUCKLE TO GROUND Block $$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin FABRIC BELT PROPERTY CURVE Block *************************
$
$
$
$ Description of FABRIC BELT PROPERTY CURVE follows:
$
$
$ The following Curve is usually used for Belts modeled as "Beams".
$ They are sometimes called "Segmented Belts" also.
$ They appear as "single line elements" in the model.
$ The Curve for such Belts is "Force(Y) vs. Strain(X)".
$ Typically, these curves are generated by physical testing of actual seatbelts.
$
$ However, what do we do when we use "Finite Element Seatbelts"?
$ These belts are modeled as "2D Fabric Elements".
$ The Curves required for such Belts is "Stress(Y) vs. Strain(X)".
$ The question now is how do we use the same curve for 2D Fabric Seatbelts?
$ 
$ We do it by "converting" the Force(Y) to Stress(Y).
$ This is done by dividing the Force(Y) by the Cross-Sectional Area of the Belt.
$ Typically, the Width of the Belt is 46-mm and the Thickness 1.2-mm .
$ Therefore, the Section Area = 46.0x1.2 mm**2 = 55.2 mm**2 .
$
$ Note that 1/55.2 = 1.8120E-02
$ Because the Force-Unit of the Curve as given is in Newtons (see note below)
$ and our Model Force-Units are in kilo-Newtons, we have to convert that too.
$ Therefore, the factor now becomes 1.8120E-05 .
$
$ Now we simply use the above factor as the "Y-Scale Factor" in the Curve.
$ 
$ This gives us the advantage of not having to alter the actual curve at all. 
$ We can still use the "measured curve" from physical seat-belt component tests.
$
$
$
$
$
$
$
$ The following curve is for the Stresses in the Lateral-direction of the
$ 2D-Fabric Seatbelt.
$
$ Typically, the strength of the Fabric in the Lateral-direction is only
$ "half" that of the longitudinal direction.
$
$ Therefore, we use the exact same curve as the one above, except that we
$ use an additional factor of 0.5 for the Y-Scale Factor.
$ Note that 0.5 x 1.8120E-5 = 9.0600E-06 .
$ This is the Y-Scale Factor that we use below.
$
$
$
$ NOTE: Please understand how the "Longitudinal" and the "Lateral" directions
$       of the Seatbelt are defined. This is important because the strength
$       of the Belt in the Lateral Direction (Curve 2060002) is "half" that
$       of the Belt in the Longitudinal Direction (Curve 2060001).
$
$       To find out the "directions" as modeled, do the following:
$
$       a) Read in this model into LSPP.
$       b) Go to  Page 2 ---> ElEdit .
$       c) On the "Element" side, check the diamond for "Direction".
$
$       As soon as you do that, "arrows" should be appearing in every
$       Shell Element of the Seat-Belt. These arrows show the "modeled"
$       "Longitudinal Direction" of the Belt Elements. Zoom-in to see them.
$       The "arrows" are more easily visible in "wire-frame" mode.
$
$       It is also important to know what "AOPT" we have chosen in *MAT_FABRIC
$       (*MAT_034) of the FE Belt Material and what FORM we have chosen.
$       Please check *MAT_FABRIC with ID-2060000, which is for this FE-Belt.
$       In the first-column of the third line you can see "aopt=0" and in the
$       sixth-column of the third line it says "form=4".
$
$       Now, please read Note-5 under *MAT_FABRIC (*MAT034) to fully understand.
$       This is on Page-160 of Volume-II of the LS971 Manual.
$
$       Based on Note-5, it means that the arrows in LSPP point to the
$       "main axis" of the Fabric (also known as the "a-axis").
$
$       Now you can see that for this model, the arrows point in the
$       "Lateral Direction" of the Seatbelt. If we kept it this way,
$       Load Curve 2060001 would be applied in the lateral direction and
$       Load Curve 2060002 would be applied to the longitudinal direction
$       of the belt. That would be wrong!!
$
$       So we have to "flip" the direction.
$
$       At this point, go back to Note-5 of *MAT_FABRIC (*MAT034).
$       It says that for FORM=4, "....the fiber directions are not assumed
$       orthogonal and must be specified using the ICOMP=1 option on
$       *SECTION_SHELL. Offset angles should be input into the B1 and the B2
$       fields used normally for integration points 1 and 2".
$
$       So we are going to use *SECTION_SHELL to "flip" the direction.
$
$       Check Section_Shell ID 2060000, which is being used for the FE Seatbelt.
$       In the First Card we have set "icomp=1" (field 70).
$       That allows us to insert a third line. This line contains the "Angles"
$       of the "a-axis" and the "b-axis" (or directions) of the Fabric.
$
$       We have input an Angle of 90-degrees for B1 in *SECTION_SHELL .
$       This "switches" the "a-axis" direction.
$       Now LC 2060001 is applied in the Longitudinal Direction of the belt.
$
$       We have input an Angle of 0-degrees for B2.
$       That keeps the "b-axis" (which is the "lateral direction") the same.
$       Now LC 2060002 is applied in the Lateral Direction of the belt.
$
$       Hopefully this very important point has been well understood by users.
$
$
$
$************** End FABRIC BELT PROPERTY CURVE Block ***************************
$
$
$
$
$
$
$ The following function is for the "Segment Belt" connection from one edge
$ of the FE Lap Belt to the Anchor at Floor Pan. A good portion of this part of
$ the belt in an actual car is "doubled and stitched". That is why I have made
$ it "twice" the strength, using a Y-scale factor of "2". If you feel that to
$ be unjustified, make the scale factor "1" again.
$
$ To turn Newtons to kN,we have an additional scale factor of 0.001; therefore
$ finally sfo=0.002 .
$
$ It is used for Segment Belt Part 2065000 (can be viewed in LSPP).
$
$
$
$
$ The following function is for the "Segment Belt" from the Retractor through
$ the D-Ring to the FE Shoulder Belt and then the Segment from the other end
$ of the Shoulder FE Belt, through the Buckle to the FE Lap Belt.
$
$ To turn Newtons to kN,we have an additional scale factor of 0.001 .
$
$ It is used for Segment Belt Parts 2066000 & 2067000 (can be viewed in LSPP).
$
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin RETRACTOR PROPERTY CURVE Block $$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$
$
$
$$$$$$$$$$$$$$$ End RETRACTOR PROPERTY CURVE Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin PYRO-PRETENSIONER PULL CURVE Block ***********************
$
$
$
$
$
$
$************** End PYRO-PRETENSIONER PULL CURVE Block *************************
$
$
$
$
$
$
$ The following is the "Segment Belt from Buckle to Ground" Load Curve.
$
*DEFINE_CURVE
$
$
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2060001         0       1.01.81200E-5       0.0       0.0         0         0
$
$
$ The following curve should be generated from Seatbelt Component Tests.
$ This should be in the units "Force(Y) vs. Strain(X)".
$ The Force should be measured "along the main direction of the belt".
$
$ A "simplistic, typical curve" is being shown here.
$ This might serve your temporary purpose.
$ However, please use your own curve from seatbelt component tests.
$
$ The Force Units are in "NEWTONS" in this Curve.
$ Since our Model Force Units are in kN, we have to convert that too and that
$ has been taken care of in the Y-Scale Factor above.
$
$            (Strain)          (Newtons)
$
$#                a1                  o1  
                 0.0                 0.0
                 0.1             10100.0
*DEFINE_CURVE
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2060002         0       1.09.06000E-6       0.0       0.0         0         0
$
$            (Strain)          (Newtons)
$
$#                a1                  o1  
                 0.0                 0.0
                 0.1             10100.0
*DEFINE_CURVE
$
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2065000         0       1.0     0.002       0.0       0.0         0         0
$
$            (Strain)          (Newtons)
$
$#                a1                  o1  
                 0.0                 0.0
                 0.1             10100.0
*DEFINE_CURVE
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2065002         0       1.0     0.001       0.0       0.0         0         0
$
$            (Strain)          (Newtons)
$
$#                a1                  o1  
                 0.0                 0.0
                 0.1             10100.0
*DEFINE_CURVE
$
$ Retractor Force (kN) vs Payout (mm)
$
$ sfa=1000.0 changes a payout of meters to millimeters.
$ sfo=0.001 changes the Force from Newtons to kilo-Newtons.
$
$ It is used for Retractor Part 2067111 .
$
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2067000         0    1000.0&bforc           0.0       0.0         0         0
$
$ The following curve is for a Retractor with Load Limited to 3250-Newtons.
$
$ Retractor Force(Y) vs. Payout(X)
$
$             Payout               Force
$           (meters)           (Newtons)
$
$#                a1                  o1  
                 0.0                 0.0
               0.025              3250.0
                0.45              3250.0
*DEFINE_CURVE
$
$ Retractor Force (kN) vs Payout (mm) UNLOADING
$
$ sfa=1000.0 changes a payout of meters to millimeters.
$ sfo=0.001 changes the Force from Newtons to kilo-Newtons.
$
$ It is used for Retractor Part 2067111 .
$
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2067001         0    1000.0       0.1       0.0       0.0         0         0
$
$ The following curve is for a Retractor with Load Limited to 3250-Newtons.
$
$ Retractor Force(Y) vs. Payout(X)
$
$             Payout               Force
$           (meters)           (Newtons)
$
$#                a1                  o1  
                 0.0                 0.0
               0.001             10000.0
*DEFINE_CURVE
$
$ Pyro Pretensioner Curve
$
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2067002         0       1.0       1.0       0.0       0.0         0         0
$
$#                a1                  o1  
                 0.0                 0.0
                10.0                90.0
               200.0                90.0
*DEFINE_CURVE
$
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   2067006         0       1.0       1.0       0.0       0.0         0         0
$
$#                a1                  o1  
                 0.0                 0.0
                0.02                50.0
                 0.1               250.0
$
$
$
$$$$$$$$$$$$$$$ End SET_NODE Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin CONSTRAINED "EXTRA_NODES" AND "RIGID_BODY" Block *********
$
$
$
*CONSTRAINED_EXTRA_NODES_NODE
$#     pid       nid     iflag     
   2066001   2067507         0
$
$
$
*CONSTRAINED_NODAL_RIGID_BODY
$#     pid       cid      nsid     pnode      iprt    drflag    rrflag      
   2065000         0   2065000         0         0         0         0
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin SET_NODE Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
*SET_NODE_LIST
$#     sid       da1       da2       da3       da4    solver      
   2065000       0.0       0.0       0.0       0.0MECH
$
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   2060070   2060141   2060212   2060283   2060354         0         0         0
$
$
$
*CONSTRAINED_NODAL_RIGID_BODY
$#     pid       cid      nsid     pnode      iprt    drflag    rrflag      
   2067000         0   2067000         0         0         0         0
$
$
$
*SET_NODE_LIST
$#     sid       da1       da2       da3       da4    solver      
   2067000       0.0       0.0       0.0       0.0MECH
$
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   2060421   2060488   2060555   2060622   2060689         0         0         0
$
$
$
*CONSTRAINED_NODAL_RIGID_BODY
$#     pid       cid      nsid     pnode      iprt    drflag    rrflag      
   2067001         0   2067001         0         0         0         0
$
$
$
*SET_NODE_LIST
$#     sid       da1       da2       da3       da4    solver      
   2067001       0.0       0.0       0.0       0.0MECH
$
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   2060000   2060071   2060142   2060213   2060284         0         0         0
$
$
$
*CONSTRAINED_NODAL_RIGID_BODY
$#     pid       cid      nsid     pnode      iprt    drflag    rrflag      
   2067002         0   2067002         0         0         0         0
$
$
$
*SET_NODE_LIST
$#     sid       da1       da2       da3       da4    solver      
   2067002       0.0       0.0       0.0       0.0MECH
$
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   2060355   2060422   2060489   2060556   2060623         0         0         0
$
$
$
*CONSTRAINED_RIGID_BODIES
$
$#    pidm      pids     iflag     
   3000099   2065001         0
   3000099   2066001         0
   3000086   2067001         0
   3000099   2067002         0
$
$
$
$************** End CONSTRAINED "EXTRA_NODES" AND "RIGID_BODY" Block ***********
$
$
$
$
$
$
*ELEMENT_SHELL
$
$#   eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
 2060000 2060000 2060000 2060071 2060003 2060003       0       0       0       0
 2060001 2060000 2060074 2060003 2060071 2060071       0       0       0       0
 2060006 2060000 2060003 2060074 2060004 2060004       0       0       0       0
 2060007 2060000 2060075 2060004 2060074 2060074       0       0       0       0
 2060008 2060000 2060004 2060075 2060005 2060005       0       0       0       0
 2060009 2060000 2060076 2060005 2060075 2060075       0       0       0       0
 2060010 2060000 2060005 2060076 2060006 2060006       0       0       0       0
 2060011 2060000 2060077 2060006 2060076 2060076       0       0       0       0
 2060012 2060000 2060006 2060077 2060007 2060007       0       0       0       0
 2060013 2060000 2060078 2060007 2060077 2060077       0       0       0       0
 2060014 2060000 2060007 2060078 2060008 2060008       0       0       0       0
 2060015 2060000 2060079 2060008 2060078 2060078       0       0       0       0
 2060016 2060000 2060008 2060079 2060009 2060009       0       0       0       0
 2060017 2060000 2060080 2060009 2060079 2060079       0       0       0       0
 2060018 2060000 2060009 2060080 2060010 2060010       0       0       0       0
 2060019 2060000 2060081 2060010 2060080 2060080       0       0       0       0
 2060020 2060000 2060010 2060081 2060011 2060011       0       0       0       0
 2060021 2060000 2060082 2060011 2060081 2060081       0       0       0       0
 2060022 2060000 2060011 2060082 2060012 2060012       0       0       0       0
 2060023 2060000 2060083 2060012 2060082 2060082       0       0       0       0
 2060024 2060000 2060012 2060083 2060013 2060013       0       0       0       0
 2060025 2060000 2060084 2060013 2060083 2060083       0       0       0       0
 2060026 2060000 2060013 2060084 2060014 2060014       0       0       0       0
 2060027 2060000 2060085 2060014 2060084 2060084       0       0       0       0
 2060028 2060000 2060014 2060085 2060015 2060015       0       0       0       0
 2060029 2060000 2060086 2060015 2060085 2060085       0       0       0       0
 2060030 2060000 2060015 2060086 2060016 2060016       0       0       0       0
 2060031 2060000 2060087 2060016 2060086 2060086       0       0       0       0
 2060032 2060000 2060016 2060087 2060017 2060017       0       0       0       0
 2060033 2060000 2060088 2060017 2060087 2060087       0       0       0       0
 2060034 2060000 2060017 2060088 2060018 2060018       0       0       0       0
 2060035 2060000 2060089 2060018 2060088 2060088       0       0       0       0
 2060036 2060000 2060018 2060089 2060019 2060019       0       0       0       0
 2060037 2060000 2060090 2060019 2060089 2060089       0       0       0       0
 2060038 2060000 2060019 2060090 2060020 2060020       0       0       0       0
 2060039 2060000 2060091 2060020 2060090 2060090       0       0       0       0
 2060040 2060000 2060020 2060091 2060021 2060021       0       0       0       0
 2060041 2060000 2060092 2060021 2060091 2060091       0       0       0       0
 2060042 2060000 2060021 2060092 2060022 2060022       0       0       0       0
 2060043 2060000 2060093 2060022 2060092 2060092       0       0       0       0
 2060044 2060000 2060022 2060093 2060023 2060023       0       0       0       0
 2060045 2060000 2060094 2060023 2060093 2060093       0       0       0       0
 2060046 2060000 2060023 2060094 2060024 2060024       0       0       0       0
 2060047 2060000 2060095 2060024 2060094 2060094       0       0       0       0
 2060048 2060000 2060024 2060095 2060025 2060025       0       0       0       0
 2060049 2060000 2060096 2060025 2060095 2060095       0       0       0       0
 2060050 2060000 2060025 2060096 2060026 2060026       0       0       0       0
 2060051 2060000 2060097 2060026 2060096 2060096       0       0       0       0
 2060052 2060000 2060026 2060097 2060027 2060027       0       0       0       0
 2060053 2060000 2060098 2060027 2060097 2060097       0       0       0       0
 2060054 2060000 2060027 2060098 2060028 2060028       0       0       0       0
 2060055 2060000 2060099 2060028 2060098 2060098       0       0       0       0
 2060056 2060000 2060028 2060099 2060029 2060029       0       0       0       0
 2060057 2060000 2060100 2060029 2060099 2060099       0       0       0       0
 2060058 2060000 2060029 2060100 2060030 2060030       0       0       0       0
 2060059 2060000 2060101 2060030 2060100 2060100       0       0       0       0
 2060060 2060000 2060030 2060101 2060031 2060031       0       0       0       0
 2060061 2060000 2060102 2060031 2060101 2060101       0       0       0       0
 2060062 2060000 2060031 2060102 2060032 2060032       0       0       0       0
 2060063 2060000 2060103 2060032 2060102 2060102       0       0       0       0
 2060064 2060000 2060032 2060103 2060033 2060033       0       0       0       0
 2060065 2060000 2060104 2060033 2060103 2060103       0       0       0       0
 2060066 2060000 2060033 2060104 2060034 2060034       0       0       0       0
 2060067 2060000 2060105 2060034 2060104 2060104       0       0       0       0
 2060068 2060000 2060034 2060105 2060035 2060035       0       0       0       0
 2060069 2060000 2060106 2060035 2060105 2060105       0       0       0       0
 2060070 2060000 2060035 2060106 2060036 2060036       0       0       0       0
 2060071 2060000 2060107 2060036 2060106 2060106       0       0       0       0
 2060072 2060000 2060036 2060107 2060037 2060037       0       0       0       0
 2060073 2060000 2060108 2060037 2060107 2060107       0       0       0       0
 2060074 2060000 2060037 2060108 2060038 2060038       0       0       0       0
 2060075 2060000 2060109 2060038 2060108 2060108       0       0       0       0
 2060076 2060000 2060038 2060109 2060039 2060039       0       0       0       0
 2060077 2060000 2060110 2060039 2060109 2060109       0       0       0       0
 2060078 2060000 2060039 2060110 2060040 2060040       0       0       0       0
 2060079 2060000 2060111 2060040 2060110 2060110       0       0       0       0
 2060080 2060000 2060040 2060111 2060041 2060041       0       0       0       0
 2060081 2060000 2060112 2060041 2060111 2060111       0       0       0       0
 2060082 2060000 2060041 2060112 2060042 2060042       0       0       0       0
 2060083 2060000 2060113 2060042 2060112 2060112       0       0       0       0
 2060084 2060000 2060042 2060113 2060043 2060043       0       0       0       0
 2060085 2060000 2060114 2060043 2060113 2060113       0       0       0       0
 2060086 2060000 2060043 2060114 2060044 2060044       0       0       0       0
 2060087 2060000 2060115 2060044 2060114 2060114       0       0       0       0
 2060088 2060000 2060044 2060115 2060045 2060045       0       0       0       0
 2060089 2060000 2060116 2060045 2060115 2060115       0       0       0       0
 2060090 2060000 2060045 2060116 2060046 2060046       0       0       0       0
 2060091 2060000 2060117 2060046 2060116 2060116       0       0       0       0
 2060092 2060000 2060046 2060117 2060047 2060047       0       0       0       0
 2060093 2060000 2060118 2060047 2060117 2060117       0       0       0       0
 2060094 2060000 2060047 2060118 2060048 2060048       0       0       0       0
 2060095 2060000 2060119 2060048 2060118 2060118       0       0       0       0
 2060096 2060000 2060048 2060119 2060049 2060049       0       0       0       0
 2060097 2060000 2060120 2060049 2060119 2060119       0       0       0       0
 2060098 2060000 2060049 2060120 2060050 2060050       0       0       0       0
 2060099 2060000 2060121 2060050 2060120 2060120       0       0       0       0
 2060100 2060000 2060050 2060121 2060051 2060051       0       0       0       0
 2060101 2060000 2060122 2060051 2060121 2060121       0       0       0       0
 2060102 2060000 2060051 2060122 2060052 2060052       0       0       0       0
 2060103 2060000 2060123 2060052 2060122 2060122       0       0       0       0
 2060104 2060000 2060052 2060123 2060053 2060053       0       0       0       0
 2060105 2060000 2060124 2060053 2060123 2060123       0       0       0       0
 2060106 2060000 2060053 2060124 2060054 2060054       0       0       0       0
 2060107 2060000 2060125 2060054 2060124 2060124       0       0       0       0
 2060108 2060000 2060054 2060125 2060055 2060055       0       0       0       0
 2060109 2060000 2060126 2060055 2060125 2060125       0       0       0       0
 2060110 2060000 2060055 2060126 2060056 2060056       0       0       0       0
 2060111 2060000 2060127 2060056 2060126 2060126       0       0       0       0
 2060112 2060000 2060056 2060127 2060057 2060057       0       0       0       0
 2060113 2060000 2060128 2060057 2060127 2060127       0       0       0       0
 2060114 2060000 2060057 2060128 2060058 2060058       0       0       0       0
 2060115 2060000 2060129 2060058 2060128 2060128       0       0       0       0
 2060116 2060000 2060058 2060129 2060059 2060059       0       0       0       0
 2060117 2060000 2060130 2060059 2060129 2060129       0       0       0       0
 2060118 2060000 2060059 2060130 2060060 2060060       0       0       0       0
 2060119 2060000 2060131 2060060 2060130 2060130       0       0       0       0
 2060120 2060000 2060060 2060131 2060061 2060061       0       0       0       0
 2060121 2060000 2060132 2060061 2060131 2060131       0       0       0       0
 2060122 2060000 2060061 2060132 2060062 2060062       0       0       0       0
 2060123 2060000 2060133 2060062 2060132 2060132       0       0       0       0
 2060124 2060000 2060062 2060133 2060063 2060063       0       0       0       0
 2060125 2060000 2060134 2060063 2060133 2060133       0       0       0       0
 2060126 2060000 2060063 2060134 2060064 2060064       0       0       0       0
 2060127 2060000 2060135 2060064 2060134 2060134       0       0       0       0
 2060128 2060000 2060064 2060135 2060065 2060065       0       0       0       0
 2060129 2060000 2060136 2060065 2060135 2060135       0       0       0       0
 2060130 2060000 2060065 2060136 2060066 2060066       0       0       0       0
 2060131 2060000 2060137 2060066 2060136 2060136       0       0       0       0
 2060132 2060000 2060066 2060137 2060067 2060067       0       0       0       0
 2060133 2060000 2060138 2060067 2060137 2060137       0       0       0       0
 2060134 2060000 2060067 2060138 2060068 2060068       0       0       0       0
 2060135 2060000 2060139 2060068 2060138 2060138       0       0       0       0
 2060136 2060000 2060068 2060139 2060069 2060069       0       0       0       0
 2060137 2060000 2060140 2060069 2060139 2060139       0       0       0       0
 2060138 2060000 2060069 2060140 2060070 2060070       0       0       0       0
 2060139 2060000 2060141 2060070 2060140 2060140       0       0       0       0
 2060140 2060000 2060071 2060142 2060074 2060074       0       0       0       0
 2060141 2060000 2060145 2060074 2060142 2060142       0       0       0       0
 2060146 2060000 2060074 2060145 2060075 2060075       0       0       0       0
 2060147 2060000 2060146 2060075 2060145 2060145       0       0       0       0
 2060148 2060000 2060075 2060146 2060076 2060076       0       0       0       0
 2060149 2060000 2060147 2060076 2060146 2060146       0       0       0       0
 2060150 2060000 2060076 2060147 2060077 2060077       0       0       0       0
 2060151 2060000 2060148 2060077 2060147 2060147       0       0       0       0
 2060152 2060000 2060077 2060148 2060078 2060078       0       0       0       0
 2060153 2060000 2060149 2060078 2060148 2060148       0       0       0       0
 2060154 2060000 2060078 2060149 2060079 2060079       0       0       0       0
 2060155 2060000 2060150 2060079 2060149 2060149       0       0       0       0
 2060156 2060000 2060079 2060150 2060080 2060080       0       0       0       0
 2060157 2060000 2060151 2060080 2060150 2060150       0       0       0       0
 2060158 2060000 2060080 2060151 2060081 2060081       0       0       0       0
 2060159 2060000 2060152 2060081 2060151 2060151       0       0       0       0
 2060160 2060000 2060081 2060152 2060082 2060082       0       0       0       0
 2060161 2060000 2060153 2060082 2060152 2060152       0       0       0       0
 2060162 2060000 2060082 2060153 2060083 2060083       0       0       0       0
 2060163 2060000 2060154 2060083 2060153 2060153       0       0       0       0
 2060164 2060000 2060083 2060154 2060084 2060084       0       0       0       0
 2060165 2060000 2060155 2060084 2060154 2060154       0       0       0       0
 2060166 2060000 2060084 2060155 2060085 2060085       0       0       0       0
 2060167 2060000 2060156 2060085 2060155 2060155       0       0       0       0
 2060168 2060000 2060085 2060156 2060086 2060086       0       0       0       0
 2060169 2060000 2060157 2060086 2060156 2060156       0       0       0       0
 2060170 2060000 2060086 2060157 2060087 2060087       0       0       0       0
 2060171 2060000 2060158 2060087 2060157 2060157       0       0       0       0
 2060172 2060000 2060087 2060158 2060088 2060088       0       0       0       0
 2060173 2060000 2060159 2060088 2060158 2060158       0       0       0       0
 2060174 2060000 2060088 2060159 2060089 2060089       0       0       0       0
 2060175 2060000 2060160 2060089 2060159 2060159       0       0       0       0
 2060176 2060000 2060089 2060160 2060090 2060090       0       0       0       0
 2060177 2060000 2060161 2060090 2060160 2060160       0       0       0       0
 2060178 2060000 2060090 2060161 2060091 2060091       0       0       0       0
 2060179 2060000 2060162 2060091 2060161 2060161       0       0       0       0
 2060180 2060000 2060091 2060162 2060092 2060092       0       0       0       0
 2060181 2060000 2060163 2060092 2060162 2060162       0       0       0       0
 2060182 2060000 2060092 2060163 2060093 2060093       0       0       0       0
 2060183 2060000 2060164 2060093 2060163 2060163       0       0       0       0
 2060184 2060000 2060093 2060164 2060094 2060094       0       0       0       0
 2060185 2060000 2060165 2060094 2060164 2060164       0       0       0       0
 2060186 2060000 2060094 2060165 2060095 2060095       0       0       0       0
 2060187 2060000 2060166 2060095 2060165 2060165       0       0       0       0
 2060188 2060000 2060095 2060166 2060096 2060096       0       0       0       0
 2060189 2060000 2060167 2060096 2060166 2060166       0       0       0       0
 2060190 2060000 2060096 2060167 2060097 2060097       0       0       0       0
 2060191 2060000 2060168 2060097 2060167 2060167       0       0       0       0
 2060192 2060000 2060097 2060168 2060098 2060098       0       0       0       0
 2060193 2060000 2060169 2060098 2060168 2060168       0       0       0       0
 2060194 2060000 2060098 2060169 2060099 2060099       0       0       0       0
 2060195 2060000 2060170 2060099 2060169 2060169       0       0       0       0
 2060196 2060000 2060099 2060170 2060100 2060100       0       0       0       0
 2060197 2060000 2060171 2060100 2060170 2060170       0       0       0       0
 2060198 2060000 2060100 2060171 2060101 2060101       0       0       0       0
 2060199 2060000 2060172 2060101 2060171 2060171       0       0       0       0
 2060200 2060000 2060101 2060172 2060102 2060102       0       0       0       0
 2060201 2060000 2060173 2060102 2060172 2060172       0       0       0       0
 2060202 2060000 2060102 2060173 2060103 2060103       0       0       0       0
 2060203 2060000 2060174 2060103 2060173 2060173       0       0       0       0
 2060204 2060000 2060103 2060174 2060104 2060104       0       0       0       0
 2060205 2060000 2060175 2060104 2060174 2060174       0       0       0       0
 2060206 2060000 2060104 2060175 2060105 2060105       0       0       0       0
 2060207 2060000 2060176 2060105 2060175 2060175       0       0       0       0
 2060208 2060000 2060105 2060176 2060106 2060106       0       0       0       0
 2060209 2060000 2060177 2060106 2060176 2060176       0       0       0       0
 2060210 2060000 2060106 2060177 2060107 2060107       0       0       0       0
 2060211 2060000 2060178 2060107 2060177 2060177       0       0       0       0
 2060212 2060000 2060107 2060178 2060108 2060108       0       0       0       0
 2060213 2060000 2060179 2060108 2060178 2060178       0       0       0       0
 2060214 2060000 2060108 2060179 2060109 2060109       0       0       0       0
 2060215 2060000 2060180 2060109 2060179 2060179       0       0       0       0
 2060216 2060000 2060109 2060180 2060110 2060110       0       0       0       0
 2060217 2060000 2060181 2060110 2060180 2060180       0       0       0       0
 2060218 2060000 2060110 2060181 2060111 2060111       0       0       0       0
 2060219 2060000 2060182 2060111 2060181 2060181       0       0       0       0
 2060220 2060000 2060111 2060182 2060112 2060112       0       0       0       0
 2060221 2060000 2060183 2060112 2060182 2060182       0       0       0       0
 2060222 2060000 2060112 2060183 2060113 2060113       0       0       0       0
 2060223 2060000 2060184 2060113 2060183 2060183       0       0       0       0
 2060224 2060000 2060113 2060184 2060114 2060114       0       0       0       0
 2060225 2060000 2060185 2060114 2060184 2060184       0       0       0       0
 2060226 2060000 2060114 2060185 2060115 2060115       0       0       0       0
 2060227 2060000 2060186 2060115 2060185 2060185       0       0       0       0
 2060228 2060000 2060115 2060186 2060116 2060116       0       0       0       0
 2060229 2060000 2060187 2060116 2060186 2060186       0       0       0       0
 2060230 2060000 2060116 2060187 2060117 2060117       0       0       0       0
 2060231 2060000 2060188 2060117 2060187 2060187       0       0       0       0
 2060232 2060000 2060117 2060188 2060118 2060118       0       0       0       0
 2060233 2060000 2060189 2060118 2060188 2060188       0       0       0       0
 2060234 2060000 2060118 2060189 2060119 2060119       0       0       0       0
 2060235 2060000 2060190 2060119 2060189 2060189       0       0       0       0
 2060236 2060000 2060119 2060190 2060120 2060120       0       0       0       0
 2060237 2060000 2060191 2060120 2060190 2060190       0       0       0       0
 2060238 2060000 2060120 2060191 2060121 2060121       0       0       0       0
 2060239 2060000 2060192 2060121 2060191 2060191       0       0       0       0
 2060240 2060000 2060121 2060192 2060122 2060122       0       0       0       0
 2060241 2060000 2060193 2060122 2060192 2060192       0       0       0       0
 2060242 2060000 2060122 2060193 2060123 2060123       0       0       0       0
 2060243 2060000 2060194 2060123 2060193 2060193       0       0       0       0
 2060244 2060000 2060123 2060194 2060124 2060124       0       0       0       0
 2060245 2060000 2060195 2060124 2060194 2060194       0       0       0       0
 2060246 2060000 2060124 2060195 2060125 2060125       0       0       0       0
 2060247 2060000 2060196 2060125 2060195 2060195       0       0       0       0
 2060248 2060000 2060125 2060196 2060126 2060126       0       0       0       0
 2060249 2060000 2060197 2060126 2060196 2060196       0       0       0       0
 2060250 2060000 2060126 2060197 2060127 2060127       0       0       0       0
 2060251 2060000 2060198 2060127 2060197 2060197       0       0       0       0
 2060252 2060000 2060127 2060198 2060128 2060128       0       0       0       0
 2060253 2060000 2060199 2060128 2060198 2060198       0       0       0       0
 2060254 2060000 2060128 2060199 2060129 2060129       0       0       0       0
 2060255 2060000 2060200 2060129 2060199 2060199       0       0       0       0
 2060256 2060000 2060129 2060200 2060130 2060130       0       0       0       0
 2060257 2060000 2060201 2060130 2060200 2060200       0       0       0       0
 2060258 2060000 2060130 2060201 2060131 2060131       0       0       0       0
 2060259 2060000 2060202 2060131 2060201 2060201       0       0       0       0
 2060260 2060000 2060131 2060202 2060132 2060132       0       0       0       0
 2060261 2060000 2060203 2060132 2060202 2060202       0       0       0       0
 2060262 2060000 2060132 2060203 2060133 2060133       0       0       0       0
 2060263 2060000 2060204 2060133 2060203 2060203       0       0       0       0
 2060264 2060000 2060133 2060204 2060134 2060134       0       0       0       0
 2060265 2060000 2060205 2060134 2060204 2060204       0       0       0       0
 2060266 2060000 2060134 2060205 2060135 2060135       0       0       0       0
 2060267 2060000 2060206 2060135 2060205 2060205       0       0       0       0
 2060268 2060000 2060135 2060206 2060136 2060136       0       0       0       0
 2060269 2060000 2060207 2060136 2060206 2060206       0       0       0       0
 2060270 2060000 2060136 2060207 2060137 2060137       0       0       0       0
 2060271 2060000 2060208 2060137 2060207 2060207       0       0       0       0
 2060272 2060000 2060137 2060208 2060138 2060138       0       0       0       0
 2060273 2060000 2060209 2060138 2060208 2060208       0       0       0       0
 2060274 2060000 2060138 2060209 2060139 2060139       0       0       0       0
 2060275 2060000 2060210 2060139 2060209 2060209       0       0       0       0
 2060276 2060000 2060139 2060210 2060140 2060140       0       0       0       0
 2060277 2060000 2060211 2060140 2060210 2060210       0       0       0       0
 2060278 2060000 2060140 2060211 2060141 2060141       0       0       0       0
 2060279 2060000 2060212 2060141 2060211 2060211       0       0       0       0
 2060280 2060000 2060142 2060213 2060145 2060145       0       0       0       0
 2060281 2060000 2060216 2060145 2060213 2060213       0       0       0       0
 2060286 2060000 2060145 2060216 2060146 2060146       0       0       0       0
 2060287 2060000 2060217 2060146 2060216 2060216       0       0       0       0
 2060288 2060000 2060146 2060217 2060147 2060147       0       0       0       0
 2060289 2060000 2060218 2060147 2060217 2060217       0       0       0       0
 2060290 2060000 2060147 2060218 2060148 2060148       0       0       0       0
 2060291 2060000 2060219 2060148 2060218 2060218       0       0       0       0
 2060292 2060000 2060148 2060219 2060149 2060149       0       0       0       0
 2060293 2060000 2060220 2060149 2060219 2060219       0       0       0       0
 2060294 2060000 2060149 2060220 2060150 2060150       0       0       0       0
 2060295 2060000 2060221 2060150 2060220 2060220       0       0       0       0
 2060296 2060000 2060150 2060221 2060151 2060151       0       0       0       0
 2060297 2060000 2060222 2060151 2060221 2060221       0       0       0       0
 2060298 2060000 2060151 2060222 2060152 2060152       0       0       0       0
 2060299 2060000 2060223 2060152 2060222 2060222       0       0       0       0
 2060300 2060000 2060152 2060223 2060153 2060153       0       0       0       0
 2060301 2060000 2060224 2060153 2060223 2060223       0       0       0       0
 2060302 2060000 2060153 2060224 2060154 2060154       0       0       0       0
 2060303 2060000 2060225 2060154 2060224 2060224       0       0       0       0
 2060304 2060000 2060154 2060225 2060155 2060155       0       0       0       0
 2060305 2060000 2060226 2060155 2060225 2060225       0       0       0       0
 2060306 2060000 2060155 2060226 2060156 2060156       0       0       0       0
 2060307 2060000 2060227 2060156 2060226 2060226       0       0       0       0
 2060308 2060000 2060156 2060227 2060157 2060157       0       0       0       0
 2060309 2060000 2060228 2060157 2060227 2060227       0       0       0       0
 2060310 2060000 2060157 2060228 2060158 2060158       0       0       0       0
 2060311 2060000 2060229 2060158 2060228 2060228       0       0       0       0
 2060312 2060000 2060158 2060229 2060159 2060159       0       0       0       0
 2060313 2060000 2060230 2060159 2060229 2060229       0       0       0       0
 2060314 2060000 2060159 2060230 2060160 2060160       0       0       0       0
 2060315 2060000 2060231 2060160 2060230 2060230       0       0       0       0
 2060316 2060000 2060160 2060231 2060161 2060161       0       0       0       0
 2060317 2060000 2060232 2060161 2060231 2060231       0       0       0       0
 2060318 2060000 2060161 2060232 2060162 2060162       0       0       0       0
 2060319 2060000 2060233 2060162 2060232 2060232       0       0       0       0
 2060320 2060000 2060162 2060233 2060163 2060163       0       0       0       0
 2060321 2060000 2060234 2060163 2060233 2060233       0       0       0       0
 2060322 2060000 2060163 2060234 2060164 2060164       0       0       0       0
 2060323 2060000 2060235 2060164 2060234 2060234       0       0       0       0
 2060324 2060000 2060164 2060235 2060165 2060165       0       0       0       0
 2060325 2060000 2060236 2060165 2060235 2060235       0       0       0       0
 2060326 2060000 2060165 2060236 2060166 2060166       0       0       0       0
 2060327 2060000 2060237 2060166 2060236 2060236       0       0       0       0
 2060328 2060000 2060166 2060237 2060167 2060167       0       0       0       0
 2060329 2060000 2060238 2060167 2060237 2060237       0       0       0       0
 2060330 2060000 2060167 2060238 2060168 2060168       0       0       0       0
 2060331 2060000 2060239 2060168 2060238 2060238       0       0       0       0
 2060332 2060000 2060168 2060239 2060169 2060169       0       0       0       0
 2060333 2060000 2060240 2060169 2060239 2060239       0       0       0       0
 2060334 2060000 2060169 2060240 2060170 2060170       0       0       0       0
 2060335 2060000 2060241 2060170 2060240 2060240       0       0       0       0
 2060336 2060000 2060170 2060241 2060171 2060171       0       0       0       0
 2060337 2060000 2060242 2060171 2060241 2060241       0       0       0       0
 2060338 2060000 2060171 2060242 2060172 2060172       0       0       0       0
 2060339 2060000 2060243 2060172 2060242 2060242       0       0       0       0
 2060340 2060000 2060172 2060243 2060173 2060173       0       0       0       0
 2060341 2060000 2060244 2060173 2060243 2060243       0       0       0       0
 2060342 2060000 2060173 2060244 2060174 2060174       0       0       0       0
 2060343 2060000 2060245 2060174 2060244 2060244       0       0       0       0
 2060344 2060000 2060174 2060245 2060175 2060175       0       0       0       0
 2060345 2060000 2060246 2060175 2060245 2060245       0       0       0       0
 2060346 2060000 2060175 2060246 2060176 2060176       0       0       0       0
 2060347 2060000 2060247 2060176 2060246 2060246       0       0       0       0
 2060348 2060000 2060176 2060247 2060177 2060177       0       0       0       0
 2060349 2060000 2060248 2060177 2060247 2060247       0       0       0       0
 2060350 2060000 2060177 2060248 2060178 2060178       0       0       0       0
 2060351 2060000 2060249 2060178 2060248 2060248       0       0       0       0
 2060352 2060000 2060178 2060249 2060179 2060179       0       0       0       0
 2060353 2060000 2060250 2060179 2060249 2060249       0       0       0       0
 2060354 2060000 2060179 2060250 2060180 2060180       0       0       0       0
 2060355 2060000 2060251 2060180 2060250 2060250       0       0       0       0
 2060356 2060000 2060180 2060251 2060181 2060181       0       0       0       0
 2060357 2060000 2060252 2060181 2060251 2060251       0       0       0       0
 2060358 2060000 2060181 2060252 2060182 2060182       0       0       0       0
 2060359 2060000 2060253 2060182 2060252 2060252       0       0       0       0
 2060360 2060000 2060182 2060253 2060183 2060183       0       0       0       0
 2060361 2060000 2060254 2060183 2060253 2060253       0       0       0       0
 2060362 2060000 2060183 2060254 2060184 2060184       0       0       0       0
 2060363 2060000 2060255 2060184 2060254 2060254       0       0       0       0
 2060364 2060000 2060184 2060255 2060185 2060185       0       0       0       0
 2060365 2060000 2060256 2060185 2060255 2060255       0       0       0       0
 2060366 2060000 2060185 2060256 2060186 2060186       0       0       0       0
 2060367 2060000 2060257 2060186 2060256 2060256       0       0       0       0
 2060368 2060000 2060186 2060257 2060187 2060187       0       0       0       0
 2060369 2060000 2060258 2060187 2060257 2060257       0       0       0       0
 2060370 2060000 2060187 2060258 2060188 2060188       0       0       0       0
 2060371 2060000 2060259 2060188 2060258 2060258       0       0       0       0
 2060372 2060000 2060188 2060259 2060189 2060189       0       0       0       0
 2060373 2060000 2060260 2060189 2060259 2060259       0       0       0       0
 2060374 2060000 2060189 2060260 2060190 2060190       0       0       0       0
 2060375 2060000 2060261 2060190 2060260 2060260       0       0       0       0
 2060376 2060000 2060190 2060261 2060191 2060191       0       0       0       0
 2060377 2060000 2060262 2060191 2060261 2060261       0       0       0       0
 2060378 2060000 2060191 2060262 2060192 2060192       0       0       0       0
 2060379 2060000 2060263 2060192 2060262 2060262       0       0       0       0
 2060380 2060000 2060192 2060263 2060193 2060193       0       0       0       0
 2060381 2060000 2060264 2060193 2060263 2060263       0       0       0       0
 2060382 2060000 2060193 2060264 2060194 2060194       0       0       0       0
 2060383 2060000 2060265 2060194 2060264 2060264       0       0       0       0
 2060384 2060000 2060194 2060265 2060195 2060195       0       0       0       0
 2060385 2060000 2060266 2060195 2060265 2060265       0       0       0       0
 2060386 2060000 2060195 2060266 2060196 2060196       0       0       0       0
 2060387 2060000 2060267 2060196 2060266 2060266       0       0       0       0
 2060388 2060000 2060196 2060267 2060197 2060197       0       0       0       0
 2060389 2060000 2060268 2060197 2060267 2060267       0       0       0       0
 2060390 2060000 2060197 2060268 2060198 2060198       0       0       0       0
 2060391 2060000 2060269 2060198 2060268 2060268       0       0       0       0
 2060392 2060000 2060198 2060269 2060199 2060199       0       0       0       0
 2060393 2060000 2060270 2060199 2060269 2060269       0       0       0       0
 2060394 2060000 2060199 2060270 2060200 2060200       0       0       0       0
 2060395 2060000 2060271 2060200 2060270 2060270       0       0       0       0
 2060396 2060000 2060200 2060271 2060201 2060201       0       0       0       0
 2060397 2060000 2060272 2060201 2060271 2060271       0       0       0       0
 2060398 2060000 2060201 2060272 2060202 2060202       0       0       0       0
 2060399 2060000 2060273 2060202 2060272 2060272       0       0       0       0
 2060400 2060000 2060202 2060273 2060203 2060203       0       0       0       0
 2060401 2060000 2060274 2060203 2060273 2060273       0       0       0       0
 2060402 2060000 2060203 2060274 2060204 2060204       0       0       0       0
 2060403 2060000 2060275 2060204 2060274 2060274       0       0       0       0
 2060404 2060000 2060204 2060275 2060205 2060205       0       0       0       0
 2060405 2060000 2060276 2060205 2060275 2060275       0       0       0       0
 2060406 2060000 2060205 2060276 2060206 2060206       0       0       0       0
 2060407 2060000 2060277 2060206 2060276 2060276       0       0       0       0
 2060408 2060000 2060206 2060277 2060207 2060207       0       0       0       0
 2060409 2060000 2060278 2060207 2060277 2060277       0       0       0       0
 2060410 2060000 2060207 2060278 2060208 2060208       0       0       0       0
 2060411 2060000 2060279 2060208 2060278 2060278       0       0       0       0
 2060412 2060000 2060208 2060279 2060209 2060209       0       0       0       0
 2060413 2060000 2060280 2060209 2060279 2060279       0       0       0       0
 2060414 2060000 2060209 2060280 2060210 2060210       0       0       0       0
 2060415 2060000 2060281 2060210 2060280 2060280       0       0       0       0
 2060416 2060000 2060210 2060281 2060211 2060211       0       0       0       0
 2060417 2060000 2060282 2060211 2060281 2060281       0       0       0       0
 2060418 2060000 2060211 2060282 2060212 2060212       0       0       0       0
 2060419 2060000 2060283 2060212 2060282 2060282       0       0       0       0
 2060420 2060000 2060213 2060284 2060216 2060216       0       0       0       0
 2060421 2060000 2060287 2060216 2060284 2060284       0       0       0       0
 2060426 2060000 2060216 2060287 2060217 2060217       0       0       0       0
 2060427 2060000 2060288 2060217 2060287 2060287       0       0       0       0
 2060428 2060000 2060217 2060288 2060218 2060218       0       0       0       0
 2060429 2060000 2060289 2060218 2060288 2060288       0       0       0       0
 2060430 2060000 2060218 2060289 2060219 2060219       0       0       0       0
 2060431 2060000 2060290 2060219 2060289 2060289       0       0       0       0
 2060432 2060000 2060219 2060290 2060220 2060220       0       0       0       0
 2060433 2060000 2060291 2060220 2060290 2060290       0       0       0       0
 2060434 2060000 2060220 2060291 2060221 2060221       0       0       0       0
 2060435 2060000 2060292 2060221 2060291 2060291       0       0       0       0
 2060436 2060000 2060221 2060292 2060222 2060222       0       0       0       0
 2060437 2060000 2060293 2060222 2060292 2060292       0       0       0       0
 2060438 2060000 2060222 2060293 2060223 2060223       0       0       0       0
 2060439 2060000 2060294 2060223 2060293 2060293       0       0       0       0
 2060440 2060000 2060223 2060294 2060224 2060224       0       0       0       0
 2060441 2060000 2060295 2060224 2060294 2060294       0       0       0       0
 2060442 2060000 2060224 2060295 2060225 2060225       0       0       0       0
 2060443 2060000 2060296 2060225 2060295 2060295       0       0       0       0
 2060444 2060000 2060225 2060296 2060226 2060226       0       0       0       0
 2060445 2060000 2060297 2060226 2060296 2060296       0       0       0       0
 2060446 2060000 2060226 2060297 2060227 2060227       0       0       0       0
 2060447 2060000 2060298 2060227 2060297 2060297       0       0       0       0
 2060448 2060000 2060227 2060298 2060228 2060228       0       0       0       0
 2060449 2060000 2060299 2060228 2060298 2060298       0       0       0       0
 2060450 2060000 2060228 2060299 2060229 2060229       0       0       0       0
 2060451 2060000 2060300 2060229 2060299 2060299       0       0       0       0
 2060452 2060000 2060229 2060300 2060230 2060230       0       0       0       0
 2060453 2060000 2060301 2060230 2060300 2060300       0       0       0       0
 2060454 2060000 2060230 2060301 2060231 2060231       0       0       0       0
 2060455 2060000 2060302 2060231 2060301 2060301       0       0       0       0
 2060456 2060000 2060231 2060302 2060232 2060232       0       0       0       0
 2060457 2060000 2060303 2060232 2060302 2060302       0       0       0       0
 2060458 2060000 2060232 2060303 2060233 2060233       0       0       0       0
 2060459 2060000 2060304 2060233 2060303 2060303       0       0       0       0
 2060460 2060000 2060233 2060304 2060234 2060234       0       0       0       0
 2060461 2060000 2060305 2060234 2060304 2060304       0       0       0       0
 2060462 2060000 2060234 2060305 2060235 2060235       0       0       0       0
 2060463 2060000 2060306 2060235 2060305 2060305       0       0       0       0
 2060464 2060000 2060235 2060306 2060236 2060236       0       0       0       0
 2060465 2060000 2060307 2060236 2060306 2060306       0       0       0       0
 2060466 2060000 2060236 2060307 2060237 2060237       0       0       0       0
 2060467 2060000 2060308 2060237 2060307 2060307       0       0       0       0
 2060468 2060000 2060237 2060308 2060238 2060238       0       0       0       0
 2060469 2060000 2060309 2060238 2060308 2060308       0       0       0       0
 2060470 2060000 2060238 2060309 2060239 2060239       0       0       0       0
 2060471 2060000 2060310 2060239 2060309 2060309       0       0       0       0
 2060472 2060000 2060239 2060310 2060240 2060240       0       0       0       0
 2060473 2060000 2060311 2060240 2060310 2060310       0       0       0       0
 2060474 2060000 2060240 2060311 2060241 2060241       0       0       0       0
 2060475 2060000 2060312 2060241 2060311 2060311       0       0       0       0
 2060476 2060000 2060241 2060312 2060242 2060242       0       0       0       0
 2060477 2060000 2060313 2060242 2060312 2060312       0       0       0       0
 2060478 2060000 2060242 2060313 2060243 2060243       0       0       0       0
 2060479 2060000 2060314 2060243 2060313 2060313       0       0       0       0
 2060480 2060000 2060243 2060314 2060244 2060244       0       0       0       0
 2060481 2060000 2060315 2060244 2060314 2060314       0       0       0       0
 2060482 2060000 2060244 2060315 2060245 2060245       0       0       0       0
 2060483 2060000 2060316 2060245 2060315 2060315       0       0       0       0
 2060484 2060000 2060245 2060316 2060246 2060246       0       0       0       0
 2060485 2060000 2060317 2060246 2060316 2060316       0       0       0       0
 2060486 2060000 2060246 2060317 2060247 2060247       0       0       0       0
 2060487 2060000 2060318 2060247 2060317 2060317       0       0       0       0
 2060488 2060000 2060247 2060318 2060248 2060248       0       0       0       0
 2060489 2060000 2060319 2060248 2060318 2060318       0       0       0       0
 2060490 2060000 2060248 2060319 2060249 2060249       0       0       0       0
 2060491 2060000 2060320 2060249 2060319 2060319       0       0       0       0
 2060492 2060000 2060249 2060320 2060250 2060250       0       0       0       0
 2060493 2060000 2060321 2060250 2060320 2060320       0       0       0       0
 2060494 2060000 2060250 2060321 2060251 2060251       0       0       0       0
 2060495 2060000 2060322 2060251 2060321 2060321       0       0       0       0
 2060496 2060000 2060251 2060322 2060252 2060252       0       0       0       0
 2060497 2060000 2060323 2060252 2060322 2060322       0       0       0       0
 2060498 2060000 2060252 2060323 2060253 2060253       0       0       0       0
 2060499 2060000 2060324 2060253 2060323 2060323       0       0       0       0
 2060500 2060000 2060253 2060324 2060254 2060254       0       0       0       0
 2060501 2060000 2060325 2060254 2060324 2060324       0       0       0       0
 2060502 2060000 2060254 2060325 2060255 2060255       0       0       0       0
 2060503 2060000 2060326 2060255 2060325 2060325       0       0       0       0
 2060504 2060000 2060255 2060326 2060256 2060256       0       0       0       0
 2060505 2060000 2060327 2060256 2060326 2060326       0       0       0       0
 2060506 2060000 2060256 2060327 2060257 2060257       0       0       0       0
 2060507 2060000 2060328 2060257 2060327 2060327       0       0       0       0
 2060508 2060000 2060257 2060328 2060258 2060258       0       0       0       0
 2060509 2060000 2060329 2060258 2060328 2060328       0       0       0       0
 2060510 2060000 2060258 2060329 2060259 2060259       0       0       0       0
 2060511 2060000 2060330 2060259 2060329 2060329       0       0       0       0
 2060512 2060000 2060259 2060330 2060260 2060260       0       0       0       0
 2060513 2060000 2060331 2060260 2060330 2060330       0       0       0       0
 2060514 2060000 2060260 2060331 2060261 2060261       0       0       0       0
 2060515 2060000 2060332 2060261 2060331 2060331       0       0       0       0
 2060516 2060000 2060261 2060332 2060262 2060262       0       0       0       0
 2060517 2060000 2060333 2060262 2060332 2060332       0       0       0       0
 2060518 2060000 2060262 2060333 2060263 2060263       0       0       0       0
 2060519 2060000 2060334 2060263 2060333 2060333       0       0       0       0
 2060520 2060000 2060263 2060334 2060264 2060264       0       0       0       0
 2060521 2060000 2060335 2060264 2060334 2060334       0       0       0       0
 2060522 2060000 2060264 2060335 2060265 2060265       0       0       0       0
 2060523 2060000 2060336 2060265 2060335 2060335       0       0       0       0
 2060524 2060000 2060265 2060336 2060266 2060266       0       0       0       0
 2060525 2060000 2060337 2060266 2060336 2060336       0       0       0       0
 2060526 2060000 2060266 2060337 2060267 2060267       0       0       0       0
 2060527 2060000 2060338 2060267 2060337 2060337       0       0       0       0
 2060528 2060000 2060267 2060338 2060268 2060268       0       0       0       0
 2060529 2060000 2060339 2060268 2060338 2060338       0       0       0       0
 2060530 2060000 2060268 2060339 2060269 2060269       0       0       0       0
 2060531 2060000 2060340 2060269 2060339 2060339       0       0       0       0
 2060532 2060000 2060269 2060340 2060270 2060270       0       0       0       0
 2060533 2060000 2060341 2060270 2060340 2060340       0       0       0       0
 2060534 2060000 2060270 2060341 2060271 2060271       0       0       0       0
 2060535 2060000 2060342 2060271 2060341 2060341       0       0       0       0
 2060536 2060000 2060271 2060342 2060272 2060272       0       0       0       0
 2060537 2060000 2060343 2060272 2060342 2060342       0       0       0       0
 2060538 2060000 2060272 2060343 2060273 2060273       0       0       0       0
 2060539 2060000 2060344 2060273 2060343 2060343       0       0       0       0
 2060540 2060000 2060273 2060344 2060274 2060274       0       0       0       0
 2060541 2060000 2060345 2060274 2060344 2060344       0       0       0       0
 2060542 2060000 2060274 2060345 2060275 2060275       0       0       0       0
 2060543 2060000 2060346 2060275 2060345 2060345       0       0       0       0
 2060544 2060000 2060275 2060346 2060276 2060276       0       0       0       0
 2060545 2060000 2060347 2060276 2060346 2060346       0       0       0       0
 2060546 2060000 2060276 2060347 2060277 2060277       0       0       0       0
 2060547 2060000 2060348 2060277 2060347 2060347       0       0       0       0
 2060548 2060000 2060277 2060348 2060278 2060278       0       0       0       0
 2060549 2060000 2060349 2060278 2060348 2060348       0       0       0       0
 2060550 2060000 2060278 2060349 2060279 2060279       0       0       0       0
 2060551 2060000 2060350 2060279 2060349 2060349       0       0       0       0
 2060552 2060000 2060279 2060350 2060280 2060280       0       0       0       0
 2060553 2060000 2060351 2060280 2060350 2060350       0       0       0       0
 2060554 2060000 2060280 2060351 2060281 2060281       0       0       0       0
 2060555 2060000 2060352 2060281 2060351 2060351       0       0       0       0
 2060556 2060000 2060281 2060352 2060282 2060282       0       0       0       0
 2060557 2060000 2060353 2060282 2060352 2060352       0       0       0       0
 2060558 2060000 2060282 2060353 2060283 2060283       0       0       0       0
 2060559 2060000 2060354 2060283 2060353 2060353       0       0       0       0
 2060560 2060000 2060355 2060422 2060358 2060358       0       0       0       0
 2060561 2060000 2060425 2060358 2060422 2060422       0       0       0       0
 2060566 2060000 2060358 2060425 2060359 2060359       0       0       0       0
 2060567 2060000 2060426 2060359 2060425 2060425       0       0       0       0
 2060568 2060000 2060359 2060426 2060360 2060360       0       0       0       0
 2060569 2060000 2060427 2060360 2060426 2060426       0       0       0       0
 2060570 2060000 2060360 2060427 2060361 2060361       0       0       0       0
 2060571 2060000 2060428 2060361 2060427 2060427       0       0       0       0
 2060572 2060000 2060361 2060428 2060362 2060362       0       0       0       0
 2060573 2060000 2060429 2060362 2060428 2060428       0       0       0       0
 2060574 2060000 2060362 2060429 2060363 2060363       0       0       0       0
 2060575 2060000 2060430 2060363 2060429 2060429       0       0       0       0
 2060576 2060000 2060363 2060430 2060364 2060364       0       0       0       0
 2060577 2060000 2060431 2060364 2060430 2060430       0       0       0       0
 2060578 2060000 2060364 2060431 2060365 2060365       0       0       0       0
 2060579 2060000 2060432 2060365 2060431 2060431       0       0       0       0
 2060580 2060000 2060365 2060432 2060366 2060366       0       0       0       0
 2060581 2060000 2060433 2060366 2060432 2060432       0       0       0       0
 2060582 2060000 2060366 2060433 2060367 2060367       0       0       0       0
 2060583 2060000 2060434 2060367 2060433 2060433       0       0       0       0
 2060584 2060000 2060367 2060434 2060368 2060368       0       0       0       0
 2060585 2060000 2060435 2060368 2060434 2060434       0       0       0       0
 2060586 2060000 2060368 2060435 2060369 2060369       0       0       0       0
 2060587 2060000 2060436 2060369 2060435 2060435       0       0       0       0
 2060588 2060000 2060369 2060436 2060370 2060370       0       0       0       0
 2060589 2060000 2060437 2060370 2060436 2060436       0       0       0       0
 2060590 2060000 2060370 2060437 2060371 2060371       0       0       0       0
 2060591 2060000 2060438 2060371 2060437 2060437       0       0       0       0
 2060592 2060000 2060371 2060438 2060372 2060372       0       0       0       0
 2060593 2060000 2060439 2060372 2060438 2060438       0       0       0       0
 2060594 2060000 2060372 2060439 2060373 2060373       0       0       0       0
 2060595 2060000 2060440 2060373 2060439 2060439       0       0       0       0
 2060596 2060000 2060373 2060440 2060374 2060374       0       0       0       0
 2060597 2060000 2060441 2060374 2060440 2060440       0       0       0       0
 2060598 2060000 2060374 2060441 2060375 2060375       0       0       0       0
 2060599 2060000 2060442 2060375 2060441 2060441       0       0       0       0
 2060600 2060000 2060375 2060442 2060376 2060376       0       0       0       0
 2060601 2060000 2060443 2060376 2060442 2060442       0       0       0       0
 2060602 2060000 2060376 2060443 2060377 2060377       0       0       0       0
 2060603 2060000 2060444 2060377 2060443 2060443       0       0       0       0
 2060604 2060000 2060377 2060444 2060378 2060378       0       0       0       0
 2060605 2060000 2060445 2060378 2060444 2060444       0       0       0       0
 2060606 2060000 2060378 2060445 2060379 2060379       0       0       0       0
 2060607 2060000 2060446 2060379 2060445 2060445       0       0       0       0
 2060608 2060000 2060379 2060446 2060380 2060380       0       0       0       0
 2060609 2060000 2060447 2060380 2060446 2060446       0       0       0       0
 2060610 2060000 2060380 2060447 2060381 2060381       0       0       0       0
 2060611 2060000 2060448 2060381 2060447 2060447       0       0       0       0
 2060612 2060000 2060381 2060448 2060382 2060382       0       0       0       0
 2060613 2060000 2060449 2060382 2060448 2060448       0       0       0       0
 2060614 2060000 2060382 2060449 2060383 2060383       0       0       0       0
 2060615 2060000 2060450 2060383 2060449 2060449       0       0       0       0
 2060616 2060000 2060383 2060450 2060384 2060384       0       0       0       0
 2060617 2060000 2060451 2060384 2060450 2060450       0       0       0       0
 2060618 2060000 2060384 2060451 2060385 2060385       0       0       0       0
 2060619 2060000 2060452 2060385 2060451 2060451       0       0       0       0
 2060620 2060000 2060385 2060452 2060386 2060386       0       0       0       0
 2060621 2060000 2060453 2060386 2060452 2060452       0       0       0       0
 2060622 2060000 2060386 2060453 2060387 2060387       0       0       0       0
 2060623 2060000 2060454 2060387 2060453 2060453       0       0       0       0
 2060624 2060000 2060387 2060454 2060388 2060388       0       0       0       0
 2060625 2060000 2060455 2060388 2060454 2060454       0       0       0       0
 2060626 2060000 2060388 2060455 2060389 2060389       0       0       0       0
 2060627 2060000 2060456 2060389 2060455 2060455       0       0       0       0
 2060628 2060000 2060389 2060456 2060390 2060390       0       0       0       0
 2060629 2060000 2060457 2060390 2060456 2060456       0       0       0       0
 2060630 2060000 2060390 2060457 2060391 2060391       0       0       0       0
 2060631 2060000 2060458 2060391 2060457 2060457       0       0       0       0
 2060632 2060000 2060391 2060458 2060392 2060392       0       0       0       0
 2060633 2060000 2060459 2060392 2060458 2060458       0       0       0       0
 2060634 2060000 2060392 2060459 2060393 2060393       0       0       0       0
 2060635 2060000 2060460 2060393 2060459 2060459       0       0       0       0
 2060636 2060000 2060393 2060460 2060394 2060394       0       0       0       0
 2060637 2060000 2060461 2060394 2060460 2060460       0       0       0       0
 2060638 2060000 2060394 2060461 2060395 2060395       0       0       0       0
 2060639 2060000 2060462 2060395 2060461 2060461       0       0       0       0
 2060640 2060000 2060395 2060462 2060396 2060396       0       0       0       0
 2060641 2060000 2060463 2060396 2060462 2060462       0       0       0       0
 2060642 2060000 2060396 2060463 2060397 2060397       0       0       0       0
 2060643 2060000 2060464 2060397 2060463 2060463       0       0       0       0
 2060644 2060000 2060397 2060464 2060398 2060398       0       0       0       0
 2060645 2060000 2060465 2060398 2060464 2060464       0       0       0       0
 2060646 2060000 2060398 2060465 2060399 2060399       0       0       0       0
 2060647 2060000 2060466 2060399 2060465 2060465       0       0       0       0
 2060648 2060000 2060399 2060466 2060400 2060400       0       0       0       0
 2060649 2060000 2060467 2060400 2060466 2060466       0       0       0       0
 2060650 2060000 2060400 2060467 2060401 2060401       0       0       0       0
 2060651 2060000 2060468 2060401 2060467 2060467       0       0       0       0
 2060652 2060000 2060401 2060468 2060402 2060402       0       0       0       0
 2060653 2060000 2060469 2060402 2060468 2060468       0       0       0       0
 2060654 2060000 2060402 2060469 2060403 2060403       0       0       0       0
 2060655 2060000 2060470 2060403 2060469 2060469       0       0       0       0
 2060656 2060000 2060403 2060470 2060404 2060404       0       0       0       0
 2060657 2060000 2060471 2060404 2060470 2060470       0       0       0       0
 2060658 2060000 2060404 2060471 2060405 2060405       0       0       0       0
 2060659 2060000 2060472 2060405 2060471 2060471       0       0       0       0
 2060660 2060000 2060405 2060472 2060406 2060406       0       0       0       0
 2060661 2060000 2060473 2060406 2060472 2060472       0       0       0       0
 2060662 2060000 2060406 2060473 2060407 2060407       0       0       0       0
 2060663 2060000 2060474 2060407 2060473 2060473       0       0       0       0
 2060664 2060000 2060407 2060474 2060408 2060408       0       0       0       0
 2060665 2060000 2060475 2060408 2060474 2060474       0       0       0       0
 2060666 2060000 2060408 2060475 2060409 2060409       0       0       0       0
 2060667 2060000 2060476 2060409 2060475 2060475       0       0       0       0
 2060668 2060000 2060409 2060476 2060410 2060410       0       0       0       0
 2060669 2060000 2060477 2060410 2060476 2060476       0       0       0       0
 2060670 2060000 2060410 2060477 2060411 2060411       0       0       0       0
 2060671 2060000 2060478 2060411 2060477 2060477       0       0       0       0
 2060672 2060000 2060411 2060478 2060412 2060412       0       0       0       0
 2060673 2060000 2060479 2060412 2060478 2060478       0       0       0       0
 2060674 2060000 2060412 2060479 2060413 2060413       0       0       0       0
 2060675 2060000 2060480 2060413 2060479 2060479       0       0       0       0
 2060676 2060000 2060413 2060480 2060414 2060414       0       0       0       0
 2060677 2060000 2060481 2060414 2060480 2060480       0       0       0       0
 2060678 2060000 2060414 2060481 2060415 2060415       0       0       0       0
 2060679 2060000 2060482 2060415 2060481 2060481       0       0       0       0
 2060680 2060000 2060415 2060482 2060416 2060416       0       0       0       0
 2060681 2060000 2060483 2060416 2060482 2060482       0       0       0       0
 2060682 2060000 2060416 2060483 2060417 2060417       0       0       0       0
 2060683 2060000 2060484 2060417 2060483 2060483       0       0       0       0
 2060684 2060000 2060417 2060484 2060418 2060418       0       0       0       0
 2060685 2060000 2060485 2060418 2060484 2060484       0       0       0       0
 2060686 2060000 2060418 2060485 2060419 2060419       0       0       0       0
 2060687 2060000 2060486 2060419 2060485 2060485       0       0       0       0
 2060688 2060000 2060419 2060486 2060420 2060420       0       0       0       0
 2060689 2060000 2060487 2060420 2060486 2060486       0       0       0       0
 2060690 2060000 2060420 2060487 2060421 2060421       0       0       0       0
 2060691 2060000 2060488 2060421 2060487 2060487       0       0       0       0
 2060692 2060000 2060422 2060489 2060425 2060425       0       0       0       0
 2060693 2060000 2060492 2060425 2060489 2060489       0       0       0       0
 2060698 2060000 2060425 2060492 2060426 2060426       0       0       0       0
 2060699 2060000 2060493 2060426 2060492 2060492       0       0       0       0
 2060700 2060000 2060426 2060493 2060427 2060427       0       0       0       0
 2060701 2060000 2060494 2060427 2060493 2060493       0       0       0       0
 2060702 2060000 2060427 2060494 2060428 2060428       0       0       0       0
 2060703 2060000 2060495 2060428 2060494 2060494       0       0       0       0
 2060704 2060000 2060428 2060495 2060429 2060429       0       0       0       0
 2060705 2060000 2060496 2060429 2060495 2060495       0       0       0       0
 2060706 2060000 2060429 2060496 2060430 2060430       0       0       0       0
 2060707 2060000 2060497 2060430 2060496 2060496       0       0       0       0
 2060708 2060000 2060430 2060497 2060431 2060431       0       0       0       0
 2060709 2060000 2060498 2060431 2060497 2060497       0       0       0       0
 2060710 2060000 2060431 2060498 2060432 2060432       0       0       0       0
 2060711 2060000 2060499 2060432 2060498 2060498       0       0       0       0
 2060712 2060000 2060432 2060499 2060433 2060433       0       0       0       0
 2060713 2060000 2060500 2060433 2060499 2060499       0       0       0       0
 2060714 2060000 2060433 2060500 2060434 2060434       0       0       0       0
 2060715 2060000 2060501 2060434 2060500 2060500       0       0       0       0
 2060716 2060000 2060434 2060501 2060435 2060435       0       0       0       0
 2060717 2060000 2060502 2060435 2060501 2060501       0       0       0       0
 2060718 2060000 2060435 2060502 2060436 2060436       0       0       0       0
 2060719 2060000 2060503 2060436 2060502 2060502       0       0       0       0
 2060720 2060000 2060436 2060503 2060437 2060437       0       0       0       0
 2060721 2060000 2060504 2060437 2060503 2060503       0       0       0       0
 2060722 2060000 2060437 2060504 2060438 2060438       0       0       0       0
 2060723 2060000 2060505 2060438 2060504 2060504       0       0       0       0
 2060724 2060000 2060438 2060505 2060439 2060439       0       0       0       0
 2060725 2060000 2060506 2060439 2060505 2060505       0       0       0       0
 2060726 2060000 2060439 2060506 2060440 2060440       0       0       0       0
 2060727 2060000 2060507 2060440 2060506 2060506       0       0       0       0
 2060728 2060000 2060440 2060507 2060441 2060441       0       0       0       0
 2060729 2060000 2060508 2060441 2060507 2060507       0       0       0       0
 2060730 2060000 2060441 2060508 2060442 2060442       0       0       0       0
 2060731 2060000 2060509 2060442 2060508 2060508       0       0       0       0
 2060732 2060000 2060442 2060509 2060443 2060443       0       0       0       0
 2060733 2060000 2060510 2060443 2060509 2060509       0       0       0       0
 2060734 2060000 2060443 2060510 2060444 2060444       0       0       0       0
 2060735 2060000 2060511 2060444 2060510 2060510       0       0       0       0
 2060736 2060000 2060444 2060511 2060445 2060445       0       0       0       0
 2060737 2060000 2060512 2060445 2060511 2060511       0       0       0       0
 2060738 2060000 2060445 2060512 2060446 2060446       0       0       0       0
 2060739 2060000 2060513 2060446 2060512 2060512       0       0       0       0
 2060740 2060000 2060446 2060513 2060447 2060447       0       0       0       0
 2060741 2060000 2060514 2060447 2060513 2060513       0       0       0       0
 2060742 2060000 2060447 2060514 2060448 2060448       0       0       0       0
 2060743 2060000 2060515 2060448 2060514 2060514       0       0       0       0
 2060744 2060000 2060448 2060515 2060449 2060449       0       0       0       0
 2060745 2060000 2060516 2060449 2060515 2060515       0       0       0       0
 2060746 2060000 2060449 2060516 2060450 2060450       0       0       0       0
 2060747 2060000 2060517 2060450 2060516 2060516       0       0       0       0
 2060748 2060000 2060450 2060517 2060451 2060451       0       0       0       0
 2060749 2060000 2060518 2060451 2060517 2060517       0       0       0       0
 2060750 2060000 2060451 2060518 2060452 2060452       0       0       0       0
 2060751 2060000 2060519 2060452 2060518 2060518       0       0       0       0
 2060752 2060000 2060452 2060519 2060453 2060453       0       0       0       0
 2060753 2060000 2060520 2060453 2060519 2060519       0       0       0       0
 2060754 2060000 2060453 2060520 2060454 2060454       0       0       0       0
 2060755 2060000 2060521 2060454 2060520 2060520       0       0       0       0
 2060756 2060000 2060454 2060521 2060455 2060455       0       0       0       0
 2060757 2060000 2060522 2060455 2060521 2060521       0       0       0       0
 2060758 2060000 2060455 2060522 2060456 2060456       0       0       0       0
 2060759 2060000 2060523 2060456 2060522 2060522       0       0       0       0
 2060760 2060000 2060456 2060523 2060457 2060457       0       0       0       0
 2060761 2060000 2060524 2060457 2060523 2060523       0       0       0       0
 2060762 2060000 2060457 2060524 2060458 2060458       0       0       0       0
 2060763 2060000 2060525 2060458 2060524 2060524       0       0       0       0
 2060764 2060000 2060458 2060525 2060459 2060459       0       0       0       0
 2060765 2060000 2060526 2060459 2060525 2060525       0       0       0       0
 2060766 2060000 2060459 2060526 2060460 2060460       0       0       0       0
 2060767 2060000 2060527 2060460 2060526 2060526       0       0       0       0
 2060768 2060000 2060460 2060527 2060461 2060461       0       0       0       0
 2060769 2060000 2060528 2060461 2060527 2060527       0       0       0       0
 2060770 2060000 2060461 2060528 2060462 2060462       0       0       0       0
 2060771 2060000 2060529 2060462 2060528 2060528       0       0       0       0
 2060772 2060000 2060462 2060529 2060463 2060463       0       0       0       0
 2060773 2060000 2060530 2060463 2060529 2060529       0       0       0       0
 2060774 2060000 2060463 2060530 2060464 2060464       0       0       0       0
 2060775 2060000 2060531 2060464 2060530 2060530       0       0       0       0
 2060776 2060000 2060464 2060531 2060465 2060465       0       0       0       0
 2060777 2060000 2060532 2060465 2060531 2060531       0       0       0       0
 2060778 2060000 2060465 2060532 2060466 2060466       0       0       0       0
 2060779 2060000 2060533 2060466 2060532 2060532       0       0       0       0
 2060780 2060000 2060466 2060533 2060467 2060467       0       0       0       0
 2060781 2060000 2060534 2060467 2060533 2060533       0       0       0       0
 2060782 2060000 2060467 2060534 2060468 2060468       0       0       0       0
 2060783 2060000 2060535 2060468 2060534 2060534       0       0       0       0
 2060784 2060000 2060468 2060535 2060469 2060469       0       0       0       0
 2060785 2060000 2060536 2060469 2060535 2060535       0       0       0       0
 2060786 2060000 2060469 2060536 2060470 2060470       0       0       0       0
 2060787 2060000 2060537 2060470 2060536 2060536       0       0       0       0
 2060788 2060000 2060470 2060537 2060471 2060471       0       0       0       0
 2060789 2060000 2060538 2060471 2060537 2060537       0       0       0       0
 2060790 2060000 2060471 2060538 2060472 2060472       0       0       0       0
 2060791 2060000 2060539 2060472 2060538 2060538       0       0       0       0
 2060792 2060000 2060472 2060539 2060473 2060473       0       0       0       0
 2060793 2060000 2060540 2060473 2060539 2060539       0       0       0       0
 2060794 2060000 2060473 2060540 2060474 2060474       0       0       0       0
 2060795 2060000 2060541 2060474 2060540 2060540       0       0       0       0
 2060796 2060000 2060474 2060541 2060475 2060475       0       0       0       0
 2060797 2060000 2060542 2060475 2060541 2060541       0       0       0       0
 2060798 2060000 2060475 2060542 2060476 2060476       0       0       0       0
 2060799 2060000 2060543 2060476 2060542 2060542       0       0       0       0
 2060800 2060000 2060476 2060543 2060477 2060477       0       0       0       0
 2060801 2060000 2060544 2060477 2060543 2060543       0       0       0       0
 2060802 2060000 2060477 2060544 2060478 2060478       0       0       0       0
 2060803 2060000 2060545 2060478 2060544 2060544       0       0       0       0
 2060804 2060000 2060478 2060545 2060479 2060479       0       0       0       0
 2060805 2060000 2060546 2060479 2060545 2060545       0       0       0       0
 2060806 2060000 2060479 2060546 2060480 2060480       0       0       0       0
 2060807 2060000 2060547 2060480 2060546 2060546       0       0       0       0
 2060808 2060000 2060480 2060547 2060481 2060481       0       0       0       0
 2060809 2060000 2060548 2060481 2060547 2060547       0       0       0       0
 2060810 2060000 2060481 2060548 2060482 2060482       0       0       0       0
 2060811 2060000 2060549 2060482 2060548 2060548       0       0       0       0
 2060812 2060000 2060482 2060549 2060483 2060483       0       0       0       0
 2060813 2060000 2060550 2060483 2060549 2060549       0       0       0       0
 2060814 2060000 2060483 2060550 2060484 2060484       0       0       0       0
 2060815 2060000 2060551 2060484 2060550 2060550       0       0       0       0
 2060816 2060000 2060484 2060551 2060485 2060485       0       0       0       0
 2060817 2060000 2060552 2060485 2060551 2060551       0       0       0       0
 2060818 2060000 2060485 2060552 2060486 2060486       0       0       0       0
 2060819 2060000 2060553 2060486 2060552 2060552       0       0       0       0
 2060820 2060000 2060486 2060553 2060487 2060487       0       0       0       0
 2060821 2060000 2060554 2060487 2060553 2060553       0       0       0       0
 2060822 2060000 2060487 2060554 2060488 2060488       0       0       0       0
 2060823 2060000 2060555 2060488 2060554 2060554       0       0       0       0
 2060824 2060000 2060489 2060556 2060492 2060492       0       0       0       0
 2060825 2060000 2060559 2060492 2060556 2060556       0       0       0       0
 2060830 2060000 2060492 2060559 2060493 2060493       0       0       0       0
 2060831 2060000 2060560 2060493 2060559 2060559       0       0       0       0
 2060832 2060000 2060493 2060560 2060494 2060494       0       0       0       0
 2060833 2060000 2060561 2060494 2060560 2060560       0       0       0       0
 2060834 2060000 2060494 2060561 2060495 2060495       0       0       0       0
 2060835 2060000 2060562 2060495 2060561 2060561       0       0       0       0
 2060836 2060000 2060495 2060562 2060496 2060496       0       0       0       0
 2060837 2060000 2060563 2060496 2060562 2060562       0       0       0       0
 2060838 2060000 2060496 2060563 2060497 2060497       0       0       0       0
 2060839 2060000 2060564 2060497 2060563 2060563       0       0       0       0
 2060840 2060000 2060497 2060564 2060498 2060498       0       0       0       0
 2060841 2060000 2060565 2060498 2060564 2060564       0       0       0       0
 2060842 2060000 2060498 2060565 2060499 2060499       0       0       0       0
 2060843 2060000 2060566 2060499 2060565 2060565       0       0       0       0
 2060844 2060000 2060499 2060566 2060500 2060500       0       0       0       0
 2060845 2060000 2060567 2060500 2060566 2060566       0       0       0       0
 2060846 2060000 2060500 2060567 2060501 2060501       0       0       0       0
 2060847 2060000 2060568 2060501 2060567 2060567       0       0       0       0
 2060848 2060000 2060501 2060568 2060502 2060502       0       0       0       0
 2060849 2060000 2060569 2060502 2060568 2060568       0       0       0       0
 2060850 2060000 2060502 2060569 2060503 2060503       0       0       0       0
 2060851 2060000 2060570 2060503 2060569 2060569       0       0       0       0
 2060852 2060000 2060503 2060570 2060504 2060504       0       0       0       0
 2060853 2060000 2060571 2060504 2060570 2060570       0       0       0       0
 2060854 2060000 2060504 2060571 2060505 2060505       0       0       0       0
 2060855 2060000 2060572 2060505 2060571 2060571       0       0       0       0
 2060856 2060000 2060505 2060572 2060506 2060506       0       0       0       0
 2060857 2060000 2060573 2060506 2060572 2060572       0       0       0       0
 2060858 2060000 2060506 2060573 2060507 2060507       0       0       0       0
 2060859 2060000 2060574 2060507 2060573 2060573       0       0       0       0
 2060860 2060000 2060507 2060574 2060508 2060508       0       0       0       0
 2060861 2060000 2060575 2060508 2060574 2060574       0       0       0       0
 2060862 2060000 2060508 2060575 2060509 2060509       0       0       0       0
 2060863 2060000 2060576 2060509 2060575 2060575       0       0       0       0
 2060864 2060000 2060509 2060576 2060510 2060510       0       0       0       0
 2060865 2060000 2060577 2060510 2060576 2060576       0       0       0       0
 2060866 2060000 2060510 2060577 2060511 2060511       0       0       0       0
 2060867 2060000 2060578 2060511 2060577 2060577       0       0       0       0
 2060868 2060000 2060511 2060578 2060512 2060512       0       0       0       0
 2060869 2060000 2060579 2060512 2060578 2060578       0       0       0       0
 2060870 2060000 2060512 2060579 2060513 2060513       0       0       0       0
 2060871 2060000 2060580 2060513 2060579 2060579       0       0       0       0
 2060872 2060000 2060513 2060580 2060514 2060514       0       0       0       0
 2060873 2060000 2060581 2060514 2060580 2060580       0       0       0       0
 2060874 2060000 2060514 2060581 2060515 2060515       0       0       0       0
 2060875 2060000 2060582 2060515 2060581 2060581       0       0       0       0
 2060876 2060000 2060515 2060582 2060516 2060516       0       0       0       0
 2060877 2060000 2060583 2060516 2060582 2060582       0       0       0       0
 2060878 2060000 2060516 2060583 2060517 2060517       0       0       0       0
 2060879 2060000 2060584 2060517 2060583 2060583       0       0       0       0
 2060880 2060000 2060517 2060584 2060518 2060518       0       0       0       0
 2060881 2060000 2060585 2060518 2060584 2060584       0       0       0       0
 2060882 2060000 2060518 2060585 2060519 2060519       0       0       0       0
 2060883 2060000 2060586 2060519 2060585 2060585       0       0       0       0
 2060884 2060000 2060519 2060586 2060520 2060520       0       0       0       0
 2060885 2060000 2060587 2060520 2060586 2060586       0       0       0       0
 2060886 2060000 2060520 2060587 2060521 2060521       0       0       0       0
 2060887 2060000 2060588 2060521 2060587 2060587       0       0       0       0
 2060888 2060000 2060521 2060588 2060522 2060522       0       0       0       0
 2060889 2060000 2060589 2060522 2060588 2060588       0       0       0       0
 2060890 2060000 2060522 2060589 2060523 2060523       0       0       0       0
 2060891 2060000 2060590 2060523 2060589 2060589       0       0       0       0
 2060892 2060000 2060523 2060590 2060524 2060524       0       0       0       0
 2060893 2060000 2060591 2060524 2060590 2060590       0       0       0       0
 2060894 2060000 2060524 2060591 2060525 2060525       0       0       0       0
 2060895 2060000 2060592 2060525 2060591 2060591       0       0       0       0
 2060896 2060000 2060525 2060592 2060526 2060526       0       0       0       0
 2060897 2060000 2060593 2060526 2060592 2060592       0       0       0       0
 2060898 2060000 2060526 2060593 2060527 2060527       0       0       0       0
 2060899 2060000 2060594 2060527 2060593 2060593       0       0       0       0
 2060900 2060000 2060527 2060594 2060528 2060528       0       0       0       0
 2060901 2060000 2060595 2060528 2060594 2060594       0       0       0       0
 2060902 2060000 2060528 2060595 2060529 2060529       0       0       0       0
 2060903 2060000 2060596 2060529 2060595 2060595       0       0       0       0
 2060904 2060000 2060529 2060596 2060530 2060530       0       0       0       0
 2060905 2060000 2060597 2060530 2060596 2060596       0       0       0       0
 2060906 2060000 2060530 2060597 2060531 2060531       0       0       0       0
 2060907 2060000 2060598 2060531 2060597 2060597       0       0       0       0
 2060908 2060000 2060531 2060598 2060532 2060532       0       0       0       0
 2060909 2060000 2060599 2060532 2060598 2060598       0       0       0       0
 2060910 2060000 2060532 2060599 2060533 2060533       0       0       0       0
 2060911 2060000 2060600 2060533 2060599 2060599       0       0       0       0
 2060912 2060000 2060533 2060600 2060534 2060534       0       0       0       0
 2060913 2060000 2060601 2060534 2060600 2060600       0       0       0       0
 2060914 2060000 2060534 2060601 2060535 2060535       0       0       0       0
 2060915 2060000 2060602 2060535 2060601 2060601       0       0       0       0
 2060916 2060000 2060535 2060602 2060536 2060536       0       0       0       0
 2060917 2060000 2060603 2060536 2060602 2060602       0       0       0       0
 2060918 2060000 2060536 2060603 2060537 2060537       0       0       0       0
 2060919 2060000 2060604 2060537 2060603 2060603       0       0       0       0
 2060920 2060000 2060537 2060604 2060538 2060538       0       0       0       0
 2060921 2060000 2060605 2060538 2060604 2060604       0       0       0       0
 2060922 2060000 2060538 2060605 2060539 2060539       0       0       0       0
 2060923 2060000 2060606 2060539 2060605 2060605       0       0       0       0
 2060924 2060000 2060539 2060606 2060540 2060540       0       0       0       0
 2060925 2060000 2060607 2060540 2060606 2060606       0       0       0       0
 2060926 2060000 2060540 2060607 2060541 2060541       0       0       0       0
 2060927 2060000 2060608 2060541 2060607 2060607       0       0       0       0
 2060928 2060000 2060541 2060608 2060542 2060542       0       0       0       0
 2060929 2060000 2060609 2060542 2060608 2060608       0       0       0       0
 2060930 2060000 2060542 2060609 2060543 2060543       0       0       0       0
 2060931 2060000 2060610 2060543 2060609 2060609       0       0       0       0
 2060932 2060000 2060543 2060610 2060544 2060544       0       0       0       0
 2060933 2060000 2060611 2060544 2060610 2060610       0       0       0       0
 2060934 2060000 2060544 2060611 2060545 2060545       0       0       0       0
 2060935 2060000 2060612 2060545 2060611 2060611       0       0       0       0
 2060936 2060000 2060545 2060612 2060546 2060546       0       0       0       0
 2060937 2060000 2060613 2060546 2060612 2060612       0       0       0       0
 2060938 2060000 2060546 2060613 2060547 2060547       0       0       0       0
 2060939 2060000 2060614 2060547 2060613 2060613       0       0       0       0
 2060940 2060000 2060547 2060614 2060548 2060548       0       0       0       0
 2060941 2060000 2060615 2060548 2060614 2060614       0       0       0       0
 2060942 2060000 2060548 2060615 2060549 2060549       0       0       0       0
 2060943 2060000 2060616 2060549 2060615 2060615       0       0       0       0
 2060944 2060000 2060549 2060616 2060550 2060550       0       0       0       0
 2060945 2060000 2060617 2060550 2060616 2060616       0       0       0       0
 2060946 2060000 2060550 2060617 2060551 2060551       0       0       0       0
 2060947 2060000 2060618 2060551 2060617 2060617       0       0       0       0
 2060948 2060000 2060551 2060618 2060552 2060552       0       0       0       0
 2060949 2060000 2060619 2060552 2060618 2060618       0       0       0       0
 2060950 2060000 2060552 2060619 2060553 2060553       0       0       0       0
 2060951 2060000 2060620 2060553 2060619 2060619       0       0       0       0
 2060952 2060000 2060553 2060620 2060554 2060554       0       0       0       0
 2060953 2060000 2060621 2060554 2060620 2060620       0       0       0       0
 2060954 2060000 2060554 2060621 2060555 2060555       0       0       0       0
 2060955 2060000 2060622 2060555 2060621 2060621       0       0       0       0
 2060956 2060000 2060556 2060623 2060559 2060559       0       0       0       0
 2060957 2060000 2060626 2060559 2060623 2060623       0       0       0       0
 2060962 2060000 2060559 2060626 2060560 2060560       0       0       0       0
 2060963 2060000 2060627 2060560 2060626 2060626       0       0       0       0
 2060964 2060000 2060560 2060627 2060561 2060561       0       0       0       0
 2060965 2060000 2060628 2060561 2060627 2060627       0       0       0       0
 2060966 2060000 2060561 2060628 2060562 2060562       0       0       0       0
 2060967 2060000 2060629 2060562 2060628 2060628       0       0       0       0
 2060968 2060000 2060562 2060629 2060563 2060563       0       0       0       0
 2060969 2060000 2060630 2060563 2060629 2060629       0       0       0       0
 2060970 2060000 2060563 2060630 2060564 2060564       0       0       0       0
 2060971 2060000 2060631 2060564 2060630 2060630       0       0       0       0
 2060972 2060000 2060564 2060631 2060565 2060565       0       0       0       0
 2060973 2060000 2060632 2060565 2060631 2060631       0       0       0       0
 2060974 2060000 2060565 2060632 2060566 2060566       0       0       0       0
 2060975 2060000 2060633 2060566 2060632 2060632       0       0       0       0
 2060976 2060000 2060566 2060633 2060567 2060567       0       0       0       0
 2060977 2060000 2060634 2060567 2060633 2060633       0       0       0       0
 2060978 2060000 2060567 2060634 2060568 2060568       0       0       0       0
 2060979 2060000 2060635 2060568 2060634 2060634       0       0       0       0
 2060980 2060000 2060568 2060635 2060569 2060569       0       0       0       0
 2060981 2060000 2060636 2060569 2060635 2060635       0       0       0       0
 2060982 2060000 2060569 2060636 2060570 2060570       0       0       0       0
 2060983 2060000 2060637 2060570 2060636 2060636       0       0       0       0
 2060984 2060000 2060570 2060637 2060571 2060571       0       0       0       0
 2060985 2060000 2060638 2060571 2060637 2060637       0       0       0       0
 2060986 2060000 2060571 2060638 2060572 2060572       0       0       0       0
 2060987 2060000 2060639 2060572 2060638 2060638       0       0       0       0
 2060988 2060000 2060572 2060639 2060573 2060573       0       0       0       0
 2060989 2060000 2060640 2060573 2060639 2060639       0       0       0       0
 2060990 2060000 2060573 2060640 2060574 2060574       0       0       0       0
 2060991 2060000 2060641 2060574 2060640 2060640       0       0       0       0
 2060992 2060000 2060574 2060641 2060575 2060575       0       0       0       0
 2060993 2060000 2060642 2060575 2060641 2060641       0       0       0       0
 2060994 2060000 2060575 2060642 2060576 2060576       0       0       0       0
 2060995 2060000 2060643 2060576 2060642 2060642       0       0       0       0
 2060996 2060000 2060576 2060643 2060577 2060577       0       0       0       0
 2060997 2060000 2060644 2060577 2060643 2060643       0       0       0       0
 2060998 2060000 2060577 2060644 2060578 2060578       0       0       0       0
 2060999 2060000 2060645 2060578 2060644 2060644       0       0       0       0
 2061000 2060000 2060578 2060645 2060579 2060579       0       0       0       0
 2061001 2060000 2060646 2060579 2060645 2060645       0       0       0       0
 2061002 2060000 2060579 2060646 2060580 2060580       0       0       0       0
 2061003 2060000 2060647 2060580 2060646 2060646       0       0       0       0
 2061004 2060000 2060580 2060647 2060581 2060581       0       0       0       0
 2061005 2060000 2060648 2060581 2060647 2060647       0       0       0       0
 2061006 2060000 2060581 2060648 2060582 2060582       0       0       0       0
 2061007 2060000 2060649 2060582 2060648 2060648       0       0       0       0
 2061008 2060000 2060582 2060649 2060583 2060583       0       0       0       0
 2061009 2060000 2060650 2060583 2060649 2060649       0       0       0       0
 2061010 2060000 2060583 2060650 2060584 2060584       0       0       0       0
 2061011 2060000 2060651 2060584 2060650 2060650       0       0       0       0
 2061012 2060000 2060584 2060651 2060585 2060585       0       0       0       0
 2061013 2060000 2060652 2060585 2060651 2060651       0       0       0       0
 2061014 2060000 2060585 2060652 2060586 2060586       0       0       0       0
 2061015 2060000 2060653 2060586 2060652 2060652       0       0       0       0
 2061016 2060000 2060586 2060653 2060587 2060587       0       0       0       0
 2061017 2060000 2060654 2060587 2060653 2060653       0       0       0       0
 2061018 2060000 2060587 2060654 2060588 2060588       0       0       0       0
 2061019 2060000 2060655 2060588 2060654 2060654       0       0       0       0
 2061020 2060000 2060588 2060655 2060589 2060589       0       0       0       0
 2061021 2060000 2060656 2060589 2060655 2060655       0       0       0       0
 2061022 2060000 2060589 2060656 2060590 2060590       0       0       0       0
 2061023 2060000 2060657 2060590 2060656 2060656       0       0       0       0
 2061024 2060000 2060590 2060657 2060591 2060591       0       0       0       0
 2061025 2060000 2060658 2060591 2060657 2060657       0       0       0       0
 2061026 2060000 2060591 2060658 2060592 2060592       0       0       0       0
 2061027 2060000 2060659 2060592 2060658 2060658       0       0       0       0
 2061028 2060000 2060592 2060659 2060593 2060593       0       0       0       0
 2061029 2060000 2060660 2060593 2060659 2060659       0       0       0       0
 2061030 2060000 2060593 2060660 2060594 2060594       0       0       0       0
 2061031 2060000 2060661 2060594 2060660 2060660       0       0       0       0
 2061032 2060000 2060594 2060661 2060595 2060595       0       0       0       0
 2061033 2060000 2060662 2060595 2060661 2060661       0       0       0       0
 2061034 2060000 2060595 2060662 2060596 2060596       0       0       0       0
 2061035 2060000 2060663 2060596 2060662 2060662       0       0       0       0
 2061036 2060000 2060596 2060663 2060597 2060597       0       0       0       0
 2061037 2060000 2060664 2060597 2060663 2060663       0       0       0       0
 2061038 2060000 2060597 2060664 2060598 2060598       0       0       0       0
 2061039 2060000 2060665 2060598 2060664 2060664       0       0       0       0
 2061040 2060000 2060598 2060665 2060599 2060599       0       0       0       0
 2061041 2060000 2060666 2060599 2060665 2060665       0       0       0       0
 2061042 2060000 2060599 2060666 2060600 2060600       0       0       0       0
 2061043 2060000 2060667 2060600 2060666 2060666       0       0       0       0
 2061044 2060000 2060600 2060667 2060601 2060601       0       0       0       0
 2061045 2060000 2060668 2060601 2060667 2060667       0       0       0       0
 2061046 2060000 2060601 2060668 2060602 2060602       0       0       0       0
 2061047 2060000 2060669 2060602 2060668 2060668       0       0       0       0
 2061048 2060000 2060602 2060669 2060603 2060603       0       0       0       0
 2061049 2060000 2060670 2060603 2060669 2060669       0       0       0       0
 2061050 2060000 2060603 2060670 2060604 2060604       0       0       0       0
 2061051 2060000 2060671 2060604 2060670 2060670       0       0       0       0
 2061052 2060000 2060604 2060671 2060605 2060605       0       0       0       0
 2061053 2060000 2060672 2060605 2060671 2060671       0       0       0       0
 2061054 2060000 2060605 2060672 2060606 2060606       0       0       0       0
 2061055 2060000 2060673 2060606 2060672 2060672       0       0       0       0
 2061056 2060000 2060606 2060673 2060607 2060607       0       0       0       0
 2061057 2060000 2060674 2060607 2060673 2060673       0       0       0       0
 2061058 2060000 2060607 2060674 2060608 2060608       0       0       0       0
 2061059 2060000 2060675 2060608 2060674 2060674       0       0       0       0
 2061060 2060000 2060608 2060675 2060609 2060609       0       0       0       0
 2061061 2060000 2060676 2060609 2060675 2060675       0       0       0       0
 2061062 2060000 2060609 2060676 2060610 2060610       0       0       0       0
 2061063 2060000 2060677 2060610 2060676 2060676       0       0       0       0
 2061064 2060000 2060610 2060677 2060611 2060611       0       0       0       0
 2061065 2060000 2060678 2060611 2060677 2060677       0       0       0       0
 2061066 2060000 2060611 2060678 2060612 2060612       0       0       0       0
 2061067 2060000 2060679 2060612 2060678 2060678       0       0       0       0
 2061068 2060000 2060612 2060679 2060613 2060613       0       0       0       0
 2061069 2060000 2060680 2060613 2060679 2060679       0       0       0       0
 2061070 2060000 2060613 2060680 2060614 2060614       0       0       0       0
 2061071 2060000 2060681 2060614 2060680 2060680       0       0       0       0
 2061072 2060000 2060614 2060681 2060615 2060615       0       0       0       0
 2061073 2060000 2060682 2060615 2060681 2060681       0       0       0       0
 2061074 2060000 2060615 2060682 2060616 2060616       0       0       0       0
 2061075 2060000 2060683 2060616 2060682 2060682       0       0       0       0
 2061076 2060000 2060616 2060683 2060617 2060617       0       0       0       0
 2061077 2060000 2060684 2060617 2060683 2060683       0       0       0       0
 2061078 2060000 2060617 2060684 2060618 2060618       0       0       0       0
 2061079 2060000 2060685 2060618 2060684 2060684       0       0       0       0
 2061080 2060000 2060618 2060685 2060619 2060619       0       0       0       0
 2061081 2060000 2060686 2060619 2060685 2060685       0       0       0       0
 2061082 2060000 2060619 2060686 2060620 2060620       0       0       0       0
 2061083 2060000 2060687 2060620 2060686 2060686       0       0       0       0
 2061084 2060000 2060620 2060687 2060621 2060621       0       0       0       0
 2061085 2060000 2060688 2060621 2060687 2060687       0       0       0       0
 2061086 2060000 2060621 2060688 2060622 2060622       0       0       0       0
 2061087 2060000 2060689 2060622 2060688 2060688       0       0       0       0
$
$
$
*ELEMENT_BEAM
$
$#   eid     pid      n1      n2      n3     rt1     rr1     rt2     rr2   local
 2065016 2065001 2065000 2065017 2065007       0       0       0       0       2
 2066016 2066001 2067515 2067516 2067500       0       0       0       0       2
 2067113 2067001 2067115 2067114 2067050       0       0       0       0       2
 2067114 2067002 2067117 2067116 2067000       0       0       0       0       2
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin ELEMENT_SEATBELT ("Single Line" Type) Block $$$$$$$$$$$$$$
$
$
$
*ELEMENT_SEATBELT
$$$$$$$$$$$$$$$ Begin ELEMENT_SEATBELT ("Single Line" Type) Block $$$$$$$$$$$$$$
$#   eid     pid     n 1     n 2   sbrid            slen     n 3     n 4   
 2065000 2065000 2065002 2065004       0             0.0       0       0
 2065002 2065000 2065004 2065006       0             0.0       0       0
 2065004 2065000 2065006 2065008       0             0.0       0       0
 2065006 2065000 2065008 2065010       0             0.0       0       0
 2065008 2065000 2065010 2065012       0             0.0       0       0
 2065010 2065000 2065012 2065014       0             0.0       0       0
 2065012 2065000 2065014 2065016       0             0.0       0       0
 2065014 2065000 2060555 2065002       0             0.0       0       0
 2065015 2065000 2065016 2065000       0             0.0       0       0
 2066000 2066000 2066008 2066000       0             0.0       0       0
 2066002 2066000 2066002 2066003       0             0.0       0       0
 2066003 2066000 2066003 2066004       0             0.0       0       0
 2066004 2066000 2066004 2066005       0             0.0       0       0
 2066005 2066000 2066005 2066006       0             0.0       0       0
 2066006 2066000 2066006 2066007       0             0.0       0       0
 2066007 2066000 2066007 2066008       0             0.0       0       0
 2066008 2066000 2066010 2066011       0             0.0       0       0
 2066009 2066000 2066011 2066012       0             0.0       0       0
 2066010 2066000 2066012 2066013       0             0.0       0       0
 2066011 2066000 2066013 2066014       0             0.0       0       0
 2066012 2066000 2066014 2066015       0             0.0       0       0
 2066014 2066000 2066009 2066010       0             0.0       0       0
 2066015 2066000 2066000 2066009       0             0.0       0       0
$ The following is the Seat_Belt Element that is "just outside" the Retractor.
$ This is referred to in the *Element_Seatbelt_Retractor card.
$ This Element is the "starting point" of the Retractor Definition.
$ Therefore, it is Very Important.
 2067000 2067000 2067554 2067001       0             0.0       0       0
 2067001 2067000 2067018 2067019       0             0.0       0       0
 2067003 2067000 2067020 2067021       0             0.0       0       0
 2067004 2067000 2067021 2067022       0             0.0       0       0
 2067005 2067000 2067022 2067023       0             0.0       0       0
 2067006 2067000 2067023 2067024       0             0.0       0       0
 2067007 2067000 2067024 2067025       0             0.0       0       0
 2067008 2067000 2067025 2067026       0             0.0       0       0
 2067009 2067000 2067026 2067027       0             0.0       0       0
 2067010 2067000 2067027 2067028       0             0.0       0       0
 2067011 2067000 2067028 2067029       0             0.0       0       0
 2067012 2067000 2067029 2067030       0             0.0       0       0
 2067013 2067000 2067030 2067031       0             0.0       0       0
 2067014 2067000 2067017 2067018       0             0.0       0       0
 2067015 2067000 2067016 2067017       0             0.0       0       0
 2067016 2067000 2067015 2067016       0             0.0       0       0
 2067017 2067000 2067002 2067557       0             0.0       0       0
 2067018 2067000 2067003 2067561       0             0.0       0       0
 2067019 2067000 2067004 2067564       0             0.0       0       0
 2067020 2067000 2067005 2067567       0             0.0       0       0
 2067021 2067000 2067006 2067570       0             0.0       0       0
 2067022 2067000 2067007 2067008       0             0.0       0       0
 2067023 2067000 2067008 2067009       0             0.0       0       0
 2067024 2067000 2067009 2067010       0             0.0       0       0
 2067025 2067000 2067010 2067011       0             0.0       0       0
 2067026 2067000 2067011 2067012       0             0.0       0       0
 2067027 2067000 2067012 2067013       0             0.0       0       0
 2067028 2067000 2067013 2067014       0             0.0       0       0
 2067029 2067000 2067014 2067015       0             0.0       0       0
 2067030 2067000 2067031 2067032       0             0.0       0       0
 2067031 2067000 2067032 2067033       0             0.0       0       0
 2067032 2067000 2067033 2067034       0             0.0       0       0
 2067033 2067000 2067046 2067000       0             0.0       0       0
 2067034 2067000 2067034 2067035       0             0.0       0       0
 2067035 2067000 2067035 2067036       0             0.0       0       0
 2067036 2067000 2067036 2067037       0             0.0       0       0
 2067037 2067000 2067037 2067038       0             0.0       0       0
 2067038 2067000 2067038 2067039       0             0.0       0       0
 2067039 2067000 2067039 2067040       0             0.0       0       0
 2067040 2067000 2067040 2067041       0             0.0       0       0
 2067041 2067000 2067041 2067042       0             0.0       0       0
 2067042 2067000 2067042 2067043       0             0.0       0       0
 2067043 2067000 2067043 2067044       0             0.0       0       0
 2067044 2067000 2067044 2067045       0             0.0       0       0
 2067045 2067000 2067045 2067046       0             0.0       0       0
 2067046 2067000 2067048 2067049       0             0.0       0       0
 2067047 2067000 2067049 2067050       0             0.0       0       0
 2067048 2067000 2067050 2067051       0             0.0       0       0
 2067049 2067000 2067051 2067052       0             0.0       0       0
 2067050 2067000 2067052 2067053       0             0.0       0       0
 2067052 2067000 2067047 2067048       0             0.0       0       0
 2067053 2067000 2067000 2067047       0             0.0       0       0
$ The following are the Seatbelt Elements INSIDE the Retractor.
$ The Element "just outside" is given here once again for understanding.
$ It is defined above and is "commented out" with a "$" sign here.
$2067000 2067000 2067554 2067001
$ Check *Element_Seatbelt (14.22 in the LS971 Manual)
$ The last entry (2067111) refers to the Retractor-ID, which is defined later.
$ Please observe how the "nodes" are connected to each other.
$ "N2" of one Element becomes the "N1" of the very next element.
$ "N2"(2067001) of Element 2067000 above becomes "N1" of Element 2067102 below.
$ It goes on like that.
$ All Elements Inside the Retractor are of "Zero Length".
$ Therefore, Nodes 2067103 to 2067113 below are "coincident".
$ You can check that in the *NODE block.
$ Ele-ID     PID      N1      N2   SBRID
$                                Retr-ID
 2067102 2067000 2067001 2067103 2067111             0.0       0       0
 2067103 2067000 2067103 2067104 2067111             0.0       0       0
 2067104 2067000 2067104 2067105 2067111             0.0       0       0
 2067105 2067000 2067105 2067106 2067111             0.0       0       0
 2067106 2067000 2067106 2067107 2067111             0.0       0       0
 2067107 2067000 2067107 2067108 2067111             0.0       0       0
 2067108 2067000 2067108 2067109 2067111             0.0       0       0
 2067109 2067000 2067109 2067110 2067111             0.0       0       0
 2067110 2067000 2067110 2067111 2067111             0.0       0       0
 2067111 2067000 2067111 2067112 2067111             0.0       0       0
 2067112 2067000 2067112 2067113 2067111             0.0       0       0
$ Note that there are many more Elements Inside the Retractor.
$ They are defined a little down the deck and continue from the last one above.
 2067500 2067003 2066017 2067501       0             0.0       0       0
 2067501 2067003 2067501 2067502       0             0.0       0       0
 2067502 2067003 2067502 2067503       0             0.0       0       0
 2067503 2067003 2067503 2067504       0             0.0       0       0
 2067504 2067003 2067504 2067505       0             0.0       0       0
 2067505 2067003 2067505 2067506       0             0.0       0       0
 2067506 2067003 2067506 2067507       0             0.0       0       0
 2067514 2067000 2067053 2067519       0             0.0       0       0
 2067518 2067000 2067519 2067522       0             0.0       0       0
 2067519 2067000 2067522 2067521       0             0.0       0       0
 2067520 2067000 2067521 2067523       0             0.0       0       0
 2067521 2067000 2067523 2060212       0             0.0       0       0
 2067522 2066000 2066002 2067545       0             0.0       0       0
 2067523 2066000 2067545 2067543       0             0.0       0       0
 2067524 2066000 2067543 2067544       0             0.0       0       0
 2067525 2066000 2067544 2067539       0             0.0       0       0
 2067526 2066000 2067539 2067542       0             0.0       0       0
 2067527 2066000 2067542 2067540       0             0.0       0       0
 2067528 2066000 2067540 2067541       0             0.0       0       0
 2067529 2066000 2067541 2060142       0             0.0       0       0
 2067530 2066000 2066015 2067548       0             0.0       0       0
 2067532 2066000 2067548 2067551       0             0.0       0       0
 2067533 2066000 2067551 2067546       0             0.0       0       0
 2067534 2066000 2067546 2067550       0             0.0       0       0
 2067535 2066000 2067550 2067547       0             0.0       0       0
 2067536 2066000 2067547 2067549       0             0.0       0       0
 2067537 2066000 2067549 2060489       0             0.0       0       0
 2067538 2067000 2067020 2067528       0             0.0       0       0
 2067539 2067000 2067528 2067527       0             0.0       0       0
 2067540 2067000 2067527 2067529       0             0.0       0       0
 2067541 2067000 2067529 2067526       0             0.0       0       0
 2067542 2067000 2067526 2067531       0             0.0       0       0
 2067543 2067000 2067531 2067530       0             0.0       0       0
 2067544 2067000 2067530 2067532       0             0.0       0       0
 2067545 2067000 2067532 2067524       0             0.0       0       0
 2067546 2067000 2067524 2067535       0             0.0       0       0
 2067547 2067000 2067535 2067534       0             0.0       0       0
 2067548 2067000 2067534 2067536       0             0.0       0       0
 2067549 2067000 2067536 2067525       0             0.0       0       0
 2067550 2067000 2067525 2067537       0             0.0       0       0
 2067551 2067000 2067537 2067533       0             0.0       0       0
 2067552 2067000 2067533 2067538       0             0.0       0       0
 2067553 2067000 2067538 2067019       0             0.0       0       0
 2067554 2067000 2067554 2067553       0             0.0       0       0
 2067555 2067000 2067553 2067555       0             0.0       0       0
 2067556 2067000 2067555 2067002       0             0.0       0       0
 2067557 2067000 2067557 2067556       0             0.0       0       0
 2067558 2067000 2067556 2067558       0             0.0       0       0
 2067559 2067000 2067558 2067003       0             0.0       0       0
 2067560 2067000 2067561 2067560       0             0.0       0       0
 2067561 2067000 2067560 2067562       0             0.0       0       0
 2067562 2067000 2067562 2067004       0             0.0       0       0
 2067563 2067000 2067564 2067563       0             0.0       0       0
 2067564 2067000 2067563 2067565       0             0.0       0       0
 2067565 2067000 2067565 2067005       0             0.0       0       0
 2067566 2067000 2067567 2067566       0             0.0       0       0
 2067567 2067000 2067566 2067568       0             0.0       0       0
 2067568 2067000 2067568 2067006       0             0.0       0       0
 2067569 2067000 2067570 2067569       0             0.0       0       0
 2067570 2067000 2067569 2067571       0             0.0       0       0
 2067571 2067000 2067571 2067007       0             0.0       0       0
$ The following are the additional Seatbelt Elements INSIDE the Retractor.
$ These are continuously linked to Element ID 2067112 (defined above).
$ Element 2067112 has been repeated here with "$" sign for easier understanding.
$2067112 2067000 2067112 2067113 2067111
$ Please observe how the "nodes" are connected to each other.
$ "N2" of one Element becomes the "N1" of the very next element.
$ "N2"(2067572) of Element 2067572 becomes "N1" of Element 2067573.
$ It goes on like that.
$ All Elements Inside the Retractor are of "Zero Length".
$ Therefore, Nodes 2067113 to 2067800 below are "coincident".
$ You can check that in the *NODE block.
$ Ele-ID     PID      N1      N2   SBRID
$                                Retr-ID
 2067572 2067000 2067113 2067572 2067111             0.0       0       0
 2067573 2067000 2067572 2067573 2067111             0.0       0       0
 2067574 2067000 2067573 2067574 2067111             0.0       0       0
 2067575 2067000 2067574 2067575 2067111             0.0       0       0
 2067576 2067000 2067575 2067576 2067111             0.0       0       0
 2067577 2067000 2067576 2067577 2067111             0.0       0       0
 2067578 2067000 2067577 2067578 2067111             0.0       0       0
 2067579 2067000 2067578 2067579 2067111             0.0       0       0
 2067580 2067000 2067579 2067580 2067111             0.0       0       0
 2067581 2067000 2067580 2067581 2067111             0.0       0       0
 2067582 2067000 2067581 2067582 2067111             0.0       0       0
 2067583 2067000 2067582 2067583 2067111             0.0       0       0
 2067584 2067000 2067583 2067584 2067111             0.0       0       0
 2067585 2067000 2067584 2067585 2067111             0.0       0       0
 2067586 2067000 2067585 2067586 2067111             0.0       0       0
 2067587 2067000 2067586 2067587 2067111             0.0       0       0
 2067588 2067000 2067587 2067588 2067111             0.0       0       0
 2067589 2067000 2067588 2067589 2067111             0.0       0       0
 2067590 2067000 2067589 2067590 2067111             0.0       0       0
 2067591 2067000 2067590 2067591 2067111             0.0       0       0
 2067592 2067000 2067591 2067592 2067111             0.0       0       0
 2067593 2067000 2067592 2067593 2067111             0.0       0       0
 2067594 2067000 2067593 2067594 2067111             0.0       0       0
 2067595 2067000 2067594 2067595 2067111             0.0       0       0
 2067596 2067000 2067595 2067596 2067111             0.0       0       0
 2067597 2067000 2067596 2067597 2067111             0.0       0       0
 2067598 2067000 2067597 2067598 2067111             0.0       0       0
 2067599 2067000 2067598 2067599 2067111             0.0       0       0
 2067600 2067000 2067599 2067600 2067111             0.0       0       0
 2067601 2067000 2067600 2067601 2067111             0.0       0       0
 2067602 2067000 2067601 2067602 2067111             0.0       0       0
 2067603 2067000 2067602 2067603 2067111             0.0       0       0
 2067604 2067000 2067603 2067604 2067111             0.0       0       0
 2067605 2067000 2067604 2067605 2067111             0.0       0       0
 2067606 2067000 2067605 2067606 2067111             0.0       0       0
 2067607 2067000 2067606 2067607 2067111             0.0       0       0
 2067608 2067000 2067607 2067608 2067111             0.0       0       0
 2067609 2067000 2067608 2067609 2067111             0.0       0       0
 2067610 2067000 2067609 2067610 2067111             0.0       0       0
 2067611 2067000 2067610 2067611 2067111             0.0       0       0
 2067612 2067000 2067611 2067612 2067111             0.0       0       0
 2067613 2067000 2067612 2067613 2067111             0.0       0       0
 2067614 2067000 2067613 2067614 2067111             0.0       0       0
 2067615 2067000 2067614 2067615 2067111             0.0       0       0
 2067616 2067000 2067615 2067616 2067111             0.0       0       0
 2067617 2067000 2067616 2067617 2067111             0.0       0       0
 2067618 2067000 2067617 2067618 2067111             0.0       0       0
 2067619 2067000 2067618 2067619 2067111             0.0       0       0
 2067620 2067000 2067619 2067620 2067111             0.0       0       0
 2067621 2067000 2067620 2067621 2067111             0.0       0       0
 2067622 2067000 2067621 2067622 2067111             0.0       0       0
 2067623 2067000 2067622 2067623 2067111             0.0       0       0
 2067624 2067000 2067623 2067624 2067111             0.0       0       0
 2067625 2067000 2067624 2067625 2067111             0.0       0       0
 2067626 2067000 2067625 2067626 2067111             0.0       0       0
 2067627 2067000 2067626 2067627 2067111             0.0       0       0
 2067628 2067000 2067627 2067628 2067111             0.0       0       0
 2067629 2067000 2067628 2067629 2067111             0.0       0       0
 2067630 2067000 2067629 2067630 2067111             0.0       0       0
 2067631 2067000 2067630 2067631 2067111             0.0       0       0
 2067632 2067000 2067631 2067632 2067111             0.0       0       0
 2067633 2067000 2067632 2067633 2067111             0.0       0       0
 2067634 2067000 2067633 2067634 2067111             0.0       0       0
 2067635 2067000 2067634 2067635 2067111             0.0       0       0
 2067636 2067000 2067635 2067636 2067111             0.0       0       0
 2067637 2067000 2067636 2067637 2067111             0.0       0       0
 2067638 2067000 2067637 2067638 2067111             0.0       0       0
 2067639 2067000 2067638 2067639 2067111             0.0       0       0
 2067640 2067000 2067639 2067640 2067111             0.0       0       0
 2067641 2067000 2067640 2067641 2067111             0.0       0       0
 2067642 2067000 2067641 2067642 2067111             0.0       0       0
 2067643 2067000 2067642 2067643 2067111             0.0       0       0
 2067644 2067000 2067643 2067644 2067111             0.0       0       0
 2067645 2067000 2067644 2067645 2067111             0.0       0       0
 2067646 2067000 2067645 2067646 2067111             0.0       0       0
 2067647 2067000 2067646 2067647 2067111             0.0       0       0
 2067648 2067000 2067647 2067648 2067111             0.0       0       0
 2067649 2067000 2067648 2067649 2067111             0.0       0       0
 2067650 2067000 2067649 2067650 2067111             0.0       0       0
 2067651 2067000 2067650 2067651 2067111             0.0       0       0
 2067652 2067000 2067651 2067652 2067111             0.0       0       0
 2067653 2067000 2067652 2067653 2067111             0.0       0       0
 2067654 2067000 2067653 2067654 2067111             0.0       0       0
 2067655 2067000 2067654 2067655 2067111             0.0       0       0
 2067656 2067000 2067655 2067656 2067111             0.0       0       0
 2067657 2067000 2067656 2067657 2067111             0.0       0       0
 2067658 2067000 2067657 2067658 2067111             0.0       0       0
 2067659 2067000 2067658 2067659 2067111             0.0       0       0
 2067660 2067000 2067659 2067660 2067111             0.0       0       0
 2067661 2067000 2067660 2067661 2067111             0.0       0       0
 2067662 2067000 2067661 2067662 2067111             0.0       0       0
 2067663 2067000 2067662 2067663 2067111             0.0       0       0
 2067664 2067000 2067663 2067664 2067111             0.0       0       0
 2067665 2067000 2067664 2067665 2067111             0.0       0       0
 2067666 2067000 2067665 2067666 2067111             0.0       0       0
 2067667 2067000 2067666 2067667 2067111             0.0       0       0
 2067668 2067000 2067667 2067668 2067111             0.0       0       0
 2067669 2067000 2067668 2067669 2067111             0.0       0       0
 2067670 2067000 2067669 2067670 2067111             0.0       0       0
 2067671 2067000 2067670 2067671 2067111             0.0       0       0
 2067672 2067000 2067671 2067672 2067111             0.0       0       0
 2067673 2067000 2067672 2067673 2067111             0.0       0       0
 2067674 2067000 2067673 2067674 2067111             0.0       0       0
 2067675 2067000 2067674 2067675 2067111             0.0       0       0
 2067676 2067000 2067675 2067676 2067111             0.0       0       0
 2067677 2067000 2067676 2067677 2067111             0.0       0       0
 2067678 2067000 2067677 2067678 2067111             0.0       0       0
 2067679 2067000 2067678 2067679 2067111             0.0       0       0
 2067680 2067000 2067679 2067680 2067111             0.0       0       0
 2067681 2067000 2067680 2067681 2067111             0.0       0       0
 2067682 2067000 2067681 2067682 2067111             0.0       0       0
 2067683 2067000 2067682 2067683 2067111             0.0       0       0
 2067684 2067000 2067683 2067684 2067111             0.0       0       0
 2067685 2067000 2067684 2067685 2067111             0.0       0       0
 2067686 2067000 2067685 2067686 2067111             0.0       0       0
 2067687 2067000 2067686 2067687 2067111             0.0       0       0
 2067688 2067000 2067687 2067688 2067111             0.0       0       0
 2067689 2067000 2067688 2067689 2067111             0.0       0       0
 2067690 2067000 2067689 2067690 2067111             0.0       0       0
 2067691 2067000 2067690 2067691 2067111             0.0       0       0
 2067692 2067000 2067691 2067692 2067111             0.0       0       0
 2067693 2067000 2067692 2067693 2067111             0.0       0       0
 2067694 2067000 2067693 2067694 2067111             0.0       0       0
 2067695 2067000 2067694 2067695 2067111             0.0       0       0
 2067696 2067000 2067695 2067696 2067111             0.0       0       0
 2067697 2067000 2067696 2067697 2067111             0.0       0       0
 2067698 2067000 2067697 2067698 2067111             0.0       0       0
 2067699 2067000 2067698 2067699 2067111             0.0       0       0
 2067700 2067000 2067699 2067700 2067111             0.0       0       0
 2067701 2067000 2067700 2067701 2067111             0.0       0       0
 2067702 2067000 2067701 2067702 2067111             0.0       0       0
 2067703 2067000 2067702 2067703 2067111             0.0       0       0
 2067704 2067000 2067703 2067704 2067111             0.0       0       0
 2067705 2067000 2067704 2067705 2067111             0.0       0       0
 2067706 2067000 2067705 2067706 2067111             0.0       0       0
 2067707 2067000 2067706 2067707 2067111             0.0       0       0
 2067708 2067000 2067707 2067708 2067111             0.0       0       0
 2067709 2067000 2067708 2067709 2067111             0.0       0       0
 2067710 2067000 2067709 2067710 2067111             0.0       0       0
 2067711 2067000 2067710 2067711 2067111             0.0       0       0
 2067712 2067000 2067711 2067712 2067111             0.0       0       0
 2067713 2067000 2067712 2067713 2067111             0.0       0       0
 2067714 2067000 2067713 2067714 2067111             0.0       0       0
 2067715 2067000 2067714 2067715 2067111             0.0       0       0
 2067716 2067000 2067715 2067716 2067111             0.0       0       0
 2067717 2067000 2067716 2067717 2067111             0.0       0       0
 2067718 2067000 2067717 2067718 2067111             0.0       0       0
 2067719 2067000 2067718 2067719 2067111             0.0       0       0
 2067720 2067000 2067719 2067720 2067111             0.0       0       0
 2067721 2067000 2067720 2067721 2067111             0.0       0       0
 2067722 2067000 2067721 2067722 2067111             0.0       0       0
 2067723 2067000 2067722 2067723 2067111             0.0       0       0
 2067724 2067000 2067723 2067724 2067111             0.0       0       0
 2067725 2067000 2067724 2067725 2067111             0.0       0       0
 2067726 2067000 2067725 2067726 2067111             0.0       0       0
 2067727 2067000 2067726 2067727 2067111             0.0       0       0
 2067728 2067000 2067727 2067728 2067111             0.0       0       0
 2067729 2067000 2067728 2067729 2067111             0.0       0       0
 2067730 2067000 2067729 2067730 2067111             0.0       0       0
 2067731 2067000 2067730 2067731 2067111             0.0       0       0
 2067732 2067000 2067731 2067732 2067111             0.0       0       0
 2067733 2067000 2067732 2067733 2067111             0.0       0       0
 2067734 2067000 2067733 2067734 2067111             0.0       0       0
 2067735 2067000 2067734 2067735 2067111             0.0       0       0
 2067736 2067000 2067735 2067736 2067111             0.0       0       0
 2067737 2067000 2067736 2067737 2067111             0.0       0       0
 2067738 2067000 2067737 2067738 2067111             0.0       0       0
 2067739 2067000 2067738 2067739 2067111             0.0       0       0
 2067740 2067000 2067739 2067740 2067111             0.0       0       0
 2067741 2067000 2067740 2067741 2067111             0.0       0       0
 2067742 2067000 2067741 2067742 2067111             0.0       0       0
 2067743 2067000 2067742 2067743 2067111             0.0       0       0
 2067744 2067000 2067743 2067744 2067111             0.0       0       0
 2067745 2067000 2067744 2067745 2067111             0.0       0       0
 2067746 2067000 2067745 2067746 2067111             0.0       0       0
 2067747 2067000 2067746 2067747 2067111             0.0       0       0
 2067748 2067000 2067747 2067748 2067111             0.0       0       0
 2067749 2067000 2067748 2067749 2067111             0.0       0       0
 2067750 2067000 2067749 2067750 2067111             0.0       0       0
 2067751 2067000 2067750 2067751 2067111             0.0       0       0
 2067752 2067000 2067751 2067752 2067111             0.0       0       0
 2067753 2067000 2067752 2067753 2067111             0.0       0       0
 2067754 2067000 2067753 2067754 2067111             0.0       0       0
 2067755 2067000 2067754 2067755 2067111             0.0       0       0
 2067756 2067000 2067755 2067756 2067111             0.0       0       0
 2067757 2067000 2067756 2067757 2067111             0.0       0       0
 2067758 2067000 2067757 2067758 2067111             0.0       0       0
 2067759 2067000 2067758 2067759 2067111             0.0       0       0
 2067760 2067000 2067759 2067760 2067111             0.0       0       0
 2067761 2067000 2067760 2067761 2067111             0.0       0       0
 2067762 2067000 2067761 2067762 2067111             0.0       0       0
 2067763 2067000 2067762 2067763 2067111             0.0       0       0
 2067764 2067000 2067763 2067764 2067111             0.0       0       0
 2067765 2067000 2067764 2067765 2067111             0.0       0       0
 2067766 2067000 2067765 2067766 2067111             0.0       0       0
 2067767 2067000 2067766 2067767 2067111             0.0       0       0
 2067768 2067000 2067767 2067768 2067111             0.0       0       0
 2067769 2067000 2067768 2067769 2067111             0.0       0       0
 2067770 2067000 2067769 2067770 2067111             0.0       0       0
 2067771 2067000 2067770 2067771 2067111             0.0       0       0
 2067772 2067000 2067771 2067772 2067111             0.0       0       0
 2067773 2067000 2067772 2067773 2067111             0.0       0       0
 2067774 2067000 2067773 2067774 2067111             0.0       0       0
 2067775 2067000 2067774 2067775 2067111             0.0       0       0
 2067776 2067000 2067775 2067776 2067111             0.0       0       0
 2067777 2067000 2067776 2067777 2067111             0.0       0       0
 2067778 2067000 2067777 2067778 2067111             0.0       0       0
 2067779 2067000 2067778 2067779 2067111             0.0       0       0
 2067780 2067000 2067779 2067780 2067111             0.0       0       0
 2067781 2067000 2067780 2067781 2067111             0.0       0       0
 2067782 2067000 2067781 2067782 2067111             0.0       0       0
 2067783 2067000 2067782 2067783 2067111             0.0       0       0
 2067784 2067000 2067783 2067784 2067111             0.0       0       0
 2067785 2067000 2067784 2067785 2067111             0.0       0       0
 2067786 2067000 2067785 2067786 2067111             0.0       0       0
 2067787 2067000 2067786 2067787 2067111             0.0       0       0
 2067788 2067000 2067787 2067788 2067111             0.0       0       0
 2067789 2067000 2067788 2067789 2067111             0.0       0       0
 2067790 2067000 2067789 2067790 2067111             0.0       0       0
 2067791 2067000 2067790 2067791 2067111             0.0       0       0
 2067792 2067000 2067791 2067792 2067111             0.0       0       0
 2067793 2067000 2067792 2067793 2067111             0.0       0       0
 2067794 2067000 2067793 2067794 2067111             0.0       0       0
 2067795 2067000 2067794 2067795 2067111             0.0       0       0
 2067796 2067000 2067795 2067796 2067111             0.0       0       0
 2067797 2067000 2067796 2067797 2067111             0.0       0       0
 2067798 2067000 2067797 2067798 2067111             0.0       0       0
 2067799 2067000 2067798 2067799 2067111             0.0       0       0
 2067800 2067000 2067799 2067800 2067111             0.0       0       0
$
$
$
$$$$$$$$$$$$$$$ End ELEMENT_SEATBELT ("Single Line" Type) Block $$$$$$$$$$$$$$$$
$
$
$
$************** Begin ELEMENT_SEATBELT_PRETENSIONER Block **********************
$
$
$
*ELEMENT_SEATBELT_PRETENSIONER
$
$ See 14.26 of the LS971 Manual.
$
$ sbprid = Seat Belt Pretensioner ID
$ sbprty = Seat Belt Pretensioner Type
$        = 5 for pyro pretensioner with limiting load for the pretensioner
$ sbsid  = Seat Belt Sensor ID
$
$ sbrid  = Seat Belt Retractor ID (the one being Pulled by the pretensioner)
$ time   = Time between Sensor Firing and Pretensioner acting
$ ptlcid = Load Curve for Pretensioner
$ lmtfrc = Limiting Force for Retractor (beyond which it will not pull)
$
$                     (sensor)
$#  sbprid    sbprty    sbsid1    sbsid2    sbsid3    sbsid4      
   2067000         5   2067001         0         0         0
$
$ See Sensor ID-2067001 under *ELEMENT_SEATBELT_SENSOR for Pretensioner_Fire Time.
$
$#   sbrid      time    ptlcid    lmtfrc      
   2067111       0.0   2067002&pmaxf    
$
$
$
$************** End ELEMENT_SEATBELT_PRETENSIONER Block ************************
$
$
$
$
$
$
*ELEMENT_SEATBELT_RETRACTOR
$
$ See 14.31 of the LS971 Manual.
$
$ sbrid   = Seat_Belt Retractor ID
$ sbrnid  = Seat_Belt Retractor Node (it is not on the Belt)
$ sbid    = First Belt Element ID that is just outside the retractor
$ sid1    = First Sensor ID (Referred to in *Element_Seatbelt_Sensor)
$
$ tdel    = Time Delay After Sensor Triggers
$ pull    = Amount of Pull-Out between time delay ending and retractor locking.
$           (It is a Length value).
$ llcid   = Load Curve for Loading (Force vs. Pull-Out)
$ ulcid   = Load Curve for Unloading (Force vs. Pull-Out)
$ lfed    = Fed Length
$
$                               (sensor)
$#   sbrid    sbrnid      sbid      sid1      sid2      sid3      sid4    
   2067111   2067117   2067000   2067000         0         0         0
$
$#    tdel      pull     llcid     ulcid      lfed    
       0.0       0.0   2067000   2067001      10.0
$
$
$ See Sensor ID-2067000 under *ELEMENT_SEATBELT_SENSOR for Retractor_Fire Time.
$
$
$ NOTE that in the above:
$
$ The "first element" just outside the Retractor is 2067000 (sbid).
$ To explain, this element, I am writing it out again below, commenting it out.
$
$    eid     pid      n1      n2
$2067000 2067000 2067554 2067001
$
$ Now it should be noted that Node-2067001 of the Element above is "coincident"
$ with Node-2067117 (sbrnid) of the Retractor. This is only at "Time-0".
$ To explain, I am writing out the two nodes again below, commenting it out.
$
$2067001    3327.0000000    -715.0000000     214.0000000
$2067117    3327.0000000    -715.0000000     214.0000000
$
$
$ It should be further noted that Node-2067117 is a part of a Beam Element.
$ I am writing out the Beam Element again below (commented out).
$
$    eid     pid      n1      n2      n3     rt1     rr1     rt2     rr2   local
$2067114 2067002 2067117 2067116 2067000
$
$ You can pull up Part-2067002 in LSPP to see what it is and where N-2067117 is.
$
$
$ I am also writing out Part-2067002 at this stage once again below.
$
$*PART
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$  2067002   2067001   2010000
$
$ It can be verified that Beam_Part-2067002 is defined as "Rigid" by checking
$ out "Mat_ID-2010000". I am writing it out below.
$
$*MAT_RIGID
$      mid        ro         e        pr         n    couple         m     alias
$  2010000 7.8200E-6 203.00000  0.300000     0.000     0.000     0.000
$    0.000         0         0
$    0.000     0.000     0.000     0.000     0.000     0.000
$
$ Because Part-2067002 is defined as "Rigid", it can be "merged" to the Vehicle.
$ That is done in the following way (actual card elsewhere in the deck).
$
$
$*CONSTRAINED_RIGID_BODIES
$  3000099   2067002
$
$ In the above, Part-3000099 is a Part of the Vehicle/Sled, which is also Rigid.
$ Part-3000099 will show up if all three decks are read into LSPP.
$
$
$ This is the "process" by which the Retractor is attached to the Vehicle.
$
$ It is also the way the Retractor functions. Node-2067001 is coincident with
$ Node-2067117 only at Time-0 or "as modeled". As the Retractor "pays out"
$ material from within it, different nodes become coincident with Node-2067001
$ at any given point of time.
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin ELEMENT_SEATBELT_SENSOR Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
*ELEMENT_SEATBELT_SENSOR
$
$ See 14.37 in the LS971 Manual.
$
$ sbsid   = Seat Belt Sensor ID
$ sbstyp  = Seat Belt Sensor Type  -->  3=Time
$
$
$ The Following Sensor is used for Retractor Lockup.
$
$#   sbsid    sbstyp     sbsfl     
   2067000         3         0
$
$#    time    
       1.0
$
$
$
$ The Following Sensor is used for Pretensioner Firing.
$
$    sbsid    sbstyp
   2067001         3         0
$
$13.000000
&beltrg   
$
$
$
$$$$$$$$$$$$$$$ End ELEMENT_SEATBELT_SENSOR Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin ELEMENT_SEATBELT_SLIPRING Block **************************
$
$
$
$ SLIPRING description at D-Ring and Buckle.
$
$ In Dyna, a "SLIPRING" is used to define something like a "ring" through
$ which the Seatbelt slips through and "slides", as it it is pulled. Examples
$ of Sliprings in Automobiles are "D-Rings" and "Buckle Rings".
$
$ The "method" of defining them in Dyna would seem complicated at first. It
$ does take a little bit of time to understand it and for it to settle down
$ in the mind.
$
$ The actual lines are further down below but just to start the description,
$ I am repeating the lines here, commenting them out.
$
$ The D-Ring definition would be something like the following:
$
$*ELEMENT_SEATBELT_SLIPRING
$
$
$ Therefore, at the D-Ring, the following is the definition:
$
$   sbsrid     sbid1     sbid2        fc    sbrnid     ltime       fcs
$  2067112   2067053   2067033  0.150000   2067115      120.
$
$
$ See 14.41 in the LS971 Manual.
$
$ sbsrid = Slip Ring ID
$ sbid1  = Seatbelt 1 ID (see explanation below)
$ sbid2  = Seatbelt 2 ID (see explanation below)
$ fc     = Coulomb Dynamic Friction Coefficient at the Ring
$ sbrnid = Slip Ring Node (not on the Seatbelt)
$
$ Please read the other entries in the manual.
$
$ Note: At any Slipring, SBID1 and SBID2 are the two Seatbelt "Element Numbers"
$       on either side of the the Slipring (as modeled, at time zero).
$       Therefore, one has to look them up in LSPP, and then enter the IDs here.
$
$
$ Let me now explain in detail how the Seatbelt has been modeled at the D-Ring.
$
$ Read this deck into LSPP and zoom into the D-Ring area.
$ Now do the following in order:
$
$ a) Identify the last two Seatbelt Elments at the D-Ring.
$    Verify that they have IDs 2067053 and 2067033 respectively.
$
$ b) Identify the two nodes at the ends of each of these Belt Elements.
$    Confirm that Ele-2067053 is made up of Nodes 2067047 and 2067000.
$    Confirm that Ele-2067033 is made up of Nodes 2067046 and 2067000.
$    They meet at common Node-2067000, at the corner of the D-Ring.
$
$    For better understanding, I am giving the two Element definitions below:
$
$*ELEMENT_SEATBELT
$     eid     pid      n1      n2   sbrid
$ 2067033 2067000 2067046 2067000
$ 2067053 2067000 2067000 2067047
$
$ c) Observe that Node-2067115 (SBRNID) belongs to Beam Part 2067001.
$    Also note that Beam Part 2067001 is defined as RIGID.
$
$ d) Now observe that Node-2067115 and Node-2067000 are COINCIDENT.
$    This is VERY IMPORTANT because if they are not, the Slipring will not work.
$    Here, Node 2067000, is the "common node" between the two belt segments.
$
$    For better understanding, I am giving these two Nodes below:
$
$*NODE
$2067000    3319.0000000    -640.0000000    1144.0000000
$2067115    3319.0000000    -640.0000000    1144.0000000
$
$
$ e) It is through the above that Dyna understands the D-Ring and that the Belt
$    should slip through it from "one side to the other".
$    The "two Belt Segments" at the D-Ring have been defined and Dyna finds out
$    from the Element definitions what the "common node" is.
$    The "SBRNID" or the "Seat Belt Ring Node ID" has also been defined, which
$    of course has to be "coincident" with the two belt-segment common node.
$
$ f) Here it is necessary to point out that Beam Part 2067001 (to which SBRNID
$    is connected) is attached to the Body of the Vehicle or Sled. This is done
$    through the "Rigid Body Merge" of Parts 2067001 and 3000086.
$    Part 3000086 happens to be a part of the Vehicle/Sled and is Rigid.
$
$    The method of attachment of the two is shown below once again:
$
$*CONSTRAINED_RIGID_BODIES
$
$  3000086   2067001
$
$    Part-3000086 will show up as a vehicle part, if all three decks are read
$    into LSPP.
$
$ g) You have to note that "common node" 2067000 is coincident with node 2067115
$    only as modeled (time=0). As soon as the simulation begins and the belt
$    starts getting pulled in one direction or the other at the D-ring, the belt
$    starts slipping across and at each given point of time a different node on
$    the belt becomes coincident with SBRNID 2067115. That is why SBRNID had to
$    be defined; it is "fixed to the beam" that is attached to the body of the
$    vehicle and serves as the D-ring slip point.
$
$
$
$ Therefore, at the D-Ring, the following is the definition:
$
*ELEMENT_SEATBELT_SLIPRING
$
$#  sbsrid     sbid1     sbid2        fc    sbrnid     ltime       fcs      onid
   2067112   2067053   2067033      0.15   2067115     120.0       0.0         0
$
$
$
$
$ Similarly, the following is the definition of the Slipring at the Buckle.
$ Please go through it by following the above steps and verifying everything.
$
$
   2067113   2066000   2066015      0.15   2066017     120.0       0.0         0
$
$
$
$************** End ELEMENT_SEATBELT_SLIPRING Block ****************************
$
$
$
$
$
$
$
*NODE
$#   nid               x               y               z      tc      rc  
 2060000        3077.399       -152.6099        556.7459       0       0
 2060003        3074.525       -157.5114        567.1746       0       0
 2060004        3072.076       -162.6595        577.5323       0       0
 2060005        3069.627       -167.8075        587.8903       0       0
 2060006        3067.178       -172.9556        598.2483       0       0
 2060007        3064.729       -178.1037        608.6061       0       0
 2060008        3062.281       -183.2519        618.9639       0       0
 2060009        3059.833       -188.3999        629.3217       0       0
 2060010        3057.384        -193.548        639.6797       0       0
 2060011        3054.935       -198.6961        650.0374       0       0
 2060012        3052.486       -203.8442        660.3954       0       0
 2060013        3050.037       -208.9923        670.7533       0       0
 2060014        3047.588       -214.1404        681.1112       0       0
 2060015        3045.495       -219.4249        691.3425       0       0
 2060016        3043.401       -224.7095        701.5742       0       0
 2060017        3041.311       -230.0183        711.8341       0       0
 2060018        3038.931       -234.6733        722.3036       0       0
 2060019        3036.671       -239.9764        732.4813       0       0
 2060020        3034.412       -245.2796        742.6589       0       0
 2060021        3032.152       -250.5827        752.8368       0       0
 2060022        3030.251        -255.708         762.847       0       0
 2060023        3028.911       -261.8224         772.886       0       0
 2060024        3027.571       -267.9369         782.925       0       0
 2060025         3026.23       -274.0513         792.964       0       0
 2060026        3024.938       -280.2332        803.1451       0       0
 2060027        3023.647       -286.4151        813.3263       0       0
 2060028        3023.538         -292.47        822.7367       0       0
 2060029        3025.095       -299.8298        831.7416       0       0
 2060030        3027.313        -306.922        839.7323       0       0
 2060031        3029.643       -314.7498        847.9526       0       0
 2060032        3032.126       -322.9958        856.6111       0       0
 2060033         3034.61       -331.2419        865.2694       0       0
 2060034        3037.685       -338.8765        873.8501       0       0
 2060035        3040.761        -346.511        882.4308       0       0
 2060036        3044.008        -354.069        891.1315       0       0
 2060037        3047.254        -361.627        899.8325       0       0
 2060038        3050.501       -369.1849        908.5334       0       0
 2060039        3053.748       -376.7429        917.2343       0       0
 2060040        3058.651       -383.2876        925.6929       0       0
 2060041        3062.543       -390.9215        931.5112       0       0
 2060042        3069.402       -398.8086        937.3881       0       0
 2060043        3076.261       -406.6958        943.2645       0       0
 2060044        3083.884        -413.572        948.8969       0       0
 2060045        3091.441       -420.3883        954.4801       0       0
 2060046        3098.574       -427.8677        960.2162       0       0
 2060047        3105.707       -435.3469        965.9504       0       0
 2060048         3112.84       -442.8265        971.6918       0       0
 2060049        3119.973       -450.3055         977.424       0       0
 2060050        3127.106        -457.785        983.1595       0       0
 2060051        3134.239       -465.2642        988.8953       0       0
 2060052        3141.372       -472.7435        994.6317       0       0
 2060053        3148.505       -480.2231        1000.367       0       0
 2060054        3155.638       -487.7018        1006.102       0       0
 2060055        3162.771       -495.1815        1011.839       0       0
 2060056        3169.904       -502.6607        1017.575       0       0
 2060057        3177.037       -510.1398         1023.31       0       0
 2060058         3184.17       -517.6191        1029.047       0       0
 2060059        3191.304       -525.0986        1034.782       0       0
 2060060        3198.437       -532.5778        1040.518       0       0
 2060061        3205.571       -540.0573        1046.255       0       0
 2060062        3212.703       -547.5358         1051.99       0       0
 2060063        3219.836       -555.0162        1057.726       0       0
 2060064         3226.97       -562.4951        1063.461       0       0
 2060065        3234.103       -569.9743        1069.198       0       0
 2060066        3241.233       -577.4539        1074.933       0       0
 2060067        3248.368       -584.9329        1080.669       0       0
 2060068        3255.501       -592.4119        1086.405       0       0
 2060069        3262.634       -599.8917        1092.141       0       0
 2060070        3269.768       -607.3707        1097.876       0       0
 2060071        3083.045       -143.8155        562.3511       0       0
 2060074        3080.391        -148.775        572.7485       0       0
 2060075        3078.015       -153.9425        583.0957       0       0
 2060076         3075.64       -159.1101        593.4434       0       0
 2060077        3073.264       -164.2776        603.7906       0       0
 2060078        3070.889        -169.445        614.1381       0       0
 2060079        3068.513       -174.6125        624.4857       0       0
 2060080        3066.137       -179.7801         634.833       0       0
 2060081        3063.762       -184.9476        645.1804       0       0
 2060082        3061.386       -190.1151         655.528       0       0
 2060083        3059.011       -195.2826        665.8755       0       0
 2060084        3056.636       -200.4501        676.2227       0       0
 2060085         3054.26       -205.6176        686.5703       0       0
 2060086        3052.271       -211.1451        696.8596       0       0
 2060087        3050.281       -216.6726        707.1493       0       0
 2060088        3048.292       -222.2001        717.4388       0       0
 2060089        3045.787        -227.294         727.839       0       0
 2060090        3043.282       -232.3879        738.2391       0       0
 2060091        3040.946       -237.5317        748.3746       0       0
 2060092        3038.609       -242.6755        758.5105       0       0
 2060093        3036.273       -247.8193         768.646       0       0
 2060094        3034.019       -253.0349        779.1014       0       0
 2060095        3032.599       -258.8416        789.2017       0       0
 2060096        3031.024       -265.2073        799.0903       0       0
 2060097        3029.789       -271.4117        809.3368       0       0
 2060098        3028.631       -277.6231        819.2522       0       0
 2060099        3027.472       -283.8344        829.1676       0       0
 2060100        3027.741       -290.5163        838.3077       0       0
 2060101        3030.178        -298.194        846.9871       0       0
 2060102        3032.527       -306.1225        855.3093       0       0
 2060103        3035.025       -314.1373        863.8888       0       0
 2060104        3037.524       -322.1522         872.468       0       0
 2060105        3040.022        -330.167        881.0474       0       0
 2060106        3043.257       -337.6964        889.7286       0       0
 2060107        3046.491       -345.2257          898.41       0       0
 2060108        3049.725       -352.7551        907.0911       0       0
 2060109        3052.959       -360.2845        915.7722       0       0
 2060110        3056.194       -367.8138        924.4535       0       0
 2060111        3059.428       -375.3432        933.1346       0       0
 2060112        3066.186       -383.0515        938.9722       0       0
 2060113        3072.943       -390.7597        944.8096       0       0
 2060114        3079.701       -398.4679        950.6469       0       0
 2060115         3087.96        -404.626        955.8488       0       0
 2060116        3093.823       -412.6459        962.2096       0       0
 2060117         3099.56        -420.082        968.4348       0       0
 2060118        3106.786       -427.5272        974.1182       0       0
 2060119        3114.011       -434.9729         979.806       0       0
 2060120        3121.236       -442.4183        985.4917       0       0
 2060121        3128.461       -449.8637         991.178       0       0
 2060122        3135.687       -457.3091         996.864       0       0
 2060123        3142.913       -464.7542         1002.55       0       0
 2060124        3150.138       -472.2001        1008.236       0       0
 2060125        3157.364       -479.6454        1013.922       0       0
 2060126        3164.589       -487.0911        1019.607       0       0
 2060127        3171.815       -494.5359        1025.294       0       0
 2060128        3179.041       -501.9818         1030.98       0       0
 2060129        3186.267       -509.4274        1036.666       0       0
 2060130        3193.492       -516.8729        1042.351       0       0
 2060131        3200.717       -524.3183        1048.038       0       0
 2060132        3207.942       -531.7634        1053.724       0       0
 2060133        3215.168        -539.209         1059.41       0       0
 2060134        3222.393       -546.6539        1065.095       0       0
 2060135        3229.619       -554.1004        1070.782       0       0
 2060136        3236.844       -561.5451        1076.467       0       0
 2060137        3244.072       -568.9908        1082.154       0       0
 2060138        3251.295       -576.4363        1087.839       0       0
 2060139        3258.522       -583.8819        1093.525       0       0
 2060140        3265.747       -591.3273        1099.211       0       0
 2060141        3272.972       -598.7725        1104.897       0       0
 2060142        3088.821       -135.3634         567.925       0       0
 2060145        3086.982       -140.9686        578.1621       0       0
 2060146        3084.745       -146.2401        588.4845       0       0
 2060147        3082.509       -151.5114        598.8069       0       0
 2060148        3080.273       -156.7829        609.1295       0       0
 2060149        3078.036       -162.0544        619.4518       0       0
 2060150          3075.8       -167.3258        629.7742       0       0
 2060151        3073.564       -172.5973        640.0968       0       0
 2060152        3071.326       -177.8687        650.4191       0       0
 2060153         3069.09       -183.1401        660.7417       0       0
 2060154        3066.854       -188.4115         671.064       0       0
 2060155        3064.618        -193.683        681.3864       0       0
 2060156        3062.381       -198.9545        691.7089       0       0
 2060157        3060.144        -204.226        702.0317       0       0
 2060158        3057.909       -209.4973         712.354       0       0
 2060159        3055.672       -214.7689        722.6764       0       0
 2060160        3052.927       -219.5996        733.0912       0       0
 2060161        3050.181       -224.4304         743.506       0       0
 2060162        3047.436       -229.2611        753.9208       0       0
 2060163        3044.852       -234.5021        764.1946       0       0
 2060164        3042.269       -239.7431        774.4685       0       0
 2060165        3039.686       -244.9841        784.7423       0       0
 2060166        3037.103       -250.2251        795.0162       0       0
 2060167        3035.497         -256.59         805.066       0       0
 2060168        3034.159       -262.6102        815.1555       0       0
 2060169        3032.822       -268.6303         825.245       0       0
 2060170        3032.528       -275.3966        835.0856       0       0
 2060171        3032.708       -282.5834        844.5458       0       0
 2060172        3032.888       -289.7701        854.0062       0       0
 2060173         3035.31       -297.7159        862.4967       0       0
 2060174        3037.732       -305.6617        870.9873       0       0
 2060175        3040.154       -313.6075        879.4778       0       0
 2060176        3043.039       -321.2816        887.9741       0       0
 2060177        3046.058       -328.8214        896.5234       0       0
 2060178        3049.076       -336.3612        905.0729       0       0
 2060179        3052.095       -343.9009        913.6223       0       0
 2060180        3055.114       -351.4407        922.1716       0       0
 2060181        3058.132       -358.9805        930.7211       0       0
 2060182        3064.028       -366.2349        938.7142       0       0
 2060183        3069.873        -374.113         945.744       0       0
 2060184        3076.572       -381.8567        951.6283       0       0
 2060185        3083.271       -389.6005        957.5127       0       0
 2060186        3090.791       -396.0735        963.3967       0       0
 2060187        3096.585       -404.1291        969.7993       0       0
 2060188          3103.8       -411.5632        975.4691       0       0
 2060189        3111.017        -418.998        981.1438       0       0
 2060190        3118.233       -426.4324         986.817       0       0
 2060191         3125.45       -433.8671        992.4899       0       0
 2060192        3132.665       -441.3013        998.1628       0       0
 2060193        3139.881       -448.7359        1003.836       0       0
 2060194        3147.097       -456.1699        1009.509       0       0
 2060195        3154.315       -463.6049        1015.182       0       0
 2060196        3161.531       -471.0393        1020.855       0       0
 2060197        3168.746       -478.4735        1026.528       0       0
 2060198        3175.963       -485.9083        1032.201       0       0
 2060199        3183.179       -493.3428        1037.873       0       0
 2060200        3190.395       -500.7775        1043.547       0       0
 2060201        3197.611       -508.2118         1049.22       0       0
 2060202        3204.827        -515.646        1054.892       0       0
 2060203        3212.044       -523.0806        1060.565       0       0
 2060204        3219.261       -530.5151        1066.239       0       0
 2060205        3226.477       -537.9496        1071.912       0       0
 2060206        3233.693       -545.3842        1077.585       0       0
 2060207        3240.909       -552.8188        1083.257       0       0
 2060208        3248.127       -560.2532        1088.931       0       0
 2060209        3255.344       -567.6876        1094.604       0       0
 2060210        3262.558        -575.122        1100.277       0       0
 2060211        3269.774       -582.5563         1105.95       0       0
 2060212         3276.99        -589.991        1111.622       0       0
 2060213        3094.716       -127.2225        573.5449       0       0
 2060216        3092.644       -132.6721        583.8732       0       0
 2060217        3090.463       -138.0028        594.1978       0       0
 2060218        3088.281       -143.3336        604.5222       0       0
 2060219          3086.1       -148.6645        614.8468       0       0
 2060220        3083.918       -153.9954        625.1711       0       0
 2060221        3081.736       -159.3261        635.4958       0       0
 2060222        3079.555        -164.657        645.8198       0       0
 2060223        3077.373       -169.9878        656.1448       0       0
 2060224        3075.191       -175.3186        666.4692       0       0
 2060225         3073.01       -180.6494        676.7937       0       0
 2060226        3070.828       -185.9803        687.1184       0       0
 2060227        3068.646        -191.311        697.4426       0       0
 2060228        3066.465       -196.6419        707.7672       0       0
 2060229        3064.284       -201.9727        718.0918       0       0
 2060230        3062.086       -207.2613        728.3793       0       0
 2060231        3059.393       -212.1527        738.8003       0       0
 2060232        3056.701       -217.0441        749.2212       0       0
 2060233        3054.008       -221.9354        759.6422       0       0
 2060234        3051.316       -226.8268        770.0632       0       0
 2060235        3048.482       -232.0204        780.3947       0       0
 2060236        3045.647       -237.2141        790.7261       0       0
 2060237        3042.813       -242.4078        801.0573       0       0
 2060238        3039.979       -247.6014        811.3887       0       0
 2060239        3038.616       -253.1676        821.3894       0       0
 2060240        3037.762       -259.5157        831.3406       0       0
 2060241        3037.864       -266.9366        841.0052       0       0
 2060242        3037.966       -274.3575        850.6698       0       0
 2060243        3038.068       -281.7785        860.3345       0       0
 2060244         3038.17       -289.1994        869.9991       0       0
 2060245        3040.314       -296.5853        878.4086       0       0
 2060246        3043.295       -304.2118        886.8682       0       0
 2060247        3046.277       -311.8383        895.3278       0       0
 2060248        3049.258       -319.4648         903.787       0       0
 2060249         3052.24       -327.0913        912.2466       0       0
 2060250        3055.221       -334.7178        920.7062       0       0
 2060251        3058.202       -342.3443        929.1656       0       0
 2060252        3062.073       -349.9402         936.397       0       0
 2060253        3068.254       -357.7684        943.7788       0       0
 2060254        3074.435       -365.5966        951.1608       0       0
 2060255        3080.617       -373.4248        958.5425       0       0
 2060256         3087.14       -381.0693        964.5673       0       0
 2060257        3093.751       -387.7351        971.2417       0       0
 2060258        3100.958       -395.1722        976.9042       0       0
 2060259        3108.161        -402.609        982.5594       0       0
 2060260        3115.365       -410.0462        988.2178       0       0
 2060261        3122.568       -417.4832        993.8761       0       0
 2060262        3129.771       -424.9204        999.5338       0       0
 2060263        3136.975       -432.3575        1005.193       0       0
 2060264        3144.178       -439.7948        1010.851       0       0
 2060265        3151.381       -447.2321         1016.51       0       0
 2060266        3158.583       -454.6691        1022.168       0       0
 2060267        3165.787       -462.1057        1027.827       0       0
 2060268        3172.989       -469.5433        1033.485       0       0
 2060269        3180.193       -476.9803        1039.143       0       0
 2060270        3187.396       -484.4177        1044.802       0       0
 2060271          3194.6       -491.8546        1050.459       0       0
 2060272        3201.802       -499.2921        1056.119       0       0
 2060273        3209.006       -506.7294        1061.777       0       0
 2060274        3216.209       -514.1661        1067.435       0       0
 2060275        3223.412       -521.6033        1073.094       0       0
 2060276        3230.616       -529.0407        1078.752       0       0
 2060277        3237.819       -536.4777        1084.411       0       0
 2060278        3245.022       -543.9146        1090.069       0       0
 2060279        3252.226       -551.3525        1095.727       0       0
 2060280        3259.428       -558.7894        1101.386       0       0
 2060281        3266.632       -566.2264        1107.045       0       0
 2060282        3273.835       -573.6631        1112.701       0       0
 2060283        3281.038       -581.1005         1118.36       0       0
 2060284         3099.88       -118.8128        579.0901       0       0
 2060287        3097.847        -124.465        589.3652       0       0
 2060288        3095.678       -129.8633        599.6722       0       0
 2060289        3093.509       -135.2616        609.9788       0       0
 2060290        3091.341         -140.66        620.2853       0       0
 2060291        3089.172       -146.0583        630.5922       0       0
 2060292        3087.003       -151.4566        640.8986       0       0
 2060293        3084.834       -156.8549        651.2056       0       0
 2060294        3082.666       -162.2533        661.5123       0       0
 2060295        3080.497       -167.6516        671.8188       0       0
 2060296        3078.329       -173.0501        682.1255       0       0
 2060297         3076.16       -178.4484        692.4323       0       0
 2060298        3073.991       -183.8467        702.7388       0       0
 2060299        3071.823       -189.2451        713.0458       0       0
 2060300        3069.653       -194.6434        723.3522       0       0
 2060301        3067.466        -199.949        733.5541       0       0
 2060302        3064.785       -204.9088        743.9602       0       0
 2060303        3062.105       -209.8686        754.3662       0       0
 2060304        3059.424       -214.8284        764.7723       0       0
 2060305        3056.743       -219.7882        775.1785       0       0
 2060306        3054.063        -224.748        785.5845       0       0
 2060307        3051.382       -229.7078        795.9906       0       0
 2060308        3048.701       -234.6676        806.3967       0       0
 2060309         3046.02       -239.6274        816.8029       0       0
 2060310         3043.34       -244.5872        827.2089       0       0
 2060311        3043.038       -250.7851        837.4502       0       0
 2060312         3043.26       -258.2051        847.3368       0       0
 2060313        3043.482       -265.6252        857.2233       0       0
 2060314        3043.526       -273.1298        866.5725       0       0
 2060315        3043.571       -280.6344        875.9219       0       0
 2060316        3043.615        -288.139        885.2711       0       0
 2060317        3045.656        -295.744          893.83       0       0
 2060318        3048.786       -303.2468        902.2292       0       0
 2060319        3051.917       -310.7497        910.6285       0       0
 2060320        3055.048       -318.2525        919.0282       0       0
 2060321        3058.179       -325.7554        927.4275       0       0
 2060322        3061.658       -333.4563        935.2789       0       0
 2060323        3067.471       -341.2824        942.5369       0       0
 2060324        3073.284       -349.1084        949.7949       0       0
 2060325        3079.097       -356.9344         957.053       0       0
 2060326         3084.91       -364.7605         964.311       0       0
 2060327        3090.723       -372.5865         971.569       0       0
 2060328        3098.215       -379.0118        978.0103       0       0
 2060329        3105.402       -386.4449        983.6649       0       0
 2060330        3112.591       -393.8776        989.3184       0       0
 2060331        3119.779       -401.3105        994.9731       0       0
 2060332        3126.966       -408.7433        1000.626       0       0
 2060333        3134.155       -416.1763        1006.281       0       0
 2060334        3141.342       -423.6089        1011.935       0       0
 2060335        3148.531       -431.0418        1017.589       0       0
 2060336        3155.719       -438.4748        1023.243       0       0
 2060337        3162.907       -445.9077        1028.898       0       0
 2060338        3170.094       -453.3403        1034.551       0       0
 2060339        3177.283       -460.7733        1040.206       0       0
 2060340         3184.47       -468.2057         1045.86       0       0
 2060341        3191.659        -475.639        1051.514       0       0
 2060342        3198.847       -483.0717        1057.168       0       0
 2060343        3206.035       -490.5045        1062.822       0       0
 2060344        3213.223       -497.9377        1068.476       0       0
 2060345        3220.411       -505.3704         1074.13       0       0
 2060346        3227.599       -512.8031        1079.785       0       0
 2060347        3234.787        -520.236        1085.439       0       0
 2060348        3241.975       -527.6686        1091.093       0       0
 2060349        3249.164       -535.1016        1096.746       0       0
 2060350        3256.353       -542.5344        1102.401       0       0
 2060351        3263.539       -549.9674        1108.055       0       0
 2060352        3270.728          -557.4        1113.708       0       0
 2060353        3277.915       -564.8326        1119.362       0       0
 2060354        3285.104       -572.2656        1125.016       0       0
 2060355        3037.183       -142.7292        531.4008       0       0
 2060358        3029.952       -146.3959        540.3497       0       0
 2060359        3023.023       -151.1947        548.8031       0       0
 2060360        3016.093       -155.9934        557.2563       0       0
 2060361         3008.91       -161.1234        566.4574       0       0
 2060362        3002.014       -167.6262        577.1711       0       0
 2060363        2995.118        -174.129        587.8849       0       0
 2060364        2989.575        -185.567        595.0742       0       0
 2060365        2985.813       -197.0121        600.0966       0       0
 2060366        2982.051       -208.4573        605.1189       0       0
 2060367        2980.297       -220.5256        606.4711       0       0
 2060368        2978.791       -232.4209        607.5903       0       0
 2060369        2977.286       -244.3162        608.7095       0       0
 2060370        2975.781       -256.2114        609.8286       0       0
 2060371        2974.275       -268.1067        610.9479       0       0
 2060372         2972.77        -280.002         612.067       0       0
 2060373        2971.264       -291.8972        613.1862       0       0
 2060374        2969.759       -303.7925        614.3053       0       0
 2060375        2968.254       -315.6877        615.4246       0       0
 2060376        2967.241       -326.5017        615.8861       0       0
 2060377         2966.87       -338.3012        616.0674       0       0
 2060378        2967.764       -349.5601         615.623       0       0
 2060379        2969.133       -361.4408        614.5708       0       0
 2060380        2970.502       -373.3215        613.5183       0       0
 2060381        2971.871       -385.2022        612.4659       0       0
 2060382         2973.24       -397.0829        611.4137       0       0
 2060383        2974.609       -408.9636        610.3612       0       0
 2060384        2975.978       -420.8443         609.309       0       0
 2060385        2977.346        -432.725        608.2566       0       0
 2060386        2978.715       -444.6057        607.2041       0       0
 2060387        2980.084       -456.4864        606.1519       0       0
 2060388        2983.275       -467.3686        601.3577       0       0
 2060389        2986.466       -478.2508        596.5634       0       0
 2060390        2991.205        -490.985        590.7332       0       0
 2060391         2997.11       -498.7673         578.575       0       0
 2060392        3004.054       -505.9342        568.7814       0       0
 2060393        3011.068        -511.652        559.1301       0       0
 2060394        3017.884       -516.3505        550.5331       0       0
 2060395          3024.7       -521.0491        541.9363       0       0
 2060396        3031.516       -525.7476        533.3392       0       0
 2060397        3038.332       -530.4462        524.7424       0       0
 2060398        3045.147       -535.1447        516.1454       0       0
 2060399        3051.964       -539.8433        507.5486       0       0
 2060400         3058.78       -544.5418        498.9515       0       0
 2060401        3065.595       -549.2404        490.3547       0       0
 2060402        3072.411       -553.9389        481.7577       0       0
 2060403        3079.227       -558.6375        473.1608       0       0
 2060404        3086.043       -563.3361        464.5638       0       0
 2060405        3092.859       -568.0346        455.9669       0       0
 2060406        3099.675       -572.7332        447.3699       0       0
 2060407        3106.491       -577.4317         438.773       0       0
 2060408        3113.307       -582.1302        430.1761       0       0
 2060409        3120.123       -586.8288        421.5792       0       0
 2060410        3126.939       -591.5273        412.9822       0       0
 2060411        3133.755       -596.2259        404.3853       0       0
 2060412        3140.571       -600.9244        395.7884       0       0
 2060413        3147.387        -605.623        387.1915       0       0
 2060414        3154.203       -610.3215        378.5945       0       0
 2060415        3161.019       -615.0201        369.9976       0       0
 2060416        3167.834       -619.7186        361.4006       0       0
 2060417         3174.65       -624.4172        352.8037       0       0
 2060418        3181.466       -629.1157        344.2068       0       0
 2060419        3188.282       -633.8143        335.6099       0       0
 2060420        3195.098       -638.5128        327.0129       0       0
 2060421        3201.914       -643.2114         318.416       0       0
 2060422        3046.728       -145.2819        537.6656       0       0
 2060425        3039.677       -149.8326        546.1617       0       0
 2060426        3032.807        -154.926        554.4642       0       0
 2060427        3025.937       -160.0194        562.7666       0       0
 2060428        3018.911       -165.6847        571.2505       0       0
 2060429        3011.918       -172.6522        580.2272       0       0
 2060430         3005.13       -179.6686        588.2715       0       0
 2060431        2999.863        -191.885        593.1885       0       0
 2060432        2996.042       -202.5795        597.6143       0       0
 2060433        2992.222        -213.274        602.0398       0       0
 2060434        2989.734       -224.6224        605.0853       0       0
 2060435        2987.245       -235.9709        608.1307       0       0
 2060436        2984.757       -247.3193        611.1763       0       0
 2060437        2982.269       -258.6678        614.2216       0       0
 2060438        2979.781       -270.0162        617.2671       0       0
 2060439        2977.293       -281.3646        620.3125       0       0
 2060440         2975.72       -292.3457        622.8046       0       0
 2060441        2973.939       -303.6991        624.9606       0       0
 2060442        2972.273       -314.9587        626.9128       0       0
 2060443        2971.709       -326.4478        627.2446       0       0
 2060444        2971.641       -338.3328        627.3198       0       0
 2060445        2971.768       -350.0844        627.1665       0       0
 2060446        2973.521       -361.2915        625.5789       0       0
 2060447        2974.908       -372.5985        623.5894       0       0
 2060448        2976.295       -383.9056        621.5997       0       0
 2060449        2978.596       -395.2899        618.5034       0       0
 2060450        2980.897       -406.6743         615.407       0       0
 2060451        2983.198       -418.0587        612.3104       0       0
 2060452        2985.499        -429.443        609.2141       0       0
 2060453        2987.799       -440.8274        606.1178       0       0
 2060454          2990.1       -452.2117        603.0214       0       0
 2060455        2993.934       -463.6948         598.907       0       0
 2060456        2997.768       -475.1779        594.7925       0       0
 2060457        3001.602        -486.661        590.6782       0       0
 2060458        3007.699       -494.0682         582.152       0       0
 2060459        3014.272       -501.2524        572.9895       0       0
 2060460        3021.019       -507.1766        564.1388       0       0
 2060461        3027.816       -511.9828        555.5972       0       0
 2060462        3034.613       -516.7891        547.0555       0       0
 2060463         3041.41       -521.5953        538.5138       0       0
 2060464        3048.207       -526.4016        529.9722       0       0
 2060465        3055.004       -531.2078        521.4307       0       0
 2060466        3061.801        -536.014         512.889       0       0
 2060467        3068.598       -540.8203        504.3474       0       0
 2060468        3075.395       -545.6265        495.8057       0       0
 2060469        3082.192       -550.4327         487.264       0       0
 2060470        3088.989        -555.239        478.7225       0       0
 2060471        3095.786       -560.0452        470.1808       0       0
 2060472        3102.583       -564.8514        461.6391       0       0
 2060473         3109.38       -569.6577        453.0975       0       0
 2060474        3116.177       -574.4639        444.5559       0       0
 2060475        3122.974       -579.2701        436.0143       0       0
 2060476        3129.771       -584.0764        427.4727       0       0
 2060477        3136.568       -588.8826         418.931       0       0
 2060478        3143.365       -593.6889        410.3894       0       0
 2060479        3150.162       -598.4951        401.8477       0       0
 2060480        3156.959       -603.3013        393.3061       0       0
 2060481        3163.756       -608.1076        384.7645       0       0
 2060482        3170.553       -612.9138        376.2228       0       0
 2060483         3177.35       -617.7201        367.6812       0       0
 2060484        3184.147       -622.5263        359.1396       0       0
 2060485        3190.944       -627.3325         350.598       0       0
 2060486        3197.741       -632.1388        342.0563       0       0
 2060487        3204.538        -636.945        333.5146       0       0
 2060488        3211.335       -641.7513        324.9731       0       0
 2060489         3056.52       -147.6481        544.3622       0       0
 2060492         3049.74        -153.013         552.568       0       0
 2060493        3042.962       -158.3778        560.7736       0       0
 2060494        3036.182       -163.7426        568.9791       0       0
 2060495        3029.403       -169.1075        577.1847       0       0
 2060496        3022.867       -176.8884        584.5344       0       0
 2060497        3016.938       -184.6493        591.8237       0       0
 2060498        3011.791       -194.5844        597.5226       0       0
 2060499         3007.96       -205.1025        601.5953       0       0
 2060500         3004.13       -215.6206        605.6682       0       0
 2060501          3000.3       -226.1387         609.741       0       0
 2060502         2996.47       -236.6568        613.8137       0       0
 2060503        2992.639       -247.1749        617.8866       0       0
 2060504        2988.809        -257.693        621.9594       0       0
 2060505        2984.979       -268.2111        626.0322       0       0
 2060506        2981.148       -278.7292         630.105       0       0
 2060507        2979.191       -290.8132        632.8661       0       0
 2060508        2977.563       -302.4384        634.9865       0       0
 2060509        2975.813       -314.4178        637.0624       0       0
 2060510        2975.816       -326.3508        637.2174       0       0
 2060511         2975.73       -338.4647        637.2899       0       0
 2060512        2975.481       -350.4893        637.2074       0       0
 2060513        2976.792       -362.5258        635.6632       0       0
 2060514        2978.578          -374.2        633.4878       0       0
 2060515        2980.364       -385.8743        631.3124       0       0
 2060516        2984.006       -396.4835        627.0812       0       0
 2060517        2987.649       -407.0927        622.8499       0       0
 2060518        2991.291       -417.7019        618.6187       0       0
 2060519        2994.934       -428.3111        614.3873       0       0
 2060520        2998.576       -438.9203        610.1561       0       0
 2060521        3002.219       -449.5295        605.9248       0       0
 2060522        3005.861       -460.1387        601.6936       0       0
 2060523        3009.504       -470.7479        597.4623       0       0
 2060524        3013.518       -481.6989        592.8213       0       0
 2060525        3018.864       -489.7717        585.8152       0       0
 2060526        3025.068       -497.5123        578.2268       0       0
 2060527        3031.469       -503.3776        570.0491       0       0
 2060528        3038.235       -508.2758        561.5417       0       0
 2060529        3045.001        -513.174        553.0344       0       0
 2060530        3051.768       -518.0721        544.5271       0       0
 2060531        3058.535       -522.9703        536.0199       0       0
 2060532        3065.301       -527.8685        527.5126       0       0
 2060533        3072.067       -532.7667        519.0052       0       0
 2060534        3078.834       -537.6649        510.4979       0       0
 2060535          3085.6       -542.5631        501.9906       0       0
 2060536        3092.367       -547.4613        493.4833       0       0
 2060537        3099.133       -552.3595        484.9761       0       0
 2060538          3105.9       -557.2578        476.4688       0       0
 2060539        3112.666       -562.1559        467.9615       0       0
 2060540        3119.433       -567.0541        459.4542       0       0
 2060541        3126.199       -571.9523        450.9469       0       0
 2060542        3132.965       -576.8505        442.4396       0       0
 2060543        3139.732       -581.7487        433.9323       0       0
 2060544        3146.499       -586.6469         425.425       0       0
 2060545        3153.265       -591.5451        416.9177       0       0
 2060546        3160.031       -596.4433        408.4103       0       0
 2060547        3166.798       -601.3415        399.9031       0       0
 2060548        3173.564       -606.2397        391.3958       0       0
 2060549        3180.331       -611.1379        382.8884       0       0
 2060550        3187.097       -616.0361        374.3812       0       0
 2060551        3193.864       -620.9343        365.8739       0       0
 2060552         3200.63       -625.8325        357.3666       0       0
 2060553        3207.396       -630.7307        348.8593       0       0
 2060554        3214.163       -635.6288         340.352       0       0
 2060555         3220.93        -640.527        331.8447       0       0
 2060556         3065.68       -149.8542        550.4968       0       0
 2060559        3058.937       -155.9731         558.201       0       0
 2060560        3052.169       -161.5893        566.2395       0       0
 2060561        3045.402       -167.2055         574.278       0       0
 2060562        3038.635       -172.8217        582.3163       0       0
 2060563        3032.349       -180.3259        588.7845       0       0
 2060564        3027.438       -188.2391        595.8119       0       0
 2060565        3022.527       -196.1523        602.8394       0       0
 2060566        3017.615       -204.0656        609.8667       0       0
 2060567         3013.17       -214.3835        614.3979       0       0
 2060568        3008.725       -224.7014        618.9292       0       0
 2060569         3004.28       -235.0192        623.4604       0       0
 2060570        2999.835       -245.3371        627.9917       0       0
 2060571         2995.39        -255.655        632.5228       0       0
 2060572        2990.611       -266.1897        636.9469       0       0
 2060573        2985.831       -276.7245        641.3711       0       0
 2060574        2983.981       -289.1387        644.0636       0       0
 2060575         2982.69       -301.4102        646.0724       0       0
 2060576        2981.399       -313.6817        648.0812       0       0
 2060577        2981.271       -326.1249        648.1649       0       0
 2060578        2981.143       -338.5681        648.2487       0       0
 2060579        2981.015       -351.0113        648.3324       0       0
 2060580        2982.263       -363.4317        646.7607       0       0
 2060581        2983.825       -375.5697        644.5499       0       0
 2060582        2985.387       -387.7077         642.339       0       0
 2060583        2989.731       -399.0646        637.7355       0       0
 2060584        2994.027       -409.5095        633.5748       0       0
 2060585        2998.429       -419.6769        628.6996       0       0
 2060586        3002.832       -429.8444        623.8243       0       0
 2060587        3007.234       -440.0118        618.9491       0       0
 2060588        3011.636       -450.1793        614.0737       0       0
 2060589        3016.038       -460.3467        609.1985       0       0
 2060590        3019.769       -469.7718        603.3337       0       0
 2060591        3024.131       -477.9878        596.4065       0       0
 2060592        3028.492       -486.2037        589.4794       0       0
 2060593        3034.524       -494.7484        582.8772       0       0
 2060594        3040.715       -500.0728        575.2881       0       0
 2060595        3047.479       -505.0514        566.8307       0       0
 2060596        3054.243       -510.0301        558.3734       0       0
 2060597        3061.007       -515.0087         549.916       0       0
 2060598        3067.771       -519.9874        541.4586       0       0
 2060599        3074.535       -524.9661        533.0013       0       0
 2060600        3081.299       -529.9447        524.5439       0       0
 2060601        3088.063       -534.9234        516.0865       0       0
 2060602        3094.826        -539.902        507.6293       0       0
 2060603         3101.59       -544.8807        499.1719       0       0
 2060604        3108.354       -549.8594        490.7145       0       0
 2060605        3115.118        -554.838        482.2572       0       0
 2060606        3121.882       -559.8167        473.7998       0       0
 2060607        3128.646       -564.7953        465.3425       0       0
 2060608         3135.41        -569.774        456.8851       0       0
 2060609        3142.174       -574.7527        448.4277       0       0
 2060610        3148.938       -579.7313        439.9704       0       0
 2060611        3155.701         -584.71         431.513       0       0
 2060612        3162.465       -589.6887        423.0557       0       0
 2060613        3169.229       -594.6673        414.5983       0       0
 2060614        3175.993       -599.6459        406.1409       0       0
 2060615        3182.757       -604.6246        397.6836       0       0
 2060616        3189.521       -609.6033        389.2263       0       0
 2060617        3196.285        -614.582        380.7689       0       0
 2060618        3203.049       -619.5606        372.3115       0       0
 2060619        3209.813       -624.5392        363.8542       0       0
 2060620        3216.577       -629.5179        355.3969       0       0
 2060621        3223.341       -634.4966        346.9395       0       0
 2060622        3230.104       -639.4752        338.4821       0       0
 2060623        3075.861       -151.6159        557.0536       0       0
 2060626        3069.535       -158.3222         564.415       0       0
 2060627        3062.907       -164.1342         572.339       0       0
 2060628        3056.279       -169.9461        580.2632       0       0
 2060629        3049.651       -175.7581        588.1873       0       0
 2060630        3043.022       -181.5701        596.1115       0       0
 2060631        3036.473       -188.6836        603.8451       0       0
 2060632        3029.924       -195.7972        611.5789       0       0
 2060633        3023.375       -202.9107        619.3125       0       0
 2060634        3017.609       -211.4442        624.7018       0       0
 2060635         3013.37       -221.9269        629.1259       0       0
 2060636         3009.13       -232.4095        633.5499       0       0
 2060637        3004.891       -242.8922        637.9741       0       0
 2060638        3000.652       -253.3749        642.3982       0       0
 2060639        2996.301       -264.2841        646.8752       0       0
 2060640        2991.949       -275.1933        651.3521       0       0
 2060641        2989.635        -287.949        654.3416       0       0
 2060642        2988.664       -300.5968        656.1936       0       0
 2060643        2987.693       -313.2446        658.0457       0       0
 2060644         2987.56       -325.9416        658.1351       0       0
 2060645        2987.427       -338.6386        658.2242       0       0
 2060646        2987.294       -351.3355        658.3136       0       0
 2060647        2988.545       -364.1653        656.7061       0       0
 2060648          2989.8       -376.4742        654.6691       0       0
 2060649        2991.289       -389.2041         652.545       0       0
 2060650        2995.308       -400.5657        647.9567       0       0
 2060651        2999.327       -411.9272        643.3684       0       0
 2060652        3003.516       -422.1229        638.5551       0       0
 2060653        3007.705       -432.3185        633.7418       0       0
 2060654        3011.894       -442.5142        628.9286       0       0
 2060655        3016.083       -452.7098        624.1154       0       0
 2060656        3020.272       -462.9054         619.302       0       0
 2060657        3026.353       -469.8967        611.5499       0       0
 2060658        3032.434       -476.8879        603.7976       0       0
 2060659        3038.515       -483.8792        596.0455       0       0
 2060660        3044.597       -490.8704        588.2935       0       0
 2060661        3050.559       -496.2534        580.6401       0       0
 2060662        3057.145       -501.4001        572.6104       0       0
 2060663        3063.896       -506.4694        564.1913       0       0
 2060664        3070.648       -511.5387        555.7722       0       0
 2060665        3077.399        -516.608         547.353       0       0
 2060666         3084.15       -521.6772         538.934       0       0
 2060667        3090.902       -526.7465        530.5149       0       0
 2060668        3097.653       -531.8159        522.0958       0       0
 2060669        3104.404       -536.8851        513.6768       0       0
 2060670        3111.156       -541.9544        505.2576       0       0
 2060671        3117.907       -547.0237        496.8385       0       0
 2060672        3124.658        -552.093        488.4194       0       0
 2060673        3131.409       -557.1623        480.0004       0       0
 2060674         3138.16       -562.2316        471.5812       0       0
 2060675        3144.912       -567.3009        463.1621       0       0
 2060676        3151.663       -572.3702         454.743       0       0
 2060677        3158.414       -577.4395        446.3239       0       0
 2060678        3165.166       -582.5088        437.9048       0       0
 2060679        3171.917       -587.5781        429.4858       0       0
 2060680        3178.668       -592.6473        421.0667       0       0
 2060681         3185.42       -597.7166        412.6475       0       0
 2060682        3192.171       -602.7859        404.2285       0       0
 2060683        3198.922       -607.8552        395.8093       0       0
 2060684        3205.674       -612.9245        387.3903       0       0
 2060685        3212.425       -617.9938        378.9711       0       0
 2060686        3219.176       -623.0631        370.5521       0       0
 2060687        3225.927       -628.1324        362.1329       0       0
 2060688        3232.679       -633.2017        353.7139       0       0
 2060689         3239.43        -638.271        345.2947       0       0
 2065000          3313.0          -714.0           214.0       0       0
 2065002         3231.16       -648.6907        318.7508       0       0
 2065003        3226.684       -645.1191        324.4794       0       0
 2065004         3241.39       -656.8544         305.657       0       0
 2065005        3238.193       -654.3032        309.7488       0       0
 2065006         3251.62        -665.018        292.5631       0       0
 2065007        3249.702       -663.4874        295.0182       0       0
 2065008         3261.85       -673.1817        279.4693       0       0
 2065009         3261.21       -672.6714        280.2876       0       0
 2065010         3272.08       -681.3453        266.3754       0       0
 2065011        3272.719       -681.8556         265.557       0       0
 2065012         3282.31        -689.509        253.2816       0       0
 2065013        3284.228       -691.0397        250.8265       0       0
 2065014         3292.54       -697.6727        240.1877       0       0
 2065015        3295.737       -700.2238        236.0959       0       0
 2065016         3302.77       -705.8363        227.0938       0       0
 2065017          3333.0          -714.0           214.0       0       0
 2066000          3106.0           -94.0           465.0       0       0
 2066002        3097.983       -113.3029        513.0317       0       0
 2066003        3099.128       -110.5453          506.17       0       0
 2066004        3100.274       -107.7878        499.3083       0       0
 2066005        3101.419       -105.0302        492.4467       0       0
 2066006        3102.564       -102.2727         485.585       0       0
 2066007        3103.709       -99.51511        478.7233       0       0
 2066008        3104.855       -96.75756        471.8617       0       0
 2066009        3102.466       -97.83201        470.6687       0       0
 2066010        3098.931        -101.664        476.3375       0       0
 2066011        3095.397        -105.496        482.0062       0       0
 2066012        3091.863        -109.328        487.6749       0       0
 2066013        3088.329         -113.16        493.3437       0       0
 2066014        3084.794       -116.9921        499.0124       0       0
 2066015         3081.26       -120.8241        504.6811       0       0
 2066017          3106.0           -94.0           465.0       0       0
 2067000          3319.0          -640.0          1144.0       0       0
 2067001          3327.0          -715.0           214.0       0       0
 2067002        3326.595       -711.2025        261.0886       0       0
 2067003         3326.19       -707.4051        308.1772       0       0
 2067004        3325.785       -703.6076        355.2658       0       0
 2067005         3325.38       -699.8101        402.3544       0       0
 2067006        3324.975       -696.0126        449.4431       0       0
 2067007         3324.57       -692.2152        496.5316       0       0
 2067008        3324.468       -691.2658        508.3038       0       0
 2067009        3324.367       -690.3165        520.0759       0       0
 2067010        3324.266       -689.3671        531.8481       0       0
 2067011        3324.165       -688.4177        543.6202       0       0
 2067012        3324.063       -687.4684        555.3924       0       0
 2067013        3323.962        -686.519        567.1646       0       0
 2067014        3323.861       -685.5696        578.9367       0       0
 2067015         3323.76       -684.6202        590.7089       0       0
 2067016        3323.658       -683.6709         602.481       0       0
 2067017        3323.557       -682.7215        614.2532       0       0
 2067018        3323.456       -681.7722        626.0253       0       0
 2067019        3323.354       -680.8228        637.7975       0       0
 2067020        3321.734       -665.6329        826.1519       0       0
 2067021        3321.633       -664.6835        837.9241       0       0
 2067022        3321.532       -663.7342        849.6962       0       0
 2067023         3321.43       -662.7848        861.4684       0       0
 2067024        3321.329       -661.8354        873.2405       0       0
 2067025        3321.228        -660.886        885.0126       0       0
 2067026        3321.126       -659.9367        896.7848       0       0
 2067027        3321.025       -658.9874        908.5569       0       0
 2067028        3320.924        -658.038        920.3291       0       0
 2067029        3320.823       -657.0886        932.1013       0       0
 2067030        3320.721       -656.1392        943.8734       0       0
 2067031         3320.62       -655.1899        955.6456       0       0
 2067032        3320.519       -654.2405        967.4177       0       0
 2067033        3320.418       -653.2911        979.1899       0       0
 2067034        3320.316       -652.3418         990.962       0       0
 2067035        3320.215       -651.3924        1002.734       0       0
 2067036        3320.114       -650.4431        1014.506       0       0
 2067037        3320.013       -649.4937        1026.279       0       0
 2067038        3319.911       -648.5443        1038.051       0       0
 2067039         3319.81       -647.5949        1049.823       0       0
 2067040        3319.709       -646.6456        1061.595       0       0
 2067041        3319.608       -645.6962        1073.367       0       0
 2067042        3319.506       -644.7468        1085.139       0       0
 2067043        3319.405       -643.7975        1096.911       0       0
 2067044        3319.304       -642.8481        1108.684       0       0
 2067045        3319.203       -641.8987        1120.456       0       0
 2067046        3319.101       -640.9493        1132.228       0       0
 2067047        3315.499       -635.8326        1141.302       0       0
 2067048        3311.998       -631.6652        1138.604       0       0
 2067049        3308.498       -627.4977        1135.906       0       0
 2067050        3304.997       -623.3303        1133.207       0       0
 2067051        3301.496       -619.1629        1130.509       0       0
 2067052        3297.995       -614.9955        1127.811       0       0
 2067053        3294.494       -610.8281        1125.113       0       0
 2067103          3327.0          -715.0           214.0       0       0
 2067104          3327.0          -715.0           214.0       0       0
 2067105          3327.0          -715.0           214.0       0       0
 2067106          3327.0          -715.0           214.0       0       0
 2067107          3327.0          -715.0           214.0       0       0
 2067108          3327.0          -715.0           214.0       0       0
 2067109          3327.0          -715.0           214.0       0       0
 2067110          3327.0          -715.0           214.0       0       0
 2067111          3327.0          -715.0           214.0       0       0
 2067112          3327.0          -715.0           214.0       0       0
 2067113          3327.0          -715.0           214.0       0       0
 2067114          3339.0          -640.0          1144.0       0       0
 2067115          3319.0          -640.0          1144.0       0       0
 2067116          3347.0          -715.0           214.0       0       0
 2067117          3327.0          -715.0           214.0       0       0
 2067500          3106.0           -94.0          1010.0       0       0
 2067501        3113.143           -94.0           445.0       0       0
 2067502        3120.286           -94.0           425.0       0       0
 2067503        3127.428           -94.0           405.0       0       0
 2067504        3134.572           -94.0           385.0       0       0
 2067505        3141.714           -94.0           365.0       0       0
 2067506        3148.857           -94.0           345.0       0       0
 2067507          3156.0           -94.0           325.0       0       0
 2067515          3156.0           -94.0           325.0       0       0
 2067516          3176.0           -94.0           325.0       0       0
 2067519        3290.993       -606.6606        1122.415       0       0
 2067521        3283.992       -598.3258        1117.019       0       0
 2067522        3287.493       -602.4932        1119.717       0       0
 2067523        3280.491       -594.1584         1114.32       0       0
 2067524        3322.544       -673.2278        731.9747       0       0
 2067525        3322.949       -677.0253        684.8861       0       0
 2067526        3322.139       -669.4304        779.0633       0       0
 2067527        3321.937       -667.5316        802.6076       0       0
 2067528        3321.835       -666.5823        814.3798       0       0
 2067529        3322.038        -668.481        790.8354       0       0
 2067530        3322.342       -671.3291         755.519       0       0
 2067531         3322.24       -670.3798        767.2911       0       0
 2067532        3322.443       -672.2785        743.7468       0       0
 2067533        3323.152       -678.9241        661.3418       0       0
 2067534        3322.747       -675.1266        708.4304       0       0
 2067535        3322.646       -674.1772        720.2025       0       0
 2067536        3322.848       -676.0759        696.6582       0       0
 2067537        3323.051       -677.9747        673.1139       0       0
 2067538        3323.253       -679.8734        649.5696       0       0
 2067539        3093.402       -124.3331        540.4783       0       0
 2067540        3091.112       -129.8483        554.2017       0       0
 2067541        3089.967       -132.6058        561.0634       0       0
 2067542        3092.257       -127.0907          547.34       0       0
 2067543        3095.693        -118.818         526.755       0       0
 2067544        3094.548       -121.5756        533.6166       0       0
 2067545        3096.838       -116.0605        519.8933       0       0
 2067546        3070.657       -132.3201        521.6873       0       0
 2067547        3063.588       -139.9841        533.0248       0       0
 2067548        3077.726       -124.6561        510.3499       0       0
 2067549        3060.054       -143.8161        538.6935       0       0
 2067550        3067.123       -136.1521        527.3561       0       0
 2067551        3074.191       -128.4881        516.0186       0       0
 2067553        3326.797       -713.1013        237.5443       0       0
 2067554        3326.899       -714.0507        225.7722       0       0
 2067555        3326.696       -712.1519        249.3165       0       0
 2067556        3326.392       -709.3038        284.6329       0       0
 2067557        3326.494       -710.2532        272.8607       0       0
 2067558        3326.291       -708.3544        296.4051       0       0
 2067560        3325.987       -705.5063        331.7215       0       0
 2067561        3326.089       -706.4557        319.9494       0       0
 2067562        3325.886       -704.5569        343.4937       0       0
 2067563        3325.582       -701.7089        378.8101       0       0
 2067564        3325.684       -702.6582         367.038       0       0
 2067565        3325.481       -700.7595        390.5823       0       0
 2067566        3325.177       -697.9114        425.8987       0       0
 2067567        3325.279       -698.8608        414.1266       0       0
 2067568        3325.076        -696.962        437.6709       0       0
 2067569        3324.772        -694.114        472.9873       0       0
 2067570        3324.874       -695.0633        461.2152       0       0
 2067571        3324.671       -693.1646        484.7595       0       0
 2067572          3327.0          -715.0           214.0       0       0
 2067573          3327.0          -715.0           214.0       0       0
 2067574          3327.0          -715.0           214.0       0       0
 2067575          3327.0          -715.0           214.0       0       0
 2067576          3327.0          -715.0           214.0       0       0
 2067577          3327.0          -715.0           214.0       0       0
 2067578          3327.0          -715.0           214.0       0       0
 2067579          3327.0          -715.0           214.0       0       0
 2067580          3327.0          -715.0           214.0       0       0
 2067581          3327.0          -715.0           214.0       0       0
 2067582          3327.0          -715.0           214.0       0       0
 2067583          3327.0          -715.0           214.0       0       0
 2067584          3327.0          -715.0           214.0       0       0
 2067585          3327.0          -715.0           214.0       0       0
 2067586          3327.0          -715.0           214.0       0       0
 2067587          3327.0          -715.0           214.0       0       0
 2067588          3327.0          -715.0           214.0       0       0
 2067589          3327.0          -715.0           214.0       0       0
 2067590          3327.0          -715.0           214.0       0       0
 2067591          3327.0          -715.0           214.0       0       0
 2067592          3327.0          -715.0           214.0       0       0
 2067593          3327.0          -715.0           214.0       0       0
 2067594          3327.0          -715.0           214.0       0       0
 2067595          3327.0          -715.0           214.0       0       0
 2067596          3327.0          -715.0           214.0       0       0
 2067597          3327.0          -715.0           214.0       0       0
 2067598          3327.0          -715.0           214.0       0       0
 2067599          3327.0          -715.0           214.0       0       0
 2067600          3327.0          -715.0           214.0       0       0
 2067601          3327.0          -715.0           214.0       0       0
 2067602          3327.0          -715.0           214.0       0       0
 2067603          3327.0          -715.0           214.0       0       0
 2067604          3327.0          -715.0           214.0       0       0
 2067605          3327.0          -715.0           214.0       0       0
 2067606          3327.0          -715.0           214.0       0       0
 2067607          3327.0          -715.0           214.0       0       0
 2067608          3327.0          -715.0           214.0       0       0
 2067609          3327.0          -715.0           214.0       0       0
 2067610          3327.0          -715.0           214.0       0       0
 2067611          3327.0          -715.0           214.0       0       0
 2067612          3327.0          -715.0           214.0       0       0
 2067613          3327.0          -715.0           214.0       0       0
 2067614          3327.0          -715.0           214.0       0       0
 2067615          3327.0          -715.0           214.0       0       0
 2067616          3327.0          -715.0           214.0       0       0
 2067617          3327.0          -715.0           214.0       0       0
 2067618          3327.0          -715.0           214.0       0       0
 2067619          3327.0          -715.0           214.0       0       0
 2067620          3327.0          -715.0           214.0       0       0
 2067621          3327.0          -715.0           214.0       0       0
 2067622          3327.0          -715.0           214.0       0       0
 2067623          3327.0          -715.0           214.0       0       0
 2067624          3327.0          -715.0           214.0       0       0
 2067625          3327.0          -715.0           214.0       0       0
 2067626          3327.0          -715.0           214.0       0       0
 2067627          3327.0          -715.0           214.0       0       0
 2067628          3327.0          -715.0           214.0       0       0
 2067629          3327.0          -715.0           214.0       0       0
 2067630          3327.0          -715.0           214.0       0       0
 2067631          3327.0          -715.0           214.0       0       0
 2067632          3327.0          -715.0           214.0       0       0
 2067633          3327.0          -715.0           214.0       0       0
 2067634          3327.0          -715.0           214.0       0       0
 2067635          3327.0          -715.0           214.0       0       0
 2067636          3327.0          -715.0           214.0       0       0
 2067637          3327.0          -715.0           214.0       0       0
 2067638          3327.0          -715.0           214.0       0       0
 2067639          3327.0          -715.0           214.0       0       0
 2067640          3327.0          -715.0           214.0       0       0
 2067641          3327.0          -715.0           214.0       0       0
 2067642          3327.0          -715.0           214.0       0       0
 2067643          3327.0          -715.0           214.0       0       0
 2067644          3327.0          -715.0           214.0       0       0
 2067645          3327.0          -715.0           214.0       0       0
 2067646          3327.0          -715.0           214.0       0       0
 2067647          3327.0          -715.0           214.0       0       0
 2067648          3327.0          -715.0           214.0       0       0
 2067649          3327.0          -715.0           214.0       0       0
 2067650          3327.0          -715.0           214.0       0       0
 2067651          3327.0          -715.0           214.0       0       0
 2067652          3327.0          -715.0           214.0       0       0
 2067653          3327.0          -715.0           214.0       0       0
 2067654          3327.0          -715.0           214.0       0       0
 2067655          3327.0          -715.0           214.0       0       0
 2067656          3327.0          -715.0           214.0       0       0
 2067657          3327.0          -715.0           214.0       0       0
 2067658          3327.0          -715.0           214.0       0       0
 2067659          3327.0          -715.0           214.0       0       0
 2067660          3327.0          -715.0           214.0       0       0
 2067661          3327.0          -715.0           214.0       0       0
 2067662          3327.0          -715.0           214.0       0       0
 2067663          3327.0          -715.0           214.0       0       0
 2067664          3327.0          -715.0           214.0       0       0
 2067665          3327.0          -715.0           214.0       0       0
 2067666          3327.0          -715.0           214.0       0       0
 2067667          3327.0          -715.0           214.0       0       0
 2067668          3327.0          -715.0           214.0       0       0
 2067669          3327.0          -715.0           214.0       0       0
 2067670          3327.0          -715.0           214.0       0       0
 2067671          3327.0          -715.0           214.0       0       0
 2067672          3327.0          -715.0           214.0       0       0
 2067673          3327.0          -715.0           214.0       0       0
 2067674          3327.0          -715.0           214.0       0       0
 2067675          3327.0          -715.0           214.0       0       0
 2067676          3327.0          -715.0           214.0       0       0
 2067677          3327.0          -715.0           214.0       0       0
 2067678          3327.0          -715.0           214.0       0       0
 2067679          3327.0          -715.0           214.0       0       0
 2067680          3327.0          -715.0           214.0       0       0
 2067681          3327.0          -715.0           214.0       0       0
 2067682          3327.0          -715.0           214.0       0       0
 2067683          3327.0          -715.0           214.0       0       0
 2067684          3327.0          -715.0           214.0       0       0
 2067685          3327.0          -715.0           214.0       0       0
 2067686          3327.0          -715.0           214.0       0       0
 2067687          3327.0          -715.0           214.0       0       0
 2067688          3327.0          -715.0           214.0       0       0
 2067689          3327.0          -715.0           214.0       0       0
 2067690          3327.0          -715.0           214.0       0       0
 2067691          3327.0          -715.0           214.0       0       0
 2067692          3327.0          -715.0           214.0       0       0
 2067693          3327.0          -715.0           214.0       0       0
 2067694          3327.0          -715.0           214.0       0       0
 2067695          3327.0          -715.0           214.0       0       0
 2067696          3327.0          -715.0           214.0       0       0
 2067697          3327.0          -715.0           214.0       0       0
 2067698          3327.0          -715.0           214.0       0       0
 2067699          3327.0          -715.0           214.0       0       0
 2067700          3327.0          -715.0           214.0       0       0
 2067701          3327.0          -715.0           214.0       0       0
 2067702          3327.0          -715.0           214.0       0       0
 2067703          3327.0          -715.0           214.0       0       0
 2067704          3327.0          -715.0           214.0       0       0
 2067705          3327.0          -715.0           214.0       0       0
 2067706          3327.0          -715.0           214.0       0       0
 2067707          3327.0          -715.0           214.0       0       0
 2067708          3327.0          -715.0           214.0       0       0
 2067709          3327.0          -715.0           214.0       0       0
 2067710          3327.0          -715.0           214.0       0       0
 2067711          3327.0          -715.0           214.0       0       0
 2067712          3327.0          -715.0           214.0       0       0
 2067713          3327.0          -715.0           214.0       0       0
 2067714          3327.0          -715.0           214.0       0       0
 2067715          3327.0          -715.0           214.0       0       0
 2067716          3327.0          -715.0           214.0       0       0
 2067717          3327.0          -715.0           214.0       0       0
 2067718          3327.0          -715.0           214.0       0       0
 2067719          3327.0          -715.0           214.0       0       0
 2067720          3327.0          -715.0           214.0       0       0
 2067721          3327.0          -715.0           214.0       0       0
 2067722          3327.0          -715.0           214.0       0       0
 2067723          3327.0          -715.0           214.0       0       0
 2067724          3327.0          -715.0           214.0       0       0
 2067725          3327.0          -715.0           214.0       0       0
 2067726          3327.0          -715.0           214.0       0       0
 2067727          3327.0          -715.0           214.0       0       0
 2067728          3327.0          -715.0           214.0       0       0
 2067729          3327.0          -715.0           214.0       0       0
 2067730          3327.0          -715.0           214.0       0       0
 2067731          3327.0          -715.0           214.0       0       0
 2067732          3327.0          -715.0           214.0       0       0
 2067733          3327.0          -715.0           214.0       0       0
 2067734          3327.0          -715.0           214.0       0       0
 2067735          3327.0          -715.0           214.0       0       0
 2067736          3327.0          -715.0           214.0       0       0
 2067737          3327.0          -715.0           214.0       0       0
 2067738          3327.0          -715.0           214.0       0       0
 2067739          3327.0          -715.0           214.0       0       0
 2067740          3327.0          -715.0           214.0       0       0
 2067741          3327.0          -715.0           214.0       0       0
 2067742          3327.0          -715.0           214.0       0       0
 2067743          3327.0          -715.0           214.0       0       0
 2067744          3327.0          -715.0           214.0       0       0
 2067745          3327.0          -715.0           214.0       0       0
 2067746          3327.0          -715.0           214.0       0       0
 2067747          3327.0          -715.0           214.0       0       0
 2067748          3327.0          -715.0           214.0       0       0
 2067749          3327.0          -715.0           214.0       0       0
 2067750          3327.0          -715.0           214.0       0       0
 2067751          3327.0          -715.0           214.0       0       0
 2067752          3327.0          -715.0           214.0       0       0
 2067753          3327.0          -715.0           214.0       0       0
 2067754          3327.0          -715.0           214.0       0       0
 2067755          3327.0          -715.0           214.0       0       0
 2067756          3327.0          -715.0           214.0       0       0
 2067757          3327.0          -715.0           214.0       0       0
 2067758          3327.0          -715.0           214.0       0       0
 2067759          3327.0          -715.0           214.0       0       0
 2067760          3327.0          -715.0           214.0       0       0
 2067761          3327.0          -715.0           214.0       0       0
 2067762          3327.0          -715.0           214.0       0       0
 2067763          3327.0          -715.0           214.0       0       0
 2067764          3327.0          -715.0           214.0       0       0
 2067765          3327.0          -715.0           214.0       0       0
 2067766          3327.0          -715.0           214.0       0       0
 2067767          3327.0          -715.0           214.0       0       0
 2067768          3327.0          -715.0           214.0       0       0
 2067769          3327.0          -715.0           214.0       0       0
 2067770          3327.0          -715.0           214.0       0       0
 2067771          3327.0          -715.0           214.0       0       0
 2067772          3327.0          -715.0           214.0       0       0
 2067773          3327.0          -715.0           214.0       0       0
 2067774          3327.0          -715.0           214.0       0       0
 2067775          3327.0          -715.0           214.0       0       0
 2067776          3327.0          -715.0           214.0       0       0
 2067777          3327.0          -715.0           214.0       0       0
 2067778          3327.0          -715.0           214.0       0       0
 2067779          3327.0          -715.0           214.0       0       0
 2067780          3327.0          -715.0           214.0       0       0
 2067781          3327.0          -715.0           214.0       0       0
 2067782          3327.0          -715.0           214.0       0       0
 2067783          3327.0          -715.0           214.0       0       0
 2067784          3327.0          -715.0           214.0       0       0
 2067785          3327.0          -715.0           214.0       0       0
 2067786          3327.0          -715.0           214.0       0       0
 2067787          3327.0          -715.0           214.0       0       0
 2067788          3327.0          -715.0           214.0       0       0
 2067789          3327.0          -715.0           214.0       0       0
 2067790          3327.0          -715.0           214.0       0       0
 2067791          3327.0          -715.0           214.0       0       0
 2067792          3327.0          -715.0           214.0       0       0
 2067793          3327.0          -715.0           214.0       0       0
 2067794          3327.0          -715.0           214.0       0       0
 2067795          3327.0          -715.0           214.0       0       0
 2067796          3327.0          -715.0           214.0       0       0
 2067797          3327.0          -715.0           214.0       0       0
 2067798          3327.0          -715.0           214.0       0       0
 2067799          3327.0          -715.0           214.0       0       0
 2067800          3327.0          -715.0           214.0       0       0
$
$
$
$
*END
