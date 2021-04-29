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
Vehicle Environment Template With Pitch_Drop_Yaw_Pulse
$
$
$
$
$
$
$
$
$
$
$
$
*DATABASE_HISTORY_BEAM
$
$      id1       id2       id3       id4       id5       id6       id7       id8
$#     id1       id2       id3       id4       id5       id6       id7       id8
   3001834         0         0         0         0         0         0         0
$
$
$
*DATABASE_HISTORY_NODE
$
$      id1       id2       id3       id4       id5       id6       id7       id8
$#     id1       id2       id3       id4       id5       id6       id7       id8
   3000001   3000028   3000077   3000222   3000223   3000224   3000231   3000233
$
$      id1       id2       id3       id4       id5       id6       id7       id8
   3000235   3000237   3000239   3000241   3000243   3000245   3000247   3000249
$
$      id1       id2       id3       id4       id5       id6       id7       id8
   3000251   3000253   3000255   3000257   3000259   3000261   3000263   3000265
$
$      id1       id2       id3       id4       id5       id6       id7       id8
   3000267   3000269   3000271   3000089   3000103   3001135   3001564   3001235
$
$      id1       id2       id3       id4       id5       id6       id7       id8
   3003092         0         0         0         0         0         0         0
$
$
$
$************** End DATABASE Block *********************************************
$
$
$
$ - removed by KJL, use Iraeus prametrized Pulse instead.
$
$
$
$$$$$$$$$$$$$$$ Begin ACCELERATION FIELD TO DUMMY & VEHICLE Block $$$$$$$$$$$$$$
$ - removed by KJL, use Iraeus parametrized pulse instead.
$$$$$$$$$$$$$$$ End ACCELERATION FIELD TO DUMMY AND BUCK Block $$$$$$$$$$$$$$$$$
$
$
$
$************** Begin CONTACT Block ********************************************
$
$
$
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE
$#     cid                                                                 title
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   3000015   3000016         2         2         0         0         1         1
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.4       0.4       0.0       0.0      20.0         1       0.01.00000E20
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       0.0       0.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$
*SET_PART_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000015       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000093   3000094         0         0         0         0         0         0
$
$
*SET_PART_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000016       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000083         0         0         0         0         0         0         0
$
$
$
*CONTACT_AUTOMATIC_NODES_TO_SURFACE
$#     cid                                                                 title
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   3000017   3000018         2         2         0         0         1         1
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.4       0.4       0.0       0.0      20.0         1       0.01.00000E20
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       5.0       1.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$
*SET_PART_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000017       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000093   3000094         0         0         0         0         0         0
$
$
*SET_PART_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000018       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000085         0         0         0         0         0         0         0
$
$
$
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE
$#     cid                                                                 title
$
$ Airbag_IP_Contact
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   3000043   3000083         2         3         0         0         0         0
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.3       0.3       0.0       0.0       0.0         1       0.0    1000.0
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       3.0       3.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     soft    sofscl    lcidab    maxpar     sbopt     depth     bsort    frcfrq
$#    soft    sofscl    lcidab    maxpar     sbopt     depth     bsort    frcfrq
         2       0.1         0     1.025       2.0         2         0         1
$
$   penmax    thkopt    shlthk     snlog      isym     i2d3d    sldthk    sldstf
$#  penmax    thkopt    shlthk     snlog      isym     i2d3d    sldthk    sldstf
       0.0         0         0         0         0         0       0.0       0.0
$
$
*SET_PART_LIST
$
$ Airbag Parts
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000043       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000093   3000094         0         0         0         0         0         0
$
$
$
*CONTACT_AUTOMATIC_SURFACE_TO_SURFACE
$#     cid                                                                 title
$
$ Airbag_Dummy_Contact
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   3000043   1000006         2         2         0         0         0         0
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
      0.45      0.45       0.0       0.0       0.0         1       0.0    1000.0
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       3.0       3.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     soft    sofscl    lcidab    maxpar     sbopt     depth     bsort    frcfrq
$#    soft    sofscl    lcidab    maxpar     sbopt     depth     bsort    frcfrq
         2       0.1         0     1.025       2.0         2         0         1
$
$   penmax    thkopt    shlthk     snlog      isym     i2d3d    sldthk    sldstf
$#  penmax    thkopt    shlthk     snlog      isym     i2d3d    sldthk    sldstf
       0.0         0         0         0         0         0       0.0       0.0
$
$
$
*CONTACT_AIRBAG_SINGLE_SURFACE
$#     cid                                                                 title
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   3000043         0         2         0         0         0         0         0
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.0       0.0       0.0       0.0       0.0         1       0.0    1000.0
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       3.0       3.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     soft    sofscl    lcidab    maxpar     sbopt     depth     bsort    frcfrq
$#    soft    sofscl    lcidab    maxpar     sbopt     depth     bsort    frcfrq
         2       0.1         0     1.025       2.0         2         0         1
$
$   penmax    thkopt    shlthk     snlog      isym     i2d3d    sldthk    sldstf
$#  penmax    thkopt    shlthk     snlog      isym     i2d3d    sldthk    sldstf
       0.0         0         0         0         0         0       0.0       0.0
$
$
$
*CONTACT_RIGID_BODY_ONE_WAY_TO_RIGID_BODY
$#     cid                                                                 title
$
$ knee to bolster contact, based on max knee node penetration
$ lcid = load curve
$  fcm = 1 for max penetration of any node
$   us = unloading stiffness
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$ LeftKnee        IP
$    (Set)     (PID)
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   1000009   3000100         2         3         0         0         1         1
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.3       0.3       0.0       0.0       0.0         0       0.01.00000E20
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       0.0       0.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     lcid       fcm        us                lcdc       dsf
$#    lcid       fcm        us                lcdc       dsf    unlcid      
   3080001         1       0.0         0         0       0.0         0
$
$
$
*CONTACT_RIGID_BODY_ONE_WAY_TO_RIGID_BODY
$#     cid                                                                 title
$
$ knee to bolster contact, based on max knee node penetration
$ lcid = load curve
$  fcm = 1 for max penetration of any node
$   us = unloading stiffness
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$RightKnee        IP
$    (Set)     (PID)
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   1000010   3000100         2         3         0         0         1         1
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.3       0.3       0.0       0.0       0.0         0       0.01.00000E20
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       0.0       0.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     lcid       fcm        us                lcdc       dsf
$#    lcid       fcm        us                lcdc       dsf    unlcid      
   3080001         1       0.0         0         0       0.0         0
$
$
$
*CONTACT_RIGID_BODY_ONE_WAY_TO_RIGID_BODY
$#     cid                                                                 title
$
$ pelvis to seat contact, based on max pelvis node penetration
$ lcid = load curve
$  fcm = 1 for max penetration of any node
$   us = unloading stiffness
$
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$      Hip      Seat
$    (Set)     (PID)
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   1000008   3000095         2         3         0         0         1         1
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.1       0.1       0.0       0.0       0.0         0       0.01.00000E20
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       0.0       0.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     lcid       fcm        us
$    80002         1     0.585
$     lcid       fcm        us                lcdc       dsf
$#    lcid       fcm        us                lcdc       dsf    unlcid      
   3080002         1       0.0         0         0       0.0         0
$
$
$
*CONTACT_RIGID_BODY_ONE_WAY_TO_RIGID_BODY
$#     cid                                                                 title
$
$ FloorPan_DummyShoes
$ lcid = load curve
$  fcm = 1 for max penetration of any node
$   us = unloading stiffness
$
$      Hip      Seat
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$    (Set)     (Set)
$#    ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
   1000007   3000044         2         2         0         0         0         0
$
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$#      fs        fd        dc        vc       vdc    penchk        bt        dt
       0.8       0.8       0.0       0.0       0.0         0       0.01.00000E20
$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$#     sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
       0.0       0.0       0.0       0.0       1.0       1.0       1.0       1.0
$
$     lcid       fcm        us
$    80002         1     0.585
$     lcid       fcm        us                lcdc       dsf
$#    lcid       fcm        us                lcdc       dsf    unlcid      
   3080003         1       0.0         0         0       0.0         0
$
$
$
*SET_PART_LIST
$
$ Floor Pan
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000044       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000098   3000099         0         0         0         0         0         0
$
$
$
$************** End CONTACT Block **********************************************
$
$
$
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The following is the MOST IMPORTANT Rigd Part of the Vehicle Model.
$
$ All other Parts of the Vehicle are in some way connected to Part-3000081.
$ Please check the "Rigid Body Constraints" Block (Extra-Nodes & Merges) to
$ understand how they are all connected to Part-3000081.
$
$ NOTES:
$
$ 1) This is defined by "Part_Inertia", instead of a simple "Part".
$
$ 2) I have defined the "Center of Gravity" of this Part using Node-3003092.
$    This Node will serve as the "Pitching & Yawing" Point for Vehicle Motions.
$
$ 3) The "Mass" and "Inertias" of this Part is not all that important.
$    Some numbers have been given in a fashion so as not to cause instabilities.
$
$
*PART_INERTIA
$
$#                                                                         title
PSHELL                           VEHICLE
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000081   3000081   3000081         0         0         0         0         0
$
$       xc        yc        zc        tm      ircs    nodeid
$#      xc        yc        zc        tm      ircs    nodeid      
       0.0       0.0       0.0     100.0         0   3003092
$
$      ixx       ixy       ixz       iyy       iyz       izz
$#     ixx       ixy       ixz       iyy       iyz       izz   
     100.0       0.0       0.0     100.0       0.0     100.0
$
$      vtx       vty       vtz       vrx       vry       vrz
$#     vtx       vty       vtz       vrx       vry       vrz   
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000081         2       0.0         1       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       1.0       1.0       1.0       1.0       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$ cmo = 1 constraints applied in global directions
$ con1 = 7 constrained in x, y, z displacement, 4 constrain y & x dis.
$ con2 = 7 constrained in x, y, z rotations,    6 constrain x & z rot.
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000817.85000E-6     210.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
$-------------------------------------------------------------------------------
$
$
$
*PART
$
$  title
$#                                                                         title
PSHELL                               STRCLMLWR
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000082   3000082   3000082         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000082         2       1.0         2       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
     4.088     4.088     4.088     4.088       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000827.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
$
*PART
$
$#                                                                         title
PSHELL                               WHEEL
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000083   3000083   3000083         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000083         2       1.0         2       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
     1.284     1.284     1.284     1.284       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000837.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
$
*PART
$#                                                                         title
PSHELL                               STRCLMUP
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000084   3000084   3000084         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000084         2       1.0         2       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
     4.088     4.088     4.088     4.088       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000847.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$ lco or a1       a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               WINDSHIELD
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000085   3000085   3000085         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000085         2       1.0         2       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
     4.088     4.088     4.088     4.088       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000857.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               ROOF
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000086   3000086   3000086         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000086         2       1.0         2       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
     4.088     4.088     4.088     4.088       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000867.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               LAP BELT ATTACHMENT
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000087   3000087   3000087         0         0         0         0         0
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000087         2       1.0         2       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
     4.088     4.088     4.088     4.088       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000877.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
$
*PART
$
$#                                                                         title
PBAR                                 STEERING BEAM
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000092   3000100   3000100         0         0         0         0         0
$
$
*SECTION_BEAM
$
$    secid    elform      shrf   qr/irid       cst     scoor       nsm
$#   secid    elform      shrf   qr/irid       cst     scoor       nsm     naupd
   3000100         2       1.0         2         0       0.0       0.0         0
$
$        a       iss       itt       irr        sa
$#       a       iss       itt         j        sa       ist   
    1154.0  420500.0  420500.0  841000.0     576.8       0.0
$
$
*MAT_FORCE_LIMITED
$
$      mid        ro         e        pr        df      aopt    ytflag     asoft
$#     mid        ro         e        pr        df     iaflc    ytflag     asoft
   30001007.83000E-6     207.0      0.28       0.0         1       0.0       0.0
$
$       m1        m2        m3        m4        m5        m6        m7        m8
$#      m1        m2        m3        m4        m5        m6        m7        m8
       0.0       0.0       0.0       0.0       0.0       0.0       0.0       0.0
$
$      lc1       lc2       lc3       lc4       lc5       lc6       lc7       lc8
$#     lc1       lc2       lc3       lc4       lc5       lc6       lc7       lc8
   3000017         0         0         0         0         0         0         0
$
$     lps1      sfs1      lps2      sfs2      yms1      yms2
$#    lps1      sfs1      lps2      sfs2      yms1      yms2    
         0       0.0         0       0.0       0.0       0.0
$
$     lpt1      sft1      lpt2      sft2      ymt1      ymt2
$#    lpt1      sft1      lpt2      sft2      ymt1      ymt2    
         0       0.0         0       0.0       0.0       0.0
$
$      lpr       sfr       ymr
$#     lpr       sfr       ymr   
         0       0.0       0.0
$
$
$
*PART
$
$#                                                                         title
PSHELL                               AIRBAG UPPER
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000093   3000092   3000092         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000092         5       0.0         1       1.0         0         1         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
    0.3048    0.3048    0.3048    0.3048       0.0       0.0       0.0         0
$
$       bi        bi        bi        bi        bi        bi        bi        bi
$#      bi        bi        bi        bi        bi        bi        bi        bi
       0.0       0.0       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*MAT_FABRIC
$
$      mid        ro        ea        eb        ec      prba      prca      prcb
$#     mid        ro        ea        eb         -      prba      prab         -
   30000928.76000E-7       0.3       0.2       0.3       0.2       0.2       0.2
$
$      gab       gbc       gca       cse        el       prl    lratio      damp
$#     gab         -         -       cse        el       prl    lratio      damp
      0.04      0.04      0.04       1.0      0.06      0.35       0.1       0.2
$
$     aopt       flc       fac       ela      lnrc      form     fvopt    tsrfac
$#    aopt       flc       fac       ela      lnrc      form     fvopt    tsrfac
       3.0       0.0       0.0       0.0       0.0         0         0       0.0
$
$       xp        yp        zp        a1        a2        a3        xd        xl
$#  unused    rgbrth     a0ref        a1        a2        a3        x0        x1
                 0.0         0       1.0       0.0       0.0       0.0       0.0
$
$       v1        v2        v3        d1        d2        d3      beta    isrefg
$#      v1        v2        v3         -         -         -      beta    isrefg
       1.0       0.0       0.0       0.0       0.0       0.0       0.0         0
$
$
*PART
$
$#                                                                         title
PSHELL                               AIRBAG LOWER
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000094   3000093   3000093         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000093         5       0.0         1       1.0         0         1         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
    0.3048    0.3048    0.3048    0.3048       0.0       0.0       0.0         0
$
$       bi        bi        bi        bi        bi        bi        bi        bi
$#      bi        bi        bi        bi        bi        bi        bi        bi
       0.0       0.0       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*MAT_FABRIC
$
$      mid        ro        ea        eb        ec      prba      prca      prcb
$#     mid        ro        ea        eb         -      prba      prab         -
   30000938.76000E-7       0.3       0.2       0.3       0.2       0.2       0.2
$
$      gab       gbc       gca       cse        el       prl    lratio      damp
$#     gab         -         -       cse        el       prl    lratio      damp
      0.04      0.04      0.04       1.0      0.06      0.35       0.1       0.2
$
$     aopt       flc       fac       ela      lnrc      form     fvopt    tsrfac
$#    aopt       flc       fac       ela      lnrc      form     fvopt    tsrfac
       3.0       0.0       0.0       0.0       0.0         0         0       0.0
$
$       xp        yp        zp        a1        a2        a3        xd        xl
$#  unused    rgbrth     a0ref        a1        a2        a3        x0        x1
                 0.0         0       1.0       0.0       0.0       0.0       0.0
$
$       v1        v2        v3        d1        d2        d3      beta    isrefg
$#      v1        v2        v3         -         -         -      beta    isrefg
       1.0       0.0       0.0       0.0       0.0       0.0       0.0         0
$
$
*PART
$
$#                                                                         title
PSHELL                               SEAT CUSHION
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000095   3000094   3000094         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000094         2       0.0         3       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       0.8       0.8       0.8       0.8       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000947.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$ lco or a1       a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               SEAT BACK
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000096   3000095   3000095         0         0         0         0         0
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000095         2       0.0         3       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       0.8       0.8       0.8       0.8       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000957.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               TOEPAN
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000098   3000097   3000097         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000097         2       0.0         3       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       0.8       0.8       0.8       0.8       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000977.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$ lco or a1       a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               FLOORPAN
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000099   3000098   3000098         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000098         2       0.0         3       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       0.8       0.8       0.8       0.8       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000987.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
PSHELL                               KNEE BOLSTER
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000100   3000099   3000099         0         0         0         0         0
$
$
*SECTION_SHELL
$
$    secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
   3000099         2       0.0         3       1.0         0         0         1
$
$       t1        t2        t3        t4      nloc     marea      idof    edgset
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
       0.8       0.8       0.8       0.8       0.0       0.0       0.0         0
$
$
*MAT_RIGID
$
$      mid        ro         e        pr         n    couple         m     alias
$#     mid        ro         e        pr         n    couple         m     alias
   30000997.83000E-6     200.0       0.3       0.0       0.0       0.0          
$
$      cmo      con1      con2
$#     cmo      con1      con2    
       0.0         0         0
$
$lco or a1        a2        a3        v1        v2        v3
$#lco or a1        a2        a3        v1        v2        v3  
       0.0       0.0       0.0       0.0       0.0       0.0
$
$
*PART
$
$#                                                                         title
Spring-Damper Part Definition.
$
$      pid     secid       mid     eosid      hgid      grav    adpopt      tmid
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
   3000101   3000101   3000101         0         0         0         0         0
$
$
*SECTION_DISCRETE
$
$    secid       dro        kd        v0        cl        fd
$#   secid       dro        kd        v0        cl        fd  
   3000101         0       0.0       0.0       0.0       0.0
$
$      cdl       tdl
$#     cdl       tdl   
       0.0       0.0
$
$
*MAT_SPRING_ELASTIC
$
$      mid         k
$#     mid         k 
   3000101     0.001
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin COORDINATE SYSTEM Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
*DEFINE_COORDINATE_NODES
$
$      cid        n1        n2        n3      flag       dir
$#     cid        n1        n2        n3      flag       dir   
   3000036   3002163   3002166   3002165         0X
$
$
*DEFINE_COORDINATE_NODES
$
$      cid        n1        n2        n3      flag       dir
$#     cid        n1        n2        n3      flag       dir   
   3000037   3001564   3002167   3002170         0X
$
$
$$$$$$$$$$$$$$$ End COORDINATE SYSTEM Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin DEFINE CURVE Block ***************************************
$
$
$
$
$
$
$
$
$
$
$
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The KNEE_BOLSTER FUNCTION
$
$ The following is the "Knees to Knee_Bolster Force vs. Penetration Function".
$
$ It should be measured from actual Test.
$ It has been used in the Right/Left Knee to KB "One Way" Contact Treatment.
$
$ Note that the actual units of the Curve are in MKS Units.
$
$ sfa = 1000.0 changes the given Penetration in "meters" to "millimeters".
$ sfo =  0.001 changes the given Force in "Newtons" to "kilo-Newtons".
$
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The SEAT STIFFNESS FUNCTION
$
$ The following is the "Pelvis to Seat Force vs. Penetration Function".
$
$ It should be measured from actual Test.
$ It has been used in the Pelvis to Seat "One Way" Contact Treatment.
$
$ Note that the actual units of the Curve are in MKS Units.
$
$ sfa = 1000.0 changes the given Penetration in "meters" to "millimeters".
$ sfo =  0.001 changes the given Force in "Newtons" to "kilo-Newtons".
$
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The FLOOR_PAN STIFFNESS FUNCTION
$
$ The following is the "Feet/Shoes to Floor_Pan Force vs. Penetration Function".
$
$ It simulates the softness of the Carpet and the Deformable Shoes.
$ It has been used in the Shoes to Floor_Pan "One Way" Contact Treatment.
$
$ Note that the actual units of the Curve are in MKS Units.
$
$ sfa = 1000.0 changes the given Penetration in "meters" to "millimeters".
$ sfo =  0.001 changes the given Force in "Newtons" to "kilo-Newtons".
$
$
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The PITCH Curve (Referred to in Boundary_Prescribed_Motion)
$
$
$
$ If you want the Pitch to be "zero", uncomment the following two lines with $$
$ and comment out the above pitch curve.
$
$$             0.000               0.000
$$             0.200               0.000
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The DROP Curve (Referred to in Boundary_Prescribed_Motion)
$
$
$
$
$ If you want the Drop to be "zero", uncomment the following two lines with $$
$ and comment out the above pitch curve.
$
$$             0.000               0.000
$$             0.200               0.000
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The ZERO-MOTION Curve (Referred to in Boundary_Prescribed_Motion)
$
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The YAW Curve (Referred to in Boundary_Prescribed_Motion)
$
$
$
$ If you want the Yaw to be "zero", uncomment the following two lines with $$
$ and comment out the above pitch curve.
$
$$             0.000               0.000
$$             0.200               0.000
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$-------------------------------------------------------------------------------
$
$
$ The PULSE Curve (Referred to in Load_Body_X)
$
$
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3000015         0   0.01745   0.09807       0.0       0.0         0         0
$
$                 a1                  o1
$#                a1                  o1  
              -100.0           -744890.0
               -90.0           -568467.0
               -80.0           -422280.0
               -70.0           -303485.0
               -60.0           -209238.0
               -50.0           -136695.0
               -40.0            -83012.0
               -30.0            -45345.0
               -20.0            -20850.0
               -19.0           -19015.47
               -18.0           -17281.37
               -17.0           -15644.86
               -16.0            -14103.1
               -15.0           -12653.25
               -14.0           -11292.46
               -13.0           -10017.88
               -12.0           -8826.672
               -11.0           -7715.994
               -10.0             -6683.0
                -9.0           -5724.846
                -8.0           -4838.688
                -7.0           -4021.682
                -6.0           -3270.984
                -5.0            -2583.75
                -4.0           -1957.136
                -3.0           -1388.298
                -2.0            -874.392
                -1.0            -412.574
                 0.0                 0.0
                 1.0             366.174
                 2.0             688.792
                 3.0            970.6979
                 4.0            1214.736
                 5.0             1423.75
                 6.0            1600.584
                 7.0            1748.082
                 8.0            1869.088
                 9.0            1966.446
                10.0              2043.0
                11.0            2101.594
                12.0            2145.072
                13.0            2176.278
                14.0            2198.056
                15.0             2213.25
                16.0            2224.704
                17.0            2235.261
                18.0            2247.767
                19.0            2265.066
                20.0              2290.0
                30.0              3585.0
                40.0              8772.0
                50.0             20695.0
                60.0             42198.0
                70.0             76125.0
                80.0            125320.0
                90.0            192627.0
               100.0            280890.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3000016         0   0.01745       1.0       0.0       0.0         0         0
$
$                 a1                  o1
$#                a1                  o1  
               -10.0   -1.0000000000e+07
                -6.0           -100000.0
                -5.0             -1000.0
                 0.0                 0.0
                 1.0             50000.0
                 5.0             50000.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$  3000017         0 10.000000  0.009807
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3000017         0      10.0&scfrc           0.0       0.0         0         0
$
$                 a1                  o1
$#                a1                  o1  
                 0.0                 0.0
                 1.0               545.0
                 3.0               545.0
                 4.5               545.0
                 5.0              2000.0
                 6.0             20000.0
                20.0             20000.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3000018         0       1.0       1.0       0.0       0.0         0         0
$
$                 a1                  o1
$#                a1                  o1  
                 0.0               0.005
                20.0               0.005
                21.0                 0.0
               170.0                 0.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$  3000019         0  1.000000  0.001000 15.000000
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3000019         0       1.0&sabpr    &abtrg           0.0         0         0
$
$                 a1                  o1
$#                a1                  o1  
                 0.0                 0.0
                 1.0            0.011137
                 2.0           0.0074712
                 3.0            0.016539
                 4.0             0.55058
                 5.0              1.0335
                 6.0              1.3941
                 7.0              1.6323
                 8.0              1.7481
                 9.0              1.7414
                10.0              1.6124
                11.0              1.6929
                12.0              1.7199
                13.0              1.6937
                14.0              1.6141
                15.0              1.4812
                16.0              1.3845
                17.0              1.3032
                18.0              1.2373
                19.0              1.1868
                20.0              1.1518
                21.0               1.117
                22.0              1.0776
                23.0              1.0335
                24.0             0.98487
                25.0             0.93156
                26.0             0.87015
                27.0             0.80539
                28.0             0.73727
                29.0             0.66579
                30.0             0.59096
                31.0               0.542
                32.0             0.48684
                33.0             0.42547
                34.0             0.35789
                35.0              0.2841
                36.0             0.26754
                37.0              0.2453
                38.0             0.21739
                39.0             0.18381
                40.0             0.14457
                41.0             0.14714
                42.0             0.13752
                43.0              0.1157
                44.0              0.0817
                45.0            0.035505
                46.0            0.035453
                47.0            0.035385
                48.0              0.0353
                49.0              0.0352
                50.0            0.035083
                51.0            0.035117
                52.0            0.035122
                53.0            0.035097
                54.0            0.035043
                55.0             0.03496
                56.0                 0.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3000020         0       1.0&ableak          0.0       0.0         0         0
$  3000019         0  1.000000  0.001000 15.000000
$
$                 a1                  o1
$#                a1                  o1  
                 0.0              1265.0
    1.0130000010e-04              1265.0
    1.4259999443e-04              2597.0
                 1.0              2597.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080001         0    1000.0     0.001       0.0       0.0         0         0
$
$                 a1                  o1
$      (Penetration)             (Force)
$           (meters)                 (N)
$
$#                a1                  o1  
                 0.0                 0.0
               0.025              1600.0
                 0.1              2400.0
               0.175              2400.0
                0.22              3200.0
                0.24              4800.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080002         0    1000.0     0.001       0.0       0.0         0         0
$
$                 a1                  o1
$      (Penetration)             (Force)
$           (meters)                 (N)
$
$#                a1                  o1  
                 0.0                 0.0
               0.025             13500.0
                 0.1             20250.0
               0.175             20250.0
                0.22             27000.0
                0.24             40500.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080003         0    1000.0     0.001       0.0       0.0         0         0
$
$                 a1                  o1
$      (Penetration)             (Force)
$           (meters)                 (N)
$
$#                a1                  o1  
                 0.0                 0.0
               0.025             10000.0
                 0.1             15000.0
               0.175             15000.0
                0.22             20000.0
                0.24             30000.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080004         0    1000.0      -1.0       0.0       0.0         0         0
$
$ sfa = 1000.0 changes the given Time from "seconds" to "milliseconds".
$ sfo = -1.000 changes the "direction" of the given Pitch about the Y-axis.
$              (the front of the vehicle goes down and the rear goes up)
$
$ The following is the Pitch Angle in Radians (should be measured from test).
$
$                 a1                  o1
$  (Time in seconds)  (Pitch in Radians)
$
$#                a1                  o1  
                 0.0                 0.0
                0.02                 0.0
               0.055                0.03
               0.125               0.035
                 0.2               0.035
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080005         0    1000.0    1000.0       0.0       0.0         0         0
$
$ sfa = 1000.0 changes the given Time from "seconds" to "milliseconds".
$ sfo = 1000.0 changes the given Drop from "meters" to "millimeters".
$
$ The following is the Drop in metres (should be measured from test).
$
$                 a1                  o1
$  (Time in seconds)    (Drop in meters)
$
$#                a1                  o1  
                 0.0                 0.0
                0.02                 0.0
                 0.1               -0.06
                0.15               -0.08
                 0.2               -0.08
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080006         0       1.0       1.0       0.0       0.0         0         0
$
$ The following curve represents "zero motion".
$
$                 a1                  o1
$
$#                a1                  o1  
                 0.0                 0.0
              1200.0                 0.0
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080007         0    1000.0      -1.0       0.0       0.0         0         0
$
$ sfa = 1000.0 changes the given Time from "seconds" to "milliseconds".
$ sfo = -1.000 changes the "direction" of the given Yaw about the Z-axis.
$  (from top view the front of the vehicle rotates right, the rear rotates left)
$
$ The following curve represents "YAW about the Vertical Axis (Z)".
$
$                 a1                  o1
$  (Time in seconds)    (Yaw in Radians)
$
$#                a1                  o1  
                 0.0                 0.0
                0.02                 0.0
               0.055                0.03
               0.125               0.035
                 0.2               0.035
*DEFINE_CURVE
$
$     lcid      sidr       sfa       sfo      offa      offo    dattyp
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
   3080008         0    1000.0    -0.001       0.0       0.0         0         0
$
$ sfa = 1000.0 changes the given Time from "seconds" to "milliseconds".
$ sfo = -0.001 changes the given Acceleration from "m/s" to "mm/ms**2".
$
$ The following is the Pulse in m/sec**2 (should be measured from test).
$
$          (Seconds)          (m/sec**2)
$                 a1                  o1
$#                a1                  o1  
                 0.0                 0.0
                0.02              -250.0
                0.06              -250.0
               0.085                 0.0
                 0.2                 0.0
$
$
$
$-------------------------------------------------------------------------------
$
$
$
$************** End DEFINE CURVE Block *****************************************
$
$
$
$
$
$
*AIRBAG_WANG_NEFSKE_ID
$
$       id                                                                 title
$#      id                                                                 title
         1                                                                      
$
$      sid    sidtyp      rbid      vsca      psca      vini       mwd      spsf
$#     sid    sidtyp      rbid      vsca      psca      vini       mwd      spsf
   3000042         1         0       1.0       1.0       0.0       0.0       0.0
$
$       cv        cp         t       lct      lcmt      tvol      lcdt      iabt
$#      cv        cp         t       lct      lcmt      tvol      lcdt      iabt
    1023.0    1320.0     781.9         0   3000019       0.0         0       0.0
$
$      c23     lcc23       a23     lca23      cp23    lccp23      ap23    lcap23
$#     c23     lcc23       a23     lca23      cp23    lccp23      ap23    lcap23
       1.0         0       0.0   3000020       1.0         0       0.0         0
$
$       pe        ro        gc     lcefr     pover      ppop       opt     knkdn
$#      pe        ro        gc     lcefr     pover      ppop       opt     knkdn
1.01300E-41.00000E-9       1.0         0       0.0       0.0         1         0
$
$      ioc       ioa      ivol       iro        it      lcbf     hconv
$#     ioc       ioa      ivol       iro        it      lcbf    
       0.0       0.0       0.0       0.0       0.0         0
$
$
$************** Begin CONSTRAINED RIGID BODIES & EXTRA NODES Block *************
$
$
*CONSTRAINED_EXTRA_NODES_SET
$
$      pid      nsid
$#     pid      nsid     iflag     
   3000081   3000040         0
$
$
$
$
$
$
$$$$$$$$$$$$$$$ Begin SET_NODE Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
*SET_NODE_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000040       0.0       0.0       0.0       0.0MECH
$
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   3002168         0         0         0         0         0         0         0
$
$
*CONSTRAINED_EXTRA_NODES_SET
$
$      pid      nsid
$#     pid      nsid     iflag     
   3000082   3000041         0
$
$
*SET_NODE_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000041       0.0       0.0       0.0       0.0MECH
$
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   3002167   3002170   3002173         0         0         0         0         0
$
$
*CONSTRAINED_EXTRA_NODES_SET
$
$      pid      nsid
$#     pid      nsid     iflag     
   3000083   3000042         0
$
$
*SET_NODE_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000042       0.0       0.0       0.0       0.0MECH
$
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   3000693   3000694   3000703   3000704   3000776   3000777   3000841   3000850
$
   3000914   3002164         0         0         0         0         0         0
$
$
*CONSTRAINED_EXTRA_NODES_SET
$
$      pid      nsid
$#     pid      nsid     iflag     
   3000084   3000043         0
$
$
*SET_NODE_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000043       0.0       0.0       0.0       0.0MECH
$
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   3002163   3002165   3002166   3002171   3002172         0         0         0
$
$
*CONSTRAINED_EXTRA_NODES_SET
$
$      pid      nsid
$#     pid      nsid     iflag     
   3000087   3000044         0
$
$
*SET_NODE_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000044       0.0       0.0       0.0       0.0MECH
$
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
   3002174         0         0         0         0         0         0         0
$
$
$
$************** Begin CONSTRAINED RIGID BODIES & EXTRA NODES Block *************
$
$
$
$
$
$ The following Joint is between the Steering Rim and the Column.
$
*CONSTRAINED_JOINT_SPHERICAL_ID
$
$      jid                                                                 title
$#     jid                                                                 title
   3000037                                                                      
$
$       n1        n2        n3        n4        n5        n6       rps      damp
$#      n1        n2        n3        n4        n5        n6       rps      damp
   3002163   3002164         0         0         0         0       1.0       1.0
$
$
$
$ The following Joint is to simulate Column "up and down rotational motion".
$
*CONSTRAINED_JOINT_SPHERICAL_ID
$
$      jid                                                                 title
   3000038                                                                      
$
$       n1        n2        n3        n4        n5        n6       rps      damp
   3001564   3002168         0         0         0         0       1.0       1.0
$
$
$
$ The following is the "Joint Stiffness" between the Steering Rim and the Column.
$
*CONSTRAINED_JOINT_STIFFNESS_GENERALIZED
$
$     jsid      pida      pidb      cida      cidb       jid
$#    jsid      pida      pidb      cida      cidb       jid   
   3000022   3000083   3000084   3000036   3000036         0
$
$   lcidph     lcidt    lcidps   dlcidph    dlcidt   dlcidps
$#  lcidph     lcidt    lcidps   dlcidph    dlcidt   dlcidps       
         0   3000015   3000015         0         0         0
$
$     esph      fmph       est       fmt      esps      fmps
$#    esph      fmph       est       fmt      esps      fmps    
  500000.0       0.0  500000.0       0.0  500000.0       0.0
$
$    nsaph     psaph      nsat      psat     nsaps     psaps
$#   nsaph     psaph      nsat      psat     nsaps     psaps     
1.00000E-4-1.0000E-4     -20.0      20.01.00000E-4-1.0000E-4
$
$
$
$ The following is the "Joint Stiffness" for the Column Rotation.
$
*CONSTRAINED_JOINT_STIFFNESS_GENERALIZED
$
$     jsid      pida      pidb      cida      cidb       jid
$#    jsid      pida      pidb      cida      cidb       jid   
   3000023   3000081   3000082   3000037   3000037         0
$
$   lcidph     lcidt    lcidps   dlcidph    dlcidt   dlcidps
$#  lcidph     lcidt    lcidps   dlcidph    dlcidt   dlcidps       
         0   3000016         0         0         0         0
$
$     esph      fmph       est       fmt      esps      fmps
$#    esph      fmph       est       fmt      esps      fmps    
  500000.0       0.0  500000.0       0.0  500000.0       0.0
$
$    nsaph     psaph      nsat      psat     nsaps     psaps
$#   nsaph     psaph      nsat      psat     nsaps     psaps     
1.00000E-4-1.0000E-4      -5.0       1.01.00000E-4-1.0000E-4
$
$
$ The following constraints "merge" the major planes of the vehicle to just one
$ rigid part and that is Part-3000081. As a result, applying Prescribed_Motion
$ to just Part-3000081, applies it to the whole vehicle.
$
*CONSTRAINED_RIGID_BODIES
$
$     pidm      pids     iflag
$#    pidm      pids     iflag     
   3000081   3000085         0
   3000081   3000086         0
   3000081   3000095         0
   3000081   3000096         0
   3000081   3000098         0
   3000081   3000099         0
   3000081   3000100         0
$
$
$
$
$
*DAMPING_PART_MASS
$#     pid      lcid        sf      flag    
   3000093   3000018       1.0         0
$
*DAMPING_PART_MASS
$#     pid      lcid        sf      flag    
   3000094   3000018       1.0         0
$
$
$
$$$$$$$$$$$$$$$ End SET_NODE Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
*SET_PART_LIST
$
$      sid       da1       da2       da3       da4
$#     sid       da1       da2       da3       da4    solver      
   3000042       0.0       0.0       0.0       0.0MECH
$#    pid1      pid2      pid3      pid4      pid5      pid6      pid7      pid8
   3000093   3000094         0         0         0         0         0         0
$
$
$
$$$$$$$$$$$$$$$ Begin ELEMENTS Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
*ELEMENT_SHELL
$    eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
$#   eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
 3000001 3000093 3000273 3000369 3000278 3000278       0       0       0       0
 3000002 3000093 3000277 3000283 3000282 3000282       0       0       0       0
 3000003 3000093 3000282 3000290 3000289 3000289       0       0       0       0
 3000004 3000093 3000289 3000298 3000297 3000297       0       0       0       0
 3000005 3000093 3000297 3000307 3000306 3000306       0       0       0       0
 3000006 3000093 3000316 3000370 3000326 3000326       0       0       0       0
 3000007 3000093 3000380 3000374 3000371 3000371       0       0       0       0
 3000008 3000093 3000387 3000382 3000379 3000379       0       0       0       0
 3000009 3000093 3000395 3000389 3000387 3000387       0       0       0       0
 3000010 3000093 3000404 3000397 3000395 3000395       0       0       0       0
 3000011 3000093 3000414 3000406 3000404 3000404       0       0       0       0
 3000012 3000093 3000435 3000426 3000416 3000416       0       0       0       0
 3000013 3000093 3000465 3000461 3000458 3000458       0       0       0       0
 3000014 3000093 3000471 3000467 3000464 3000464       0       0       0       0
 3000015 3000093 3000478 3000473 3000471 3000471       0       0       0       0
 3000016 3000093 3000486 3000480 3000478 3000478       0       0       0       0
 3000017 3000093 3000495 3000488 3000486 3000486       0       0       0       0
 3000018 3000093 3000514 3000506 3000497 3000497       0       0       0       0
 3000019 3000093 3000545 3000548 3000552 3000552       0       0       0       0
 3000020 3000093 3000551 3000554 3000558 3000558       0       0       0       0
 3000021 3000093 3000558 3000560 3000565 3000565       0       0       0       0
 3000022 3000093 3000565 3000567 3000573 3000573       0       0       0       0
 3000023 3000093 3000573 3000575 3000582 3000582       0       0       0       0
 3000024 3000093 3000584 3000593 3000601 3000601       0       0       0       0
 3000025 3000093 3000273 3000274 3000279 3000369       0       0       0       0
 3000026 3000093 3000274 3000275 3000280 3000279       0       0       0       0
 3000027 3000093 3000275 3000276 3000281 3000280       0       0       0       0
 3000028 3000093 3000277 3000278 3000284 3000283       0       0       0       0
 3000029 3000093 3000278 3000369 3000285 3000284       0       0       0       0
 3000030 3000093 3000369 3000279 3000286 3000285       0       0       0       0
 3000031 3000093 3000279 3000280 3000287 3000286       0       0       0       0
 3000032 3000093 3000280 3000281 3000288 3000287       0       0       0       0
 3000033 3000093 3000282 3000283 3000291 3000290       0       0       0       0
 3000034 3000093 3000283 3000284 3000292 3000291       0       0       0       0
 3000035 3000093 3000284 3000285 3000293 3000292       0       0       0       0
 3000036 3000093 3000285 3000286 3000294 3000293       0       0       0       0
 3000037 3000093 3000286 3000287 3000295 3000294       0       0       0       0
 3000038 3000093 3000287 3000288 3000296 3000295       0       0       0       0
 3000039 3000093 3000289 3000290 3000299 3000298       0       0       0       0
 3000040 3000093 3000290 3000291 3000300 3000299       0       0       0       0
 3000041 3000093 3000291 3000292 3000301 3000300       0       0       0       0
 3000042 3000093 3000292 3000293 3000302 3000301       0       0       0       0
 3000043 3000093 3000293 3000294 3000303 3000302       0       0       0       0
 3000044 3000093 3000294 3000295 3000304 3000303       0       0       0       0
 3000045 3000093 3000295 3000296 3000305 3000304       0       0       0       0
 3000046 3000093 3000297 3000298 3000308 3000307       0       0       0       0
 3000047 3000093 3000298 3000299 3000309 3000308       0       0       0       0
 3000048 3000093 3000299 3000300 3000310 3000309       0       0       0       0
 3000049 3000093 3000300 3000301 3000311 3000310       0       0       0       0
 3000050 3000093 3000301 3000302 3000312 3000311       0       0       0       0
 3000051 3000093 3000302 3000303 3000313 3000312       0       0       0       0
 3000052 3000093 3000303 3000304 3000314 3000313       0       0       0       0
 3000053 3000093 3000304 3000305 3000315 3000314       0       0       0       0
 3000054 3000093 3000306 3000307 3000317 3000316       0       0       0       0
 3000055 3000093 3000307 3000308 3000318 3000317       0       0       0       0
 3000056 3000093 3000308 3000309 3000319 3000318       0       0       0       0
 3000057 3000093 3000309 3000310 3000320 3000319       0       0       0       0
 3000058 3000093 3000310 3000311 3000321 3000320       0       0       0       0
 3000059 3000093 3000311 3000312 3000322 3000321       0       0       0       0
 3000060 3000093 3000312 3000313 3000323 3000322       0       0       0       0
 3000061 3000093 3000313 3000314 3000324 3000323       0       0       0       0
 3000062 3000093 3000314 3000315 3000325 3000324       0       0       0       0
 3000063 3000093 3000316 3000317 3000327 3000370       0       0       0       0
 3000064 3000093 3000317 3000318 3000328 3000327       0       0       0       0
 3000065 3000093 3000318 3000319 3000329 3000328       0       0       0       0
 3000066 3000093 3000319 3000320 3000330 3000329       0       0       0       0
 3000067 3000093 3000320 3000321 3000331 3000330       0       0       0       0
 3000068 3000093 3000321 3000322 3000332 3000331       0       0       0       0
 3000069 3000093 3000322 3000323 3000333 3000332       0       0       0       0
 3000070 3000093 3000323 3000324 3000334 3000333       0       0       0       0
 3000071 3000093 3000324 3000325 3000335 3000334       0       0       0       0
 3000072 3000093 3000326 3000370 3000337 3000336       0       0       0       0
 3000073 3000093 3000370 3000327 3000338 3000337       0       0       0       0
 3000074 3000093 3000327 3000328 3000339 3000338       0       0       0       0
 3000075 3000093 3000328 3000329 3000340 3000339       0       0       0       0
 3000076 3000093 3000329 3000330 3000341 3000340       0       0       0       0
 3000077 3000093 3000330 3000331 3000342 3000341       0       0       0       0
 3000078 3000093 3000331 3000332 3000343 3000342       0       0       0       0
 3000079 3000093 3000332 3000333 3000344 3000343       0       0       0       0
 3000080 3000093 3000333 3000334 3000345 3000344       0       0       0       0
 3000081 3000093 3000334 3000335 3000346 3000345       0       0       0       0
 3000082 3000093 3000336 3000337 3000348 3000347       0       0       0       0
 3000083 3000093 3000337 3000338 3000349 3000348       0       0       0       0
 3000084 3000093 3000338 3000339 3000350 3000349       0       0       0       0
 3000085 3000093 3000339 3000340 3000351 3000350       0       0       0       0
 3000086 3000093 3000340 3000341 3000352 3000351       0       0       0       0
 3000087 3000093 3000341 3000342 3000353 3000352       0       0       0       0
 3000088 3000093 3000342 3000343 3000354 3000353       0       0       0       0
 3000089 3000093 3000343 3000344 3000355 3000354       0       0       0       0
 3000090 3000093 3000344 3000345 3000356 3000355       0       0       0       0
 3000091 3000093 3000345 3000346 3000357 3000356       0       0       0       0
 3000092 3000093 3000347 3000348 3000359 3000358       0       0       0       0
 3000093 3000093 3000348 3000349 3000360 3000359       0       0       0       0
 3000094 3000093 3000349 3000350 3000361 3000360       0       0       0       0
 3000095 3000093 3000350 3000351 3000362 3000361       0       0       0       0
 3000096 3000093 3000351 3000352 3000363 3000362       0       0       0       0
 3000097 3000093 3000352 3000353 3000364 3000363       0       0       0       0
 3000098 3000093 3000353 3000354 3000365 3000364       0       0       0       0
 3000099 3000093 3000354 3000355 3000366 3000365       0       0       0       0
 3000100 3000093 3000355 3000356 3000367 3000366       0       0       0       0
 3000101 3000093 3000356 3000357 3000368 3000367       0       0       0       0
 3000102 3000093 3000374 3000373 3000372 3000371       0       0       0       0
 3000103 3000093 3000373 3000376 3000375 3000372       0       0       0       0
 3000104 3000093 3000376 3000378 3000377 3000375       0       0       0       0
 3000105 3000093 3000382 3000381 3000380 3000379       0       0       0       0
 3000106 3000093 3000381 3000383 3000374 3000380       0       0       0       0
 3000107 3000093 3000383 3000384 3000373 3000374       0       0       0       0
 3000108 3000093 3000384 3000385 3000376 3000373       0       0       0       0
 3000109 3000093 3000385 3000386 3000378 3000376       0       0       0       0
 3000110 3000093 3000389 3000388 3000382 3000387       0       0       0       0
 3000111 3000093 3000388 3000390 3000381 3000382       0       0       0       0
 3000112 3000093 3000390 3000391 3000383 3000381       0       0       0       0
 3000113 3000093 3000391 3000392 3000384 3000383       0       0       0       0
 3000114 3000093 3000392 3000393 3000385 3000384       0       0       0       0
 3000115 3000093 3000393 3000394 3000386 3000385       0       0       0       0
 3000116 3000093 3000397 3000396 3000389 3000395       0       0       0       0
 3000117 3000093 3000396 3000398 3000388 3000389       0       0       0       0
 3000118 3000093 3000398 3000399 3000390 3000388       0       0       0       0
 3000119 3000093 3000399 3000400 3000391 3000390       0       0       0       0
 3000120 3000093 3000400 3000401 3000392 3000391       0       0       0       0
 3000121 3000093 3000401 3000402 3000393 3000392       0       0       0       0
 3000122 3000093 3000402 3000403 3000394 3000393       0       0       0       0
 3000123 3000093 3000406 3000405 3000397 3000404       0       0       0       0
 3000124 3000093 3000405 3000407 3000396 3000397       0       0       0       0
 3000125 3000093 3000407 3000408 3000398 3000396       0       0       0       0
 3000126 3000093 3000408 3000409 3000399 3000398       0       0       0       0
 3000127 3000093 3000409 3000410 3000400 3000399       0       0       0       0
 3000128 3000093 3000410 3000411 3000401 3000400       0       0       0       0
 3000129 3000093 3000411 3000412 3000402 3000401       0       0       0       0
 3000130 3000093 3000412 3000413 3000403 3000402       0       0       0       0
 3000131 3000093 3000416 3000415 3000406 3000414       0       0       0       0
 3000132 3000093 3000415 3000417 3000405 3000406       0       0       0       0
 3000133 3000093 3000417 3000418 3000407 3000405       0       0       0       0
 3000134 3000093 3000418 3000419 3000408 3000407       0       0       0       0
 3000135 3000093 3000419 3000420 3000409 3000408       0       0       0       0
 3000136 3000093 3000420 3000421 3000410 3000409       0       0       0       0
 3000137 3000093 3000421 3000422 3000411 3000410       0       0       0       0
 3000138 3000093 3000422 3000423 3000412 3000411       0       0       0       0
 3000139 3000093 3000423 3000424 3000413 3000412       0       0       0       0
 3000140 3000093 3000426 3000425 3000415 3000416       0       0       0       0
 3000141 3000093 3000425 3000427 3000417 3000415       0       0       0       0
 3000142 3000093 3000427 3000428 3000418 3000417       0       0       0       0
 3000143 3000093 3000428 3000429 3000419 3000418       0       0       0       0
 3000144 3000093 3000429 3000430 3000420 3000419       0       0       0       0
 3000145 3000093 3000430 3000431 3000421 3000420       0       0       0       0
 3000146 3000093 3000431 3000432 3000422 3000421       0       0       0       0
 3000147 3000093 3000432 3000433 3000423 3000422       0       0       0       0
 3000148 3000093 3000433 3000434 3000424 3000423       0       0       0       0
 3000149 3000093 3000437 3000436 3000426 3000435       0       0       0       0
 3000150 3000093 3000436 3000438 3000425 3000426       0       0       0       0
 3000151 3000093 3000438 3000439 3000427 3000425       0       0       0       0
 3000152 3000093 3000439 3000440 3000428 3000427       0       0       0       0
 3000153 3000093 3000440 3000441 3000429 3000428       0       0       0       0
 3000154 3000093 3000441 3000442 3000430 3000429       0       0       0       0
 3000155 3000093 3000442 3000443 3000431 3000430       0       0       0       0
 3000156 3000093 3000443 3000444 3000432 3000431       0       0       0       0
 3000157 3000093 3000444 3000445 3000433 3000432       0       0       0       0
 3000158 3000093 3000445 3000446 3000434 3000433       0       0       0       0
 3000159 3000093 3000448 3000447 3000436 3000437       0       0       0       0
 3000160 3000093 3000447 3000449 3000438 3000436       0       0       0       0
 3000161 3000093 3000449 3000450 3000439 3000438       0       0       0       0
 3000162 3000093 3000450 3000451 3000440 3000439       0       0       0       0
 3000163 3000093 3000451 3000452 3000441 3000440       0       0       0       0
 3000164 3000093 3000452 3000453 3000442 3000441       0       0       0       0
 3000165 3000093 3000453 3000454 3000443 3000442       0       0       0       0
 3000166 3000093 3000454 3000455 3000444 3000443       0       0       0       0
 3000167 3000093 3000455 3000456 3000445 3000444       0       0       0       0
 3000168 3000093 3000456 3000457 3000446 3000445       0       0       0       0
 3000169 3000093 3000358 3000359 3000447 3000448       0       0       0       0
 3000170 3000093 3000359 3000360 3000449 3000447       0       0       0       0
 3000171 3000093 3000360 3000361 3000450 3000449       0       0       0       0
 3000172 3000093 3000361 3000362 3000451 3000450       0       0       0       0
 3000173 3000093 3000362 3000363 3000452 3000451       0       0       0       0
 3000174 3000093 3000363 3000364 3000453 3000452       0       0       0       0
 3000175 3000093 3000364 3000365 3000454 3000453       0       0       0       0
 3000176 3000093 3000365 3000366 3000455 3000454       0       0       0       0
 3000177 3000093 3000366 3000367 3000456 3000455       0       0       0       0
 3000178 3000093 3000367 3000368 3000457 3000456       0       0       0       0
 3000179 3000093 3000461 3000460 3000459 3000458       0       0       0       0
 3000180 3000093 3000460 3000463 3000462 3000459       0       0       0       0
 3000181 3000093 3000463 3000281 3000276 3000462       0       0       0       0
 3000182 3000093 3000467 3000466 3000465 3000464       0       0       0       0
 3000183 3000093 3000466 3000468 3000461 3000465       0       0       0       0
 3000184 3000093 3000468 3000469 3000460 3000461       0       0       0       0
 3000185 3000093 3000469 3000470 3000463 3000460       0       0       0       0
 3000186 3000093 3000470 3000288 3000281 3000463       0       0       0       0
 3000187 3000093 3000473 3000472 3000467 3000471       0       0       0       0
 3000188 3000093 3000472 3000474 3000466 3000467       0       0       0       0
 3000189 3000093 3000474 3000475 3000468 3000466       0       0       0       0
 3000190 3000093 3000475 3000476 3000469 3000468       0       0       0       0
 3000191 3000093 3000476 3000477 3000470 3000469       0       0       0       0
 3000192 3000093 3000477 3000296 3000288 3000470       0       0       0       0
 3000193 3000093 3000480 3000479 3000473 3000478       0       0       0       0
 3000194 3000093 3000479 3000481 3000472 3000473       0       0       0       0
 3000195 3000093 3000481 3000482 3000474 3000472       0       0       0       0
 3000196 3000093 3000482 3000483 3000475 3000474       0       0       0       0
 3000197 3000093 3000483 3000484 3000476 3000475       0       0       0       0
 3000198 3000093 3000484 3000485 3000477 3000476       0       0       0       0
 3000199 3000093 3000485 3000305 3000296 3000477       0       0       0       0
 3000200 3000093 3000488 3000487 3000480 3000486       0       0       0       0
 3000201 3000093 3000487 3000489 3000479 3000480       0       0       0       0
 3000202 3000093 3000489 3000490 3000481 3000479       0       0       0       0
 3000203 3000093 3000490 3000491 3000482 3000481       0       0       0       0
 3000204 3000093 3000491 3000492 3000483 3000482       0       0       0       0
 3000205 3000093 3000492 3000493 3000484 3000483       0       0       0       0
 3000206 3000093 3000493 3000494 3000485 3000484       0       0       0       0
 3000207 3000093 3000494 3000315 3000305 3000485       0       0       0       0
 3000208 3000093 3000497 3000496 3000488 3000495       0       0       0       0
 3000209 3000093 3000496 3000498 3000487 3000488       0       0       0       0
 3000210 3000093 3000498 3000499 3000489 3000487       0       0       0       0
 3000211 3000093 3000499 3000500 3000490 3000489       0       0       0       0
 3000212 3000093 3000500 3000501 3000491 3000490       0       0       0       0
 3000213 3000093 3000501 3000502 3000492 3000491       0       0       0       0
 3000214 3000093 3000502 3000503 3000493 3000492       0       0       0       0
 3000215 3000093 3000503 3000504 3000494 3000493       0       0       0       0
 3000216 3000093 3000504 3000325 3000315 3000494       0       0       0       0
 3000217 3000093 3000506 3000505 3000496 3000497       0       0       0       0
 3000218 3000093 3000505 3000507 3000498 3000496       0       0       0       0
 3000219 3000093 3000507 3000508 3000499 3000498       0       0       0       0
 3000220 3000093 3000508 3000509 3000500 3000499       0       0       0       0
 3000221 3000093 3000509 3000510 3000501 3000500       0       0       0       0
 3000222 3000093 3000510 3000511 3000502 3000501       0       0       0       0
 3000223 3000093 3000511 3000512 3000503 3000502       0       0       0       0
 3000224 3000093 3000512 3000513 3000504 3000503       0       0       0       0
 3000225 3000093 3000513 3000335 3000325 3000504       0       0       0       0
 3000226 3000093 3000516 3000515 3000506 3000514       0       0       0       0
 3000227 3000093 3000515 3000517 3000505 3000506       0       0       0       0
 3000228 3000093 3000517 3000518 3000507 3000505       0       0       0       0
 3000229 3000093 3000518 3000519 3000508 3000507       0       0       0       0
 3000230 3000093 3000519 3000520 3000509 3000508       0       0       0       0
 3000231 3000093 3000520 3000521 3000510 3000509       0       0       0       0
 3000232 3000093 3000521 3000522 3000511 3000510       0       0       0       0
 3000233 3000093 3000522 3000523 3000512 3000511       0       0       0       0
 3000234 3000093 3000523 3000524 3000513 3000512       0       0       0       0
 3000235 3000093 3000524 3000346 3000335 3000513       0       0       0       0
 3000236 3000093 3000526 3000525 3000515 3000516       0       0       0       0
 3000237 3000093 3000525 3000527 3000517 3000515       0       0       0       0
 3000238 3000093 3000527 3000528 3000518 3000517       0       0       0       0
 3000239 3000093 3000528 3000529 3000519 3000518       0       0       0       0
 3000240 3000093 3000529 3000530 3000520 3000519       0       0       0       0
 3000241 3000093 3000530 3000531 3000521 3000520       0       0       0       0
 3000242 3000093 3000531 3000532 3000522 3000521       0       0       0       0
 3000243 3000093 3000532 3000533 3000523 3000522       0       0       0       0
 3000244 3000093 3000533 3000534 3000524 3000523       0       0       0       0
 3000245 3000093 3000534 3000357 3000346 3000524       0       0       0       0
 3000246 3000093 3000536 3000535 3000525 3000526       0       0       0       0
 3000247 3000093 3000535 3000537 3000527 3000525       0       0       0       0
 3000248 3000093 3000537 3000538 3000528 3000527       0       0       0       0
 3000249 3000093 3000538 3000539 3000529 3000528       0       0       0       0
 3000250 3000093 3000539 3000540 3000530 3000529       0       0       0       0
 3000251 3000093 3000540 3000541 3000531 3000530       0       0       0       0
 3000252 3000093 3000541 3000542 3000532 3000531       0       0       0       0
 3000253 3000093 3000542 3000543 3000533 3000532       0       0       0       0
 3000254 3000093 3000543 3000544 3000534 3000533       0       0       0       0
 3000255 3000093 3000544 3000368 3000357 3000534       0       0       0       0
 3000256 3000093 3000545 3000546 3000547 3000548       0       0       0       0
 3000257 3000093 3000546 3000549 3000550 3000547       0       0       0       0
 3000258 3000093 3000549 3000377 3000378 3000550       0       0       0       0
 3000259 3000093 3000551 3000552 3000553 3000554       0       0       0       0
 3000260 3000093 3000552 3000548 3000555 3000553       0       0       0       0
 3000261 3000093 3000548 3000547 3000556 3000555       0       0       0       0
 3000262 3000093 3000547 3000550 3000557 3000556       0       0       0       0
 3000263 3000093 3000550 3000378 3000386 3000557       0       0       0       0
 3000264 3000093 3000558 3000554 3000559 3000560       0       0       0       0
 3000265 3000093 3000554 3000553 3000561 3000559       0       0       0       0
 3000266 3000093 3000553 3000555 3000562 3000561       0       0       0       0
 3000267 3000093 3000555 3000556 3000563 3000562       0       0       0       0
 3000268 3000093 3000556 3000557 3000564 3000563       0       0       0       0
 3000269 3000093 3000557 3000386 3000394 3000564       0       0       0       0
 3000270 3000093 3000565 3000560 3000566 3000567       0       0       0       0
 3000271 3000093 3000560 3000559 3000568 3000566       0       0       0       0
 3000272 3000093 3000559 3000561 3000569 3000568       0       0       0       0
 3000273 3000093 3000561 3000562 3000570 3000569       0       0       0       0
 3000274 3000093 3000562 3000563 3000571 3000570       0       0       0       0
 3000275 3000093 3000563 3000564 3000572 3000571       0       0       0       0
 3000276 3000093 3000564 3000394 3000403 3000572       0       0       0       0
 3000277 3000093 3000573 3000567 3000574 3000575       0       0       0       0
 3000278 3000093 3000567 3000566 3000576 3000574       0       0       0       0
 3000279 3000093 3000566 3000568 3000577 3000576       0       0       0       0
 3000280 3000093 3000568 3000569 3000578 3000577       0       0       0       0
 3000281 3000093 3000569 3000570 3000579 3000578       0       0       0       0
 3000282 3000093 3000570 3000571 3000580 3000579       0       0       0       0
 3000283 3000093 3000571 3000572 3000581 3000580       0       0       0       0
 3000284 3000093 3000572 3000403 3000413 3000581       0       0       0       0
 3000285 3000093 3000582 3000575 3000583 3000584       0       0       0       0
 3000286 3000093 3000575 3000574 3000585 3000583       0       0       0       0
 3000287 3000093 3000574 3000576 3000586 3000585       0       0       0       0
 3000288 3000093 3000576 3000577 3000587 3000586       0       0       0       0
 3000289 3000093 3000577 3000578 3000588 3000587       0       0       0       0
 3000290 3000093 3000578 3000579 3000589 3000588       0       0       0       0
 3000291 3000093 3000579 3000580 3000590 3000589       0       0       0       0
 3000292 3000093 3000580 3000581 3000591 3000590       0       0       0       0
 3000293 3000093 3000581 3000413 3000424 3000591       0       0       0       0
 3000294 3000093 3000584 3000583 3000592 3000593       0       0       0       0
 3000295 3000093 3000583 3000585 3000594 3000592       0       0       0       0
 3000296 3000093 3000585 3000586 3000595 3000594       0       0       0       0
 3000297 3000093 3000586 3000587 3000596 3000595       0       0       0       0
 3000298 3000093 3000587 3000588 3000597 3000596       0       0       0       0
 3000299 3000093 3000588 3000589 3000598 3000597       0       0       0       0
 3000300 3000093 3000589 3000590 3000599 3000598       0       0       0       0
 3000301 3000093 3000590 3000591 3000600 3000599       0       0       0       0
 3000302 3000093 3000591 3000424 3000434 3000600       0       0       0       0
 3000303 3000093 3000601 3000593 3000602 3000603       0       0       0       0
 3000304 3000093 3000593 3000592 3000604 3000602       0       0       0       0
 3000305 3000093 3000592 3000594 3000605 3000604       0       0       0       0
 3000306 3000093 3000594 3000595 3000606 3000605       0       0       0       0
 3000307 3000093 3000595 3000596 3000607 3000606       0       0       0       0
 3000308 3000093 3000596 3000597 3000608 3000607       0       0       0       0
 3000309 3000093 3000597 3000598 3000609 3000608       0       0       0       0
 3000310 3000093 3000598 3000599 3000610 3000609       0       0       0       0
 3000311 3000093 3000599 3000600 3000611 3000610       0       0       0       0
 3000312 3000093 3000600 3000434 3000446 3000611       0       0       0       0
 3000313 3000093 3000603 3000602 3000612 3000613       0       0       0       0
 3000314 3000093 3000602 3000604 3000614 3000612       0       0       0       0
 3000315 3000093 3000604 3000605 3000615 3000614       0       0       0       0
 3000316 3000093 3000605 3000606 3000616 3000615       0       0       0       0
 3000317 3000093 3000606 3000607 3000617 3000616       0       0       0       0
 3000318 3000093 3000607 3000608 3000618 3000617       0       0       0       0
 3000319 3000093 3000608 3000609 3000619 3000618       0       0       0       0
 3000320 3000093 3000609 3000610 3000620 3000619       0       0       0       0
 3000321 3000093 3000610 3000611 3000621 3000620       0       0       0       0
 3000322 3000093 3000611 3000446 3000457 3000621       0       0       0       0
 3000323 3000093 3000613 3000612 3000535 3000536       0       0       0       0
 3000324 3000093 3000612 3000614 3000537 3000535       0       0       0       0
 3000325 3000093 3000614 3000615 3000538 3000537       0       0       0       0
 3000326 3000093 3000615 3000616 3000539 3000538       0       0       0       0
 3000327 3000093 3000616 3000617 3000540 3000539       0       0       0       0
 3000328 3000093 3000617 3000618 3000541 3000540       0       0       0       0
 3000329 3000093 3000618 3000619 3000542 3000541       0       0       0       0
 3000330 3000093 3000619 3000620 3000543 3000542       0       0       0       0
 3000331 3000093 3000620 3000621 3000544 3000543       0       0       0       0
 3000332 3000093 3000621 3000457 3000368 3000544       0       0       0       0
 3000333 3000094 3000278 3000623 3000273 3000273       0       0       0       0
 3000334 3000094 3000282 3000627 3000277 3000277       0       0       0       0
 3000335 3000094 3000289 3000633 3000282 3000282       0       0       0       0
 3000336 3000094 3000297 3000640 3000289 3000289       0       0       0       0
 3000337 3000094 3000306 3000648 3000297 3000297       0       0       0       0
 3000338 3000094 3000326 3000666 3000316 3000316       0       0       0       0
 3000339 3000094 3000371 3000706 3000380 3000380       0       0       0       0
 3000340 3000094 3000379 3000710 3000387 3000387       0       0       0       0
 3000341 3000094 3000387 3000716 3000395 3000395       0       0       0       0
 3000342 3000094 3000395 3000723 3000404 3000404       0       0       0       0
 3000343 3000094 3000404 3000731 3000414 3000414       0       0       0       0
 3000344 3000094 3000416 3000749 3000435 3000435       0       0       0       0
 3000345 3000094 3000458 3000779 3000465 3000465       0       0       0       0
 3000346 3000094 3000464 3000782 3000471 3000471       0       0       0       0
 3000347 3000094 3000471 3000787 3000478 3000478       0       0       0       0
 3000348 3000094 3000478 3000793 3000486 3000486       0       0       0       0
 3000349 3000094 3000486 3000800 3000495 3000495       0       0       0       0
 3000350 3000094 3000497 3000816 3000514 3000514       0       0       0       0
 3000351 3000094 3000552 3000852 3000545 3000545       0       0       0       0
 3000352 3000094 3000558 3000855 3000551 3000551       0       0       0       0
 3000353 3000094 3000565 3000860 3000558 3000558       0       0       0       0
 3000354 3000094 3000573 3000866 3000565 3000565       0       0       0       0
 3000355 3000094 3000582 3000873 3000573 3000573       0       0       0       0
 3000356 3000094 3000601 3000889 3000584 3000584       0       0       0       0
 3000357 3000094 3000623 3000622 3000274 3000273       0       0       0       0
 3000358 3000094 3000622 3000624 3000275 3000274       0       0       0       0
 3000359 3000094 3000624 3000625 3000276 3000275       0       0       0       0
 3000360 3000094 3000627 3000626 3000278 3000277       0       0       0       0
 3000361 3000094 3000626 3000628 3000623 3000278       0       0       0       0
 3000362 3000094 3000628 3000629 3000622 3000623       0       0       0       0
 3000363 3000094 3000629 3000630 3000624 3000622       0       0       0       0
 3000364 3000094 3000630 3000631 3000625 3000624       0       0       0       0
 3000365 3000094 3000633 3000632 3000627 3000282       0       0       0       0
 3000366 3000094 3000632 3000634 3000626 3000627       0       0       0       0
 3000367 3000094 3000634 3000635 3000628 3000626       0       0       0       0
 3000368 3000094 3000635 3000636 3000629 3000628       0       0       0       0
 3000369 3000094 3000636 3000637 3000630 3000629       0       0       0       0
 3000370 3000094 3000637 3000638 3000631 3000630       0       0       0       0
 3000371 3000094 3000640 3000639 3000633 3000289       0       0       0       0
 3000372 3000094 3000639 3000641 3000632 3000633       0       0       0       0
 3000373 3000094 3000641 3000642 3000634 3000632       0       0       0       0
 3000374 3000094 3000642 3000643 3000635 3000634       0       0       0       0
 3000375 3000094 3000643 3000644 3000636 3000635       0       0       0       0
 3000376 3000094 3000644 3000645 3000637 3000636       0       0       0       0
 3000377 3000094 3000645 3000646 3000638 3000637       0       0       0       0
 3000378 3000094 3000648 3000647 3000640 3000297       0       0       0       0
 3000379 3000094 3000647 3000649 3000639 3000640       0       0       0       0
 3000380 3000094 3000649 3000650 3000641 3000639       0       0       0       0
 3000381 3000094 3000650 3000651 3000642 3000641       0       0       0       0
 3000382 3000094 3000651 3000652 3000643 3000642       0       0       0       0
 3000383 3000094 3000652 3000653 3000644 3000643       0       0       0       0
 3000384 3000094 3000653 3000654 3000645 3000644       0       0       0       0
 3000385 3000094 3000654 3000655 3000646 3000645       0       0       0       0
 3000386 3000094 3000316 3000656 3000648 3000306       0       0       0       0
 3000387 3000094 3000656 3000657 3000647 3000648       0       0       0       0
 3000388 3000094 3000657 3000658 3000649 3000647       0       0       0       0
 3000389 3000094 3000658 3000659 3000650 3000649       0       0       0       0
 3000390 3000094 3000659 3000660 3000651 3000650       0       0       0       0
 3000391 3000094 3000660 3000661 3000652 3000651       0       0       0       0
 3000392 3000094 3000661 3000662 3000653 3000652       0       0       0       0
 3000393 3000094 3000662 3000663 3000654 3000653       0       0       0       0
 3000394 3000094 3000663 3000664 3000655 3000654       0       0       0       0
 3000395 3000094 3000666 3000665 3000656 3000316       0       0       0       0
 3000396 3000094 3000665 3000667 3000657 3000656       0       0       0       0
 3000397 3000094 3000667 3000668 3000658 3000657       0       0       0       0
 3000398 3000094 3000668 3000669 3000659 3000658       0       0       0       0
 3000399 3000094 3000669 3000670 3000660 3000659       0       0       0       0
 3000400 3000094 3000670 3000671 3000661 3000660       0       0       0       0
 3000401 3000094 3000671 3000672 3000662 3000661       0       0       0       0
 3000402 3000094 3000672 3000673 3000663 3000662       0       0       0       0
 3000403 3000094 3000673 3000674 3000664 3000663       0       0       0       0
 3000404 3000094 3000336 3000675 3000666 3000326       0       0       0       0
 3000405 3000094 3000675 3000676 3000665 3000666       0       0       0       0
 3000406 3000094 3000676 3000677 3000667 3000665       0       0       0       0
 3000407 3000094 3000677 3000678 3000668 3000667       0       0       0       0
 3000408 3000094 3000678 3000679 3000669 3000668       0       0       0       0
 3000409 3000094 3000679 3000680 3000670 3000669       0       0       0       0
 3000410 3000094 3000680 3000681 3000671 3000670       0       0       0       0
 3000411 3000094 3000681 3000682 3000672 3000671       0       0       0       0
 3000412 3000094 3000682 3000683 3000673 3000672       0       0       0       0
 3000413 3000094 3000683 3000684 3000674 3000673       0       0       0       0
 3000414 3000094 3000347 3000685 3000675 3000336       0       0       0       0
 3000415 3000094 3000685 3000686 3000676 3000675       0       0       0       0
 3000416 3000094 3000686 3000687 3000677 3000676       0       0       0       0
 3000417 3000094 3000687 3000688 3000678 3000677       0       0       0       0
 3000418 3000094 3000688 3000689 3000679 3000678       0       0       0       0
 3000419 3000094 3000689 3000690 3000680 3000679       0       0       0       0
 3000420 3000094 3000690 3000691 3000681 3000680       0       0       0       0
 3000421 3000094 3000691 3000692 3000682 3000681       0       0       0       0
 3000422 3000094 3000692 3000693 3000683 3000682       0       0       0       0
 3000423 3000094 3000693 3000694 3000684 3000683       0       0       0       0
 3000424 3000094 3000358 3000695 3000685 3000347       0       0       0       0
 3000425 3000094 3000695 3000696 3000686 3000685       0       0       0       0
 3000426 3000094 3000696 3000697 3000687 3000686       0       0       0       0
 3000427 3000094 3000697 3000698 3000688 3000687       0       0       0       0
 3000428 3000094 3000698 3000699 3000689 3000688       0       0       0       0
 3000429 3000094 3000699 3000700 3000690 3000689       0       0       0       0
 3000430 3000094 3000700 3000701 3000691 3000690       0       0       0       0
 3000431 3000094 3000701 3000702 3000692 3000691       0       0       0       0
 3000432 3000094 3000702 3000703 3000693 3000692       0       0       0       0
 3000433 3000094 3000703 3000704 3000694 3000693       0       0       0       0
 3000434 3000094 3000371 3000372 3000705 3000706       0       0       0       0
 3000435 3000094 3000372 3000375 3000707 3000705       0       0       0       0
 3000436 3000094 3000375 3000377 3000708 3000707       0       0       0       0
 3000437 3000094 3000379 3000380 3000709 3000710       0       0       0       0
 3000438 3000094 3000380 3000706 3000711 3000709       0       0       0       0
 3000439 3000094 3000706 3000705 3000712 3000711       0       0       0       0
 3000440 3000094 3000705 3000707 3000713 3000712       0       0       0       0
 3000441 3000094 3000707 3000708 3000714 3000713       0       0       0       0
 3000442 3000094 3000387 3000710 3000715 3000716       0       0       0       0
 3000443 3000094 3000710 3000709 3000717 3000715       0       0       0       0
 3000444 3000094 3000709 3000711 3000718 3000717       0       0       0       0
 3000445 3000094 3000711 3000712 3000719 3000718       0       0       0       0
 3000446 3000094 3000712 3000713 3000720 3000719       0       0       0       0
 3000447 3000094 3000713 3000714 3000721 3000720       0       0       0       0
 3000448 3000094 3000395 3000716 3000722 3000723       0       0       0       0
 3000449 3000094 3000716 3000715 3000724 3000722       0       0       0       0
 3000450 3000094 3000715 3000717 3000725 3000724       0       0       0       0
 3000451 3000094 3000717 3000718 3000726 3000725       0       0       0       0
 3000452 3000094 3000718 3000719 3000727 3000726       0       0       0       0
 3000453 3000094 3000719 3000720 3000728 3000727       0       0       0       0
 3000454 3000094 3000720 3000721 3000729 3000728       0       0       0       0
 3000455 3000094 3000404 3000723 3000730 3000731       0       0       0       0
 3000456 3000094 3000723 3000722 3000732 3000730       0       0       0       0
 3000457 3000094 3000722 3000724 3000733 3000732       0       0       0       0
 3000458 3000094 3000724 3000725 3000734 3000733       0       0       0       0
 3000459 3000094 3000725 3000726 3000735 3000734       0       0       0       0
 3000460 3000094 3000726 3000727 3000736 3000735       0       0       0       0
 3000461 3000094 3000727 3000728 3000737 3000736       0       0       0       0
 3000462 3000094 3000728 3000729 3000738 3000737       0       0       0       0
 3000463 3000094 3000414 3000731 3000739 3000416       0       0       0       0
 3000464 3000094 3000731 3000730 3000740 3000739       0       0       0       0
 3000465 3000094 3000730 3000732 3000741 3000740       0       0       0       0
 3000466 3000094 3000732 3000733 3000742 3000741       0       0       0       0
 3000467 3000094 3000733 3000734 3000743 3000742       0       0       0       0
 3000468 3000094 3000734 3000735 3000744 3000743       0       0       0       0
 3000469 3000094 3000735 3000736 3000745 3000744       0       0       0       0
 3000470 3000094 3000736 3000737 3000746 3000745       0       0       0       0
 3000471 3000094 3000737 3000738 3000747 3000746       0       0       0       0
 3000472 3000094 3000416 3000739 3000748 3000749       0       0       0       0
 3000473 3000094 3000739 3000740 3000750 3000748       0       0       0       0
 3000474 3000094 3000740 3000741 3000751 3000750       0       0       0       0
 3000475 3000094 3000741 3000742 3000752 3000751       0       0       0       0
 3000476 3000094 3000742 3000743 3000753 3000752       0       0       0       0
 3000477 3000094 3000743 3000744 3000754 3000753       0       0       0       0
 3000478 3000094 3000744 3000745 3000755 3000754       0       0       0       0
 3000479 3000094 3000745 3000746 3000756 3000755       0       0       0       0
 3000480 3000094 3000746 3000747 3000757 3000756       0       0       0       0
 3000481 3000094 3000435 3000749 3000758 3000437       0       0       0       0
 3000482 3000094 3000749 3000748 3000759 3000758       0       0       0       0
 3000483 3000094 3000748 3000750 3000760 3000759       0       0       0       0
 3000484 3000094 3000750 3000751 3000761 3000760       0       0       0       0
 3000485 3000094 3000751 3000752 3000762 3000761       0       0       0       0
 3000486 3000094 3000752 3000753 3000763 3000762       0       0       0       0
 3000487 3000094 3000753 3000754 3000764 3000763       0       0       0       0
 3000488 3000094 3000754 3000755 3000765 3000764       0       0       0       0
 3000489 3000094 3000755 3000756 3000766 3000765       0       0       0       0
 3000490 3000094 3000756 3000757 3000767 3000766       0       0       0       0
 3000491 3000094 3000437 3000758 3000768 3000448       0       0       0       0
 3000492 3000094 3000758 3000759 3000769 3000768       0       0       0       0
 3000493 3000094 3000759 3000760 3000770 3000769       0       0       0       0
 3000494 3000094 3000760 3000761 3000771 3000770       0       0       0       0
 3000495 3000094 3000761 3000762 3000772 3000771       0       0       0       0
 3000496 3000094 3000762 3000763 3000773 3000772       0       0       0       0
 3000497 3000094 3000763 3000764 3000774 3000773       0       0       0       0
 3000498 3000094 3000764 3000765 3000775 3000774       0       0       0       0
 3000499 3000094 3000765 3000766 3000776 3000775       0       0       0       0
 3000500 3000094 3000766 3000767 3000777 3000776       0       0       0       0
 3000501 3000094 3000448 3000768 3000695 3000358       0       0       0       0
 3000502 3000094 3000768 3000769 3000696 3000695       0       0       0       0
 3000503 3000094 3000769 3000770 3000697 3000696       0       0       0       0
 3000504 3000094 3000770 3000771 3000698 3000697       0       0       0       0
 3000505 3000094 3000771 3000772 3000699 3000698       0       0       0       0
 3000506 3000094 3000772 3000773 3000700 3000699       0       0       0       0
 3000507 3000094 3000773 3000774 3000701 3000700       0       0       0       0
 3000508 3000094 3000774 3000775 3000702 3000701       0       0       0       0
 3000509 3000094 3000775 3000776 3000703 3000702       0       0       0       0
 3000510 3000094 3000776 3000777 3000704 3000703       0       0       0       0
 3000511 3000094 3000458 3000459 3000778 3000779       0       0       0       0
 3000512 3000094 3000459 3000462 3000780 3000778       0       0       0       0
 3000513 3000094 3000462 3000276 3000625 3000780       0       0       0       0
 3000514 3000094 3000464 3000465 3000781 3000782       0       0       0       0
 3000515 3000094 3000465 3000779 3000783 3000781       0       0       0       0
 3000516 3000094 3000779 3000778 3000784 3000783       0       0       0       0
 3000517 3000094 3000778 3000780 3000785 3000784       0       0       0       0
 3000518 3000094 3000780 3000625 3000631 3000785       0       0       0       0
 3000519 3000094 3000471 3000782 3000786 3000787       0       0       0       0
 3000520 3000094 3000782 3000781 3000788 3000786       0       0       0       0
 3000521 3000094 3000781 3000783 3000789 3000788       0       0       0       0
 3000522 3000094 3000783 3000784 3000790 3000789       0       0       0       0
 3000523 3000094 3000784 3000785 3000791 3000790       0       0       0       0
 3000524 3000094 3000785 3000631 3000638 3000791       0       0       0       0
 3000525 3000094 3000478 3000787 3000792 3000793       0       0       0       0
 3000526 3000094 3000787 3000786 3000794 3000792       0       0       0       0
 3000527 3000094 3000786 3000788 3000795 3000794       0       0       0       0
 3000528 3000094 3000788 3000789 3000796 3000795       0       0       0       0
 3000529 3000094 3000789 3000790 3000797 3000796       0       0       0       0
 3000530 3000094 3000790 3000791 3000798 3000797       0       0       0       0
 3000531 3000094 3000791 3000638 3000646 3000798       0       0       0       0
 3000532 3000094 3000486 3000793 3000799 3000800       0       0       0       0
 3000533 3000094 3000793 3000792 3000801 3000799       0       0       0       0
 3000534 3000094 3000792 3000794 3000802 3000801       0       0       0       0
 3000535 3000094 3000794 3000795 3000803 3000802       0       0       0       0
 3000536 3000094 3000795 3000796 3000804 3000803       0       0       0       0
 3000537 3000094 3000796 3000797 3000805 3000804       0       0       0       0
 3000538 3000094 3000797 3000798 3000806 3000805       0       0       0       0
 3000539 3000094 3000798 3000646 3000655 3000806       0       0       0       0
 3000540 3000094 3000495 3000800 3000807 3000497       0       0       0       0
 3000541 3000094 3000800 3000799 3000808 3000807       0       0       0       0
 3000542 3000094 3000799 3000801 3000809 3000808       0       0       0       0
 3000543 3000094 3000801 3000802 3000810 3000809       0       0       0       0
 3000544 3000094 3000802 3000803 3000811 3000810       0       0       0       0
 3000545 3000094 3000803 3000804 3000812 3000811       0       0       0       0
 3000546 3000094 3000804 3000805 3000813 3000812       0       0       0       0
 3000547 3000094 3000805 3000806 3000814 3000813       0       0       0       0
 3000548 3000094 3000806 3000655 3000664 3000814       0       0       0       0
 3000549 3000094 3000497 3000807 3000815 3000816       0       0       0       0
 3000550 3000094 3000807 3000808 3000817 3000815       0       0       0       0
 3000551 3000094 3000808 3000809 3000818 3000817       0       0       0       0
 3000552 3000094 3000809 3000810 3000819 3000818       0       0       0       0
 3000553 3000094 3000810 3000811 3000820 3000819       0       0       0       0
 3000554 3000094 3000811 3000812 3000821 3000820       0       0       0       0
 3000555 3000094 3000812 3000813 3000822 3000821       0       0       0       0
 3000556 3000094 3000813 3000814 3000823 3000822       0       0       0       0
 3000557 3000094 3000814 3000664 3000674 3000823       0       0       0       0
 3000558 3000094 3000514 3000816 3000824 3000516       0       0       0       0
 3000559 3000094 3000816 3000815 3000825 3000824       0       0       0       0
 3000560 3000094 3000815 3000817 3000826 3000825       0       0       0       0
 3000561 3000094 3000817 3000818 3000827 3000826       0       0       0       0
 3000562 3000094 3000818 3000819 3000828 3000827       0       0       0       0
 3000563 3000094 3000819 3000820 3000829 3000828       0       0       0       0
 3000564 3000094 3000820 3000821 3000830 3000829       0       0       0       0
 3000565 3000094 3000821 3000822 3000831 3000830       0       0       0       0
 3000566 3000094 3000822 3000823 3000832 3000831       0       0       0       0
 3000567 3000094 3000823 3000674 3000684 3000832       0       0       0       0
 3000568 3000094 3000516 3000824 3000833 3000526       0       0       0       0
 3000569 3000094 3000824 3000825 3000834 3000833       0       0       0       0
 3000570 3000094 3000825 3000826 3000835 3000834       0       0       0       0
 3000571 3000094 3000826 3000827 3000836 3000835       0       0       0       0
 3000572 3000094 3000827 3000828 3000837 3000836       0       0       0       0
 3000573 3000094 3000828 3000829 3000838 3000837       0       0       0       0
 3000574 3000094 3000829 3000830 3000839 3000838       0       0       0       0
 3000575 3000094 3000830 3000831 3000840 3000839       0       0       0       0
 3000576 3000094 3000831 3000832 3000841 3000840       0       0       0       0
 3000577 3000094 3000832 3000684 3000694 3000841       0       0       0       0
 3000578 3000094 3000526 3000833 3000842 3000536       0       0       0       0
 3000579 3000094 3000833 3000834 3000843 3000842       0       0       0       0
 3000580 3000094 3000834 3000835 3000844 3000843       0       0       0       0
 3000581 3000094 3000835 3000836 3000845 3000844       0       0       0       0
 3000582 3000094 3000836 3000837 3000846 3000845       0       0       0       0
 3000583 3000094 3000837 3000838 3000847 3000846       0       0       0       0
 3000584 3000094 3000838 3000839 3000848 3000847       0       0       0       0
 3000585 3000094 3000839 3000840 3000849 3000848       0       0       0       0
 3000586 3000094 3000840 3000841 3000850 3000849       0       0       0       0
 3000587 3000094 3000841 3000694 3000704 3000850       0       0       0       0
 3000588 3000094 3000852 3000851 3000546 3000545       0       0       0       0
 3000589 3000094 3000851 3000853 3000549 3000546       0       0       0       0
 3000590 3000094 3000853 3000708 3000377 3000549       0       0       0       0
 3000591 3000094 3000855 3000854 3000552 3000551       0       0       0       0
 3000592 3000094 3000854 3000856 3000852 3000552       0       0       0       0
 3000593 3000094 3000856 3000857 3000851 3000852       0       0       0       0
 3000594 3000094 3000857 3000858 3000853 3000851       0       0       0       0
 3000595 3000094 3000858 3000714 3000708 3000853       0       0       0       0
 3000596 3000094 3000860 3000859 3000855 3000558       0       0       0       0
 3000597 3000094 3000859 3000861 3000854 3000855       0       0       0       0
 3000598 3000094 3000861 3000862 3000856 3000854       0       0       0       0
 3000599 3000094 3000862 3000863 3000857 3000856       0       0       0       0
 3000600 3000094 3000863 3000864 3000858 3000857       0       0       0       0
 3000601 3000094 3000864 3000721 3000714 3000858       0       0       0       0
 3000602 3000094 3000866 3000865 3000860 3000565       0       0       0       0
 3000603 3000094 3000865 3000867 3000859 3000860       0       0       0       0
 3000604 3000094 3000867 3000868 3000861 3000859       0       0       0       0
 3000605 3000094 3000868 3000869 3000862 3000861       0       0       0       0
 3000606 3000094 3000869 3000870 3000863 3000862       0       0       0       0
 3000607 3000094 3000870 3000871 3000864 3000863       0       0       0       0
 3000608 3000094 3000871 3000729 3000721 3000864       0       0       0       0
 3000609 3000094 3000873 3000872 3000866 3000573       0       0       0       0
 3000610 3000094 3000872 3000874 3000865 3000866       0       0       0       0
 3000611 3000094 3000874 3000875 3000867 3000865       0       0       0       0
 3000612 3000094 3000875 3000876 3000868 3000867       0       0       0       0
 3000613 3000094 3000876 3000877 3000869 3000868       0       0       0       0
 3000614 3000094 3000877 3000878 3000870 3000869       0       0       0       0
 3000615 3000094 3000878 3000879 3000871 3000870       0       0       0       0
 3000616 3000094 3000879 3000738 3000729 3000871       0       0       0       0
 3000617 3000094 3000584 3000880 3000873 3000582       0       0       0       0
 3000618 3000094 3000880 3000881 3000872 3000873       0       0       0       0
 3000619 3000094 3000881 3000882 3000874 3000872       0       0       0       0
 3000620 3000094 3000882 3000883 3000875 3000874       0       0       0       0
 3000621 3000094 3000883 3000884 3000876 3000875       0       0       0       0
 3000622 3000094 3000884 3000885 3000877 3000876       0       0       0       0
 3000623 3000094 3000885 3000886 3000878 3000877       0       0       0       0
 3000624 3000094 3000886 3000887 3000879 3000878       0       0       0       0
 3000625 3000094 3000887 3000747 3000738 3000879       0       0       0       0
 3000626 3000094 3000889 3000888 3000880 3000584       0       0       0       0
 3000627 3000094 3000888 3000890 3000881 3000880       0       0       0       0
 3000628 3000094 3000890 3000891 3000882 3000881       0       0       0       0
 3000629 3000094 3000891 3000892 3000883 3000882       0       0       0       0
 3000630 3000094 3000892 3000893 3000884 3000883       0       0       0       0
 3000631 3000094 3000893 3000894 3000885 3000884       0       0       0       0
 3000632 3000094 3000894 3000895 3000886 3000885       0       0       0       0
 3000633 3000094 3000895 3000896 3000887 3000886       0       0       0       0
 3000634 3000094 3000896 3000757 3000747 3000887       0       0       0       0
 3000635 3000094 3000603 3000897 3000889 3000601       0       0       0       0
 3000636 3000094 3000897 3000898 3000888 3000889       0       0       0       0
 3000637 3000094 3000898 3000899 3000890 3000888       0       0       0       0
 3000638 3000094 3000899 3000900 3000891 3000890       0       0       0       0
 3000639 3000094 3000900 3000901 3000892 3000891       0       0       0       0
 3000640 3000094 3000901 3000902 3000893 3000892       0       0       0       0
 3000641 3000094 3000902 3000903 3000894 3000893       0       0       0       0
 3000642 3000094 3000903 3000904 3000895 3000894       0       0       0       0
 3000643 3000094 3000904 3000905 3000896 3000895       0       0       0       0
 3000644 3000094 3000905 3000767 3000757 3000896       0       0       0       0
 3000645 3000094 3000613 3000906 3000897 3000603       0       0       0       0
 3000646 3000094 3000906 3000907 3000898 3000897       0       0       0       0
 3000647 3000094 3000907 3000908 3000899 3000898       0       0       0       0
 3000648 3000094 3000908 3000909 3000900 3000899       0       0       0       0
 3000649 3000094 3000909 3000910 3000901 3000900       0       0       0       0
 3000650 3000094 3000910 3000911 3000902 3000901       0       0       0       0
 3000651 3000094 3000911 3000912 3000903 3000902       0       0       0       0
 3000652 3000094 3000912 3000913 3000904 3000903       0       0       0       0
 3000653 3000094 3000913 3000914 3000905 3000904       0       0       0       0
 3000654 3000094 3000914 3000777 3000767 3000905       0       0       0       0
 3000655 3000094 3000536 3000842 3000906 3000613       0       0       0       0
 3000656 3000094 3000842 3000843 3000907 3000906       0       0       0       0
 3000657 3000094 3000843 3000844 3000908 3000907       0       0       0       0
 3000658 3000094 3000844 3000845 3000909 3000908       0       0       0       0
 3000659 3000094 3000845 3000846 3000910 3000909       0       0       0       0
 3000660 3000094 3000846 3000847 3000911 3000910       0       0       0       0
 3000661 3000094 3000847 3000848 3000912 3000911       0       0       0       0
 3000662 3000094 3000848 3000849 3000913 3000912       0       0       0       0
 3000663 3000094 3000849 3000850 3000914 3000913       0       0       0       0
 3000664 3000094 3000850 3000704 3000777 3000914       0       0       0       0
 3000665 3000096 3000915 3000937 3000944 3000916       0       0       0       0
 3000666 3000096 3000937 3000938 3000945 3000944       0       0       0       0
 3000667 3000096 3000938 3000939 3000946 3000945       0       0       0       0
 3000668 3000096 3000939 3000940 3000947 3000946       0       0       0       0
 3000669 3000096 3000940 3000941 3000948 3000947       0       0       0       0
 3000670 3000096 3000941 3000942 3000949 3000948       0       0       0       0
 3000671 3000096 3000942 3000943 3000950 3000949       0       0       0       0
 3000672 3000096 3000943 3000926 3000927 3000950       0       0       0       0
 3000673 3000096 3000916 3000944 3000951 3000917       0       0       0       0
 3000674 3000096 3000944 3000945 3000952 3000951       0       0       0       0
 3000675 3000096 3000945 3000946 3000953 3000952       0       0       0       0
 3000676 3000096 3000946 3000947 3000954 3000953       0       0       0       0
 3000677 3000096 3000947 3000948 3000955 3000954       0       0       0       0
 3000678 3000096 3000948 3000949 3000956 3000955       0       0       0       0
 3000679 3000096 3000949 3000950 3000957 3000956       0       0       0       0
 3000680 3000096 3000950 3000927 3000928 3000957       0       0       0       0
 3000681 3000096 3000917 3000951 3000958 3000918       0       0       0       0
 3000682 3000096 3000951 3000952 3000959 3000958       0       0       0       0
 3000683 3000096 3000952 3000953 3000960 3000959       0       0       0       0
 3000684 3000096 3000953 3000954 3000961 3000960       0       0       0       0
 3000685 3000096 3000954 3000955 3000962 3000961       0       0       0       0
 3000686 3000096 3000955 3000956 3000963 3000962       0       0       0       0
 3000687 3000096 3000956 3000957 3000964 3000963       0       0       0       0
 3000688 3000096 3000957 3000928 3000929 3000964       0       0       0       0
 3000689 3000096 3000918 3000958 3000965 3000919       0       0       0       0
 3000690 3000096 3000958 3000959 3000966 3000965       0       0       0       0
 3000691 3000096 3000959 3000960 3000967 3000966       0       0       0       0
 3000692 3000096 3000960 3000961 3000968 3000967       0       0       0       0
 3000693 3000096 3000961 3000962 3000969 3000968       0       0       0       0
 3000694 3000096 3000962 3000963 3000970 3000969       0       0       0       0
 3000695 3000096 3000963 3000964 3000971 3000970       0       0       0       0
 3000696 3000096 3000964 3000929 3000930 3000971       0       0       0       0
 3000697 3000096 3000919 3000965 3000972 3000920       0       0       0       0
 3000698 3000096 3000965 3000966 3000973 3000972       0       0       0       0
 3000699 3000096 3000966 3000967 3000974 3000973       0       0       0       0
 3000700 3000096 3000967 3000968 3000975 3000974       0       0       0       0
 3000701 3000096 3000968 3000969 3000976 3000975       0       0       0       0
 3000702 3000096 3000969 3000970 3000977 3000976       0       0       0       0
 3000703 3000096 3000970 3000971 3000978 3000977       0       0       0       0
 3000704 3000096 3000971 3000930 3000931 3000978       0       0       0       0
 3000705 3000096 3000920 3000972 3000979 3000921       0       0       0       0
 3000706 3000096 3000972 3000973 3000980 3000979       0       0       0       0
 3000707 3000096 3000973 3000974 3000981 3000980       0       0       0       0
 3000708 3000096 3000974 3000975 3000982 3000981       0       0       0       0
 3000709 3000096 3000975 3000976 3000983 3000982       0       0       0       0
 3000710 3000096 3000976 3000977 3000984 3000983       0       0       0       0
 3000711 3000096 3000977 3000978 3000985 3000984       0       0       0       0
 3000712 3000096 3000978 3000931 3000932 3000985       0       0       0       0
 3000713 3000096 3000921 3000979 3000986 3000922       0       0       0       0
 3000714 3000096 3000979 3000980 3000987 3000986       0       0       0       0
 3000715 3000096 3000980 3000981 3000988 3000987       0       0       0       0
 3000716 3000096 3000981 3000982 3000989 3000988       0       0       0       0
 3000717 3000096 3000982 3000983 3000990 3000989       0       0       0       0
 3000718 3000096 3000983 3000984 3000991 3000990       0       0       0       0
 3000719 3000096 3000984 3000985 3000992 3000991       0       0       0       0
 3000720 3000096 3000985 3000932 3000933 3000992       0       0       0       0
 3000721 3000096 3000922 3000986 3000993 3000923       0       0       0       0
 3000722 3000096 3000986 3000987 3000994 3000993       0       0       0       0
 3000723 3000096 3000987 3000988 3000995 3000994       0       0       0       0
 3000724 3000096 3000988 3000989 3000996 3000995       0       0       0       0
 3000725 3000096 3000989 3000990 3000997 3000996       0       0       0       0
 3000726 3000096 3000990 3000991 3000998 3000997       0       0       0       0
 3000727 3000096 3000991 3000992 3000999 3000998       0       0       0       0
 3000728 3000096 3000992 3000933 3000934 3000999       0       0       0       0
 3000729 3000096 3000923 3000993 3001000 3000924       0       0       0       0
 3000730 3000096 3000993 3000994 3001001 3001000       0       0       0       0
 3000731 3000096 3000994 3000995 3001002 3001001       0       0       0       0
 3000732 3000096 3000995 3000996 3001003 3001002       0       0       0       0
 3000733 3000096 3000996 3000997 3001004 3001003       0       0       0       0
 3000734 3000096 3000997 3000998 3001005 3001004       0       0       0       0
 3000735 3000096 3000998 3000999 3001006 3001005       0       0       0       0
 3000736 3000096 3000999 3000934 3000935 3001006       0       0       0       0
 3000737 3000096 3000924 3001000 3001007 3000925       0       0       0       0
 3000738 3000096 3001000 3001001 3001008 3001007       0       0       0       0
 3000739 3000096 3001001 3001002 3001009 3001008       0       0       0       0
 3000740 3000096 3001002 3001003 3001010 3001009       0       0       0       0
 3000741 3000096 3001003 3001004 3001011 3001010       0       0       0       0
 3000742 3000096 3001004 3001005 3001012 3001011       0       0       0       0
 3000743 3000096 3001005 3001006 3001013 3001012       0       0       0       0
 3000744 3000096 3001006 3000935 3000936 3001013       0       0       0       0
 3000745 3000095 3001014 3001026 3001033 3001015       0       0       0       0
 3000746 3000095 3001026 3001027 3001034 3001033       0       0       0       0
 3000747 3000095 3001027 3001028 3001035 3001034       0       0       0       0
 3000748 3000095 3001028 3001029 3001036 3001035       0       0       0       0
 3000749 3000095 3001029 3001030 3001037 3001036       0       0       0       0
 3000750 3000095 3001030 3001031 3001038 3001037       0       0       0       0
 3000751 3000095 3001031 3001032 3001039 3001038       0       0       0       0
 3000752 3000095 3001032 3001020 3001021 3001039       0       0       0       0
 3000753 3000095 3001015 3001033 3001040 3001016       0       0       0       0
 3000754 3000095 3001033 3001034 3001041 3001040       0       0       0       0
 3000755 3000095 3001034 3001035 3001042 3001041       0       0       0       0
 3000756 3000095 3001035 3001036 3001043 3001042       0       0       0       0
 3000757 3000095 3001036 3001037 3001044 3001043       0       0       0       0
 3000758 3000095 3001037 3001038 3001045 3001044       0       0       0       0
 3000759 3000095 3001038 3001039 3001046 3001045       0       0       0       0
 3000760 3000095 3001039 3001021 3001022 3001046       0       0       0       0
 3000761 3000095 3001016 3001040 3001047 3001017       0       0       0       0
 3000762 3000095 3001040 3001041 3001048 3001047       0       0       0       0
 3000763 3000095 3001041 3001042 3001049 3001048       0       0       0       0
 3000764 3000095 3001042 3001043 3001050 3001049       0       0       0       0
 3000765 3000095 3001043 3001044 3001051 3001050       0       0       0       0
 3000766 3000095 3001044 3001045 3001052 3001051       0       0       0       0
 3000767 3000095 3001045 3001046 3001053 3001052       0       0       0       0
 3000768 3000095 3001046 3001022 3001023 3001053       0       0       0       0
 3000769 3000095 3001017 3001047 3001054 3001018       0       0       0       0
 3000770 3000095 3001047 3001048 3001055 3001054       0       0       0       0
 3000771 3000095 3001048 3001049 3001056 3001055       0       0       0       0
 3000772 3000095 3001049 3001050 3001057 3001056       0       0       0       0
 3000773 3000095 3001050 3001051 3001058 3001057       0       0       0       0
 3000774 3000095 3001051 3001052 3001059 3001058       0       0       0       0
 3000775 3000095 3001052 3001053 3001060 3001059       0       0       0       0
 3000776 3000095 3001053 3001023 3001024 3001060       0       0       0       0
 3000777 3000095 3001018 3001054 3001061 3001019       0       0       0       0
 3000778 3000095 3001054 3001055 3001062 3001061       0       0       0       0
 3000779 3000095 3001055 3001056 3001063 3001062       0       0       0       0
 3000780 3000095 3001056 3001057 3001064 3001063       0       0       0       0
 3000781 3000095 3001057 3001058 3001065 3001064       0       0       0       0
 3000782 3000095 3001058 3001059 3001066 3001065       0       0       0       0
 3000783 3000095 3001059 3001060 3001067 3001066       0       0       0       0
 3000784 3000095 3001060 3001024 3001025 3001067       0       0       0       0
 3000785 3000098 3001068 3001080 3001087 3001069       0       0       0       0
 3000786 3000098 3001080 3001081 3001088 3001087       0       0       0       0
 3000787 3000098 3001081 3001082 3001089 3001088       0       0       0       0
 3000788 3000098 3001082 3001083 3001090 3001089       0       0       0       0
 3000789 3000098 3001083 3001084 3001091 3001090       0       0       0       0
 3000790 3000098 3001084 3001085 3001092 3001091       0       0       0       0
 3000791 3000098 3001085 3001086 3001093 3001092       0       0       0       0
 3000792 3000098 3001086 3001074 3001075 3001093       0       0       0       0
 3000793 3000098 3001069 3001087 3001094 3001070       0       0       0       0
 3000794 3000098 3001087 3001088 3001095 3001094       0       0       0       0
 3000795 3000098 3001088 3001089 3001096 3001095       0       0       0       0
 3000796 3000098 3001089 3001090 3001097 3001096       0       0       0       0
 3000797 3000098 3001090 3001091 3001098 3001097       0       0       0       0
 3000798 3000098 3001091 3001092 3001099 3001098       0       0       0       0
 3000799 3000098 3001092 3001093 3001100 3001099       0       0       0       0
 3000800 3000098 3001093 3001075 3001076 3001100       0       0       0       0
 3000801 3000098 3001070 3001094 3001101 3001071       0       0       0       0
 3000802 3000098 3001094 3001095 3001102 3001101       0       0       0       0
 3000803 3000098 3001095 3001096 3001103 3001102       0       0       0       0
 3000804 3000098 3001096 3001097 3001104 3001103       0       0       0       0
 3000805 3000098 3001097 3001098 3001105 3001104       0       0       0       0
 3000806 3000098 3001098 3001099 3001106 3001105       0       0       0       0
 3000807 3000098 3001099 3001100 3001107 3001106       0       0       0       0
 3000808 3000098 3001100 3001076 3001077 3001107       0       0       0       0
 3000809 3000098 3001071 3001101 3001108 3001072       0       0       0       0
 3000810 3000098 3001101 3001102 3001109 3001108       0       0       0       0
 3000811 3000098 3001102 3001103 3001110 3001109       0       0       0       0
 3000812 3000098 3001103 3001104 3001111 3001110       0       0       0       0
 3000813 3000098 3001104 3001105 3001112 3001111       0       0       0       0
 3000814 3000098 3001105 3001106 3001113 3001112       0       0       0       0
 3000815 3000098 3001106 3001107 3001114 3001113       0       0       0       0
 3000816 3000098 3001107 3001077 3001078 3001114       0       0       0       0
 3000817 3000098 3001072 3001108 3001115 3001073       0       0       0       0
 3000818 3000098 3001108 3001109 3001116 3001115       0       0       0       0
 3000819 3000098 3001109 3001110 3001117 3001116       0       0       0       0
 3000820 3000098 3001110 3001111 3001118 3001117       0       0       0       0
 3000821 3000098 3001111 3001112 3001119 3001118       0       0       0       0
 3000822 3000098 3001112 3001113 3001120 3001119       0       0       0       0
 3000823 3000098 3001113 3001114 3001121 3001120       0       0       0       0
 3000824 3000098 3001114 3001078 3001079 3001121       0       0       0       0
 3000825 3000099 3001122 3001136 3001143 3001123       0       0       0       0
 3000826 3000099 3001136 3001137 3001144 3001143       0       0       0       0
 3000827 3000099 3001137 3001138 3001145 3001144       0       0       0       0
 3000828 3000099 3001138 3001139 3001146 3001145       0       0       0       0
 3000829 3000099 3001139 3001140 3001147 3001146       0       0       0       0
 3000830 3000099 3001140 3001141 3001148 3001147       0       0       0       0
 3000831 3000099 3001141 3001142 3001149 3001148       0       0       0       0
 3000832 3000099 3001142 3001129 3001130 3001149       0       0       0       0
 3000833 3000099 3001123 3001143 3001150 3001124       0       0       0       0
 3000834 3000099 3001143 3001144 3001151 3001150       0       0       0       0
 3000835 3000099 3001144 3001145 3001152 3001151       0       0       0       0
 3000836 3000099 3001145 3001146 3001153 3001152       0       0       0       0
 3000837 3000099 3001146 3001147 3001154 3001153       0       0       0       0
 3000838 3000099 3001147 3001148 3001155 3001154       0       0       0       0
 3000839 3000099 3001148 3001149 3001156 3001155       0       0       0       0
 3000840 3000099 3001149 3001130 3001131 3001156       0       0       0       0
 3000841 3000099 3001124 3001150 3001157 3001125       0       0       0       0
 3000842 3000099 3001150 3001151 3001158 3001157       0       0       0       0
 3000843 3000099 3001151 3001152 3001159 3001158       0       0       0       0
 3000844 3000099 3001152 3001153 3001160 3001159       0       0       0       0
 3000845 3000099 3001153 3001154 3001161 3001160       0       0       0       0
 3000846 3000099 3001154 3001155 3001162 3001161       0       0       0       0
 3000847 3000099 3001155 3001156 3001163 3001162       0       0       0       0
 3000848 3000099 3001156 3001131 3001132 3001163       0       0       0       0
 3000849 3000099 3001125 3001157 3001164 3001126       0       0       0       0
 3000850 3000099 3001157 3001158 3001165 3001164       0       0       0       0
 3000851 3000099 3001158 3001159 3001166 3001165       0       0       0       0
 3000852 3000099 3001159 3001160 3001167 3001166       0       0       0       0
 3000853 3000099 3001160 3001161 3001168 3001167       0       0       0       0
 3000854 3000099 3001161 3001162 3001169 3001168       0       0       0       0
 3000855 3000099 3001162 3001163 3001170 3001169       0       0       0       0
 3000856 3000099 3001163 3001132 3001133 3001170       0       0       0       0
 3000857 3000099 3001126 3001164 3001171 3001127       0       0       0       0
 3000858 3000099 3001164 3001165 3001172 3001171       0       0       0       0
 3000859 3000099 3001165 3001166 3001173 3001172       0       0       0       0
 3000860 3000099 3001166 3001167 3001174 3001173       0       0       0       0
 3000861 3000099 3001167 3001168 3001175 3001174       0       0       0       0
 3000862 3000099 3001168 3001169 3001176 3001175       0       0       0       0
 3000863 3000099 3001169 3001170 3001177 3001176       0       0       0       0
 3000864 3000099 3001170 3001133 3001134 3001177       0       0       0       0
 3000865 3000099 3001127 3001171 3001178 3001128       0       0       0       0
 3000866 3000099 3001171 3001172 3001179 3001178       0       0       0       0
 3000867 3000099 3001172 3001173 3001180 3001179       0       0       0       0
 3000868 3000099 3001173 3001174 3001181 3001180       0       0       0       0
 3000869 3000099 3001174 3001175 3001182 3001181       0       0       0       0
 3000870 3000099 3001175 3001176 3001183 3001182       0       0       0       0
 3000871 3000099 3001176 3001177 3001184 3001183       0       0       0       0
 3000872 3000099 3001177 3001134 3001135 3001184       0       0       0       0
 3000873 3000085 3001226 3001185 3001199 3001186       0       0       0       0
 3000874 3000085 3001185 3001230 3001195 3001199       0       0       0       0
 3000875 3000085 3001199 3001195 3001234 3001196       0       0       0       0
 3000876 3000085 3001186 3001199 3001196 3001231       0       0       0       0
 3000877 3000085 3001230 3001187 3001200 3001195       0       0       0       0
 3000878 3000085 3001187 3001227 3001188 3001200       0       0       0       0
 3000879 3000085 3001200 3001188 3001232 3001197       0       0       0       0
 3000880 3000085 3001195 3001200 3001197 3001234       0       0       0       0
 3000881 3000085 3001234 3001197 3001201 3001198       0       0       0       0
 3000882 3000085 3001197 3001232 3001189 3001201       0       0       0       0
 3000883 3000085 3001201 3001189 3001228 3001192       0       0       0       0
 3000884 3000085 3001198 3001201 3001192 3001233       0       0       0       0
 3000885 3000085 3001231 3001196 3001202 3001193       0       0       0       0
 3000886 3000085 3001196 3001234 3001198 3001202       0       0       0       0
 3000887 3000085 3001202 3001198 3001233 3001194       0       0       0       0
 3000888 3000085 3001193 3001202 3001194 3001229       0       0       0       0
 3000889 3000086 3001191 3001212 3001222 3001213       0       0       0       0
 3000890 3000086 3001212 3001205 3001218 3001222       0       0       0       0
 3000891 3000086 3001222 3001218 3001209 3001220       0       0       0       0
 3000892 3000086 3001213 3001222 3001220 3001207       0       0       0       0
 3000893 3000086 3001205 3001210 3001223 3001218       0       0       0       0
 3000894 3000086 3001210 3001190 3001211 3001223       0       0       0       0
 3000895 3000086 3001223 3001211 3001206 3001219       0       0       0       0
 3000896 3000086 3001218 3001223 3001219 3001209       0       0       0       0
 3000897 3000086 3001209 3001219 3001224 3001221       0       0       0       0
 3000898 3000086 3001219 3001206 3001216 3001224       0       0       0       0
 3000899 3000086 3001224 3001216 3001204 3001217       0       0       0       0
 3000900 3000086 3001221 3001224 3001217 3001208       0       0       0       0
 3000901 3000086 3001207 3001220 3001225 3001214       0       0       0       0
 3000902 3000086 3001220 3001209 3001221 3001225       0       0       0       0
 3000903 3000086 3001225 3001221 3001208 3001215       0       0       0       0
 3000904 3000086 3001214 3001225 3001215 3001203       0       0       0       0
 3000905 3000082 3001442 3001450 3001451 3001443       0       0       0       0
 3000906 3000082 3001441 3001449 3001450 3001442       0       0       0       0
 3000907 3000082 3001449 3001441 3001460 3001461       0       0       0       0
 3000908 3000082 3001460 3001448 3001456 3001461       0       0       0       0
 3000909 3000082 3001447 3001455 3001456 3001448       0       0       0       0
 3000910 3000082 3001439 3001447 3001448 3001440       0       0       0       0
 3000911 3000082 3001431 3001439 3001440 3001432       0       0       0       0
 3000912 3000082 3001423 3001431 3001432 3001424       0       0       0       0
 3000913 3000082 3001244 3001423 3001424 3001416       0       0       0       0
 3000914 3000082 3001459 3001440 3001448 3001460       0       0       0       0
 3000915 3000082 3001432 3001440 3001459 3001458       0       0       0       0
 3000916 3000082 3001457 3001424 3001432 3001458       0       0       0       0
 3000917 3000082 3001457 3001415 3001416 3001424       0       0       0       0
 3000918 3000082 3001425 3001417 3001457 3001458       0       0       0       0
 3000919 3000082 3001417 3001414 3001415 3001457       0       0       0       0
 3000920 3000082 3001433 3001459 3001460 3001441       0       0       0       0
 3000921 3000082 3001425 3001458 3001459 3001433       0       0       0       0
 3000922 3000082 3001434 3001433 3001441 3001442       0       0       0       0
 3000923 3000082 3001434 3001442 3001443 3001435       0       0       0       0
 3000924 3000082 3001427 3001426 3001434 3001435       0       0       0       0
 3000925 3000082 3001418 3001426 3001427 3001419       0       0       0       0
 3000926 3000082 3001425 3001433 3001434 3001426       0       0       0       0
 3000927 3000082 3001417 3001425 3001426 3001418       0       0       0       0
 3000928 3000082 3001413 3001414 3001417 3001418       0       0       0       0
 3000929 3000082 3001243 3001413 3001418 3001419       0       0       0       0
 3000930 3000082 3001237 3001409 3001413 3001243       0       0       0       0
 3000931 3000082 3001413 3001409 3001410 3001414       0       0       0       0
 3000932 3000082 3001410 3001411 3001415 3001414       0       0       0       0
 3000933 3000082 3001415 3001411 3001412 3001416       0       0       0       0
 3000934 3000082 3001412 3001238 3001244 3001416       0       0       0       0
 3000935 3000082 3001238 3001412 3001355 3001353       0       0       0       0
 3000936 3000082 3001355 3001412 3001411 3001357       0       0       0       0
 3000937 3000082 3001410 3001356 3001357 3001411       0       0       0       0
 3000938 3000082 3001409 3001354 3001356 3001410       0       0       0       0
 3000939 3000082 3001409 3001237 3001352 3001354       0       0       0       0
 3000940 3000082 3001353 3001355 3001386 3001384       0       0       0       0
 3000941 3000082 3001532 3001396 3001402 3001531       0       0       0       0
 3000942 3000082 3001396 3001384 3001386 3001402       0       0       0       0
 3000943 3000082 3001386 3001355 3001357 3001388       0       0       0       0
 3000944 3000082 3001402 3001386 3001388 3001404       0       0       0       0
 3000945 3000082 3001531 3001402 3001404 3001530       0       0       0       0
 3000946 3000082 3001356 3001387 3001388 3001357       0       0       0       0
 3000947 3000082 3001387 3001403 3001404 3001388       0       0       0       0
 3000948 3000082 3001403 3001529 3001530 3001404       0       0       0       0
 3000949 3000082 3001354 3001385 3001387 3001356       0       0       0       0
 3000950 3000082 3001352 3001383 3001385 3001354       0       0       0       0
 3000951 3000082 3001383 3001394 3001401 3001385       0       0       0       0
 3000952 3000082 3001385 3001401 3001403 3001387       0       0       0       0
 3000953 3000082 3001401 3001528 3001529 3001403       0       0       0       0
 3000954 3000082 3001401 3001394 3001527 3001528       0       0       0       0
 3000955 3000082 3001527 3001400 3001406 3001528       0       0       0       0
 3000956 3000082 3001400 3001392 3001393 3001406       0       0       0       0
 3000957 3000082 3001393 3001533 3001405 3001406       0       0       0       0
 3000958 3000082 3001395 3001399 3001407 3001397       0       0       0       0
 3000959 3000082 3001397 3001407 3001408 3001398       0       0       0       0
 3000960 3000082 3001398 3001408 3001405 3001533       0       0       0       0
 3000961 3000082 3001372 3001395 3001397 3001374       0       0       0       0
 3000962 3000082 3001399 3001532 3001531 3001407       0       0       0       0
 3000963 3000082 3001407 3001531 3001530 3001408       0       0       0       0
 3000964 3000082 3001529 3001405 3001408 3001530       0       0       0       0
 3000965 3000082 3001405 3001529 3001528 3001406       0       0       0       0
 3000966 3000082 3001392 3001368 3001373 3001393       0       0       0       0
 3000967 3000082 3001374 3001397 3001398 3001376       0       0       0       0
 3000968 3000082 3001533 3001375 3001376 3001398       0       0       0       0
 3000969 3000082 3001393 3001373 3001375 3001533       0       0       0       0
 3000970 3000082 3001368 3001332 3001334 3001373       0       0       0       0
 3000971 3000082 3001341 3001316 3001334 3001332       0       0       0       0
 3000972 3000082 3001316 3001341 3001342 3001317       0       0       0       0
 3000973 3000082 3001318 3001316 3001317 3001319       0       0       0       0
 3000974 3000082 3001373 3001334 3001336 3001375       0       0       0       0
 3000975 3000082 3001334 3001316 3001318 3001336       0       0       0       0
 3000976 3000082 3001375 3001336 3001337 3001376       0       0       0       0
 3000977 3000082 3001318 3001320 3001337 3001336       0       0       0       0
 3000978 3000082 3001320 3001318 3001319 3001321       0       0       0       0
 3000979 3000082 3001335 3001374 3001376 3001337       0       0       0       0
 3000980 3000082 3001333 3001372 3001374 3001335       0       0       0       0
 3000981 3000082 3001337 3001320 3001324 3001335       0       0       0       0
 3000982 3000082 3001324 3001320 3001321 3001325       0       0       0       0
 3000983 3000082 3001361 3001324 3001325 3001362       0       0       0       0
 3000984 3000082 3001324 3001361 3001333 3001335       0       0       0       0
 3000985 3000082 3001446 3001454 3001455 3001447       0       0       0       0
 3000986 3000082 3001439 3001438 3001446 3001447       0       0       0       0
 3000987 3000082 3001430 3001438 3001439 3001431       0       0       0       0
 3000988 3000082 3001446 3001537 3001538 3001454       0       0       0       0
 3000989 3000082 3001446 3001438 3001536 3001537       0       0       0       0
 3000990 3000082 3001430 3001535 3001536 3001438       0       0       0       0
 3000991 3000082 3001537 3001445 3001453 3001538       0       0       0       0
 3000992 3000082 3001536 3001437 3001445 3001537       0       0       0       0
 3000993 3000082 3001535 3001429 3001437 3001536       0       0       0       0
 3000994 3000082 3001444 3001452 3001453 3001445       0       0       0       0
 3000995 3000082 3001437 3001436 3001444 3001445       0       0       0       0
 3000996 3000082 3001443 3001451 3001452 3001444       0       0       0       0
 3000997 3000082 3001435 3001443 3001444 3001436       0       0       0       0
 3000998 3000082 3001428 3001436 3001437 3001429       0       0       0       0
 3000999 3000082 3001427 3001435 3001436 3001428       0       0       0       0
 3001000 3000082 3001422 3001430 3001431 3001423       0       0       0       0
 3001001 3000082 3001244 3001245 3001422 3001423       0       0       0       0
 3001002 3000082 3001422 3001534 3001535 3001430       0       0       0       0
 3001003 3000082 3001422 3001245 3001246 3001534       0       0       0       0
 3001004 3000082 3001534 3001421 3001429 3001535       0       0       0       0
 3001005 3000082 3001534 3001246 3001247 3001421       0       0       0       0
 3001006 3000082 3001421 3001420 3001428 3001429       0       0       0       0
 3001007 3000082 3001419 3001427 3001428 3001420       0       0       0       0
 3001008 3000082 3001420 3001242 3001243 3001419       0       0       0       0
 3001009 3000082 3001242 3001420 3001421 3001247       0       0       0       0
 3001010 3000082 3001236 3001237 3001243 3001242       0       0       0       0
 3001011 3000082 3001236 3001242 3001247 3001241       0       0       0       0
 3001012 3000082 3001246 3001240 3001241 3001247       0       0       0       0
 3001013 3000082 3001239 3001240 3001246 3001245       0       0       0       0
 3001014 3000082 3001238 3001239 3001245 3001244       0       0       0       0
 3001015 3000082 3001236 3001350 3001352 3001237       0       0       0       0
 3001016 3000082 3001350 3001236 3001241 3001328       0       0       0       0
 3001017 3000082 3001350 3001369 3001383 3001352       0       0       0       0
 3001018 3000082 3001383 3001369 3001381 3001394       0       0       0       0
 3001019 3000082 3001381 3001382 3001527 3001394       0       0       0       0
 3001020 3000082 3001328 3001347 3001369 3001350       0       0       0       0
 3001021 3000082 3001369 3001347 3001348 3001381       0       0       0       0
 3001022 3000082 3001381 3001348 3001349 3001382       0       0       0       0
 3001023 3000082 3001240 3001330 3001328 3001241       0       0       0       0
 3001024 3000082 3001239 3001351 3001330 3001240       0       0       0       0
 3001025 3000082 3001358 3001330 3001351 3001371       0       0       0       0
 3001026 3000082 3001358 3001371 3001389 3001365       0       0       0       0
 3001027 3000082 3001365 3001389 3001391 3001366       0       0       0       0
 3001028 3000082 3001348 3001365 3001366 3001349       0       0       0       0
 3001029 3000082 3001347 3001358 3001365 3001348       0       0       0       0
 3001030 3000082 3001347 3001328 3001330 3001358       0       0       0       0
 3001031 3000082 3001238 3001353 3001351 3001239       0       0       0       0
 3001032 3000082 3001371 3001351 3001353 3001384       0       0       0       0
 3001033 3000082 3001389 3001371 3001384 3001396       0       0       0       0
 3001034 3000082 3001389 3001396 3001532 3001391       0       0       0       0
 3001035 3000082 3001399 3001390 3001391 3001532       0       0       0       0
 3001036 3000082 3001380 3001400 3001527 3001382       0       0       0       0
 3001037 3000082 3001395 3001378 3001390 3001399       0       0       0       0
 3001038 3000082 3001378 3001364 3001377 3001390       0       0       0       0
 3001039 3000082 3001379 3001392 3001400 3001380       0       0       0       0
 3001040 3000082 3001346 3001379 3001380 3001363       0       0       0       0
 3001041 3000082 3001364 3001346 3001363 3001377       0       0       0       0
 3001042 3000082 3001349 3001363 3001380 3001382       0       0       0       0
 3001043 3000082 3001390 3001377 3001366 3001391       0       0       0       0
 3001044 3000082 3001377 3001363 3001349 3001366       0       0       0       0
 3001045 3000082 3001364 3001338 3001345 3001346       0       0       0       0
 3001046 3000082 3001345 3001367 3001379 3001346       0       0       0       0
 3001047 3000082 3001338 3001364 3001378 3001370       0       0       0       0
 3001048 3000082 3001370 3001378 3001395 3001372       0       0       0       0
 3001049 3000082 3001379 3001367 3001368 3001392       0       0       0       0
 3001050 3000082 3001331 3001370 3001372 3001333       0       0       0       0
 3001051 3000082 3001359 3001331 3001333 3001361       0       0       0       0
 3001052 3000082 3001359 3001361 3001362 3001360       0       0       0       0
 3001053 3000082 3001329 3001338 3001370 3001331       0       0       0       0
 3001054 3000082 3001343 3001329 3001331 3001359       0       0       0       0
 3001055 3000082 3001343 3001359 3001360 3001344       0       0       0       0
 3001056 3000082 3001326 3001345 3001338 3001329       0       0       0       0
 3001057 3000082 3001345 3001326 3001327 3001367       0       0       0       0
 3001058 3000082 3001327 3001332 3001368 3001367       0       0       0       0
 3001059 3000082 3001322 3001341 3001332 3001327       0       0       0       0
 3001060 3000082 3001339 3001322 3001327 3001326       0       0       0       0
 3001061 3000082 3001326 3001329 3001343 3001339       0       0       0       0
 3001062 3000082 3001340 3001339 3001343 3001344       0       0       0       0
 3001063 3000082 3001322 3001339 3001340 3001323       0       0       0       0
 3001064 3000082 3001322 3001323 3001342 3001341       0       0       0       0
 3001065 3000082 3001564 3001452 3001451 3001451       0       0       0       0
 3001066 3000082 3001564 3001452 3001453 3001453       0       0       0       0
 3001067 3000082 3001564 3001453 3001538 3001538       0       0       0       0
 3001068 3000082 3001454 3001564 3001538 3001538       0       0       0       0
 3001069 3000082 3001564 3001454 3001455 3001455       0       0       0       0
 3001070 3000082 3001456 3001564 3001455 3001455       0       0       0       0
 3001071 3000082 3001564 3001461 3001456 3001456       0       0       0       0
 3001072 3000082 3001461 3001564 3001449 3001449       0       0       0       0
 3001073 3000082 3001449 3001564 3001450 3001450       0       0       0       0
 3001074 3000082 3001564 3001451 3001450 3001450       0       0       0       0
 3001075 3000084 3001521 3001515 3001516 3001516       0       0       0       0
 3001076 3000084 3001470 3001476 3001475 3001475       0       0       0       0
 3001077 3000084 3001250 3001515 3001514 3001514       0       0       0       0
 3001078 3000084 3001480 3001474 3001475 3001475       0       0       0       0
 3001079 3000084 3001511 3001249 3001298 3001517       0       0       0       0
 3001080 3000084 3001510 3001511 3001517 3001516       0       0       0       0
 3001081 3000084 3001563 3001482 3001477 3001299       0       0       0       0
 3001082 3000084 3001306 3001541 3001543 3001308       0       0       0       0
 3001083 3000084 3001252 3001539 3001541 3001306       0       0       0       0
 3001084 3000084 3001249 3001511 3001507 3001296       0       0       0       0
 3001085 3000084 3001544 3001546 3001561 3001560       0       0       0       0
 3001086 3000084 3001559 3001542 3001544 3001560       0       0       0       0
 3001087 3000084 3001558 3001540 3001542 3001559       0       0       0       0
 3001088 3000084 3001517 3001298 3001302 3001522       0       0       0       0
 3001089 3000084 3001299 3001477 3001471 3001300       0       0       0       0
 3001090 3000084 3001301 3001466 3001522 3001302       0       0       0       0
 3001091 3000084 3001300 3001471 3001466 3001301       0       0       0       0
 3001092 3000084 3001481 3001476 3001477 3001482       0       0       0       0
 3001093 3000084 3001516 3001517 3001522 3001521       0       0       0       0
 3001094 3000084 3001521 3001522 3001466 3001465       0       0       0       0
 3001095 3000084 3001465 3001466 3001471 3001470       0       0       0       0
 3001096 3000084 3001476 3001470 3001471 3001477       0       0       0       0
 3001097 3000084 3001250 3001510 3001516 3001515       0       0       0       0
 3001098 3000084 3001480 3001475 3001476 3001481       0       0       0       0
 3001099 3000084 3001520 3001514 3001515 3001521       0       0       0       0
 3001100 3000084 3001520 3001521 3001465 3001464       0       0       0       0
 3001101 3000084 3001469 3001464 3001465 3001470       0       0       0       0
 3001102 3000084 3001474 3001469 3001470 3001475       0       0       0       0
 3001103 3000084 3001289 3001472 3001478 3001293       0       0       0       0
 3001104 3000084 3001472 3001473 3001479 3001478       0       0       0       0
 3001105 3000084 3001479 3001473 3001474 3001480       0       0       0       0
 3001106 3000084 3001284 3001467 3001472 3001289       0       0       0       0
 3001107 3000084 3001472 3001467 3001468 3001473       0       0       0       0
 3001108 3000084 3001468 3001469 3001474 3001473       0       0       0       0
 3001109 3000084 3001468 3001463 3001464 3001469       0       0       0       0
 3001110 3000084 3001463 3001519 3001520 3001464       0       0       0       0
 3001111 3000084 3001462 3001518 3001519 3001463       0       0       0       0
 3001112 3000084 3001467 3001462 3001463 3001468       0       0       0       0
 3001113 3000084 3001283 3001462 3001467 3001284       0       0       0       0
 3001114 3000084 3001282 3001518 3001462 3001283       0       0       0       0
 3001115 3000084 3001513 3001514 3001520 3001519       0       0       0       0
 3001116 3000084 3001250 3001514 3001513 3001509       0       0       0       0
 3001117 3000084 3001512 3001508 3001509 3001513       0       0       0       0
 3001118 3000084 3001518 3001512 3001513 3001519       0       0       0       0
 3001119 3000084 3001512 3001285 3001288 3001508       0       0       0       0
 3001120 3000084 3001518 3001282 3001285 3001512       0       0       0       0
 3001121 3000084 3001273 3001274 3001288 3001285       0       0       0       0
 3001122 3000084 3001282 3001265 3001273 3001285       0       0       0       0
 3001123 3000084 3001265 3001282 3001283 3001271       0       0       0       0
 3001124 3000084 3001271 3001283 3001284 3001275       0       0       0       0
 3001125 3000084 3001275 3001284 3001289 3001279       0       0       0       0
 3001126 3000084 3001279 3001289 3001293 3001281       0       0       0       0
 3001127 3000084 3001261 3001279 3001281 3001262       0       0       0       0
 3001128 3000084 3001260 3001275 3001279 3001261       0       0       0       0
 3001129 3000084 3001260 3001259 3001271 3001275       0       0       0       0
 3001130 3000084 3001257 3001265 3001271 3001259       0       0       0       0
 3001131 3000084 3001256 3001273 3001265 3001257       0       0       0       0
 3001132 3000084 3001273 3001256 3001258 3001274       0       0       0       0
 3001133 3000084 3001257 3001259 3001525 3001524       0       0       0       0
 3001134 3000084 3001523 3001256 3001257 3001524       0       0       0       0
 3001135 3000084 3001525 3001259 3001260 3001526       0       0       0       0
 3001136 3000084 3001253 3001524 3001525 3001254       0       0       0       0
 3001137 3000084 3001544 3001542 3001253 3001254       0       0       0       0
 3001138 3000084 3001254 3001525 3001526 3001255       0       0       0       0
 3001139 3000084 3001544 3001254 3001255 3001546       0       0       0       0
 3001140 3000084 3001523 3001251 3001252 3001304       0       0       0       0
 3001141 3000084 3001253 3001251 3001523 3001524       0       0       0       0
 3001142 3000084 3001539 3001252 3001251 3001540       0       0       0       0
 3001143 3000084 3001542 3001540 3001251 3001253       0       0       0       0
 3001144 3000084 3001523 3001304 3001258 3001256       0       0       0       0
 3001145 3000084 3001263 3001303 3001315 3001264       0       0       0       0
 3001146 3000084 3001261 3001262 3001315 3001303       0       0       0       0
 3001147 3000084 3001255 3001526 3001303 3001263       0       0       0       0
 3001148 3000084 3001526 3001260 3001261 3001303       0       0       0       0
 3001149 3000084 3001546 3001255 3001263 3001548       0       0       0       0
 3001150 3000084 3001548 3001263 3001264 3001550       0       0       0       0
 3001151 3000084 3001510 3001250 3001505 3001506       0       0       0       0
 3001152 3000084 3001250 3001509 3001504 3001505       0       0       0       0
 3001153 3000084 3001508 3001503 3001504 3001509       0       0       0       0
 3001154 3000084 3001262 3001281 3001280 3001270       0       0       0       0
 3001155 3000084 3001292 3001280 3001281 3001293       0       0       0       0
 3001156 3000084 3001292 3001293 3001478 3001483       0       0       0       0
 3001157 3000084 3001483 3001478 3001479 3001484       0       0       0       0
 3001158 3000084 3001485 3001480 3001481 3001486       0       0       0       0
 3001159 3000084 3001484 3001479 3001480 3001485       0       0       0       0
 3001160 3000084 3001490 3001485 3001486 3001491       0       0       0       0
 3001161 3000084 3001489 3001484 3001485 3001490       0       0       0       0
 3001162 3000084 3001488 3001483 3001484 3001489       0       0       0       0
 3001163 3000084 3001488 3001291 3001292 3001483       0       0       0       0
 3001164 3000084 3001291 3001278 3001280 3001292       0       0       0       0
 3001165 3000084 3001278 3001269 3001270 3001280       0       0       0       0
 3001166 3000084 3001495 3001490 3001491 3001496       0       0       0       0
 3001167 3000084 3001494 3001489 3001490 3001495       0       0       0       0
 3001168 3000084 3001493 3001488 3001489 3001494       0       0       0       0
 3001169 3000084 3001493 3001290 3001291 3001488       0       0       0       0
 3001170 3000084 3001290 3001277 3001278 3001291       0       0       0       0
 3001171 3000084 3001277 3001268 3001269 3001278       0       0       0       0
 3001172 3000084 3001500 3001495 3001496 3001501       0       0       0       0
 3001173 3000084 3001499 3001494 3001495 3001500       0       0       0       0
 3001174 3000084 3001505 3001500 3001501 3001506       0       0       0       0
 3001175 3000084 3001504 3001499 3001500 3001505       0       0       0       0
 3001176 3000084 3001493 3001494 3001499 3001498       0       0       0       0
 3001177 3000084 3001498 3001499 3001504 3001503       0       0       0       0
 3001178 3000084 3001286 3001290 3001493 3001498       0       0       0       0
 3001179 3000084 3001286 3001276 3001277 3001290       0       0       0       0
 3001180 3000084 3001276 3001267 3001268 3001277       0       0       0       0
 3001181 3000084 3001286 3001498 3001503 3001287       0       0       0       0
 3001182 3000084 3001272 3001276 3001286 3001287       0       0       0       0
 3001183 3000084 3001272 3001266 3001267 3001276       0       0       0       0
 3001184 3000084 3001287 3001503 3001508 3001288       0       0       0       0
 3001185 3000084 3001272 3001287 3001288 3001274       0       0       0       0
 3001186 3000084 3001274 3001258 3001266 3001272       0       0       0       0
 3001187 3000084 3001314 3001549 3001550 3001264       0       0       0       0
 3001188 3000084 3001312 3001547 3001549 3001314       0       0       0       0
 3001189 3000084 3001310 3001545 3001547 3001312       0       0       0       0
 3001190 3000084 3001308 3001543 3001545 3001310       0       0       0       0
 3001191 3000084 3001557 3001539 3001540 3001558       0       0       0       0
 3001192 3000084 3001561 3001546 3001548 3001562       0       0       0       0
 3001193 3000084 3001502 3001294 3001296 3001507       0       0       0       0
 3001194 3000084 3001563 3001297 3001487 3001482       0       0       0       0
 3001195 3000084 3001486 3001481 3001482 3001487       0       0       0       0
 3001196 3000084 3001295 3001492 3001487 3001297       0       0       0       0
 3001197 3000084 3001248 3001497 3001492 3001295       0       0       0       0
 3001198 3000084 3001497 3001248 3001294 3001502       0       0       0       0
 3001199 3000084 3001506 3001507 3001511 3001510       0       0       0       0
 3001200 3000084 3001486 3001487 3001492 3001491       0       0       0       0
 3001201 3000084 3001496 3001491 3001492 3001497       0       0       0       0
 3001202 3000084 3001501 3001496 3001497 3001502       0       0       0       0
 3001203 3000084 3001506 3001501 3001502 3001507       0       0       0       0
 3001204 3000084 3001264 3001315 3001313 3001314       0       0       0       0
 3001205 3000084 3001315 3001262 3001270 3001313       0       0       0       0
 3001206 3000084 3001269 3001311 3001313 3001270       0       0       0       0
 3001207 3000084 3001313 3001311 3001312 3001314       0       0       0       0
 3001208 3000084 3001268 3001309 3001311 3001269       0       0       0       0
 3001209 3000084 3001311 3001309 3001310 3001312       0       0       0       0
 3001210 3000084 3001267 3001307 3001309 3001268       0       0       0       0
 3001211 3000084 3001309 3001307 3001308 3001310       0       0       0       0
 3001212 3000084 3001266 3001305 3001307 3001267       0       0       0       0
 3001213 3000084 3001307 3001305 3001306 3001308       0       0       0       0
 3001214 3000084 3001258 3001304 3001305 3001266       0       0       0       0
 3001215 3000084 3001252 3001306 3001305 3001304       0       0       0       0
 3001216 3000084 3001562 3001548 3001550 3001551       0       0       0       0
 3001217 3000084 3001549 3001552 3001551 3001550       0       0       0       0
 3001218 3000084 3001547 3001553 3001552 3001549       0       0       0       0
 3001219 3000084 3001545 3001554 3001553 3001547       0       0       0       0
 3001220 3000084 3001543 3001555 3001554 3001545       0       0       0       0
 3001221 3000084 3001541 3001556 3001555 3001543       0       0       0       0
 3001222 3000084 3001539 3001557 3001556 3001541       0       0       0       0
 3001223 3000084 3001235 3001561 3001560 3001560       0       0       0       0
 3001224 3000084 3001560 3001235 3001559 3001559       0       0       0       0
 3001225 3000084 3001558 3001235 3001559 3001559       0       0       0       0
 3001226 3000084 3001235 3001557 3001558 3001558       0       0       0       0
 3001227 3000084 3001557 3001556 3001235 3001235       0       0       0       0
 3001228 3000084 3001556 3001555 3001235 3001235       0       0       0       0
 3001229 3000084 3001555 3001235 3001554 3001554       0       0       0       0
 3001230 3000084 3001235 3001554 3001553 3001553       0       0       0       0
 3001231 3000084 3001235 3001553 3001552 3001552       0       0       0       0
 3001232 3000084 3001235 3001552 3001551 3001551       0       0       0       0
 3001233 3000084 3001235 3001562 3001551 3001551       0       0       0       0
 3001234 3000084 3001562 3001235 3001561 3001561       0       0       0       0
 3001235 3000083 3001584 3001582 3001589 3001586       0       0       0       0
 3001236 3000083 3001589 3001582 3001580 3001590       0       0       0       0
 3001237 3000083 3001590 3001580 3001578 3001591       0       0       0       0
 3001238 3000083 3001591 3001578 3001576 3001594       0       0       0       0
 3001239 3000083 3001594 3001576 3001574 3001595       0       0       0       0
 3001240 3000083 3001595 3001574 3001572 3001596       0       0       0       0
 3001241 3000083 3001596 3001572 3001570 3001599       0       0       0       0
 3001242 3000083 3001599 3001570 3001568 3001600       0       0       0       0
 3001243 3000083 3001600 3001568 3001566 3001601       0       0       0       0
 3001244 3000083 3001601 3001566 3001780 3001604       0       0       0       0
 3001245 3000083 3001604 3001780 3001702 3001605       0       0       0       0
 3001246 3000083 3001605 3001702 3001697 3001606       0       0       0       0
 3001247 3000083 3001606 3001697 3001692 3001609       0       0       0       0
 3001248 3000083 3001609 3001692 3001687 3001610       0       0       0       0
 3001249 3000083 3001610 3001687 3001682 3001611       0       0       0       0
 3001250 3000083 3001611 3001682 3001677 3001614       0       0       0       0
 3001251 3000083 3001614 3001677 3001672 3001615       0       0       0       0
 3001252 3000083 3001615 3001672 3001667 3001616       0       0       0       0
 3001253 3000083 3001616 3001667 3001662 3001619       0       0       0       0
 3001254 3000083 3001619 3001662 3001657 3001620       0       0       0       0
 3001255 3000083 3001620 3001657 3001652 3001621       0       0       0       0
 3001256 3000083 3001621 3001652 3001647 3001624       0       0       0       0
 3001257 3000083 3001624 3001647 3001642 3001625       0       0       0       0
 3001258 3000083 3001625 3001642 3001637 3001626       0       0       0       0
 3001259 3000083 3001626 3001637 3001632 3001629       0       0       0       0
 3001260 3000083 3001629 3001632 3001627 3001630       0       0       0       0
 3001261 3000083 3001630 3001627 3001622 3001631       0       0       0       0
 3001262 3000083 3001599 3001600 3001635 3001634       0       0       0       0
 3001263 3000083 3001600 3001601 3001604 3001635       0       0       0       0
 3001264 3000083 3001604 3001605 3001636 3001635       0       0       0       0
 3001265 3000083 3001614 3001615 3001640 3001639       0       0       0       0
 3001266 3000083 3001615 3001616 3001619 3001640       0       0       0       0
 3001267 3000083 3001619 3001620 3001641 3001640       0       0       0       0
 3001268 3000083 3001631 3001622 3001617 3001644       0       0       0       0
 3001269 3000083 3001644 3001617 3001612 3001645       0       0       0       0
 3001270 3000083 3001645 3001612 3001607 3001646       0       0       0       0
 3001271 3000083 3001646 3001607 3001602 3001649       0       0       0       0
 3001272 3000083 3001649 3001602 3001597 3001650       0       0       0       0
 3001273 3000083 3001650 3001597 3001592 3001651       0       0       0       0
 3001274 3000083 3001651 3001592 3001587 3001654       0       0       0       0
 3001275 3000083 3001654 3001587 3001584 3001586       0       0       0       0
 3001276 3000083 3001636 3001605 3001606 3001655       0       0       0       0
 3001277 3000083 3001655 3001606 3001609 3001656       0       0       0       0
 3001278 3000083 3001656 3001609 3001610 3001659       0       0       0       0
 3001279 3000083 3001659 3001610 3001611 3001660       0       0       0       0
 3001280 3000083 3001660 3001611 3001614 3001639       0       0       0       0
 3001281 3000083 3001641 3001620 3001621 3001661       0       0       0       0
 3001282 3000083 3001661 3001621 3001624 3001664       0       0       0       0
 3001283 3000083 3001664 3001624 3001625 3001665       0       0       0       0
 3001284 3000083 3001665 3001625 3001626 3001666       0       0       0       0
 3001285 3000083 3001666 3001626 3001629 3001669       0       0       0       0
 3001286 3000083 3001669 3001629 3001630 3001670       0       0       0       0
 3001287 3000083 3001670 3001630 3001631 3001671       0       0       0       0
 3001288 3000083 3001671 3001631 3001644 3001674       0       0       0       0
 3001289 3000083 3001651 3001654 3001676 3001675       0       0       0       0
 3001290 3000083 3001654 3001586 3001589 3001676       0       0       0       0
 3001291 3000083 3001589 3001590 3001679 3001676       0       0       0       0
 3001292 3000083 3001674 3001644 3001645 3001680       0       0       0       0
 3001293 3000083 3001680 3001645 3001646 3001681       0       0       0       0
 3001294 3000083 3001681 3001646 3001649 3001684       0       0       0       0
 3001295 3000083 3001684 3001649 3001650 3001685       0       0       0       0
 3001296 3000083 3001685 3001650 3001651 3001675       0       0       0       0
 3001297 3000083 3001679 3001590 3001591 3001686       0       0       0       0
 3001298 3000083 3001686 3001591 3001594 3001689       0       0       0       0
 3001299 3000083 3001689 3001594 3001595 3001690       0       0       0       0
 3001300 3000083 3001690 3001595 3001596 3001691       0       0       0       0
 3001301 3000083 3001691 3001596 3001599 3001634       0       0       0       0
 3001302 3000083 3001666 3001669 3001695 3001694       0       0       0       0
 3001303 3000083 3001669 3001670 3001671 3001695       0       0       0       0
 3001304 3000083 3001671 3001674 3001723 3001695       0       0       0       0
 3001305 3000083 3001665 3001666 3001694 3001696       0       0       0       0
 3001306 3000083 3001664 3001665 3001696 3001699       0       0       0       0
 3001307 3000083 3001661 3001664 3001699 3001700       0       0       0       0
 3001308 3000083 3001641 3001661 3001700 3001701       0       0       0       0
 3001309 3000083 3001640 3001641 3001701 3001704       0       0       0       0
 3001310 3000083 3001639 3001640 3001704 3001705       0       0       0       0
 3001311 3000083 3001660 3001639 3001705 3001706       0       0       0       0
 3001312 3000083 3001659 3001660 3001706 3001707       0       0       0       0
 3001313 3000083 3001656 3001659 3001707 3001708       0       0       0       0
 3001314 3000083 3001655 3001656 3001708 3001709       0       0       0       0
 3001315 3000083 3001636 3001655 3001709 3001710       0       0       0       0
 3001316 3000083 3001635 3001636 3001710 3001711       0       0       0       0
 3001317 3000083 3001634 3001635 3001711 3001712       0       0       0       0
 3001318 3000083 3001691 3001634 3001712 3001713       0       0       0       0
 3001319 3000083 3001690 3001691 3001713 3001714       0       0       0       0
 3001320 3000083 3001689 3001690 3001714 3001729       0       0       0       0
 3001321 3000083 3001686 3001689 3001729 3001715       0       0       0       0
 3001322 3000083 3001679 3001686 3001715 3001716       0       0       0       0
 3001323 3000083 3001676 3001679 3001716 3001717       0       0       0       0
 3001324 3000083 3001675 3001676 3001717 3001718       0       0       0       0
 3001325 3000083 3001685 3001675 3001718 3001719       0       0       0       0
 3001326 3000083 3001684 3001685 3001719 3001720       0       0       0       0
 3001327 3000083 3001681 3001684 3001720 3001721       0       0       0       0
 3001328 3000083 3001680 3001681 3001721 3001722       0       0       0       0
 3001329 3000083 3001674 3001680 3001722 3001723       0       0       0       0
 3001330 3000083 3001711 3001710 3001725 3001724       0       0       0       0
 3001331 3000083 3001710 3001709 3001708 3001725       0       0       0       0
 3001332 3000083 3001708 3001707 3001726 3001725       0       0       0       0
 3001333 3000083 3001712 3001711 3001724 3001727       0       0       0       0
 3001334 3000083 3001713 3001712 3001727 3001728       0       0       0       0
 3001335 3000083 3001714 3001713 3001728 3001729       0       0       0       0
 3001336 3000083 3001726 3001707 3001706 3001730       0       0       0       0
 3001337 3000083 3001730 3001706 3001705 3001731       0       0       0       0
 3001338 3000083 3001731 3001705 3001704 3001732       0       0       0       0
 3001339 3000083 3001732 3001704 3001701 3001733       0       0       0       0
 3001340 3000083 3001733 3001701 3001700 3001734       0       0       0       0
 3001341 3000083 3001734 3001700 3001699 3001735       0       0       0       0
 3001342 3000083 3001735 3001699 3001696 3001736       0       0       0       0
 3001343 3000083 3001736 3001696 3001694 3001737       0       0       0       0
 3001344 3000083 3001737 3001694 3001695 3001772       0       0       0       0
 3001345 3000083 3001772 3001695 3001723 3001773       0       0       0       0
 3001346 3000083 3001773 3001723 3001722 3001774       0       0       0       0
 3001347 3000083 3001774 3001722 3001721 3001775       0       0       0       0
 3001348 3000083 3001775 3001721 3001720 3001776       0       0       0       0
 3001349 3000083 3001730 3001731 3001778 3001777       0       0       0       0
 3001350 3000083 3001731 3001732 3001733 3001778       0       0       0       0
 3001351 3000083 3001733 3001734 3001779 3001778       0       0       0       0
 3001352 3000083 3001776 3001720 3001719 3001781       0       0       0       0
 3001353 3000083 3001781 3001719 3001718 3001783       0       0       0       0
 3001354 3000083 3001726 3001730 3001777 3001785       0       0       0       0
 3001355 3000083 3001725 3001726 3001785 3001791       0       0       0       0
 3001356 3000083 3001724 3001725 3001791 3001798       0       0       0       0
 3001357 3000083 3001727 3001724 3001798 3001805       0       0       0       0
 3001358 3000083 3001728 3001727 3001805 3001812       0       0       0       0
 3001359 3000083 3001729 3001728 3001812 3001715       0       0       0       0
 3001360 3000083 3001783 3001718 3001717 3001819       0       0       0       0
 3001361 3000083 3001819 3001717 3001716 3001826       0       0       0       0
 3001362 3000083 3001826 3001716 3001715 3001812       0       0       0       0
 3001363 3000083 3001779 3001734 3001735 3001833       0       0       0       0
 3001364 3000083 3001772 3001773 3001847 3001840       0       0       0       0
 3001365 3000083 3002103 3001774 3001775 3002104       0       0       0       0
 3001366 3000083 3001775 3001776 3001854 3002104       0       0       0       0
 3001367 3000083 3001833 3001735 3001736 3001861       0       0       0       0
 3001368 3000083 3001861 3001736 3001737 3001868       0       0       0       0
 3001369 3000083 3001868 3001737 3001772 3001840       0       0       0       0
 3001370 3000083 3001854 3001776 3001781 3001875       0       0       0       0
 3001371 3000083 3001875 3001781 3001783 3001882       0       0       0       0
 3001372 3000083 3001882 3001783 3001819 3001889       0       0       0       0
 3001373 3000083 3001889 3001819 3001826 3001896       0       0       0       0
 3001374 3000083 3001896 3001826 3001812 3001903       0       0       0       0
 3001375 3000083 3001780 3001566 3001567 3001782       0       0       0       0
 3001376 3000083 3001566 3001568 3001569 3001567       0       0       0       0
 3001377 3000083 3001568 3001570 3001571 3001569       0       0       0       0
 3001378 3000083 3001570 3001572 3001573 3001571       0       0       0       0
 3001379 3000083 3001572 3001574 3001575 3001573       0       0       0       0
 3001380 3000083 3001574 3001576 3001577 3001575       0       0       0       0
 3001381 3000083 3001576 3001578 3001579 3001577       0       0       0       0
 3001382 3000083 3001578 3001580 3001581 3001579       0       0       0       0
 3001383 3000083 3001580 3001582 3001583 3001581       0       0       0       0
 3001384 3000083 3001582 3001584 3001585 3001583       0       0       0       0
 3001385 3000083 3001584 3001587 3001588 3001585       0       0       0       0
 3001386 3000083 3001587 3001592 3001593 3001588       0       0       0       0
 3001387 3000083 3001592 3001597 3001598 3001593       0       0       0       0
 3001388 3000083 3001597 3001602 3001603 3001598       0       0       0       0
 3001389 3000083 3001602 3001607 3001608 3001603       0       0       0       0
 3001390 3000083 3001607 3001612 3001613 3001608       0       0       0       0
 3001391 3000083 3001612 3001617 3001618 3001613       0       0       0       0
 3001392 3000083 3001617 3001622 3001623 3001618       0       0       0       0
 3001393 3000083 3001622 3001627 3001628 3001623       0       0       0       0
 3001394 3000083 3001627 3001632 3001633 3001628       0       0       0       0
 3001395 3000083 3001632 3001637 3001638 3001633       0       0       0       0
 3001396 3000083 3001637 3001642 3001643 3001638       0       0       0       0
 3001397 3000083 3001642 3001647 3001648 3001643       0       0       0       0
 3001398 3000083 3001647 3001652 3001653 3001648       0       0       0       0
 3001399 3000083 3001652 3001657 3001658 3001653       0       0       0       0
 3001400 3000083 3001657 3001662 3001663 3001658       0       0       0       0
 3001401 3000083 3001662 3001667 3001668 3001663       0       0       0       0
 3001402 3000083 3001667 3001672 3001673 3001668       0       0       0       0
 3001403 3000083 3001672 3001677 3001678 3001673       0       0       0       0
 3001404 3000083 3001677 3001682 3001683 3001678       0       0       0       0
 3001405 3000083 3001682 3001687 3001688 3001683       0       0       0       0
 3001406 3000083 3001687 3001692 3001693 3001688       0       0       0       0
 3001407 3000083 3001692 3001697 3001698 3001693       0       0       0       0
 3001408 3000083 3001697 3001702 3001703 3001698       0       0       0       0
 3001409 3000083 3001702 3001780 3001782 3001703       0       0       0       0
 3001410 3000083 3001782 3001567 3001738 3001784       0       0       0       0
 3001411 3000083 3001567 3001569 3001739 3001738       0       0       0       0
 3001412 3000083 3001569 3001571 3001740 3001739       0       0       0       0
 3001413 3000083 3001571 3001573 3001741 3001740       0       0       0       0
 3001414 3000083 3001573 3001575 3001742 3001741       0       0       0       0
 3001415 3000083 3001575 3001577 3001743 3001742       0       0       0       0
 3001416 3000083 3001577 3001579 3001744 3001743       0       0       0       0
 3001417 3000083 3001579 3001581 3001745 3001744       0       0       0       0
 3001418 3000083 3001581 3001583 3001746 3001745       0       0       0       0
 3001419 3000083 3001583 3001585 3001747 3001746       0       0       0       0
 3001420 3000083 3001585 3001588 3001748 3001747       0       0       0       0
 3001421 3000083 3001588 3001593 3001749 3001748       0       0       0       0
 3001422 3000083 3001593 3001598 3001750 3001749       0       0       0       0
 3001423 3000083 3001598 3001603 3001751 3001750       0       0       0       0
 3001424 3000083 3001603 3001608 3001752 3001751       0       0       0       0
 3001425 3000083 3001608 3001613 3001753 3001752       0       0       0       0
 3001426 3000083 3001613 3001618 3001754 3001753       0       0       0       0
 3001427 3000083 3001618 3001623 3001755 3001754       0       0       0       0
 3001428 3000083 3001623 3001628 3001756 3001755       0       0       0       0
 3001429 3000083 3001628 3001633 3001757 3001756       0       0       0       0
 3001430 3000083 3001633 3001638 3001758 3001757       0       0       0       0
 3001431 3000083 3001638 3001643 3001759 3001758       0       0       0       0
 3001432 3000083 3001643 3001648 3001760 3001759       0       0       0       0
 3001433 3000083 3001648 3001653 3001761 3001760       0       0       0       0
 3001434 3000083 3001653 3001658 3001762 3001761       0       0       0       0
 3001435 3000083 3001658 3001663 3001763 3001762       0       0       0       0
 3001436 3000083 3001663 3001668 3001764 3001763       0       0       0       0
 3001437 3000083 3001668 3001673 3001765 3001764       0       0       0       0
 3001438 3000083 3001673 3001678 3001766 3001765       0       0       0       0
 3001439 3000083 3001678 3001683 3001767 3001766       0       0       0       0
 3001440 3000083 3001683 3001688 3001768 3001767       0       0       0       0
 3001441 3000083 3001688 3001693 3001769 3001768       0       0       0       0
 3001442 3000083 3001693 3001698 3001770 3001769       0       0       0       0
 3001443 3000083 3001698 3001703 3001771 3001770       0       0       0       0
 3001444 3000083 3001703 3001782 3001784 3001771       0       0       0       0
 3001445 3000083 3002092 3002024 3001786 3002094       0       0       0       0
 3001446 3000083 3002024 3002025 3001793 3001786       0       0       0       0
 3001447 3000083 3002025 3002026 3001800 3001793       0       0       0       0
 3001448 3000083 3002026 3002027 3001807 3001800       0       0       0       0
 3001449 3000083 3002027 3002028 3001814 3001807       0       0       0       0
 3001450 3000083 3002028 3002029 3001821 3001814       0       0       0       0
 3001451 3000083 3002029 3002030 3001828 3001821       0       0       0       0
 3001452 3000083 3002030 3002031 3001835 3001828       0       0       0       0
 3001453 3000083 3002031 3002032 3001842 3001835       0       0       0       0
 3001454 3000083 3002032 3002033 3001849 3001842       0       0       0       0
 3001455 3000083 3002033 3002034 3001856 3001849       0       0       0       0
 3001456 3000083 3002034 3002035 3001863 3001856       0       0       0       0
 3001457 3000083 3002035 3002036 3001870 3001863       0       0       0       0
 3001458 3000083 3002036 3002037 3001877 3001870       0       0       0       0
 3001459 3000083 3002037 3002038 3001884 3001877       0       0       0       0
 3001460 3000083 3002038 3002039 3001891 3001884       0       0       0       0
 3001461 3000083 3002039 3002040 3001898 3001891       0       0       0       0
 3001462 3000083 3002040 3002041 3001905 3001898       0       0       0       0
 3001463 3000083 3002041 3002042 3001912 3001905       0       0       0       0
 3001464 3000083 3002042 3002043 3001919 3001912       0       0       0       0
 3001465 3000083 3002043 3002044 3001926 3001919       0       0       0       0
 3001466 3000083 3002044 3002045 3001933 3001926       0       0       0       0
 3001467 3000083 3002045 3002046 3001940 3001933       0       0       0       0
 3001468 3000083 3002046 3002047 3001947 3001940       0       0       0       0
 3001469 3000083 3002047 3002048 3001954 3001947       0       0       0       0
 3001470 3000083 3002048 3002049 3001961 3001954       0       0       0       0
 3001471 3000083 3002049 3002050 3001968 3001961       0       0       0       0
 3001472 3000083 3002050 3002051 3001975 3001968       0       0       0       0
 3001473 3000083 3002051 3002052 3001982 3001975       0       0       0       0
 3001474 3000083 3002052 3002053 3001989 3001982       0       0       0       0
 3001475 3000083 3002053 3002054 3001996 3001989       0       0       0       0
 3001476 3000083 3002054 3002055 3002003 3001996       0       0       0       0
 3001477 3000083 3002055 3002056 3002010 3002003       0       0       0       0
 3001478 3000083 3002056 3002057 3002017 3002010       0       0       0       0
 3001479 3000083 3002057 3002092 3002094 3002017       0       0       0       0
 3001480 3000083 3002094 3001786 3001787 3002096       0       0       0       0
 3001481 3000083 3001786 3001793 3001794 3001787       0       0       0       0
 3001482 3000083 3001793 3001800 3001801 3001794       0       0       0       0
 3001483 3000083 3001800 3001807 3001808 3001801       0       0       0       0
 3001484 3000083 3001807 3001814 3001815 3001808       0       0       0       0
 3001485 3000083 3001814 3001821 3001822 3001815       0       0       0       0
 3001486 3000083 3001821 3001828 3001829 3001822       0       0       0       0
 3001487 3000083 3001828 3001835 3001836 3001829       0       0       0       0
 3001488 3000083 3001835 3001842 3001843 3001836       0       0       0       0
 3001489 3000083 3001842 3001849 3001850 3001843       0       0       0       0
 3001490 3000083 3001849 3001856 3001857 3001850       0       0       0       0
 3001491 3000083 3001856 3001863 3001864 3001857       0       0       0       0
 3001492 3000083 3001863 3001870 3001871 3001864       0       0       0       0
 3001493 3000083 3001870 3001877 3001878 3001871       0       0       0       0
 3001494 3000083 3001877 3001884 3001885 3001878       0       0       0       0
 3001495 3000083 3001884 3001891 3001892 3001885       0       0       0       0
 3001496 3000083 3001891 3001898 3001899 3001892       0       0       0       0
 3001497 3000083 3001898 3001905 3001906 3001899       0       0       0       0
 3001498 3000083 3001905 3001912 3001913 3001906       0       0       0       0
 3001499 3000083 3001912 3001919 3001920 3001913       0       0       0       0
 3001500 3000083 3001919 3001926 3001927 3001920       0       0       0       0
 3001501 3000083 3001926 3001933 3001934 3001927       0       0       0       0
 3001502 3000083 3001933 3001940 3001941 3001934       0       0       0       0
 3001503 3000083 3001940 3001947 3001948 3001941       0       0       0       0
 3001504 3000083 3001947 3001954 3001955 3001948       0       0       0       0
 3001505 3000083 3001954 3001961 3001962 3001955       0       0       0       0
 3001506 3000083 3001961 3001968 3001969 3001962       0       0       0       0
 3001507 3000083 3001968 3001975 3001976 3001969       0       0       0       0
 3001508 3000083 3001975 3001982 3001983 3001976       0       0       0       0
 3001509 3000083 3001982 3001989 3001990 3001983       0       0       0       0
 3001510 3000083 3001989 3001996 3001997 3001990       0       0       0       0
 3001511 3000083 3001996 3002003 3002004 3001997       0       0       0       0
 3001512 3000083 3002003 3002010 3002011 3002004       0       0       0       0
 3001513 3000083 3002010 3002017 3002018 3002011       0       0       0       0
 3001514 3000083 3002017 3002094 3002096 3002018       0       0       0       0
 3001515 3000083 3002096 3001787 3001788 3002098       0       0       0       0
 3001516 3000083 3001787 3001794 3001795 3001788       0       0       0       0
 3001517 3000083 3001794 3001801 3001802 3001795       0       0       0       0
 3001518 3000083 3001801 3001808 3001809 3001802       0       0       0       0
 3001519 3000083 3001808 3001815 3001816 3001809       0       0       0       0
 3001520 3000083 3001815 3001822 3001823 3001816       0       0       0       0
 3001521 3000083 3001822 3001829 3001830 3001823       0       0       0       0
 3001522 3000083 3001829 3001836 3001837 3001830       0       0       0       0
 3001523 3000083 3001836 3001843 3001844 3001837       0       0       0       0
 3001524 3000083 3001843 3001850 3001851 3001844       0       0       0       0
 3001525 3000083 3001850 3001857 3001858 3001851       0       0       0       0
 3001526 3000083 3001857 3001864 3001865 3001858       0       0       0       0
 3001527 3000083 3001864 3001871 3001872 3001865       0       0       0       0
 3001528 3000083 3001871 3001878 3001879 3001872       0       0       0       0
 3001529 3000083 3001878 3001885 3001886 3001879       0       0       0       0
 3001530 3000083 3001885 3001892 3001893 3001886       0       0       0       0
 3001531 3000083 3001892 3001899 3001900 3001893       0       0       0       0
 3001532 3000083 3001899 3001906 3001907 3001900       0       0       0       0
 3001533 3000083 3001906 3001913 3001914 3001907       0       0       0       0
 3001534 3000083 3001913 3001920 3001921 3001914       0       0       0       0
 3001535 3000083 3001920 3001927 3001928 3001921       0       0       0       0
 3001536 3000083 3001927 3001934 3001935 3001928       0       0       0       0
 3001537 3000083 3001934 3001941 3001942 3001935       0       0       0       0
 3001538 3000083 3001941 3001948 3001949 3001942       0       0       0       0
 3001539 3000083 3001948 3001955 3001956 3001949       0       0       0       0
 3001540 3000083 3001955 3001962 3001963 3001956       0       0       0       0
 3001541 3000083 3001962 3001969 3001970 3001963       0       0       0       0
 3001542 3000083 3001969 3001976 3001977 3001970       0       0       0       0
 3001543 3000083 3001976 3001983 3001984 3001977       0       0       0       0
 3001544 3000083 3001983 3001990 3001991 3001984       0       0       0       0
 3001545 3000083 3001990 3001997 3001998 3001991       0       0       0       0
 3001546 3000083 3001997 3002004 3002005 3001998       0       0       0       0
 3001547 3000083 3002004 3002011 3002012 3002005       0       0       0       0
 3001548 3000083 3002011 3002018 3002019 3002012       0       0       0       0
 3001549 3000083 3002018 3002096 3002098 3002019       0       0       0       0
 3001550 3000083 3002098 3001788 3001789 3002100       0       0       0       0
 3001551 3000083 3001788 3001795 3001796 3001789       0       0       0       0
 3001552 3000083 3001795 3001802 3001803 3001796       0       0       0       0
 3001553 3000083 3001802 3001809 3001810 3001803       0       0       0       0
 3001554 3000083 3001809 3001816 3001817 3001810       0       0       0       0
 3001555 3000083 3001816 3001823 3001824 3001817       0       0       0       0
 3001556 3000083 3001823 3001830 3001831 3001824       0       0       0       0
 3001557 3000083 3001830 3001837 3001838 3001831       0       0       0       0
 3001558 3000083 3001837 3001844 3001845 3001838       0       0       0       0
 3001559 3000083 3001844 3001851 3001852 3001845       0       0       0       0
 3001560 3000083 3001851 3001858 3001859 3001852       0       0       0       0
 3001561 3000083 3001858 3001865 3001866 3001859       0       0       0       0
 3001562 3000083 3001865 3001872 3001873 3001866       0       0       0       0
 3001563 3000083 3001872 3001879 3001880 3001873       0       0       0       0
 3001564 3000083 3001879 3001886 3001887 3001880       0       0       0       0
 3001565 3000083 3001886 3001893 3001894 3001887       0       0       0       0
 3001566 3000083 3001893 3001900 3001901 3001894       0       0       0       0
 3001567 3000083 3001900 3001907 3001908 3001901       0       0       0       0
 3001568 3000083 3001907 3001914 3001915 3001908       0       0       0       0
 3001569 3000083 3001914 3001921 3001922 3001915       0       0       0       0
 3001570 3000083 3001921 3001928 3001929 3001922       0       0       0       0
 3001571 3000083 3001928 3001935 3001936 3001929       0       0       0       0
 3001572 3000083 3001935 3001942 3001943 3001936       0       0       0       0
 3001573 3000083 3001942 3001949 3001950 3001943       0       0       0       0
 3001574 3000083 3001949 3001956 3001957 3001950       0       0       0       0
 3001575 3000083 3001956 3001963 3001964 3001957       0       0       0       0
 3001576 3000083 3001963 3001970 3001971 3001964       0       0       0       0
 3001577 3000083 3001970 3001977 3001978 3001971       0       0       0       0
 3001578 3000083 3001977 3001984 3001985 3001978       0       0       0       0
 3001579 3000083 3001984 3001991 3001992 3001985       0       0       0       0
 3001580 3000083 3001991 3001998 3001999 3001992       0       0       0       0
 3001581 3000083 3001998 3002005 3002006 3001999       0       0       0       0
 3001582 3000083 3002005 3002012 3002013 3002006       0       0       0       0
 3001583 3000083 3002012 3002019 3002020 3002013       0       0       0       0
 3001584 3000083 3002019 3002098 3002100 3002020       0       0       0       0
 3001585 3000083 3002100 3001789 3001790 3002102       0       0       0       0
 3001586 3000083 3001789 3001796 3001797 3001790       0       0       0       0
 3001587 3000083 3001796 3001803 3001804 3001797       0       0       0       0
 3001588 3000083 3001803 3001810 3001811 3001804       0       0       0       0
 3001589 3000083 3001810 3001817 3001818 3001811       0       0       0       0
 3001590 3000083 3001817 3001824 3001825 3001818       0       0       0       0
 3001591 3000083 3001824 3001831 3001832 3001825       0       0       0       0
 3001592 3000083 3001831 3001838 3001839 3001832       0       0       0       0
 3001593 3000083 3001838 3001845 3001846 3001839       0       0       0       0
 3001594 3000083 3001845 3001852 3001853 3001846       0       0       0       0
 3001595 3000083 3001852 3001859 3001860 3001853       0       0       0       0
 3001596 3000083 3001859 3001866 3001867 3001860       0       0       0       0
 3001597 3000083 3001866 3001873 3001874 3001867       0       0       0       0
 3001598 3000083 3001873 3001880 3001881 3001874       0       0       0       0
 3001599 3000083 3001880 3001887 3001888 3001881       0       0       0       0
 3001600 3000083 3001887 3001894 3001895 3001888       0       0       0       0
 3001601 3000083 3001894 3001901 3001902 3001895       0       0       0       0
 3001602 3000083 3001901 3001908 3001909 3001902       0       0       0       0
 3001603 3000083 3001908 3001915 3001916 3001909       0       0       0       0
 3001604 3000083 3001915 3001922 3001923 3001916       0       0       0       0
 3001605 3000083 3001922 3001929 3001930 3001923       0       0       0       0
 3001606 3000083 3001929 3001936 3001937 3001930       0       0       0       0
 3001607 3000083 3001936 3001943 3001944 3001937       0       0       0       0
 3001608 3000083 3001943 3001950 3001951 3001944       0       0       0       0
 3001609 3000083 3001950 3001957 3001958 3001951       0       0       0       0
 3001610 3000083 3001957 3001964 3001965 3001958       0       0       0       0
 3001611 3000083 3001964 3001971 3001972 3001965       0       0       0       0
 3001612 3000083 3001971 3001978 3001979 3001972       0       0       0       0
 3001613 3000083 3001978 3001985 3001986 3001979       0       0       0       0
 3001614 3000083 3001985 3001992 3001993 3001986       0       0       0       0
 3001615 3000083 3001992 3001999 3002000 3001993       0       0       0       0
 3001616 3000083 3001999 3002006 3002007 3002000       0       0       0       0
 3001617 3000083 3002006 3002013 3002014 3002007       0       0       0       0
 3001618 3000083 3002013 3002020 3002021 3002014       0       0       0       0
 3001619 3000083 3002020 3002100 3002102 3002021       0       0       0       0
 3001620 3000083 3002102 3001790 3001738 3001784       0       0       0       0
 3001621 3000083 3001790 3001797 3001739 3001738       0       0       0       0
 3001622 3000083 3001797 3001804 3001740 3001739       0       0       0       0
 3001623 3000083 3001804 3001811 3001741 3001740       0       0       0       0
 3001624 3000083 3001811 3001818 3001742 3001741       0       0       0       0
 3001625 3000083 3001818 3001825 3001743 3001742       0       0       0       0
 3001626 3000083 3001825 3001832 3001744 3001743       0       0       0       0
 3001627 3000083 3001832 3001839 3001745 3001744       0       0       0       0
 3001628 3000083 3001839 3001846 3001746 3001745       0       0       0       0
 3001629 3000083 3001846 3001853 3001747 3001746       0       0       0       0
 3001630 3000083 3001853 3001860 3001748 3001747       0       0       0       0
 3001631 3000083 3001860 3001867 3001749 3001748       0       0       0       0
 3001632 3000083 3001867 3001874 3001750 3001749       0       0       0       0
 3001633 3000083 3001874 3001881 3001751 3001750       0       0       0       0
 3001634 3000083 3001881 3001888 3001752 3001751       0       0       0       0
 3001635 3000083 3001888 3001895 3001753 3001752       0       0       0       0
 3001636 3000083 3001895 3001902 3001754 3001753       0       0       0       0
 3001637 3000083 3001902 3001909 3001755 3001754       0       0       0       0
 3001638 3000083 3001909 3001916 3001756 3001755       0       0       0       0
 3001639 3000083 3001916 3001923 3001757 3001756       0       0       0       0
 3001640 3000083 3001923 3001930 3001758 3001757       0       0       0       0
 3001641 3000083 3001930 3001937 3001759 3001758       0       0       0       0
 3001642 3000083 3001937 3001944 3001760 3001759       0       0       0       0
 3001643 3000083 3001944 3001951 3001761 3001760       0       0       0       0
 3001644 3000083 3001951 3001958 3001762 3001761       0       0       0       0
 3001645 3000083 3001958 3001965 3001763 3001762       0       0       0       0
 3001646 3000083 3001965 3001972 3001764 3001763       0       0       0       0
 3001647 3000083 3001972 3001979 3001765 3001764       0       0       0       0
 3001648 3000083 3001979 3001986 3001766 3001765       0       0       0       0
 3001649 3000083 3001986 3001993 3001767 3001766       0       0       0       0
 3001650 3000083 3001993 3002000 3001768 3001767       0       0       0       0
 3001651 3000083 3002000 3002007 3001769 3001768       0       0       0       0
 3001652 3000083 3002007 3002014 3001770 3001769       0       0       0       0
 3001653 3000083 3002014 3002021 3001771 3001770       0       0       0       0
 3001654 3000083 3002021 3002102 3001784 3001771       0       0       0       0
 3001655 3000083 3001784 3001738 3001792 3002106       0       0       0       0
 3001656 3000083 3001738 3001739 3001799 3001792       0       0       0       0
 3001657 3000083 3001739 3001740 3001806 3001799       0       0       0       0
 3001658 3000083 3001740 3001741 3001813 3001806       0       0       0       0
 3001659 3000083 3001741 3001742 3001820 3001813       0       0       0       0
 3001660 3000083 3001742 3001743 3001827 3001820       0       0       0       0
 3001661 3000083 3001743 3001744 3001834 3001827       0       0       0       0
 3001662 3000083 3001744 3001745 3001841 3001834       0       0       0       0
 3001663 3000083 3001745 3001746 3001848 3001841       0       0       0       0
 3001664 3000083 3001746 3001747 3001855 3001848       0       0       0       0
 3001665 3000083 3001747 3001748 3001862 3001855       0       0       0       0
 3001666 3000083 3001748 3001749 3001869 3001862       0       0       0       0
 3001667 3000083 3001749 3001750 3001876 3001869       0       0       0       0
 3001668 3000083 3001750 3001751 3001883 3001876       0       0       0       0
 3001669 3000083 3001751 3001752 3001890 3001883       0       0       0       0
 3001670 3000083 3001752 3001753 3001897 3001890       0       0       0       0
 3001671 3000083 3001753 3001754 3001904 3001897       0       0       0       0
 3001672 3000083 3001754 3001755 3001911 3001904       0       0       0       0
 3001673 3000083 3001755 3001756 3001918 3001911       0       0       0       0
 3001674 3000083 3001756 3001757 3001925 3001918       0       0       0       0
 3001675 3000083 3001757 3001758 3001932 3001925       0       0       0       0
 3001676 3000083 3001758 3001759 3001939 3001932       0       0       0       0
 3001677 3000083 3001759 3001760 3001946 3001939       0       0       0       0
 3001678 3000083 3001760 3001761 3001953 3001946       0       0       0       0
 3001679 3000083 3001761 3001762 3001960 3001953       0       0       0       0
 3001680 3000083 3001762 3001763 3001967 3001960       0       0       0       0
 3001681 3000083 3001763 3001764 3001974 3001967       0       0       0       0
 3001682 3000083 3001764 3001765 3001981 3001974       0       0       0       0
 3001683 3000083 3001765 3001766 3001988 3001981       0       0       0       0
 3001684 3000083 3001766 3001767 3001995 3001988       0       0       0       0
 3001685 3000083 3001767 3001768 3002002 3001995       0       0       0       0
 3001686 3000083 3001768 3001769 3002009 3002002       0       0       0       0
 3001687 3000083 3001769 3001770 3002016 3002009       0       0       0       0
 3001688 3000083 3001770 3001771 3002023 3002016       0       0       0       0
 3001689 3000083 3001771 3001784 3002106 3002023       0       0       0       0
 3001690 3000083 3002106 3001792 3002024 3002092       0       0       0       0
 3001691 3000083 3001792 3001799 3002025 3002024       0       0       0       0
 3001692 3000083 3001799 3001806 3002026 3002025       0       0       0       0
 3001693 3000083 3001806 3001813 3002027 3002026       0       0       0       0
 3001694 3000083 3001813 3001820 3002028 3002027       0       0       0       0
 3001695 3000083 3001820 3001827 3002029 3002028       0       0       0       0
 3001696 3000083 3001827 3001834 3002030 3002029       0       0       0       0
 3001697 3000083 3001834 3001841 3002031 3002030       0       0       0       0
 3001698 3000083 3001841 3001848 3002032 3002031       0       0       0       0
 3001699 3000083 3001848 3001855 3002033 3002032       0       0       0       0
 3001700 3000083 3001855 3001862 3002034 3002033       0       0       0       0
 3001701 3000083 3001862 3001869 3002035 3002034       0       0       0       0
 3001702 3000083 3001869 3001876 3002036 3002035       0       0       0       0
 3001703 3000083 3001876 3001883 3002037 3002036       0       0       0       0
 3001704 3000083 3001883 3001890 3002038 3002037       0       0       0       0
 3001705 3000083 3001890 3001897 3002039 3002038       0       0       0       0
 3001706 3000083 3001897 3001904 3002040 3002039       0       0       0       0
 3001707 3000083 3001904 3001911 3002041 3002040       0       0       0       0
 3001708 3000083 3001911 3001918 3002042 3002041       0       0       0       0
 3001709 3000083 3001918 3001925 3002043 3002042       0       0       0       0
 3001710 3000083 3001925 3001932 3002044 3002043       0       0       0       0
 3001711 3000083 3001932 3001939 3002045 3002044       0       0       0       0
 3001712 3000083 3001939 3001946 3002046 3002045       0       0       0       0
 3001713 3000083 3001946 3001953 3002047 3002046       0       0       0       0
 3001714 3000083 3001953 3001960 3002048 3002047       0       0       0       0
 3001715 3000083 3001960 3001967 3002049 3002048       0       0       0       0
 3001716 3000083 3001967 3001974 3002050 3002049       0       0       0       0
 3001717 3000083 3001974 3001981 3002051 3002050       0       0       0       0
 3001718 3000083 3001981 3001988 3002052 3002051       0       0       0       0
 3001719 3000083 3001988 3001995 3002053 3002052       0       0       0       0
 3001720 3000083 3001995 3002002 3002054 3002053       0       0       0       0
 3001721 3000083 3002002 3002009 3002055 3002054       0       0       0       0
 3001722 3000083 3002009 3002016 3002056 3002055       0       0       0       0
 3001723 3000083 3002016 3002023 3002057 3002056       0       0       0       0
 3001724 3000083 3002023 3002106 3002092 3002057       0       0       0       0
 3001725 3000083 3001903 3001812 3001805 3001910       0       0       0       0
 3001726 3000083 3001910 3001805 3001798 3001917       0       0       0       0
 3001727 3000083 3001917 3001798 3001791 3001924       0       0       0       0
 3001728 3000083 3001924 3001791 3001785 3001931       0       0       0       0
 3001729 3000083 3001931 3001785 3001777 3001938       0       0       0       0
 3001730 3000083 3001938 3001777 3001778 3001945       0       0       0       0
 3001731 3000083 3001945 3001778 3001779 3001952       0       0       0       0
 3001732 3000083 3001952 3001779 3001833 3001959       0       0       0       0
 3001733 3000083 3001959 3001833 3001861 3001966       0       0       0       0
 3001734 3000083 3001966 3001861 3001868 3001973       0       0       0       0
 3001735 3000083 3001973 3001868 3001840 3001980       0       0       0       0
 3001736 3000083 3001980 3001840 3001847 3001987       0       0       0       0
 3001737 3000083 3002103 3002104 3001854 3001994       0       0       0       0
 3001738 3000083 3001994 3001854 3001875 3002001       0       0       0       0
 3001739 3000083 3002001 3001875 3001882 3002008       0       0       0       0
 3001740 3000083 3002008 3001882 3001889 3002015       0       0       0       0
 3001741 3000083 3002015 3001889 3001896 3002022       0       0       0       0
 3001742 3000083 3002022 3001896 3001903 3002058       0       0       0       0
 3001743 3000083 3002058 3001903 3001910 3002059       0       0       0       0
 3001744 3000083 3002059 3001910 3001917 3002060       0       0       0       0
 3001745 3000083 3002060 3001917 3001924 3002061       0       0       0       0
 3001746 3000083 3002061 3001924 3001931 3002062       0       0       0       0
 3001747 3000083 3002062 3001931 3001938 3002063       0       0       0       0
 3001748 3000083 3002063 3001938 3001945 3002064       0       0       0       0
 3001749 3000083 3002064 3001945 3001952 3002065       0       0       0       0
 3001750 3000083 3001980 3001987 3002067 3002066       0       0       0       0
 3001751 3000083 3001987 3001994 3002001 3002067       0       0       0       0
 3001752 3000083 3002001 3002008 3002068 3002067       0       0       0       0
 3001753 3000083 3002065 3001952 3001959 3002069       0       0       0       0
 3001754 3000083 3002069 3001959 3001966 3002070       0       0       0       0
 3001755 3000083 3002070 3001966 3001973 3002071       0       0       0       0
 3001756 3000083 3002071 3001973 3001980 3002066       0       0       0       0
 3001757 3000083 3002068 3002008 3002015 3002072       0       0       0       0
 3001758 3000083 3002072 3002015 3002022 3002073       0       0       0       0
 3001759 3000083 3002073 3002022 3002058 3002074       0       0       0       0
 3001760 3000083 3002074 3002058 3002059 3002075       0       0       0       0
 3001761 3000083 3002075 3002059 3002060 3002076       0       0       0       0
 3001762 3000083 3002076 3002060 3002061 3002077       0       0       0       0
 3001763 3000083 3002077 3002061 3002062 3002078       0       0       0       0
 3001764 3000083 3002078 3002062 3002063 3002087       0       0       0       0
 3001765 3000083 3002087 3002063 3002064 3002079       0       0       0       0
 3001766 3000083 3002079 3002064 3002065 3002080       0       0       0       0
 3001767 3000083 3002080 3002065 3002069 3002081       0       0       0       0
 3001768 3000083 3002081 3002069 3002070 3002082       0       0       0       0
 3001769 3000083 3002082 3002070 3002071 3002066       0       0       0       0
 3001770 3000083 3002066 3002067 3002068 3002083       0       0       0       0
 3001771 3000083 3002082 3002066 3002083 3002084       0       0       0       0
 3001772 3000083 3002081 3002082 3002084 3002085       0       0       0       0
 3001773 3000083 3002080 3002081 3002085 3002086       0       0       0       0
 3001774 3000083 3002079 3002080 3002086 3002087       0       0       0       0
 3001775 3000083 3002083 3002068 3002072 3002088       0       0       0       0
 3001776 3000083 3002088 3002072 3002073 3002107       0       0       0       0
 3001777 3000083 3002089 3002105 3002074 3002075       0       0       0       0
 3001778 3000083 3002084 3002083 3002088 3002090       0       0       0       0
 3001779 3000083 3002085 3002084 3002090 3002091       0       0       0       0
 3001780 3000083 3002086 3002085 3002091 3002093       0       0       0       0
 3001781 3000083 3002078 3002087 3002086 3002093       0       0       0       0
 3001782 3000083 3002077 3002078 3002093 3002095       0       0       0       0
 3001783 3000083 3002076 3002077 3002095 3002097       0       0       0       0
 3001784 3000083 3002089 3002075 3002076 3002097       0       0       0       0
 3001785 3000083 3002095 3002093 3002091 3002099       0       0       0       0
 3001786 3000083 3002089 3002097 3002099 3002101       0       0       0       0
 3001787 3000083 3002090 3002088 3002107 3002101       0       0       0       0
 3001788 3000083 3002099 3002091 3002090 3002101       0       0       0       0
 3001789 3000083 3002095 3002099 3002097 3002097       0       0       0       0
 3001790 3000083 3001994 3001987 3001847 3002103       0       0       0       0
 3001791 3000083 3001773 3001774 3002103 3001847       0       0       0       0
 3001792 3000083 3002073 3002074 3002105 3002107       0       0       0       0
 3001793 3000083 3002089 3002101 3002107 3002105       0       0       0       0
 3001794 3000100 3002153 3002155 3002108 3002135       0       0       0       0
 3001795 3000100 3002135 3002108 3002109 3002136       0       0       0       0
 3001796 3000100 3002136 3002109 3002110 3002137       0       0       0       0
 3001797 3000100 3002137 3002110 3002111 3002138       0       0       0       0
 3001798 3000100 3002138 3002111 3002112 3002139       0       0       0       0
 3001799 3000100 3002139 3002112 3002113 3002140       0       0       0       0
 3001800 3000100 3002140 3002113 3002114 3002141       0       0       0       0
 3001801 3000100 3002141 3002114 3002115 3002142       0       0       0       0
 3001802 3000100 3002142 3002115 3002116 3002143       0       0       0       0
 3001803 3000100 3002143 3002116 3002156 3002154       0       0       0       0
 3001804 3000100 3002155 3002157 3002117 3002108       0       0       0       0
 3001805 3000100 3002108 3002117 3002118 3002109       0       0       0       0
 3001806 3000100 3002109 3002118 3002119 3002110       0       0       0       0
 3001807 3000100 3002110 3002119 3002120 3002111       0       0       0       0
 3001808 3000100 3002111 3002120 3002121 3002112       0       0       0       0
 3001809 3000100 3002112 3002121 3002122 3002113       0       0       0       0
 3001810 3000100 3002113 3002122 3002123 3002114       0       0       0       0
 3001811 3000100 3002114 3002123 3002124 3002115       0       0       0       0
 3001812 3000100 3002115 3002124 3002125 3002116       0       0       0       0
 3001813 3000100 3002116 3002125 3002158 3002156       0       0       0       0
 3001814 3000100 3002157 3002159 3002126 3002117       0       0       0       0
 3001815 3000100 3002117 3002126 3002127 3002118       0       0       0       0
 3001816 3000100 3002118 3002127 3002128 3002119       0       0       0       0
 3001817 3000100 3002119 3002128 3002129 3002120       0       0       0       0
 3001818 3000100 3002120 3002129 3002130 3002121       0       0       0       0
 3001819 3000100 3002121 3002130 3002131 3002122       0       0       0       0
 3001820 3000100 3002122 3002131 3002132 3002123       0       0       0       0
 3001821 3000100 3002123 3002132 3002133 3002124       0       0       0       0
 3001822 3000100 3002124 3002133 3002134 3002125       0       0       0       0
 3001823 3000100 3002125 3002134 3002160 3002158       0       0       0       0
 3001824 3000100 3002159 3002161 3002144 3002126       0       0       0       0
 3001825 3000100 3002126 3002144 3002145 3002127       0       0       0       0
 3001826 3000100 3002127 3002145 3002146 3002128       0       0       0       0
 3001827 3000100 3002128 3002146 3002147 3002129       0       0       0       0
 3001828 3000100 3002129 3002147 3002148 3002130       0       0       0       0
 3001829 3000100 3002130 3002148 3002149 3002131       0       0       0       0
 3001830 3000100 3002131 3002149 3002150 3002132       0       0       0       0
 3001831 3000100 3002132 3002150 3002151 3002133       0       0       0       0
 3001832 3000100 3002133 3002151 3002152 3002134       0       0       0       0
 3001833 3000100 3002134 3002152 3002162 3002160       0       0       0       0
 3001836 3000081 3003054 3003068 3003075 3003055       0       0       0       0
 3001837 3000081 3003068 3003069 3003076 3003075       0       0       0       0
 3001838 3000081 3003069 3003070 3003077 3003076       0       0       0       0
 3001839 3000081 3003070 3003071 3003078 3003077       0       0       0       0
 3001840 3000081 3003071 3003072 3003079 3003078       0       0       0       0
 3001841 3000081 3003072 3003073 3003080 3003079       0       0       0       0
 3001842 3000081 3003073 3003074 3003081 3003080       0       0       0       0
 3001843 3000081 3003074 3003061 3003062 3003081       0       0       0       0
 3001844 3000081 3003055 3003075 3003082 3003056       0       0       0       0
 3001845 3000081 3003075 3003076 3003083 3003082       0       0       0       0
 3001846 3000081 3003076 3003077 3003084 3003083       0       0       0       0
 3001847 3000081 3003077 3003078 3003085 3003084       0       0       0       0
 3001848 3000081 3003078 3003079 3003086 3003085       0       0       0       0
 3001849 3000081 3003079 3003080 3003087 3003086       0       0       0       0
 3001850 3000081 3003080 3003081 3003088 3003087       0       0       0       0
 3001851 3000081 3003081 3003062 3003063 3003088       0       0       0       0
 3001852 3000081 3003056 3003082 3003089 3003057       0       0       0       0
 3001853 3000081 3003082 3003083 3003090 3003089       0       0       0       0
 3001854 3000081 3003083 3003084 3003091 3003090       0       0       0       0
 3001855 3000081 3003084 3003085 3003092 3003092       0       0       0       0
 3001856 3000081 3003085 3003086 3003092 3003092       0       0       0       0
 3001857 3000081 3003086 3003087 3003094 3003093       0       0       0       0
 3001858 3000081 3003087 3003088 3003095 3003094       0       0       0       0
 3001859 3000081 3003088 3003063 3003064 3003095       0       0       0       0
 3001860 3000081 3003057 3003089 3003096 3003058       0       0       0       0
 3001861 3000081 3003089 3003090 3003097 3003096       0       0       0       0
 3001862 3000081 3003090 3003091 3003098 3003097       0       0       0       0
 3001863 3000081 3003091 3003092 3003098 3003098       0       0       0       0
 3001864 3000081 3003092 3003093 3003100 3003100       0       0       0       0
 3001865 3000081 3003093 3003094 3003101 3003100       0       0       0       0
 3001866 3000081 3003094 3003095 3003102 3003101       0       0       0       0
 3001867 3000081 3003095 3003064 3003065 3003102       0       0       0       0
 3001868 3000081 3003058 3003096 3003103 3003059       0       0       0       0
 3001869 3000081 3003096 3003097 3003104 3003103       0       0       0       0
 3001870 3000081 3003097 3003098 3003105 3003104       0       0       0       0
 3001871 3000081 3003098 3003099 3003106 3003105       0       0       0       0
 3001872 3000081 3003099 3003100 3003107 3003106       0       0       0       0
 3001873 3000081 3003100 3003101 3003108 3003107       0       0       0       0
 3001874 3000081 3003101 3003102 3003109 3003108       0       0       0       0
 3001875 3000081 3003102 3003065 3003066 3003109       0       0       0       0
 3001876 3000081 3003059 3003103 3003110 3003060       0       0       0       0
 3001877 3000081 3003103 3003104 3003111 3003110       0       0       0       0
 3001878 3000081 3003104 3003105 3003112 3003111       0       0       0       0
 3001879 3000081 3003105 3003106 3003113 3003112       0       0       0       0
 3001880 3000081 3003106 3003107 3003114 3003113       0       0       0       0
 3001881 3000081 3003107 3003108 3003115 3003114       0       0       0       0
 3001882 3000081 3003108 3003109 3003116 3003115       0       0       0       0
 3001883 3000081 3003109 3003066 3003067 3003116       0       0       0       0
 3001884 3000081 3003084 3003092 3003091 3003091       0       0       0       0
 3001885 3000081 3003092 3003100 3003099 3003099       0       0       0       0
 3001886 3000081 3003092 3003099 3003098 3003098       0       0       0       0
 3001887 3000081 3003086 3003093 3003092 3003092       0       0       0       0
 3001888 3000081 3003092 3003117 3003118 3003118       0       0       0       0
$
$
$
*ELEMENT_BEAM
$
$    eid     pid      n1      n2      n3     rt1     rr1     rt2     rr2   local
$#   eid     pid      n1      n2      n3     rt1     rr1     rt2     rr2   local
 3001834 3000092 3001235 3001564 3001565       0       0       0       0       2
$
$
*ELEMENT_DISCRETE
$
$    eid     pid      n1      n2     vid               s      pf          offset
$#   eid     pid      n1      n2     vid               s      pf          offset
 3001835 3000101 3001564 3001235       0             1.0       0             0.0
$
$
$
$$$$$$$$$$$$$$$ End ELEMENTS Block $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$
$
$************** Begin ACCELEROMETER Block **************************************
$
$
$
*ELEMENT_SEATBELT_ACCELEROMETER
$
$   sbacid      nid1      nid2      nid3     igrav    intopt
$#  sbacid      nid1      nid2      nid3     igrav    intopt      mass    
   3000001   3003092   3003117   3003118         1         1       0.0
$
$
$
$************** End ACCELEROMETER Block ****************************************
$
$
$
$
$
*NODE
$
$    nid               x               y               z      tc      rc
$#   nid               x               y               z      tc      rc  
 3000001         3200.53          -334.0        1121.107       0       0
 3000028         3224.78          -334.0        767.7482       0       0
 3000077        3085.659          -334.0        482.5539       0       0
 3000089        2677.894       -530.3931        510.8544       0       0
 3000103        2677.893       -137.6071        510.8549       0       0
 3000222        3102.774          -346.0        440.6363       0       0
 3000223        3102.774          -322.0        440.6363       0       0
 3000224        3094.531          -346.0        419.1639       0       0
 3000231        3166.489          -334.0        501.5921       0       0
 3000233         3093.35          -334.0         569.788       0       0
 3000235        3166.489       -234.0001        501.5921       0       0
 3000237        3217.564       -333.9974        1089.558       0       0
 3000239        3118.015       -333.9974        1080.079       0       0
 3000241        3217.564        -233.998        1089.558       0       0
 3000243        3285.848          -334.0        908.4229       0       0
 3000245        3186.299          -334.0        898.9404       0       0
 3000247        3285.848          -234.0        908.4229       0       0
 3000249        2577.973       -430.3925         477.968       0       0
 3000251         2511.06       -430.3925        552.2825       0       0
 3000253        2577.973       -330.3929         477.968       0       0
 3000255        2401.856       -430.3921        319.3922       0       0
 3000257        2334.943       -430.3921        393.7066       0       0
 3000259        2401.856       -330.3921        319.3922       0       0
 3000261        2577.973       -237.6086         477.968       0       0
 3000263         2511.06       -237.6086        552.2825       0       0
 3000265        2577.973       -137.6091         477.968       0       0
 3000267        2401.856       -237.6081        319.3922       0       0
 3000269        2334.943       -237.6081        393.7066       0       0
 3000271        2401.856       -137.6081        319.3922       0       0
 3000273         2831.54        -227.764         720.211       0       0
 3000274        2834.599        -263.341        711.6119       0       0
 3000275         2836.28        -298.913        706.5589       0       0
 3000276         2836.67        -334.476        704.8819       0       0
 3000277        2820.849        -156.574         749.413       0       0
 3000278         2827.02        -192.174        732.6399       0       0
 3000279         2826.29        -263.291        738.8179       0       0
 3000280         2826.04        -298.851        738.8079       0       0
 3000281          2825.8         -334.41         738.798       0       0
 3000282         2808.01         -120.93         769.543       0       0
 3000283         2807.05        -156.484         771.402       0       0
 3000284          2806.8        -192.044         771.392       0       0
 3000285         2806.55        -227.604        771.3819       0       0
 3000286        2806.309        -263.161         771.373       0       0
 3000287        2806.059         -298.72         771.363       0       0
 3000288        2805.809        -334.279        771.3529       0       0
 3000289        2816.369         -80.393         734.572       0       0
 3000290        2814.219        -120.962         733.839       0       0
 3000291        2813.969         -156.52        733.8289       0       0
 3000292        2813.719         -192.08        733.8189       0       0
 3000293        2813.469        -227.639        733.8089       0       0
 3000294        2813.219        -263.199        733.7989       0       0
 3000295         2812.98        -298.757        733.7889       0       0
 3000296         2812.73        -334.317         733.779       0       0
 3000297         2829.32        -49.9384         701.375       0       0
 3000298        2827.199        -85.4834         700.653       0       0
 3000299         2826.96        -121.042         700.644       0       0
 3000300         2826.71        -156.602         700.634       0       0
 3000301         2826.46        -192.162         700.624       0       0
 3000302         2826.21        -227.721         700.613       0       0
 3000303         2825.96        -263.279        700.6029       0       0
 3000304        2825.719        -298.836         700.594       0       0
 3000305        2825.469        -334.396        700.5839       0       0
 3000306         2834.48        -26.4929        671.6409       0       0
 3000307        2833.599        -49.9605         673.503       0       0
 3000308         2833.36        -85.5181         673.494       0       0
 3000309         2833.11        -121.078        673.4829       0       0
 3000310         2832.86        -156.637        673.4729       0       0
 3000311         2832.61        -192.197        673.4629       0       0
 3000312         2832.36        -227.756        673.4529       0       0
 3000313        2832.119        -263.314        673.4439       0       0
 3000314        2831.869        -298.872        673.4339       0       0
 3000315        2831.619        -334.432        673.4239       0       0
 3000316        2818.409        -8.53057        697.0879       0       0
 3000317          2820.0         -49.872         697.798       0       0
 3000318         2819.75        -85.4303         697.788       0       0
 3000319          2819.5        -120.991         697.778       0       0
 3000320         2819.25        -156.549         697.768       0       0
 3000321         2819.01        -192.108         697.758       0       0
 3000322         2818.76        -227.668         697.748       0       0
 3000323         2818.51        -263.226         697.738       0       0
 3000324         2818.26        -298.785        697.7279       0       0
 3000325         2818.01        -334.343        697.7179       0       0
 3000326         2805.77         4.95467         730.287       0       0
 3000327        2807.239        -49.7924         730.993       0       0
 3000328        2806.989        -85.3507        730.9829       0       0
 3000329        2806.739        -120.911        730.9729       0       0
 3000330        2806.489         -156.47        730.9629       0       0
 3000331         2806.25        -192.029        730.9529       0       0
 3000332         2806.01        -227.586        730.9429       0       0
 3000333         2805.76        -263.146        730.9329       0       0
 3000334         2805.51        -298.704         730.923       0       0
 3000335         2805.26        -334.264         730.913       0       0
 3000336         2793.07         14.2317         763.494       0       0
 3000337         2794.75        -14.1534        764.1979       0       0
 3000338          2794.5        -49.7128        764.1879       0       0
 3000339         2794.25        -85.2711         764.178       0       0
 3000340          2794.0        -120.831         764.168       0       0
 3000341         2793.76        -156.389         764.158       0       0
 3000342         2793.51        -191.949         764.148       0       0
 3000343         2793.26        -227.508         764.138       0       0
 3000344         2793.01        -263.065         764.128       0       0
 3000345         2792.76        -298.625         764.118       0       0
 3000346         2792.51        -334.185        764.1079       0       0
 3000347         2780.38         19.7134         796.691       0       0
 3000348         2782.01        -14.0741         797.403       0       0
 3000349         2781.76        -49.6334         797.392       0       0
 3000350         2781.51        -85.1915        797.3819       0       0
 3000351         2781.26        -120.751        797.3719       0       0
 3000352         2781.02         -156.31         797.363       0       0
 3000353         2780.77         -191.87        797.3529       0       0
 3000354         2780.52        -227.429        797.3429       0       0
 3000355         2780.27        -262.987        797.3329       0       0
 3000356         2780.02        -298.547        797.3229       0       0
 3000357         2779.78        -334.105        797.3129       0       0
 3000358        2767.639        21.57819        829.8869       0       0
 3000359         2769.26        -13.9945        830.5979       0       0
 3000360         2769.01        -49.5538        830.5879       0       0
 3000361         2768.76        -85.1119        830.5779       0       0
 3000362         2768.52        -120.671        830.5689       0       0
 3000363         2768.27        -156.229        830.5589       0       0
 3000364         2768.02        -191.788        830.5489       0       0
 3000365         2767.77        -227.348        830.5389       0       0
 3000366         2767.52        -262.908         830.529       0       0
 3000367         2767.27        -298.466         830.518       0       0
 3000368         2767.03        -334.024         830.509       0       0
 3000369        2823.619        -227.715        746.4769       0       0
 3000370         2807.44        -22.4258           731.0       0       0
 3000371         2741.34        -227.198         955.202       0       0
 3000372          2737.8        -262.737        963.7809       0       0
 3000373         2749.84        -262.814         938.008       0       0
 3000374         2753.02         -227.27         930.369       0       0
 3000375         2735.63        -298.285        968.8139       0       0
 3000376         2749.59        -298.372         937.998       0       0
 3000377         2734.73        -333.839         970.471       0       0
 3000378         2749.34        -333.932         937.988       0       0
 3000379         2753.05        -156.151        926.0389       0       0
 3000380         2746.36        -191.668         942.793       0       0
 3000381         2757.25        -191.732        900.4539       0       0
 3000382          2757.5        -156.174         900.464       0       0
 3000383          2757.0        -227.292        900.4439       0       0
 3000384         2756.76        -262.851        900.4339       0       0
 3000385         2756.51        -298.411        900.4239       0       0
 3000386         2756.26         -333.97        900.4139       0       0
 3000387         2757.03        -120.611         902.344       0       0
 3000388          2737.5        -156.044         933.019       0       0
 3000389         2737.75        -120.486         933.029       0       0
 3000390         2737.26        -191.602         933.009       0       0
 3000391         2737.01        -227.161         932.999       0       0
 3000392         2736.76        -262.721         932.989       0       0
 3000393         2736.51        -298.281         932.979       0       0
 3000394         2736.26        -333.839         932.969       0       0
 3000395         2739.92        -79.9141        933.7609       0       0
 3000396         2725.02        -120.406        966.2229       0       0
 3000397         2725.27        -84.8464        966.2329       0       0
 3000398         2724.77        -155.965        966.2129       0       0
 3000399         2724.53        -191.523        966.2039       0       0
 3000400         2724.28         -227.08        966.1939       0       0
 3000401         2724.03        -262.642        966.1829       0       0
 3000402         2723.78        -298.201         966.173       0       0
 3000403         2723.53        -333.761         966.163       0       0
 3000404         2727.38        -49.3014         966.965       0       0
 3000405          2709.5         -84.745        996.1359       0       0
 3000406         2709.75        -49.1867        996.1459       0       0
 3000407         2709.26        -120.302        996.1259       0       0
 3000408         2709.01         -155.86        996.1159       0       0
 3000409         2708.76        -191.422        996.1059       0       0
 3000410         2708.51        -226.979         996.096       0       0
 3000411         2708.26        -262.541         996.086       0       0
 3000412         2708.02        -298.098         996.076       0       0
 3000413         2707.77        -333.658         996.066       0       0
 3000414        2709.199        -25.7105         998.022       0       0
 3000415         2718.03        -49.2355         963.378       0       0
 3000416         2716.46        -7.89436         962.678       0       0
 3000417         2717.79         -84.793         963.368       0       0
 3000418         2717.54        -120.352        963.3579       0       0
 3000419         2717.29        -155.912        963.3479       0       0
 3000420         2717.04         -191.47        963.3379       0       0
 3000421         2716.79        -227.029        963.3279       0       0
 3000422         2716.55        -262.589        963.3179       0       0
 3000423          2716.3        -298.148        963.3079       0       0
 3000424         2716.05        -333.708         963.298       0       0
 3000425         2730.78        -49.3149         930.182       0       0
 3000426        2730.969        -21.9486          930.19       0       0
 3000427         2730.54        -84.8726         930.173       0       0
 3000428         2730.29        -120.432         930.163       0       0
 3000429         2730.04        -155.991         930.153       0       0
 3000430         2729.79         -191.55         930.143       0       0
 3000431         2729.54        -227.109         930.133       0       0
 3000432          2729.3        -262.668         930.123       0       0
 3000433         2729.05        -298.226         930.113       0       0
 3000434          2728.8        -333.786        930.1029       0       0
 3000435         2729.29           5.432        929.4769       0       0
 3000436         2743.78        -13.8355         896.998       0       0
 3000437        2742.119         14.5504        896.2839       0       0
 3000438         2743.54        -49.3947         896.988       0       0
 3000439          2743.3        -84.9522        896.9779       0       0
 3000440         2743.05        -120.512        896.9679       0       0
 3000441          2742.8        -156.071        896.9579       0       0
 3000442         2742.55        -191.627        896.9479       0       0
 3000443          2742.3        -227.187        896.9379       0       0
 3000444         2742.05        -262.749         896.928       0       0
 3000445        2741.809        -298.307         896.918       0       0
 3000446        2741.559        -333.865         896.908       0       0
 3000447         2756.51        -13.9148         863.793       0       0
 3000448          2754.9        19.87239          863.09       0       0
 3000449         2756.26        -49.4741         863.783       0       0
 3000450         2756.01        -85.0323         863.773       0       0
 3000451         2755.77         -120.59         863.763       0       0
 3000452         2755.52         -156.15         863.753       0       0
 3000453         2755.27        -191.709         863.743       0       0
 3000454         2755.02        -227.268        863.7329       0       0
 3000455         2754.77        -262.827        863.7229       0       0
 3000456         2754.53        -298.387        863.7129       0       0
 3000457         2754.28        -333.946        863.7029       0       0
 3000458         2830.05        -441.117        720.1509       0       0
 3000459         2833.61        -405.579         711.572       0       0
 3000460          2825.3        -405.529         738.778       0       0
 3000461         2822.13        -441.069         746.417       0       0
 3000462         2835.79        -370.031        706.5399       0       0
 3000463         2825.55        -369.968         738.788       0       0
 3000464        2818.369        -512.166        749.3139       0       0
 3000465         2825.04        -476.648        732.5599       0       0
 3000466         2804.82        -476.517        771.3129       0       0
 3000467         2804.57        -512.076         771.303       0       0
 3000468        2805.059        -440.959         771.322       0       0
 3000469        2805.309        -405.399        771.3319       0       0
 3000470        2805.559        -369.839        771.3419       0       0
 3000471         2805.03        -547.639        769.4239       0       0
 3000472        2811.489        -512.114         733.729       0       0
 3000473        2811.239        -547.673         733.719       0       0
 3000474        2811.739        -476.555         733.739       0       0
 3000475         2811.98        -440.995         733.749       0       0
 3000476         2812.23        -405.437         733.759       0       0
 3000477         2812.48        -369.877         733.769       0       0
 3000478        2812.829        -588.269        734.4289       0       0
 3000479         2823.98        -547.753         700.524       0       0
 3000480         2823.73        -583.308         700.514       0       0
 3000481         2824.23        -512.192        700.5339       0       0
 3000482         2824.48        -476.634        700.5439       0       0
 3000483        2824.719        -441.074        700.5539       0       0
 3000484        2824.969        -405.516        700.5639       0       0
 3000485        2825.219        -369.956        700.5739       0       0
 3000486        2825.349        -618.883         701.215       0       0
 3000487         2829.88        -583.345         673.354       0       0
 3000488         2829.63        -618.904         673.344       0       0
 3000489         2830.13        -547.788         673.364       0       0
 3000490         2830.38        -512.229         673.374       0       0
 3000491         2830.63        -476.668         673.384       0       0
 3000492        2830.869         -441.11         673.394       0       0
 3000493        2831.119        -405.552         673.404       0       0
 3000494        2831.369        -369.992        673.4139       0       0
 3000495         2830.19         -642.38        671.4679       0       0
 3000496         2816.03        -618.816         697.638       0       0
 3000497        2813.869         -660.13        696.9059       0       0
 3000498         2816.28        -583.255         697.648       0       0
 3000499         2816.52          -547.7         697.658       0       0
 3000500         2816.77        -512.139         697.668       0       0
 3000501         2817.02        -476.581         697.678       0       0
 3000502         2817.27        -441.023        697.6879       0       0
 3000503         2817.52        -405.464        697.6979       0       0
 3000504         2817.77        -369.903        697.7079       0       0
 3000505         2803.28        -618.735        730.8329       0       0
 3000506        2803.079        -646.101         730.826       0       0
 3000507         2803.53        -583.177        730.8429       0       0
 3000508         2803.78         -547.62        730.8529       0       0
 3000509         2804.02        -512.062         730.863       0       0
 3000510         2804.27        -476.502         730.873       0       0
 3000511         2804.52        -440.942         730.883       0       0
 3000512         2804.77        -405.384         730.893       0       0
 3000513         2805.02        -369.824         730.903       0       0
 3000514         2801.04        -673.456        730.0969       0       0
 3000515         2790.28        -654.216         764.018       0       0
 3000516         2788.21        -682.575        763.2989       0       0
 3000517         2790.53        -618.657         764.028       0       0
 3000518         2790.78        -583.096         764.038       0       0
 3000519         2791.03        -547.541        764.0489       0       0
 3000520         2791.27        -511.982        764.0579       0       0
 3000521         2791.52        -476.423        764.0679       0       0
 3000522         2791.77        -440.863        764.0779       0       0
 3000523         2792.02        -405.303        764.0879       0       0
 3000524         2792.27        -369.744        764.0979       0       0
 3000525         2777.54        -654.135        797.2229       0       0
 3000526         2775.44        -687.898         796.493       0       0
 3000527         2777.79        -618.577        797.2329       0       0
 3000528         2778.04        -583.018         797.243       0       0
 3000529         2778.29        -547.461         797.253       0       0
 3000530         2778.54        -511.901         797.263       0       0
 3000531         2778.78        -476.343         797.273       0       0
 3000532         2779.03        -440.783         797.283       0       0
 3000533         2779.28        -405.225         797.293       0       0
 3000534         2779.53        -369.663         797.303       0       0
 3000535         2764.79        -654.057        830.4189       0       0
 3000536         2762.67        -689.605         829.687       0       0
 3000537         2765.04        -618.498        830.4289       0       0
 3000538         2765.29        -582.937        830.4389       0       0
 3000539         2765.54         -547.38        830.4489       0       0
 3000540         2765.79        -511.822        830.4589       0       0
 3000541         2766.03        -476.264         830.469       0       0
 3000542         2766.28        -440.704         830.479       0       0
 3000543         2766.53        -405.144         830.489       0       0
 3000544         2766.78        -369.584         830.499       0       0
 3000545        2739.849        -440.553         955.143       0       0
 3000546        2736.809        -404.973        963.7419       0       0
 3000547         2748.84         -405.05        937.9679       0       0
 3000548         2751.53        -440.627        930.3089       0       0
 3000549         2735.13        -369.403        968.7939       0       0
 3000550         2749.09        -369.492        937.9779       0       0
 3000551         2750.57         -511.74        925.9389       0       0
 3000552        2744.389        -476.142         942.714       0       0
 3000553         2755.27        -476.206         900.374       0       0
 3000554         2755.02        -511.764         900.364       0       0
 3000555         2755.52        -440.646         900.384       0       0
 3000556         2755.76        -405.089         900.394       0       0
 3000557         2756.01        -369.529         900.404       0       0
 3000558         2754.05         -547.32         902.224       0       0
 3000559         2735.02        -511.634        932.9189       0       0
 3000560         2734.77        -547.195        932.9089       0       0
 3000561         2735.27        -476.077        932.9289       0       0
 3000562         2735.52        -440.516        932.9389       0       0
 3000563         2735.77        -404.958        932.9489       0       0
 3000564         2736.02        -369.399        932.9589       0       0
 3000565        2736.369        -587.792         933.619       0       0
 3000566         2722.05        -547.115         966.104       0       0
 3000567          2721.8        -582.673         966.094       0       0
 3000568         2722.29        -511.555         966.114       0       0
 3000569         2722.54        -475.995         966.124       0       0
 3000570         2722.79        -440.435         966.134       0       0
 3000571         2723.04        -404.877         966.144       0       0
 3000572         2723.29        -369.319         966.154       0       0
 3000573         2723.42        -618.245        966.8049       0       0
 3000574         2706.03        -582.572        995.9959       0       0
 3000575         2705.78         -618.13        995.9859       0       0
 3000576         2706.28        -547.014        996.0059       0       0
 3000577         2706.53        -511.452        996.0159       0       0
 3000578         2706.77        -475.894        996.0259       0       0
 3000579         2707.02        -440.334        996.0359       0       0
 3000580         2707.27        -404.776         996.046       0       0
 3000581         2707.52        -369.218         996.056       0       0
 3000582          2704.9        -641.596         997.849       0       0
 3000583        2714.059        -618.178        963.2179       0       0
 3000584         2711.92        -659.495        962.4959       0       0
 3000585        2714.309         -582.62        963.2279       0       0
 3000586        2714.559        -547.062         963.238       0       0
 3000587        2714.809        -511.502         963.248       0       0
 3000588        2715.059        -475.942         963.258       0       0
 3000589        2715.309        -440.382         963.268       0       0
 3000590         2715.55        -404.826         963.278       0       0
 3000591          2715.8        -369.267         963.288       0       0
 3000592        2726.809        -618.259         930.023       0       0
 3000593        2726.619        -645.625        930.0149       0       0
 3000594        2727.059          -582.7         930.033       0       0
 3000595        2727.309        -547.142         930.043       0       0
 3000596        2727.559        -511.581         930.053       0       0
 3000597        2727.809        -476.023        930.0629       0       0
 3000598         2728.05        -440.464        930.0729       0       0
 3000599          2728.3        -404.906        930.0829       0       0
 3000600         2728.55        -369.346        930.0929       0       0
 3000601        2724.559        -672.976         929.287       0       0
 3000602        2739.329        -653.898        896.8189       0       0
 3000603         2737.26        -682.255         896.089       0       0
 3000604         2739.57        -618.339        896.8279       0       0
 3000605         2739.82        -582.779        896.8379       0       0
 3000606         2740.07        -547.221        896.8479       0       0
 3000607         2740.32        -511.661        896.8579       0       0
 3000608         2740.57        -476.103         896.868       0       0
 3000609        2740.809        -440.543         896.878       0       0
 3000610        2741.059        -404.985         896.888       0       0
 3000611        2741.309        -369.425         896.898       0       0
 3000612         2752.04        -653.976         863.613       0       0
 3000613         2749.96        -687.739         862.892       0       0
 3000614         2752.29        -618.418         863.623       0       0
 3000615         2752.54        -582.859         863.633       0       0
 3000616         2752.79        -547.301         863.643       0       0
 3000617         2753.04         -511.74         863.653       0       0
 3000618         2753.28        -476.182         863.663       0       0
 3000619         2753.53        -440.622         863.673       0       0
 3000620         2753.78        -405.065        863.6829       0       0
 3000621         2754.03        -369.505        863.6929       0       0
 3000622         2822.57        -263.264        737.3849       0       0
 3000623         2819.86        -227.687        745.0449       0       0
 3000624         2822.32        -298.824         737.375       0       0
 3000625         2822.07        -334.382         737.365       0       0
 3000626        2808.219        -192.053        767.6639       0       0
 3000627        2808.469        -156.491        767.6749       0       0
 3000628        2807.969         -227.61         767.654       0       0
 3000629        2807.719         -263.17         767.644       0       0
 3000630         2807.48         -298.73        767.6349       0       0
 3000631         2807.23        -334.288         767.625       0       0
 3000632         2817.69        -156.548        735.2609       0       0
 3000633         2817.94        -120.989         735.272       0       0
 3000634         2817.44        -192.108        735.2509       0       0
 3000635         2817.19        -227.668        735.2409       0       0
 3000636        2816.949        -263.226        735.2319       0       0
 3000637        2816.699        -298.785        735.2219       0       0
 3000638        2816.449        -334.343        735.2119       0       0
 3000639        2830.699        -121.069         702.077       0       0
 3000640        2830.949        -85.5092        702.0869       0       0
 3000641        2830.449        -156.627         702.067       0       0
 3000642        2830.199        -192.187         702.057       0       0
 3000643        2829.949        -227.747         702.047       0       0
 3000644         2829.71        -263.305         702.037       0       0
 3000645         2829.46        -298.863         702.027       0       0
 3000646         2829.21        -334.423         702.017       0       0
 3000647         2834.79        -85.5276         669.755       0       0
 3000648         2835.04        -49.9692        669.7649       0       0
 3000649         2834.55        -121.087         669.745       0       0
 3000650          2834.3        -156.645         669.735       0       0
 3000651         2834.05        -192.205         669.725       0       0
 3000652          2833.8        -227.764         669.715       0       0
 3000653         2833.55        -263.322         669.705       0       0
 3000654        2833.309        -298.882         669.695       0       0
 3000655        2833.059         -334.44        669.6849       0       0
 3000656         2816.26        -49.8453        696.3659       0       0
 3000657         2816.01        -85.4037        696.3559       0       0
 3000658         2815.76        -120.962         696.346       0       0
 3000659         2815.51         -156.52         696.336       0       0
 3000660         2815.26         -192.08         696.326       0       0
 3000661         2815.02        -227.639         696.316       0       0
 3000662         2814.77        -263.199         696.306       0       0
 3000663         2814.52        -298.759         696.296       0       0
 3000664         2814.27        -334.317        696.2859       0       0
 3000665         2803.52        -49.7659        729.5599       0       0
 3000666         2803.71        -22.3995        729.5679       0       0
 3000667         2803.27        -85.3241        729.5499       0       0
 3000668         2803.02        -120.884        729.5399       0       0
 3000669         2802.77        -156.442        729.5299       0       0
 3000670         2802.52        -192.002        729.5199       0       0
 3000671         2802.28        -227.562        729.5099       0       0
 3000672         2802.03         -263.12           729.5       0       0
 3000673         2801.78        -298.678          729.49       0       0
 3000674         2801.53        -334.238          729.48       0       0
 3000675         2791.02         -14.127        762.7649       0       0
 3000676         2790.77        -49.6861         762.755       0       0
 3000677         2790.52        -85.2445         762.745       0       0
 3000678         2790.27        -120.804         762.735       0       0
 3000679         2790.02        -156.364         762.725       0       0
 3000680         2789.78        -191.923         762.715       0       0
 3000681         2789.53        -227.482         762.705       0       0
 3000682         2789.28         -263.04         762.695       0       0
 3000683         2789.03        -298.598        762.6849       0       0
 3000684         2788.78        -334.158        762.6749       0       0
 3000685         2778.29        -14.0474          795.97       0       0
 3000686         2778.04        -49.6068          795.96       0       0
 3000687         2777.79         -85.165          795.95       0       0
 3000688         2777.54        -120.724          795.94       0       0
 3000689         2777.29        -156.282        795.9299       0       0
 3000690         2777.05        -191.842        795.9199       0       0
 3000691          2776.8        -227.401        795.9099       0       0
 3000692         2776.55        -262.961        795.8999       0       0
 3000693          2776.3        -298.519        795.8899       0       0
 3000694         2776.05        -334.079          795.88       0       0
 3000695         2765.54         -13.968        829.1649       0       0
 3000696         2765.29        -49.5272        829.1549       0       0
 3000697         2765.04        -85.0854        829.1449       0       0
 3000698         2764.79        -120.644        829.1349       0       0
 3000699         2764.55        -156.204         829.125       0       0
 3000700          2764.3        -191.764         829.115       0       0
 3000701         2764.05        -227.323         829.105       0       0
 3000702          2763.8         -262.88         829.095       0       0
 3000703         2763.55         -298.44         829.085       0       0
 3000704          2763.3          -334.0         829.075       0       0
 3000705         2746.11        -262.788         936.575       0       0
 3000706         2749.28        -227.246         928.936       0       0
 3000707         2745.86        -298.346         936.565       0       0
 3000708         2745.61        -333.906        936.5549       0       0
 3000709        2755.829        -191.723        904.1829       0       0
 3000710        2756.079        -156.166        904.1929       0       0
 3000711         2755.59        -227.282         904.173       0       0
 3000712         2755.34        -262.843         904.163       0       0
 3000713         2755.09        -298.401         904.153       0       0
 3000714         2754.84        -333.961         904.143       0       0
 3000715         2741.25        -156.071         934.451       0       0
 3000716        2741.489        -120.512         934.461       0       0
 3000717          2741.0        -191.627         934.441       0       0
 3000718         2740.75        -227.187         934.431       0       0
 3000719          2740.5        -262.747         934.421       0       0
 3000720         2740.25        -298.307        934.4109       0       0
 3000721         2740.01        -333.865        934.4009       0       0
 3000722         2728.75        -120.433        967.6549       0       0
 3000723          2729.0         -84.873        967.6649       0       0
 3000724         2728.51        -155.991        967.6459       0       0
 3000725         2728.26        -191.549        967.6359       0       0
 3000726         2728.01        -227.108        967.6259       0       0
 3000727         2727.76        -262.668        967.6159       0       0
 3000728         2727.51        -298.228        967.6059       0       0
 3000729         2727.27        -333.786         967.596       0       0
 3000730         2708.07        -84.7352         999.865       0       0
 3000731        2708.309        -49.1777         999.875       0       0
 3000732         2707.82        -120.295         999.855       0       0
 3000733         2707.57        -155.854         999.845       0       0
 3000734         2707.32        -191.413         999.835       0       0
 3000735         2707.07        -226.972         999.825       0       0
 3000736        2706.829        -262.531         999.815       0       0
 3000737        2706.579        -298.089        999.8049       0       0
 3000738        2706.329        -333.649        999.7949       0       0
 3000739          2714.3        -49.2089         961.946       0       0
 3000740         2714.05        -84.7673         961.936       0       0
 3000741        2713.809        -120.325         961.926       0       0
 3000742        2713.559        -155.883         961.916       0       0
 3000743        2713.309        -191.443        961.9059       0       0
 3000744        2713.059        -227.002        961.8959       0       0
 3000745        2712.809        -262.562        961.8859       0       0
 3000746         2712.57         -298.12        961.8759       0       0
 3000747         2712.32         -333.68        961.8659       0       0
 3000748         2727.04        -49.2884          928.75       0       0
 3000749         2727.23        -21.9222         928.758       0       0
 3000750         2726.79        -84.8468          928.74       0       0
 3000751         2726.55        -120.405        928.7309       0       0
 3000752          2726.3        -155.964         928.721       0       0
 3000753         2726.05        -191.523         928.711       0       0
 3000754          2725.8         -227.08         928.701       0       0
 3000755         2725.55        -262.642          928.69       0       0
 3000756        2725.309        -298.201         928.681       0       0
 3000757        2725.059        -333.759         928.671       0       0
 3000758         2740.05        -13.8089         895.565       0       0
 3000759          2739.8         -49.368        895.5539       0       0
 3000760         2739.55        -84.9264        895.5439       0       0
 3000761        2739.309        -120.483        895.5349       0       0
 3000762        2739.059        -156.044        895.5249       0       0
 3000763        2738.809        -191.602        895.5149       0       0
 3000764        2738.559        -227.161         895.505       0       0
 3000765        2738.309        -262.721         895.495       0       0
 3000766        2738.059        -298.281         895.485       0       0
 3000767         2737.82        -333.839         895.475       0       0
 3000768         2752.78        -13.8884          862.36       0       0
 3000769         2752.53        -49.4474          862.35       0       0
 3000770         2752.28        -85.0057          862.34       0       0
 3000771         2752.03        -120.563          862.33       0       0
 3000772         2751.79        -156.124          862.32       0       0
 3000773         2751.54        -191.681        862.3099       0       0
 3000774         2751.29        -227.241        862.2999       0       0
 3000775         2751.04        -262.802        862.2899       0       0
 3000776          2750.8         -298.36        862.2799       0       0
 3000777        2750.559        -333.918        862.2699       0       0
 3000778        2821.579        -405.502         737.345       0       0
 3000779         2818.38        -441.043        744.9859       0       0
 3000780        2821.829        -369.942         737.355       0       0
 3000781         2806.23        -476.526         767.585       0       0
 3000782        2805.989        -512.085         767.575       0       0
 3000783         2806.48        -440.966         767.595       0       0
 3000784         2806.73        -405.408         767.605       0       0
 3000785         2806.98        -369.848         767.615       0       0
 3000786        2815.219        -512.139         735.162       0       0
 3000787        2814.969        -547.697         735.152       0       0
 3000788        2815.469        -476.581         735.172       0       0
 3000789        2815.719        -441.021         735.182       0       0
 3000790        2815.949        -405.463         735.192       0       0
 3000791        2816.199        -369.903         735.202       0       0
 3000792        2827.719        -547.779        701.9569       0       0
 3000793        2827.469        -583.336         701.947       0       0
 3000794        2827.969         -512.22        701.9669       0       0
 3000795        2828.219         -476.66        701.9769       0       0
 3000796        2828.469        -441.101        701.9869       0       0
 3000797         2828.71        -405.543        701.9969       0       0
 3000798         2828.96        -369.983        702.0069       0       0
 3000799         2831.32        -583.354         669.615       0       0
 3000800         2831.07        -618.913         669.605       0       0
 3000801         2831.57        -547.797         669.625       0       0
 3000802         2831.82        -512.238        669.6349       0       0
 3000803        2832.059        -476.678        669.6449       0       0
 3000804        2832.309        -441.119        669.6549       0       0
 3000805        2832.559         -405.56        669.6649       0       0
 3000806        2832.809          -370.0        669.6749       0       0
 3000807         2812.29        -618.788         696.206       0       0
 3000808         2812.53         -583.23         696.216       0       0
 3000809         2812.78        -547.673         696.226       0       0
 3000810         2813.03        -512.114        696.2359       0       0
 3000811         2813.28        -476.555        696.2459       0       0
 3000812         2813.53        -440.995        696.2559       0       0
 3000813         2813.78        -405.437        696.2659       0       0
 3000814         2814.02        -369.877        696.2759       0       0
 3000815         2799.55         -618.71        729.4009       0       0
 3000816         2799.36        -646.076         729.393       0       0
 3000817          2799.8        -583.149        729.4109       0       0
 3000818         2800.04        -547.594        729.4199       0       0
 3000819         2800.29        -512.033        729.4299       0       0
 3000820         2800.54        -476.476          729.44       0       0
 3000821         2800.79        -440.916          729.45       0       0
 3000822         2801.04        -405.357          729.46       0       0
 3000823         2801.28        -369.798          729.47       0       0
 3000824         2786.55         -654.19         762.586       0       0
 3000825          2786.8         -618.63         762.596       0       0
 3000826         2787.05        -583.071        762.6059       0       0
 3000827         2787.29        -547.514         762.615       0       0
 3000828         2787.54        -511.954         762.625       0       0
 3000829         2787.79        -476.396        762.6359       0       0
 3000830         2788.04        -440.836        762.6459       0       0
 3000831         2788.29        -405.278        762.6559       0       0
 3000832         2788.53        -369.718        762.6649       0       0
 3000833         2773.82         -654.11        795.7899       0       0
 3000834         2774.07        -618.551        795.7999       0       0
 3000835         2774.32         -582.99        795.8099       0       0
 3000836         2774.57        -547.433          795.82       0       0
 3000837        2774.809        -511.875          795.83       0       0
 3000838        2775.059        -476.315          795.84       0       0
 3000839        2775.309        -440.757          795.85       0       0
 3000840        2775.559        -405.197          795.86       0       0
 3000841        2775.809        -369.637          795.87       0       0
 3000842         2761.07        -654.029        828.9859       0       0
 3000843         2761.32        -618.471        828.9959       0       0
 3000844         2761.57        -582.912        829.0059       0       0
 3000845         2761.82        -547.355        829.0159       0       0
 3000846        2762.059        -511.797        829.0249       0       0
 3000847        2762.309        -476.237        829.0349       0       0
 3000848        2762.559        -440.678        829.0449       0       0
 3000849        2762.809        -405.117        829.0549       0       0
 3000850        2763.059        -369.557         829.065       0       0
 3000851         2745.11        -405.024        936.5349       0       0
 3000852         2747.79          -440.6        928.8759       0       0
 3000853         2745.36        -369.466        936.5449       0       0
 3000854        2753.849        -476.197        904.1029       0       0
 3000855        2753.599        -511.755        904.0929       0       0
 3000856        2754.099        -440.637         904.113       0       0
 3000857        2754.349        -405.079         904.123       0       0
 3000858         2754.59        -369.521         904.133       0       0
 3000859         2738.77        -511.661         934.351       0       0
 3000860         2738.52        -547.221         934.341       0       0
 3000861         2739.01        -476.103        934.3609       0       0
 3000862         2739.26        -440.541        934.3709       0       0
 3000863         2739.51        -404.983        934.3809       0       0
 3000864         2739.76        -369.425        934.3909       0       0
 3000865         2725.78        -547.142        967.5359       0       0
 3000866         2725.53          -582.7        967.5259       0       0
 3000867         2726.03        -511.581         967.546       0       0
 3000868         2726.27        -476.023         967.556       0       0
 3000869         2726.52        -440.463         967.566       0       0
 3000870         2726.77        -404.904         967.576       0       0
 3000871         2727.02        -369.346         967.586       0       0
 3000872         2704.59        -582.562         999.725       0       0
 3000873         2704.34         -618.12         999.715       0       0
 3000874         2704.84        -547.005         999.735       0       0
 3000875         2705.09        -511.444         999.745       0       0
 3000876         2705.34        -475.886         999.755       0       0
 3000877        2705.579        -440.327        999.7649       0       0
 3000878        2705.829        -404.767        999.7749       0       0
 3000879        2706.079        -369.209        999.7849       0       0
 3000880        2710.329        -618.153        961.7859       0       0
 3000881        2710.579        -582.594         961.796       0       0
 3000882        2710.829        -547.034         961.806       0       0
 3000883        2711.079        -511.476         961.816       0       0
 3000884        2711.329        -475.916         961.826       0       0
 3000885         2711.57        -440.357         961.836       0       0
 3000886         2711.82        -404.798         961.846       0       0
 3000887         2712.07         -369.24        961.8559       0       0
 3000888         2723.07        -618.231         928.591       0       0
 3000889         2722.88        -645.599        928.5829       0       0
 3000890         2723.32        -582.673         928.601       0       0
 3000891         2723.57        -547.115        928.6109       0       0
 3000892         2723.82        -511.553        928.6209       0       0
 3000893        2724.059        -475.997        928.6309       0       0
 3000894        2724.309        -440.437        928.6409       0       0
 3000895        2724.559        -404.879        928.6509       0       0
 3000896        2724.809        -369.319        928.6609       0       0
 3000897        2735.579         -653.87        895.3849       0       0
 3000898        2735.829        -618.312        895.3949       0       0
 3000899        2736.079        -582.753        895.4049       0       0
 3000900        2736.329        -547.195        895.4149       0       0
 3000901        2736.579        -511.634        895.4249       0       0
 3000902         2736.82        -476.077        895.4349       0       0
 3000903         2737.07        -440.517         895.445       0       0
 3000904         2737.32        -404.958         895.455       0       0
 3000905         2737.57        -369.399         895.465       0       0
 3000906         2748.32        -653.951        862.1799       0       0
 3000907         2748.57        -618.392          862.19       0       0
 3000908         2748.82        -582.831           862.2       0       0
 3000909         2749.07        -547.274         862.211       0       0
 3000910        2749.309        -511.714          862.22       0       0
 3000911        2749.559        -476.156          862.23       0       0
 3000912        2749.809        -440.596          862.24       0       0
 3000913        2750.059        -405.036          862.25       0       0
 3000914        2750.309        -369.478        862.2599       0       0
 3000915        3163.559             0.0         374.139       0       0
 3000916        3183.079             0.0         420.867       0       0
 3000917        3204.179             0.0        473.9259       0       0
 3000918         3225.29             0.0        526.9859       0       0
 3000919        3246.389             0.0        580.0449       0       0
 3000920        3267.489             0.0         633.104       0       0
 3000921         3288.59             0.0         686.163       0       0
 3000922         3309.69             0.0        739.2219       0       0
 3000923          3330.8             0.0         792.282       0       0
 3000924          3351.9             0.0         845.341       0       0
 3000925          3373.0             0.0        898.3999       0       0
 3000926        3163.559          -800.0         374.139       0       0
 3000927        3183.079        -799.999         420.867       0       0
 3000928        3204.179          -800.0        473.9259       0       0
 3000929         3225.29          -800.0        526.9859       0       0
 3000930        3246.389          -800.0        580.0449       0       0
 3000931        3267.489          -800.0         633.104       0       0
 3000932         3288.59        -799.999         686.163       0       0
 3000933         3309.69        -799.999        739.2219       0       0
 3000934          3330.8        -799.999         792.282       0       0
 3000935          3351.9        -799.999         845.341       0       0
 3000936          3373.0          -800.0        898.3999       0       0
 3000937        3163.559          -100.0         374.139       0       0
 3000938        3163.559          -200.0         374.139       0       0
 3000939        3163.559          -300.0         374.139       0       0
 3000940        3163.559          -400.0         374.139       0       0
 3000941        3163.559          -500.0         374.139       0       0
 3000942        3163.559          -600.0         374.139       0       0
 3000943        3163.559          -700.0         374.139       0       0
 3000944        3183.079        -99.9998         420.867       0       0
 3000945        3183.079        -199.999         420.867       0       0
 3000946        3183.079        -299.999         420.867       0       0
 3000947        3183.079        -399.999         420.867       0       0
 3000948        3183.079        -499.999         420.867       0       0
 3000949        3183.079        -599.999         420.867       0       0
 3000950        3183.079        -699.999         420.867       0       0
 3000951        3204.179          -100.0        473.9259       0       0
 3000952        3204.179          -200.0        473.9259       0       0
 3000953        3204.179          -300.0        473.9259       0       0
 3000954        3204.179          -400.0        473.9259       0       0
 3000955        3204.179          -500.0        473.9259       0       0
 3000956        3204.179          -600.0        473.9259       0       0
 3000957        3204.179          -700.0        473.9259       0       0
 3000958         3225.29          -100.0        526.9859       0       0
 3000959         3225.29          -200.0        526.9859       0       0
 3000960         3225.29          -300.0        526.9859       0       0
 3000961         3225.29          -400.0        526.9859       0       0
 3000962         3225.29          -500.0        526.9859       0       0
 3000963         3225.29          -600.0        526.9859       0       0
 3000964         3225.29          -700.0        526.9859       0       0
 3000965        3246.389          -100.0        580.0449       0       0
 3000966        3246.389          -200.0        580.0449       0       0
 3000967        3246.389          -300.0        580.0449       0       0
 3000968        3246.389          -400.0        580.0449       0       0
 3000969        3246.389          -500.0        580.0449       0       0
 3000970        3246.389          -600.0        580.0449       0       0
 3000971        3246.389          -700.0        580.0449       0       0
 3000972        3267.489          -100.0         633.104       0       0
 3000973        3267.489          -200.0         633.104       0       0
 3000974        3267.489          -300.0         633.104       0       0
 3000975        3267.489          -400.0         633.104       0       0
 3000976        3267.489          -500.0         633.104       0       0
 3000977        3267.489          -600.0         633.104       0       0
 3000978        3267.489          -700.0         633.104       0       0
 3000979         3288.59        -99.9998         686.163       0       0
 3000980         3288.59        -199.999         686.163       0       0
 3000981         3288.59        -299.999         686.163       0       0
 3000982         3288.59        -399.999         686.163       0       0
 3000983         3288.59        -499.999         686.163       0       0
 3000984         3288.59        -599.999         686.163       0       0
 3000985         3288.59        -699.999         686.163       0       0
 3000986         3309.69        -99.9998        739.2219       0       0
 3000987         3309.69        -199.999        739.2219       0       0
 3000988         3309.69        -299.999        739.2219       0       0
 3000989         3309.69        -399.999        739.2219       0       0
 3000990         3309.69        -499.999        739.2219       0       0
 3000991         3309.69        -599.999        739.2219       0       0
 3000992         3309.69        -699.999        739.2219       0       0
 3000993          3330.8        -99.9998         792.282       0       0
 3000994          3330.8        -199.999         792.282       0       0
 3000995          3330.8        -299.999         792.282       0       0
 3000996          3330.8        -399.999         792.282       0       0
 3000997          3330.8        -499.999         792.282       0       0
 3000998          3330.8        -599.999         792.282       0       0
 3000999          3330.8        -699.999         792.282       0       0
 3001000          3351.9        -99.9998         845.341       0       0
 3001001          3351.9        -199.999         845.341       0       0
 3001002          3351.9        -299.999         845.341       0       0
 3001003          3351.9        -399.999         845.341       0       0
 3001004          3351.9        -499.999         845.341       0       0
 3001005          3351.9        -599.999         845.341       0       0
 3001006          3351.9        -699.999         845.341       0       0
 3001007          3373.0          -100.0        898.3999       0       0
 3001008          3373.0          -200.0        898.3999       0       0
 3001009          3373.0          -300.0        898.3999       0       0
 3001010          3373.0          -400.0        898.3999       0       0
 3001011          3373.0          -500.0        898.3999       0       0
 3001012          3373.0          -600.0        898.3999       0       0
 3001013          3373.0          -700.0        898.3999       0       0
 3001014          2699.0             0.0           490.0       0       0
 3001015          2782.4             0.0        469.1999       0       0
 3001016          2865.8             0.0        448.3999       0       0
 3001017        2949.199             0.0           427.6       0       0
 3001018        3032.599             0.0           406.8       0       0
 3001019        3163.559             0.0         374.139       0       0
 3001020          2699.0          -800.0           490.0       0       0
 3001021          2782.4          -800.0        469.1999       0       0
 3001022          2865.8        -799.999        448.3999       0       0
 3001023        2949.199          -800.0           427.6       0       0
 3001024        3032.599          -800.0           406.8       0       0
 3001025        3163.559          -800.0         374.139       0       0
 3001026          2699.0          -100.0           490.0       0       0
 3001027          2699.0          -200.0           490.0       0       0
 3001028          2699.0          -300.0           490.0       0       0
 3001029          2699.0          -400.0           490.0       0       0
 3001030          2699.0          -500.0           490.0       0       0
 3001031          2699.0          -600.0           490.0       0       0
 3001032          2699.0          -700.0           490.0       0       0
 3001033          2782.4          -100.0        469.1999       0       0
 3001034          2782.4          -200.0        469.1999       0       0
 3001035          2782.4          -300.0        469.1999       0       0
 3001036          2782.4          -400.0        469.1999       0       0
 3001037          2782.4          -500.0        469.1999       0       0
 3001038          2782.4          -600.0        469.1999       0       0
 3001039          2782.4          -700.0        469.1999       0       0
 3001040          2865.8        -99.9998        448.3999       0       0
 3001041          2865.8        -199.999        448.3999       0       0
 3001042          2865.8        -299.999        448.3999       0       0
 3001043          2865.8        -399.999        448.3999       0       0
 3001044          2865.8        -499.999        448.3999       0       0
 3001045          2865.8        -599.999        448.3999       0       0
 3001046          2865.8        -699.999        448.3999       0       0
 3001047        2949.199          -100.0           427.6       0       0
 3001048        2949.199          -200.0           427.6       0       0
 3001049        2949.199          -300.0           427.6       0       0
 3001050        2949.199        -400.819           427.6       0       0
 3001051        2949.199          -500.0           427.6       0       0
 3001052        2949.199          -600.0           427.6       0       0
 3001053        2949.199          -700.0           427.6       0       0
 3001054        3032.599          -100.0           406.8       0       0
 3001055        3032.929        -199.486        406.7169       0       0
 3001056         3033.27          -300.0        406.6329       0       0
 3001057        3032.929        -400.353        406.7169       0       0
 3001058        3032.599          -500.0           406.8       0       0
 3001059        3032.599          -600.0           406.8       0       0
 3001060        3032.599          -700.0           406.8       0       0
 3001061        3163.559          -100.0         374.139       0       0
 3001062        3163.559        -199.999         374.139       0       0
 3001063        3163.559          -300.0         374.139       0       0
 3001064        3163.559          -400.0         374.139       0       0
 3001065        3163.559          -500.0         374.139       0       0
 3001066        3163.559          -600.0         374.139       0       0
 3001067        3163.559          -700.0         374.139       0       0
 3001068          1945.0             0.0           475.0       0       0
 3001069        1988.869             0.0        412.6089       0       0
 3001070         2032.73             0.0         350.218       0       0
 3001071        2076.599             0.0         287.827       0       0
 3001072         2120.46             0.0         225.436       0       0
 3001073          2172.8             0.0           151.0       0       0
 3001074          1945.0          -800.0           475.0       0       0
 3001075        1988.869          -800.0        412.6089       0       0
 3001076         2032.73        -799.999         350.218       0       0
 3001077        2076.599          -800.0         287.827       0       0
 3001078         2120.46          -800.0         225.436       0       0
 3001079          2172.8          -800.0           151.0       0       0
 3001080          1945.0          -100.0           475.0       0       0
 3001081          1945.0          -200.0           475.0       0       0
 3001082          1945.0          -300.0           475.0       0       0
 3001083          1945.0          -400.0           475.0       0       0
 3001084          1945.0          -500.0           475.0       0       0
 3001085          1945.0          -600.0           475.0       0       0
 3001086          1945.0          -700.0           475.0       0       0
 3001087        1988.869          -100.0        412.6089       0       0
 3001088        1988.869          -200.0        412.6089       0       0
 3001089        1988.869          -300.0        412.6089       0       0
 3001090        1988.869          -400.0        412.6089       0       0
 3001091        1988.869          -500.0        412.6089       0       0
 3001092        1988.869          -600.0        412.6089       0       0
 3001093        1988.869          -700.0        412.6089       0       0
 3001094         2032.73        -99.9998         350.218       0       0
 3001095         2032.73        -199.999         350.218       0       0
 3001096         2032.73        -299.999         350.218       0       0
 3001097         2032.73        -399.999         350.218       0       0
 3001098         2032.73        -499.999         350.218       0       0
 3001099         2032.73        -599.999         350.218       0       0
 3001100         2032.73        -699.999         350.218       0       0
 3001101        2076.599          -100.0         287.827       0       0
 3001102        2076.599          -200.0         287.827       0       0
 3001103        2076.599          -300.0         287.827       0       0
 3001104        2076.599          -400.0         287.827       0       0
 3001105        2076.599          -500.0         287.827       0       0
 3001106        2076.599          -600.0         287.827       0       0
 3001107        2076.599          -700.0         287.827       0       0
 3001108         2120.46          -100.0         225.436       0       0
 3001109         2120.46          -200.0         225.436       0       0
 3001110         2120.46          -300.0         225.436       0       0
 3001111         2120.46          -400.0         225.436       0       0
 3001112         2120.46          -500.0         225.436       0       0
 3001113         2120.46          -600.0         225.436       0       0
 3001114         2120.46          -700.0         225.436       0       0
 3001115          2172.8          -100.0           151.0       0       0
 3001116          2172.8          -200.0           151.0       0       0
 3001117          2172.8          -300.0           151.0       0       0
 3001118          2172.8          -400.0           151.0       0       0
 3001119          2172.8          -500.0           151.0       0       0
 3001120          2172.8          -600.0           151.0       0       0
 3001121          2172.8          -700.0           151.0       0       0
 3001122          2172.8             0.0           151.0       0       0
 3001123        2241.329             0.0           151.0       0       0
 3001124        2309.869             0.0           151.0       0       0
 3001125          2378.4             0.0           151.0       0       0
 3001126        2446.929             0.0           151.0       0       0
 3001127        2515.469             0.0           151.0       0       0
 3001128          2584.0             0.0           151.0       0       0
 3001129          2172.8          -800.0           151.0       0       0
 3001130        2241.329        -799.999           151.0       0       0
 3001131        2309.869          -800.0           151.0       0       0
 3001132          2378.4        -799.999           151.0       0       0
 3001133        2446.929        -799.999           151.0       0       0
 3001134        2515.469          -800.0           151.0       0       0
 3001135          2584.0          -800.0           151.0       0       0
 3001136          2172.8          -100.0           151.0       0       0
 3001137          2172.8          -200.0           151.0       0       0
 3001138          2172.8          -300.0           151.0       0       0
 3001139          2172.8          -400.0           151.0       0       0
 3001140          2172.8          -500.0           151.0       0       0
 3001141          2172.8          -600.0           151.0       0       0
 3001142          2172.8          -700.0           151.0       0       0
 3001143        2241.329        -99.9998           151.0       0       0
 3001144        2241.329        -199.999           151.0       0       0
 3001145        2241.329        -299.999           151.0       0       0
 3001146        2241.329        -399.999           151.0       0       0
 3001147        2241.329        -499.999           151.0       0       0
 3001148        2241.329        -599.999           151.0       0       0
 3001149        2241.329        -699.999           151.0       0       0
 3001150        2309.869          -100.0           151.0       0       0
 3001151        2309.869          -200.0           151.0       0       0
 3001152        2309.869          -300.0           151.0       0       0
 3001153        2309.869          -400.0           151.0       0       0
 3001154        2309.869          -500.0           151.0       0       0
 3001155        2309.869          -600.0           151.0       0       0
 3001156        2309.869          -700.0           151.0       0       0
 3001157          2378.4        -99.9998           151.0       0       0
 3001158          2378.4        -199.999           151.0       0       0
 3001159          2378.4        -299.999           151.0       0       0
 3001160          2378.4        -399.999           151.0       0       0
 3001161          2378.4        -499.999           151.0       0       0
 3001162          2378.4        -599.999           151.0       0       0
 3001163          2378.4        -699.999           151.0       0       0
 3001164        2446.929        -99.9998           151.0       0       0
 3001165        2446.929        -199.999           151.0       0       0
 3001166        2446.929        -299.999           151.0       0       0
 3001167        2446.929        -399.999           151.0       0       0
 3001168        2446.929        -499.999           151.0       0       0
 3001169        2446.929        -599.999           151.0       0       0
 3001170        2446.929        -699.999           151.0       0       0
 3001171        2515.469          -100.0           151.0       0       0
 3001172        2515.469          -200.0           151.0       0       0
 3001173        2515.469          -300.0           151.0       0       0
 3001174        2515.469          -400.0           151.0       0       0
 3001175        2515.469          -500.0           151.0       0       0
 3001176        2515.469          -600.0           151.0       0       0
 3001177        2515.469          -700.0           151.0       0       0
 3001178          2584.0          -100.0           151.0       0       0
 3001179          2584.0          -200.0           151.0       0       0
 3001180          2584.0          -300.0           151.0       0       0
 3001181          2584.0          -400.0           151.0       0       0
 3001182          2584.0          -500.0           151.0       0       0
 3001183          2584.0          -600.0           151.0       0       0
 3001184          2584.0          -700.0           151.0       0       0
 3001185        2283.008             0.0        1051.127       0       0
 3001186          2092.0          -200.0           958.0       0       0
 3001187        2665.022             0.0        1237.382       0       0
 3001188         2856.03          -200.0         1330.51       0       0
 3001189         2856.03          -600.0         1330.51       0       0
 3001190         2856.03             0.0         1330.51       0       0
 3001191         2856.03          -800.0         1330.51       0       0
 3001192        2665.022          -800.0        1237.382       0       0
 3001193          2092.0          -600.0           958.0       0       0
 3001194        2283.008          -800.0        1051.127       0       0
 3001195        2474.015          -200.0        1144.255       0       0
 3001196        2283.008          -400.0        1051.127       0       0
 3001197        2665.022          -400.0        1237.382       0       0
 3001198        2474.015          -600.0        1144.255       0       0
 3001199        2283.008          -200.0        1051.127       0       0
 3001200        2665.022          -200.0        1237.382       0       0
 3001201        2665.022          -600.0        1237.382       0       0
 3001202        2283.008          -600.0        1051.127       0       0
 3001203         3456.03          -800.0         1330.51       0       0
 3001204         3456.03             0.0         1330.51       0       0
 3001205         2856.03          -400.0         1330.51       0       0
 3001206         3156.03             0.0         1330.51       0       0
 3001207         3156.03          -800.0         1330.51       0       0
 3001208         3456.03          -400.0         1330.51       0       0
 3001209         3156.03          -400.0         1330.51       0       0
 3001210         2856.03          -200.0         1330.51       0       0
 3001211         3006.03             0.0         1330.51       0       0
 3001212         2856.03          -600.0         1330.51       0       0
 3001213         3006.03          -800.0         1330.51       0       0
 3001214         3306.03          -800.0         1330.51       0       0
 3001215         3456.03          -600.0         1330.51       0       0
 3001216         3306.03             0.0         1330.51       0       0
 3001217         3456.03          -200.0         1330.51       0       0
 3001218         3006.03          -400.0         1330.51       0       0
 3001219         3156.03          -200.0         1330.51       0       0
 3001220         3156.03          -600.0         1330.51       0       0
 3001221         3306.03          -400.0         1330.51       0       0
 3001222         3006.03          -600.0         1330.51       0       0
 3001223         3006.03          -200.0         1330.51       0       0
 3001224         3306.03          -200.0         1330.51       0       0
 3001225         3306.03          -600.0         1330.51       0       0
 3001226          2092.0             0.0           958.0       0       0
 3001227         2856.03             0.0         1330.51       0       0
 3001228         2856.03          -800.0         1330.51       0       0
 3001229          2092.0          -800.0           958.0       0       0
 3001230        2474.015             0.0        1144.255       0       0
 3001231          2092.0          -400.0           958.0       0       0
 3001232         2856.03          -400.0         1330.51       0       0
 3001233        2474.015          -800.0        1144.255       0       0
 3001234        2474.015          -400.0        1144.255       0       0
 3001235        2679.194          -334.0        795.4901       0       0
 3001236        2373.671         -354.57        659.2224       0       0
 3001237        2368.278       -360.0662        673.0688       0       0
 3001238        2367.687       -312.2742        673.6793       0       0
 3001239        2373.211       -317.2773        659.6985       0       0
 3001240        2376.411       -330.3094        651.7853       0       0
 3001241        2376.545       -341.2669        651.6442       0       0
 3001242        2336.436       -354.8433        644.6108       0       0
 3001243        2331.042       -360.3385        658.4573       0       0
 3001244        2330.453       -312.5456        659.0692       0       0
 3001245        2335.975       -317.5506        645.0872       0       0
 3001246        2339.177       -330.5818        637.1743       0       0
 3001247        2339.311       -341.5393        637.0341       0       0
 3001248         2471.91       -335.0196        683.9199       0       0
 3001249        2461.979       -363.6281        709.7632       0       0
 3001250          2524.9       -363.1656         734.454       0       0
 3001251        2660.962       -357.5882        804.8475       0       0
 3001252        2666.794       -362.1352        790.1465       0       0
 3001253         2657.09       -345.3729        814.5008       0       0
 3001254        2656.168       -334.4525        816.7084       0       0
 3001255         2656.87       -323.4594         814.801       0       0
 3001256        2626.687       -357.8388         791.395       0       0
 3001257         2622.82       -345.6237        801.0508       0       0
 3001258         2632.51       -362.3876        776.6905       0       0
 3001259        2621.901       -334.7014        803.2592       0       0
 3001260        2622.606       -323.7124        801.3524       0       0
 3001261        2626.229        -311.161        792.0383       0       0
 3001262         2631.96       -306.0947        777.4666       0       0
 3001263        2660.492        -310.909        805.4863       0       0
 3001264        2666.226       -305.8438        790.9155       0       0
 3001265        2601.893       -345.7655        792.8284       0       0
 3001266         2638.24       -357.3223        762.1187       0       0
 3001267        2641.864       -344.7719         752.805       0       0
 3001268        2642.568       -333.7809        750.8968       0       0
 3001269        2641.649       -322.8606        753.1061       0       0
 3001270        2637.784       -310.6455         762.762       0       0
 3001271        2600.951       -334.8476        795.0286       0       0
 3001272        2617.263       -357.4647        753.8771       0       0
 3001273        2605.769        -357.981        783.1763       0       0
 3001274        2611.577       -362.5313        768.4658       0       0
 3001275        2601.622       -323.8556        793.1083       0       0
 3001276        2620.835       -344.9148        744.5433       0       0
 3001277        2621.508       -333.9238        742.6243       0       0
 3001278        2620.564       -323.0047        744.8225       0       0
 3001279        2605.193       -311.3036        783.7738       0       0
 3001280        2616.688       -310.7873        754.4746       0       0
 3001281        2610.882       -306.2391         769.186       0       0
 3001282        2576.406       -345.9537        782.8277       0       0
 3001283        2575.464       -335.0337        785.0273       0       0
 3001284        2576.135       -324.0417         783.107       0       0
 3001285        2580.283       -358.1691        773.1756       0       0
 3001286        2595.347       -345.1018        734.5402       0       0
 3001287        2591.777       -357.6528        743.8764       0       0
 3001288         2586.09       -362.7184        758.4653       0       0
 3001289        2579.707       -311.4918        773.7731       0       0
 3001290         2596.02       -334.1098        732.6216       0       0
 3001291        2595.078       -323.1919        734.8218       0       0
 3001292          2591.2       -310.9754        744.4725       0       0
 3001293        2585.394       -306.4272        759.1838       0       0
 3001294        2471.237       -346.0116        685.8392       0       0
 3001295        2470.969       -324.1017        686.1212       0       0
 3001296        2467.668       -358.5606        695.1758       0       0
 3001297        2467.091       -311.8842        695.7715       0       0
 3001298        2456.174       -359.0779        724.4749       0       0
 3001299        2455.598       -312.4005        725.0724       0       0
 3001300        2452.025       -324.9524        734.4055       0       0
 3001301        2451.353       -335.9434        736.3245       0       0
 3001302        2452.297       -346.8625         734.127       0       0
 3001303        2645.275       -311.0277        799.5164       0       0
 3001304        2651.557       -362.2545        784.1703       0       0
 3001305        2657.289       -357.1892        769.5988       0       0
 3001306        2672.528        -357.071        775.5762       0       0
 3001307        2660.912       -344.6388        760.2841       0       0
 3001308        2676.151       -344.5186        766.2618       0       0
 3001309        2661.618       -333.6458        758.3791       0       0
 3001310        2676.854       -333.5275        764.3535       0       0
 3001311        2660.698       -322.7275        760.5865       0       0
 3001312         2675.93       -322.6081        766.5615       0       0
 3001313        2656.833       -310.5124         770.243       0       0
 3001314        2672.059       -310.3928        776.2146       0       0
 3001315        2651.007       -305.9615        784.9465       0       0
 3001316        2563.703       -354.9637        764.9315       0       0
 3001317         2578.78       -354.8798        770.8447       0       0
 3001318        2560.229       -344.6036        773.5292       0       0
 3001319        2575.313         -344.52        779.4498       0       0
 3001320         2559.97        -325.999        773.7439       0       0
 3001321        2575.055       -325.9154        779.6641       0       0
 3001322        2573.967       -354.4862        738.7596       0       0
 3001323        2589.052       -354.4046        744.6802       0       0
 3001324        2563.154       -315.3302        765.3892       0       0
 3001325        2578.232       -315.2473        771.3038       0       0
 3001326        2554.532       -343.9432        721.5318       0       0
 3001327        2551.348        -354.611        729.8865       0       0
 3001328        2403.733        -341.057        661.9039       0       0
 3001329        2554.273       -325.3386        721.7465       0       0
 3001330        2403.603       -330.0997        662.0468       0       0
 3001331        2550.799       -314.9784        730.3442       0       0
 3001332        2546.268       -358.9303        742.9201       0       0
 3001333        2545.608       -311.1342         743.474       0       0
 3001334        2541.083       -355.0865        756.0564       0       0
 3001335        2540.535        -315.454        756.5163       0       0
 3001336         2537.61       -344.7264        764.6555       0       0
 3001337        2537.352       -326.1238        764.8703       0       0
 3001338        2531.647        -325.463        712.8652       0       0
 3001339         2577.15       -343.8174        730.4056       0       0
 3001340        2592.229       -343.7345          736.32       0       0
 3001341        2568.887       -358.8056        751.7953       0       0
 3001342        2583.973        -358.722        757.7155       0       0
 3001343        2576.892       -325.2138        730.6204       0       0
 3001344        2591.971       -325.1299         736.534       0       0
 3001345        2531.905       -344.0656        712.6511       0       0
 3001346        2509.285       -344.1903        703.7759       0       0
 3001347         2429.18       -340.8632        671.5104       0       0
 3001348        2454.628       -340.6684         681.116       0       0
 3001349        2472.015       -340.5539        687.8109       0       0
 3001350        2400.811       -354.3659        669.6113       0       0
 3001351        2400.354       -317.0731         670.083       0       0
 3001352        2395.331       -359.8679        683.6876       0       0
 3001353        2394.746       -312.0748        684.2926       0       0
 3001354        2389.715       -354.8693        697.8918       0       0
 3001355        2389.258       -317.5765        698.3641       0       0
 3001356        2386.465       -341.8418          705.93       0       0
 3001357        2386.328       -330.8841        706.0659       0       0
 3001358        2429.046       -329.9045        671.6449       0       0
 3001359        2573.419       -314.8527        739.2193       0       0
 3001360        2588.504       -314.7701        745.1393       0       0
 3001361        2568.227       -311.0105         752.348       0       0
 3001362        2583.311       -310.9279        758.2687       0       0
 3001363        2486.666       -344.3161        694.9027       0       0
 3001364        2509.026       -325.5867        703.9905       0       0
 3001365        2454.494       -329.7087        681.2499       0       0
 3001366        2471.861       -329.5936        687.9361       0       0
 3001367        2528.728       -354.7357        721.0113       0       0
 3001368        2523.649       -359.0551        734.0463       0       0
 3001369        2426.213       -354.1737        679.3377       0       0
 3001370         2528.18       -315.1032        721.4703       0       0
 3001371        2425.761       -316.8808        679.8058       0       0
 3001372        2522.988       -311.2589        734.5997       0       0
 3001373        2518.465       -355.2122        747.1824       0       0
 3001374        2517.915       -315.5787        747.6409       0       0
 3001375         2514.99       -344.8511         755.781       0       0
 3001376        2514.732       -326.2465        755.9952       0       0
 3001377        2486.408       -325.7115        695.1169       0       0
 3001378         2505.56       -315.2259        712.5958       0       0
 3001379        2506.101       -354.8591        712.1304       0       0
 3001380        2483.482       -354.9839        703.2568       0       0
 3001381        2451.616       -353.9835        689.0648       0       0
 3001382          2469.0       -353.8707        695.8063       0       0
 3001383        2420.653       -359.6821        693.6301       0       0
 3001384        2420.065       -311.8885        694.2219       0       0
 3001385        2414.956       -354.6898        708.0485       0       0
 3001386        2414.495       -317.3966         708.509       0       0
 3001387        2411.654       -341.6655        716.1991       0       0
 3001388        2411.518       -330.7078        716.3344       0       0
 3001389         2451.16       -316.6882        689.5217       0       0
 3001390        2482.933       -315.3513        703.7151       0       0
 3001391        2468.485       -316.5755        696.2385       0       0
 3001392        2501.029       -359.1788        725.1718       0       0
 3001393        2495.838       -355.3366        738.3018       0       0
 3001394        2445.966       -359.4959        703.5645       0       0
 3001395        2500.368       -311.3837        725.7266       0       0
 3001396        2445.385       -311.7022        704.1517       0       0
 3001397        2495.288       -315.7031        738.7604       0       0
 3001398        2492.113       -326.3723        747.1218       0       0
 3001399        2477.748       -311.5074        716.8514       0       0
 3001400         2478.41       -359.3036         716.298       0       0
 3001401        2440.188        -354.512        718.1984       0       0
 3001402        2439.733       -317.2167        718.6558       0       0
 3001403        2436.835       -341.4908        726.4604       0       0
 3001404        2436.702       -330.5312        726.5952       0       0
 3001405        2469.744       -345.0992        738.0263       0       0
 3001406        2473.217       -355.4593        729.4275       0       0
 3001407         2472.67       -315.8268        729.8864       0       0
 3001408        2469.492        -326.497        738.2474       0       0
 3001409        2362.751       -355.0609        687.0471       0       0
 3001410        2359.552       -342.0308         694.961       0       0
 3001411        2359.414       -331.0712        695.0985       0       0
 3001412        2362.291       -317.7672        687.5229       0       0
 3001413        2325.518       -355.3333        672.4366       0       0
 3001414        2322.318       -342.3042        680.3505       0       0
 3001415         2322.18       -331.3446         680.488       0       0
 3001416        2325.057       -318.0406        672.9124       0       0
 3001417        2294.389       -342.5083         669.389       0       0
 3001418        2297.589       -355.5385         661.475       0       0
 3001419        2303.115       -360.5437        647.4973       0       0
 3001420        2308.504       -355.0483        633.6467       0       0
 3001421        2311.381       -341.7444        626.0724       0       0
 3001422        2308.044       -317.7547        634.1241       0       0
 3001423        2302.524       -312.7517        648.1082       0       0
 3001424        2297.128       -318.2458        661.9526       0       0
 3001425        2266.467       -342.7118        658.4354       0       0
 3001426        2269.667        -355.743        650.5221       0       0
 3001427        2275.186       -360.7479        636.5366       0       0
 3001428        2280.583       -355.2529        622.6938       0       0
 3001429        2283.452       -341.9485        615.1113       0       0
 3001430        2280.121       -317.9601        623.1696       0       0
 3001431        2274.594       -312.9549        637.1475       0       0
 3001432        2269.206       -318.4503        650.9979       0       0
 3001433        2238.537        -342.916        647.4745       0       0
 3001434        2241.738       -355.9482        639.5611       0       0
 3001435        2247.264       -360.9524        625.5834       0       0
 3001436        2252.653        -355.457        611.7331       0       0
 3001437        2255.531       -342.1541         604.158       0       0
 3001438        2252.192       -318.1642        612.2082       0       0
 3001439        2246.674       -313.1594        626.1937       0       0
 3001440        2241.276       -318.6544        640.0374       0       0
 3001441        2210.614       -343.1215        636.5201       0       0
 3001442        2213.815       -356.1526        628.6068       0       0
 3001443        2219.334       -361.1575        614.6228       0       0
 3001444         2224.73       -355.6625        600.7783       0       0
 3001445        2227.601       -342.3582        593.1974       0       0
 3001446         2224.27       -318.3698        601.2551       0       0
 3001447        2218.744       -313.3646         615.233       0       0
 3001448        2213.354         -318.86         629.084       0       0
 3001449        2160.024       -343.4911        616.6684       0       0
 3001450        2163.224       -356.5222        608.7545       0       0
 3001451        2168.746       -361.5274        594.7751       0       0
 3001452        2174.139       -356.0321        580.9261       0       0
 3001453        2177.015       -342.7291        573.3506       0       0
 3001454        2173.679       -318.7394        581.4027       0       0
 3001455        2168.156       -313.7344        595.3857       0       0
 3001456        2162.764       -319.2296        609.2311       0       0
 3001457        2294.257        -331.549        669.5338       0       0
 3001458        2266.327       -331.7542        658.5731       0       0
 3001459        2238.399       -331.9583        647.6116       0       0
 3001460        2210.477       -332.1639        636.6585       0       0
 3001461        2159.889       -332.5336        616.8074       0       0
 3001462        2559.107       -335.1533        778.6082       0       0
 3001463         2535.53       -335.3264        769.3564       0       0
 3001464        2511.953       -335.4996        760.1049       0       0
 3001465        2483.676       -335.7044        749.0096       0       0
 3001466        2464.798       -335.8448        741.6013       0       0
 3001467        2559.714       -324.1645        776.6643       0       0
 3001468        2535.937       -324.3437        767.3362       0       0
 3001469        2512.159       -324.5239        758.0073       0       0
 3001470        2486.701       -324.7159        748.0192       0       0
 3001471        2464.603       -324.8822        739.3489       0       0
 3001472        2563.283       -311.6126        767.3332       0       0
 3001473        2539.503       -311.7902        758.0178       0       0
 3001474         2515.72       -311.9657        748.7004       0       0
 3001475        2501.224       -312.0744        743.0233       0       0
 3001476        2491.938       -312.1433        739.3835       0       0
 3001477        2468.157       -312.3209        730.0681       0       0
 3001478        2568.971        -306.546        752.7443       0       0
 3001479        2545.189       -306.7236        743.4282       0       0
 3001480         2523.96       -306.8813        735.1115       0       0
 3001481        2497.625       -307.0787        724.7946       0       0
 3001482        2473.844       -307.2563        715.4784       0       0
 3001483        2574.846       -311.0932        738.0564       0       0
 3001484        2551.268       -311.2672        728.8031       0       0
 3001485         2527.69       -311.4403        719.5515       0       0
 3001486        2504.113       -311.6115        710.2998       0       0
 3001487        2480.534       -311.7855        701.0466       0       0
 3001488        2578.722       -323.3115        728.4025       0       0
 3001489        2555.144       -323.4846        719.1509       0       0
 3001490        2531.567       -323.6578        709.8992       0       0
 3001491         2507.99       -323.8299        700.6476       0       0
 3001492        2484.412        -324.003        691.3959       0       0
 3001493        2579.665       -334.2296         726.204       0       0
 3001494        2556.087       -334.4037        716.9521       0       0
 3001495         2532.51       -334.5768        707.7005       0       0
 3001496        2508.933       -334.7479        698.4488       0       0
 3001497        2485.355       -334.9211         689.197       0       0
 3001498        2578.992       -345.2215        728.1229       0       0
 3001499        2555.415       -345.3947         718.871       0       0
 3001500        2531.837       -345.5677        709.6186       0       0
 3001501        2508.259       -345.7398        700.3671       0       0
 3001502        2484.682        -345.913        691.1153       0       0
 3001503        2575.422       -357.7705        737.4589       0       0
 3001504        2551.845       -357.9447         728.207       0       0
 3001505        2528.266       -358.1177        718.9541       0       0
 3001506        2504.689       -358.2888        709.7024       0       0
 3001507        2481.112       -358.4619        700.4506       0       0
 3001508        2569.734       -362.8371         752.046       0       0
 3001509        2546.156       -363.0092        742.7945       0       0
 3001510        2499.002       -363.3564        724.2911       0       0
 3001511        2475.424       -363.5295        715.0394       0       0
 3001512        2563.928       -358.2888        766.7579       0       0
 3001513        2540.351        -358.461        757.5061       0       0
 3001514        2516.773       -358.6341        748.2546       0       0
 3001515         2502.03       -358.7419        742.4692       0       0
 3001516        2493.196       -358.8072        739.0028       0       0
 3001517        2469.619       -358.9793        729.7511       0       0
 3001518        2560.051       -346.0714        776.4108       0       0
 3001519        2536.472       -346.2376        767.1613       0       0
 3001520        2512.893       -346.4037        757.9118       0       0
 3001521        2486.698       -346.5869        747.6365       0       0
 3001522        2465.735       -346.7351        739.4127       0       0
 3001523        2645.728       -357.7158        798.8799       0       0
 3001524        2641.864       -345.4976         808.533       0       0
 3001525         2640.83       -334.6658        811.0317       0       0
 3001526        2641.649       -323.5853        808.8362       0       0
 3001527         2462.66       -359.3884        710.1185       0       0
 3001528        2457.154       -354.9756          724.03       0       0
 3001529        2453.434       -341.0558        733.1904       0       0
 3001530        2453.289       -330.7599        733.3077       0       0
 3001531        2456.626       -316.5119        724.4786       0       0
 3001532          2462.0       -311.5943        710.6722       0       0
 3001533        2492.367       -344.9757        746.9039       0       0
 3001534        2311.244       -330.7859        626.2114       0       0
 3001535        2283.319       -330.9891        615.2518       0       0
 3001536        2255.396       -331.1935        604.2941       0       0
 3001537        2227.471       -331.3977        593.3344       0       0
 3001538        2176.882       -331.7664         573.483       0       0
 3001539        2679.541       -362.0323        795.1359       0       0
 3001540        2673.735       -357.4841        809.8474       0       0
 3001541        2685.228       -356.9667        780.5471       0       0
 3001542        2669.858       -345.2676        819.4982       0       0
 3001543          2688.8       -344.4158        771.2124       0       0
 3001544        2668.915       -334.3476        821.6975       0       0
 3001545        2689.472       -333.4238        769.2935       0       0
 3001546        2669.588       -323.3557        819.7788       0       0
 3001547        2688.528       -322.5057        771.4914       0       0
 3001548        2673.157       -310.8066        810.4429       0       0
 3001549        2684.651       -310.2903         781.143       0       0
 3001550        2678.845       -305.7411        795.8546       0       0
 3001551        2678.957       -313.8841        795.7148       0       0
 3001552        2683.176       -317.3114        785.0264       0       0
 3001553        2685.962       -326.6954        778.1012       0       0
 3001554        2686.499       -334.6478        776.8884       0       0
 3001555        2685.846        -342.477        778.7043       0       0
 3001556        2683.516        -350.085        784.7815       0       0
 3001557        2678.744       -353.8268        797.0006       0       0
 3001558         2676.06       -351.8123        803.7924       0       0
 3001559        2672.369       -340.7281         813.006       0       0
 3001560        2671.882       -333.2486        814.1008       0       0
 3001561        2672.448       -325.8589        812.5253       0       0
 3001562        2675.047       -317.2277        805.7537       0       0
 3001563        2462.369       -307.8967        710.7665       0       0
 3001564        2167.735          -334.0        596.9068       0       0
 3001565        2167.682       -338.7155        596.8873       0       0
 3001566        2710.742        -353.079        921.9941       0       0
 3001567        2701.323       -357.8487        946.5313       0       0
 3001568        2712.569       -371.5444        917.2364       0       0
 3001569        2703.606       -380.9305        940.5842       0       0
 3001570        2715.547       -388.8032         909.477       0       0
 3001571        2707.329        -402.504        930.8848       0       0
 3001572        2719.582       -404.3005        898.9653       0       0
 3001573        2712.373       -421.8757        917.7452       0       0
 3001574        2724.544       -417.5384        886.0391       0       0
 3001575        2718.575       -438.4229        901.5875       0       0
 3001576        2730.273       -428.0912        871.1139       0       0
 3001577        2725.736        -451.614         882.931       0       0
 3001578        2736.585       -435.6198        854.6694       0       0
 3001579        2733.626       -461.0248        862.3754       0       0
 3001580        2743.277       -439.8824        837.2343       0       0
 3001581        2741.992        -466.353        840.5814       0       0
 3001582        2750.135       -440.7417        819.3687       0       0
 3001583        2750.564       -467.4272        818.2495       0       0
 3001584        2756.938       -438.1703         801.647       0       0
 3001585        2759.067       -464.2129        796.0974       0       0
 3001586        2756.006       -428.1183        804.0734       0       0
 3001587        2763.466       -432.2508        784.6387       0       0
 3001588        2767.228       -456.8135         774.837       0       0
 3001589        2750.884       -426.1768        817.4191       0       0
 3001590        2744.936       -424.8935        832.9147       0       0
 3001591        2738.784       -421.5858        848.9415       0       0
 3001592        2769.511       -423.1734        768.8906       0       0
 3001593        2774.784       -445.4668        755.1518       0       0
 3001594        2732.879       -415.5037        864.3246       0       0
 3001595        2727.509       -406.1874        878.3154       0       0
 3001596        2723.123       -393.3283        889.7406       0       0
 3001597        2774.878       -411.2299        754.9086       0       0
 3001598        2781.493       -430.5374        737.6744       0       0
 3001599        2719.736        -378.401        898.5652       0       0
 3001600        2717.101       -363.4741        905.4279       0       0
 3001601        2714.475       -351.2767        912.2706       0       0
 3001602        2779.395       -396.8042        743.1424       0       0
 3001603        2787.138       -412.5053        722.9666       0       0
 3001604        2715.358       -337.3416        909.9704       0       0
 3001605        2715.863       -320.6287        908.6533       0       0
 3001606        2717.191       -303.2006         905.194       0       0
 3001607        2782.916       -380.3599          733.97       0       0
 3001608        2791.539       -391.9499        711.5011       0       0
 3001609        2719.944       -287.2835        898.0235       0       0
 3001610        2723.722       -273.2718        888.1786       0       0
 3001611        2728.329       -261.2696         876.178       0       0
 3001612        2785.327       -362.4256        727.6862       0       0
 3001613        2794.554        -369.532        703.6464       0       0
 3001614        2733.662       -251.7458        862.2834       0       0
 3001615        2739.151       -244.7198        847.9841       0       0
 3001616        2743.755       -238.0881        835.9908       0       0
 3001617        2786.553       -343.5776         724.493       0       0
 3001618        2796.086        -345.972        699.6549       0       0
 3001619        2748.813       -241.0286        822.8139       0       0
 3001620        2754.778       -243.6113        807.2742       0       0
 3001621         2760.85       -248.6427        791.4546       0       0
 3001622        2786.553       -324.4218         724.493       0       0
 3001623        2796.086       -322.0273         699.655       0       0
 3001624        2766.459       -256.6092         776.842       0       0
 3001625        2771.387       -267.1587        764.0037       0       0
 3001626          2775.5       -279.7223        753.2899       0       0
 3001627        2785.327       -305.5739        727.6863       0       0
 3001628        2794.554       -298.4673        703.6465       0       0
 3001629        2778.852       -293.4874        744.5558       0       0
 3001630        2781.442       -308.7383        737.8083       0       0
 3001631        2782.175       -325.5351        735.9005       0       0
 3001632        2782.915       -287.6396        733.9702       0       0
 3001633        2791.539       -276.0494        711.5014       0       0
 3001634         2723.39       -367.0959        889.0435       0       0
 3001635        2720.563       -348.2916        896.4103       0       0
 3001636        2720.584        -327.795        896.3535       0       0
 3001637        2779.395       -271.1953        743.1427       0       0
 3001638        2787.138       -255.4941         722.967       0       0
 3001639        2737.399       -261.6388        852.5498       0       0
 3001640        2744.484       -253.7932        834.0917       0       0
 3001641        2752.072       -255.7889         814.322       0       0
 3001642        2774.878       -256.7697        754.9091       0       0
 3001643        2781.492       -237.4621        737.6749       0       0
 3001644        2781.999       -342.2094        736.3566       0       0
 3001645        2780.928        -359.009        739.1475       0       0
 3001646        2778.676       -375.2007        745.0137       0       0
 3001647        2769.511       -244.8262         768.891       0       0
 3001648        2774.784       -222.5328        755.1524       0       0
 3001649        2775.264       -389.9287        753.9045       0       0
 3001650         2770.83       -402.5888        765.4559       0       0
 3001651        2765.594       -412.6964        779.0951       0       0
 3001652        2763.466       -235.7489        784.6392       0       0
 3001653        2767.228       -211.1862        774.8376       0       0
 3001654        2760.258       -420.4892        792.9976       0       0
 3001655          2721.3       -309.8249        894.4901       0       0
 3001656        2724.045       -295.3356        887.3392       0       0
 3001657        2756.938       -229.8295        801.6475       0       0
 3001658        2759.067       -203.7869         796.098       0       0
 3001659         2727.59       -282.7045         878.102       0       0
 3001660        2731.946       -271.2755        866.7559       0       0
 3001661        2758.304        -260.561         798.087       0       0
 3001662        2750.135       -227.2582        819.3692       0       0
 3001663        2750.564       -200.5728        818.2502       0       0
 3001664        2763.714       -267.9111        783.9931       0       0
 3001665        2768.378       -277.7292         771.843       0       0
 3001666        2772.214       -289.6213        761.8501       0       0
 3001667        2743.277       -228.1177        837.2348       0       0
 3001668        2741.991       -201.6471        840.5821       0       0
 3001669        2775.279       -301.8793        753.8658       0       0
 3001670        2778.077       -311.7084        746.5745       0       0
 3001671        2777.697        -324.264        747.5656       0       0
 3001672        2736.585       -232.3803          854.67       0       0
 3001673        2733.626       -206.9754        862.3761       0       0
 3001674        2777.657       -339.2084        747.6699       0       0
 3001675        2761.378       -403.9183        790.0781       0       0
 3001676        2754.408       -411.9517        808.2371       0       0
 3001677        2730.272       -239.9091        871.1144       0       0
 3001678        2725.736       -216.3864        882.9316       0       0
 3001679        2746.935       -411.0219        827.7068       0       0
 3001680        2776.878       -354.9899        749.6984       0       0
 3001681        2774.811        -369.983        755.0835       0       0
 3001682        2724.543        -250.462        886.0395       0       0
 3001683        2718.574       -229.5775         901.588       0       0
 3001684        2771.473       -383.3384        763.7792       0       0
 3001685        2767.001       -394.6908        775.4293       0       0
 3001686        2740.763       -407.8295        843.7844       0       0
 3001687        2719.582       -263.6999        898.9656       0       0
 3001688        2712.372       -246.1249        917.7457       0       0
 3001689        2735.207        -403.186        858.2595       0       0
 3001690        2730.116       -395.7578         871.523       0       0
 3001691        2726.356       -382.7444        881.3182       0       0
 3001692        2715.547       -279.1973        909.4772       0       0
 3001693        2707.329       -265.4966        930.8852       0       0
 3001694        2769.657       -300.4713         768.511       0       0
 3001695        2773.041       -316.2414         759.696       0       0
 3001696        2765.865       -288.1421        778.3891       0       0
 3001697        2712.569       -296.4561        917.2366       0       0
 3001698        2703.606       -287.0701        940.5844       0       0
 3001699        2761.397       -278.7411          790.03       0       0
 3001700        2756.339       -272.0633        803.2062       0       0
 3001701        2750.865       -267.6592        817.4675       0       0
 3001702        2710.742       -314.9216        921.9943       0       0
 3001703        2701.323        -310.152        946.5314       0       0
 3001704        2745.064       -266.4065        832.5807       0       0
 3001705        2739.606        -272.472        846.7983       0       0
 3001706        2734.834       -281.6617        859.2308       0       0
 3001707        2730.844       -293.0422        869.6263       0       0
 3001708        2727.715       -305.1797        877.7769       0       0
 3001709        2724.845       -314.7421        885.2527       0       0
 3001710        2725.322       -328.8159        884.0114       0       0
 3001711        2725.784       -344.8239        882.8082       0       0
 3001712        2727.576       -360.5985        878.1382       0       0
 3001713        2730.021       -374.8398        871.7687       0       0
 3001714        2732.227       -386.7649        866.0237       0       0
 3001715         2741.39       -393.0792         842.152       0       0
 3001716        2746.999       -397.2804        827.5399       0       0
 3001717        2753.063       -398.2536        811.7402       0       0
 3001718        2758.746       -393.9898        796.9366       0       0
 3001719         2763.91       -386.5041        783.4827       0       0
 3001720        2768.201       -376.7456        772.3026       0       0
 3001721        2771.418        -364.792        763.9225       0       0
 3001722        2773.219       -350.6299        759.2327       0       0
 3001723        2773.639       -334.7329        758.1365       0       0
 3001724        2730.201       -340.9399        871.3004       0       0
 3001725        2730.029       -320.8424        871.7497       0       0
 3001726        2733.386       -303.5949        863.0034       0       0
 3001727        2732.042       -358.2297        866.5052       0       0
 3001728        2734.809        -374.135         859.296       0       0
 3001729        2736.417       -389.6112         855.108       0       0
 3001730        2737.402       -291.4167        852.5401       0       0
 3001731        2741.749       -283.1958        841.2172       0       0
 3001732        2745.504       -276.5337        831.4334       0       0
 3001733        2749.642       -279.5077        820.6527       0       0
 3001734        2754.472       -282.7883        808.0694       0       0
 3001735        2759.259       -288.5812        795.5995       0       0
 3001736        2763.432       -297.2439        784.7286       0       0
 3001737         2766.76       -308.3689         776.059       0       0
 3001738        2691.904       -362.6185        971.0685       0       0
 3001739        2694.643       -390.3167        963.9319       0       0
 3001740        2699.111       -416.2048        952.2927       0       0
 3001741        2705.163       -439.4508        936.5251       0       0
 3001742        2712.605       -459.3075        917.1359       0       0
 3001743        2721.199       -475.1368        894.7481       0       0
 3001744        2730.667       -486.4298        870.0814       0       0
 3001745        2740.706       -492.8235        843.9286       0       0
 3001746        2750.993       -494.1126        817.1303       0       0
 3001747        2761.197       -490.2555        790.5477       0       0
 3001748        2770.989       -481.3762        765.0353       0       0
 3001749        2780.057       -467.7602        741.4131       0       0
 3001750        2788.107       -449.8449        720.4402       0       0
 3001751        2794.882       -428.2063        702.7908       0       0
 3001752        2800.163       -403.5399        689.0322       0       0
 3001753        2803.781       -376.6384        679.6066       0       0
 3001754         2805.62       -348.3664        674.8168       0       0
 3001755         2805.62       -319.6327        674.8168       0       0
 3001756        2803.781       -291.3608        679.6068       0       0
 3001757        2800.163       -264.4593        689.0326       0       0
 3001758        2794.882        -239.793        702.7913       0       0
 3001759        2788.107       -218.1545        720.4409       0       0
 3001760        2780.056       -200.2394        741.4138       0       0
 3001761        2770.989       -186.6234        765.0361       0       0
 3001762        2761.196       -177.7443        790.5485       0       0
 3001763        2750.992       -173.8874        817.1311       0       0
 3001764        2740.706       -175.1766        843.9294       0       0
 3001765        2730.667       -181.5705        870.0822       0       0
 3001766        2721.199       -192.8636        894.7488       0       0
 3001767        2712.605        -208.693        917.1365       0       0
 3001768        2705.163       -228.5499        936.5257       0       0
 3001769         2699.11        -251.796        952.2932       0       0
 3001770        2694.643       -277.6842        963.9322       0       0
 3001771        2691.903       -305.3824        971.0686       0       0
 3001772        2768.994       -321.0038        770.2375       0       0
 3001773        2769.823        -334.502        768.0768       0       0
 3001774        2769.734       -347.7096        768.3089       0       0
 3001775        2768.464       -360.2169        771.6192       0       0
 3001776        2765.427       -370.1006        779.5305       0       0
 3001777        2740.348       -298.2326        844.8656       0       0
 3001778        2746.077         -290.01        829.9398       0       0
 3001779        2752.349        -291.831        813.6022       0       0
 3001780        2710.127       -334.0003        923.5973       0       0
 3001781        2761.531       -377.8423        789.6793       0       0
 3001782        2700.554       -334.0004        948.5352       0       0
 3001783        2756.988       -383.5356        801.5156       0       0
 3001784         2690.98       -334.0004        973.4731       0       0
 3001785        2736.365       -309.8965        855.2419       0       0
 3001786        2692.689       -366.7339        995.6589       0       0
 3001787        2682.383       -367.4399        995.8699       0       0
 3001788        2674.865       -366.7338        988.8167       0       0
 3001789         2674.54        -365.029         978.631       0       0
 3001790        2681.597       -363.3242        971.2795       0       0
 3001791        2734.123       -324.2666        861.0822       0       0
 3001792        2699.421       -363.3243        978.1217       0       0
 3001793        2695.822       -398.4148         987.496       0       0
 3001794        2685.583       -399.8042        987.5309       0       0
 3001795        2677.998       -398.4146        980.6539       0       0
 3001796         2677.51       -395.0601        970.8934       0       0
 3001797        2684.404       -391.7057        963.9669       0       0
 3001798        2734.124       -340.6849        861.0811       0       0
 3001799        2702.228       -391.7059        970.8091       0       0
 3001800        2700.932       -428.0255        974.1832       0       0
 3001801        2690.804       -430.0535         973.931       0       0
 3001802        2683.108       -428.0252        967.3411       0       0
 3001803        2682.354       -423.1288        958.2739       0       0
 3001804        2688.982       -418.2325        952.0406       0       0
 3001805        2736.136       -357.9249        855.8387       0       0
 3001806        2706.806       -418.2327        958.8828       0       0
 3001807        2707.855        -454.614        956.1483       0       0
 3001808        2697.876       -457.2155        955.5071       0       0
 3001809        2690.031       -454.6137        949.3063       0       0
 3001810        2688.916       -448.3328        941.1782       0       0
 3001811        2695.184        -442.052        935.8842       0       0
 3001812        2740.145       -376.3439        845.3963       0       0
 3001813        2713.008       -442.0523        942.7262       0       0
 3001814        2716.368        -477.326        933.9709       0       0
 3001815        2706.572       -480.4173        932.8514       0       0
 3001816        2698.544       -477.3256         927.129       0       0
 3001817        2696.986        -469.862        920.1558       0       0
 3001818         2702.81       -462.3986        916.0166       0       0
 3001819        2751.895       -386.2071        814.7842       0       0
 3001820        2720.634        -462.399        922.8586       0       0
 3001821        2726.197       -495.4313         908.364       0       0
 3001822        2716.614       -498.9131        906.6921       0       0
 3001823        2708.373       -495.4309        901.5221       0       0
 3001824        2706.303       -487.0245        895.8823       0       0
 3001825        2711.615       -478.6183        893.0766       0       0
 3001826        2746.263       -384.3438        829.4568       0       0
 3001827        2729.439       -478.6188        899.9185       0       0
 3001828        2737.027       -508.3481        880.1505       0       0
 3001829        2727.677       -512.1085        877.8701       0       0
 3001830        2719.203       -508.3476        873.3086       0       0
 3001831        2716.569       -499.2687         869.138       0       0
 3001832        2721.317         -490.19        867.8014       0       0
 3001833        2757.212       -297.2004         800.931       0       0
 3001834        2739.141       -490.1905        874.6432       0       0
 3001835        2748.509       -515.6612        850.2371       0       0
 3001836        2739.407       -519.5792        847.3115       0       0
 3001837        2730.685       -515.6607        843.3953       0       0
 3001838        2727.453        -506.201        840.7824       0       0
 3001839        2731.604       -496.7415        841.0035       0       0
 3001840        2765.349       -326.4418         779.735       0       0
 3001841        2749.428        -496.742        847.8452       0       0
 3001842        2760.275       -517.1356        819.5853       0       0
 3001843        2751.426       -521.0854        815.9987       0       0
 3001844        2742.451       -517.1351        812.7437       0       0
 3001845        2738.606       -507.5987        811.7269       0       0
 3001846        2742.144       -498.0624         813.544       0       0
 3001847        2765.985       -337.5282        778.0781       0       0
 3001848        2759.968       -498.0629        820.3857       0       0
 3001849        2771.946       -512.7238        789.1804       0       0
 3001850        2763.349       -516.5784         784.938       0       0
 3001851        2754.122       -512.7233        782.3388       0       0
 3001852        2749.669       -503.4167        782.9053       0       0
 3001853          2752.6       -494.1102        786.3057       0       0
 3001854         2763.23       -362.7371        785.2551       0       0
 3001855        2770.424       -494.1107        793.1473       0       0
 3001856        2783.147       -502.5677        759.9995       0       0
 3001857        2774.792       -506.2033        755.1277       0       0
 3001858        2765.323       -502.5672         753.158       0       0
 3001859        2760.287       -493.7895         755.244       0       0
 3001860        2762.634        -485.012        760.1639       0       0
 3001861        2761.069       -305.1678        790.8847       0       0
 3001862        2780.458       -485.0124        767.0054       0       0
 3001863        2793.518       -486.9937        732.9806       0       0
 3001864        2785.386       -490.2934        727.5261       0       0
 3001865        2775.694       -486.9933        726.1392       0       0
 3001866        2770.118       -479.0266        729.6321       0       0
 3001867        2771.925         -471.06        735.9589       0       0
 3001868        2763.837       -315.1755        783.6727       0       0
 3001869        2789.749       -471.0605        742.8004       0       0
 3001870        2802.726       -466.5023         708.992       0       0
 3001871        2794.793       -469.3601        703.0202       0       0
 3001872        2784.902        -466.502        702.1506       0       0
 3001873        2778.847       -459.6024        706.8928       0       0
 3001874        2780.174       -452.7029        714.4686       0       0
 3001875        2759.814       -368.6077        794.1542       0       0
 3001876        2797.998       -452.7032        721.3101       0       0
 3001877        2810.475       -441.7523        688.8048       0       0
 3001878        2802.709       -444.0762        682.3976       0       0
 3001879        2792.651        -441.752        681.9635       0       0
 3001880        2786.192       -436.1412        687.7568       0       0
 3001881        2787.116       -430.5305        696.3839       0       0
 3001882        2755.842       -373.1152        804.5025       0       0
 3001883         2804.94       -430.5308        703.2252       0       0
 3001884        2816.515       -413.5389        673.0679       0       0
 3001885         2808.88       -415.2543        666.3212       0       0
 3001886        2798.691       -413.5387        666.2266       0       0
 3001887        2791.918       -409.3971        672.8393       0       0
 3001888        2792.528       -405.2556        682.2858       0       0
 3001889        2751.406       -375.1392        816.0577       0       0
 3001890        2810.352       -405.2558         689.127       0       0
 3001891        2820.654       -382.7692        662.2869       0       0
 3001892        2813.107       -383.8209        655.3077       0       0
 3001893         2802.83        -382.769        655.4456       0       0
 3001894        2795.841       -380.2297        662.6197       0       0
 3001895        2796.235       -377.6905        672.6275       0       0
 3001896        2746.695       -373.4466        828.3323       0       0
 3001897        2814.059       -377.6906        679.4688       0       0
 3001898        2822.757       -350.4319        656.8084       0       0
 3001899        2815.256       -350.7862        649.7111       0       0
 3001900        2804.933       -350.4319        649.9672       0       0
 3001901        2797.834       -349.5765        657.4265       0       0
 3001902        2798.119       -348.7211        667.7195       0       0
 3001903        2742.312       -366.7783        839.7496       0       0
 3001904        2815.943       -348.7211        674.5608       0       0
 3001905        2822.757       -317.5665        656.8085       0       0
 3001906        2815.256        -317.212        649.7113       0       0
 3001907        2804.933       -317.5666        649.9673       0       0
 3001908        2797.834       -318.4226        657.4266       0       0
 3001909        2798.119       -319.2786        667.7195       0       0
 3001910        2739.183       -354.6576        847.9012       0       0
 3001911        2815.943       -319.2785        674.5608       0       0
 3001912        2820.654       -285.2293        662.2872       0       0
 3001913        2813.107       -284.1773        655.3082       0       0
 3001914         2802.83       -285.2295         655.446       0       0
 3001915        2795.841       -287.7693        662.6199       0       0
 3001916        2796.235       -290.3092        672.6276       0       0
 3001917        2737.519       -340.4842        852.2363       0       0
 3001918        2814.059       -290.3091        679.4689       0       0
 3001919        2816.515       -254.4596        673.0685       0       0
 3001920         2808.88        -252.744         666.322       0       0
 3001921        2798.691       -254.4599        666.2272       0       0
 3001922        2791.918        -258.602        672.8397       0       0
 3001923        2792.528        -262.744        682.2859       0       0
 3001924        2737.522       -326.6519        852.2286       0       0
 3001925        2810.352       -262.7438        689.1272       0       0
 3001926        2810.475       -226.2465        688.8057       0       0
 3001927        2802.709       -223.9224        682.3986       0       0
 3001928         2792.65       -226.2467        681.9644       0       0
 3001929        2786.192        -231.858        687.7573       0       0
 3001930        2787.116       -237.4692         696.384       0       0
 3001931         2739.27       -314.4736        847.6734       0       0
 3001932         2804.94       -237.4689        703.2253       0       0
 3001933        2802.726       -201.4966        708.9931       0       0
 3001934        2794.793       -198.6387        703.0214       0       0
 3001935        2784.902       -201.4969        702.1517       0       0
 3001936        2778.846        -208.397        706.8934       0       0
 3001937        2780.174       -215.2969        714.4689       0       0
 3001938        2742.526        -304.861        839.1927       0       0
 3001939        2797.998       -215.2965        721.3103       0       0
 3001940        2793.518       -181.0054        732.9818       0       0
 3001941        2785.386       -177.7056        727.5275       0       0
 3001942        2775.694       -181.0059        726.1404       0       0
 3001943        2770.118       -188.9729        729.6329       0       0
 3001944        2771.925       -196.9398        735.9592       0       0
 3001945        2746.836       -299.5399        827.9641       0       0
 3001946        2789.749       -196.9393        742.8007       0       0
 3001947        2783.146       -165.4317        760.0009       0       0
 3001948        2774.791        -161.796        755.1293       0       0
 3001949        2765.322       -165.4321        753.1593       0       0
 3001950        2760.287       -174.2101        755.2449       0       0
 3001951        2762.634       -182.9879        760.1642       0       0
 3001952        2751.512       -300.4065        815.7805       0       0
 3001953        2780.458       -182.9874        767.0057       0       0
 3001954        2771.945       -155.2758        789.1818       0       0
 3001955        2763.348       -151.4211        784.9396       0       0
 3001956        2754.121       -155.2763        782.3402       0       0
 3001957        2749.669       -164.5831        782.9062       0       0
 3001958        2752.599       -173.8897         786.306       0       0
 3001959        2755.661       -305.4013        804.9733       0       0
 3001960        2770.423       -173.8892        793.1476       0       0
 3001961        2760.274       -150.8644        819.5868       0       0
 3001962        2751.426       -146.9145        816.0004       0       0
 3001963         2742.45       -150.8649        812.7451       0       0
 3001964        2738.606       -160.4013        811.7278       0       0
 3001965        2742.144       -169.9375        813.5444       0       0
 3001966        2758.933       -312.5348        796.4495       0       0
 3001967        2759.968        -169.937         820.386       0       0
 3001968        2748.509        -152.339        850.2385       0       0
 3001969        2739.406        -148.421        847.3132       0       0
 3001970        2730.685       -152.3395        843.3967       0       0
 3001971        2727.453       -161.7991        840.7833       0       0
 3001972        2731.604       -171.2585        841.0038       0       0
 3001973        2761.199        -321.546        790.5455       0       0
 3001974        2749.427        -171.258        847.8455       0       0
 3001975        2737.026       -159.6524        880.1518       0       0
 3001976        2727.676       -155.8921        877.8717       0       0
 3001977        2719.202       -159.6528        873.3099       0       0
 3001978        2716.568       -168.7316        869.1389       0       0
 3001979        2721.317       -177.8101        867.8017       0       0
 3001980        2761.838       -332.6057        788.8796       0       0
 3001981        2739.141       -177.8096        874.6436       0       0
 3001982        2726.197       -172.5694        908.3653       0       0
 3001983        2716.613       -169.0878        906.6937       0       0
 3001984        2708.373       -172.5699        901.5234       0       0
 3001985        2706.302       -180.9759        895.8831       0       0
 3001986        2711.615       -189.3818        893.0768       0       0
 3001987        2762.206       -342.8315         787.923       0       0
 3001988        2729.439       -189.3814        899.9188       0       0
 3001989        2716.367        -190.675        933.9721       0       0
 3001990        2706.572       -187.5838        932.8527       0       0
 3001991        2698.543       -190.6754        927.1301       0       0
 3001992        2696.985       -198.1386        920.1564       0       0
 3001993         2702.81       -205.6016        916.0168       0       0
 3001994        2762.488        -352.949        787.1872       0       0
 3001995        2720.634       -205.6012        922.8588       0       0
 3001996        2707.854       -213.3871        956.1493       0       0
 3001997        2697.875       -210.7859        955.5082       0       0
 3001998        2690.031       -213.3875        949.3072       0       0
 3001999        2688.916       -219.6679        941.1788       0       0
 3002000        2695.184       -225.9483        935.8843       0       0
 3002001        2758.948       -358.4736        796.4101       0       0
 3002002        2713.008        -225.948        942.7264       0       0
 3002003        2700.932       -239.9759         974.184       0       0
 3002004        2690.803       -237.9481        973.9318       0       0
 3002005        2683.108       -239.9761        967.3419       0       0
 3002006        2682.354        -244.872        958.2743       0       0
 3002007        2688.982       -249.7678        952.0408       0       0
 3002008        2755.309       -362.6729        805.8909       0       0
 3002009        2706.806       -249.7676        958.8829       0       0
 3002010        2695.822       -269.5866        987.4965       0       0
 3002011        2685.583       -268.1975        987.5316       0       0
 3002012        2677.998       -269.5868        980.6544       0       0
 3002013         2677.51       -272.9408        970.8937       0       0
 3002014        2684.404       -276.2946         963.967       0       0
 3002015        2751.486       -364.8671        815.8497       0       0
 3002016        2702.228       -276.2945        970.8091       0       0
 3002017        2692.689       -301.2677        995.6591       0       0
 3002018        2682.383       -300.5618        995.8701       0       0
 3002019        2674.865       -301.2678         988.817       0       0
 3002020         2674.54        -302.972        978.6312       0       0
 3002021        2681.597       -304.6762        971.2796       0       0
 3002022        2747.632       -364.1109         825.889       0       0
 3002023        2699.421       -304.6761        978.1218       0       0
 3002024        2699.746       -365.0291        988.3073       0       0
 3002025        2702.717       -395.0604        980.5696       0       0
 3002026        2707.561       -423.1292        967.9501       0       0
 3002027        2714.123       -448.3333        950.8543       0       0
 3002028        2722.192       -469.8625        929.8318       0       0
 3002029         2731.51       -487.0251        905.5583       0       0
 3002030        2741.775       -499.2694        878.8138       0       0
 3002031         2752.66       -506.2017        850.4581       0       0
 3002032        2763.813       -507.5994        821.4025       0       0
 3002033        2774.876       -503.4174        792.5808       0       0
 3002034        2785.494       -493.7902        764.9194       0       0
 3002035        2795.325       -479.0272        739.3074       0       0
 3002036        2804.053       -459.6029        716.5679       0       0
 3002037        2811.399       -436.1416        697.4319       0       0
 3002038        2817.125       -409.3974        682.5143       0       0
 3002039        2821.048       -380.2299        672.2947       0       0
 3002040        2823.041       -349.5765        667.1014       0       0
 3002041        2823.041       -318.4225        667.1016       0       0
 3002042        2821.048       -287.7692        672.2949       0       0
 3002043        2817.125       -258.6017        682.5147       0       0
 3002044        2811.399       -231.8576        697.4324       0       0
 3002045        2804.053       -208.3965        716.5685       0       0
 3002046        2795.325       -188.9723        739.3081       0       0
 3002047        2785.493       -174.2095        764.9202       0       0
 3002048        2774.876       -164.5824        792.5817       0       0
 3002049        2763.813       -160.4006        821.4034       0       0
 3002050        2752.659       -161.7984         850.459       0       0
 3002051        2741.775       -168.7309        878.8147       0       0
 3002052        2731.509       -180.9753         905.559       0       0
 3002053        2722.192        -198.138        929.8325       0       0
 3002054        2714.123       -219.6675        950.8549       0       0
 3002055         2707.56       -244.8717        967.9505       0       0
 3002056        2702.716       -272.9405        980.5699       0       0
 3002057        2699.746       -302.9719        988.3075       0       0
 3002058        2744.126       -359.2533        835.0234       0       0
 3002059        2741.639       -350.1444        841.5031       0       0
 3002060        2740.398         -339.18        844.7361       0       0
 3002061        2740.488       -328.1068        844.5017       0       0
 3002062        2741.927       -318.4684        840.7518       0       0
 3002063         2744.39       -311.1224        834.3357       0       0
 3002064        2747.661       -307.0187        825.8146       0       0
 3002065        2751.339       -308.5973        816.2324       0       0
 3002066        2758.013       -337.0617        798.8445       0       0
 3002067        2758.581       -347.8332        797.3649       0       0
 3002068        2755.129       -352.2314        806.3585       0       0
 3002069        2754.532       -313.6368        807.9131       0       0
 3002070        2757.037        -320.255         801.387       0       0
 3002071        2758.864       -326.4532        796.6277       0       0
 3002072        2751.753        -354.969         815.153       0       0
 3002073        2748.546       -355.5132        823.5092       0       0
 3002074        2745.644        -352.843         831.068       0       0
 3002075        2743.792       -345.8491        835.8947       0       0
 3002076        2742.936       -337.5449        838.1247       0       0
 3002077         2743.18       -329.0175        837.4883       0       0
 3002078        2744.562       -321.8884        833.8881       0       0
 3002079         2748.42       -313.0674        823.8375       0       0
 3002080        2750.929       -316.0981        817.3014       0       0
 3002081        2753.384       -321.4064        810.9055       0       0
 3002082        2755.557       -328.8218         805.244       0       0
 3002083         2754.71       -342.4913        807.4492       0       0
 3002084        2753.387       -334.1327         810.898       0       0
 3002085        2751.562       -326.8231        815.6507       0       0
 3002086        2749.222       -321.1454        821.7484       0       0
 3002087        2746.499       -316.6543        828.8415       0       0
 3002088        2751.715       -345.7729        815.2526       0       0
 3002089        2745.985        -342.112        830.1804       0       0
 3002090        2750.896       -337.5186        817.3875       0       0
 3002091        2749.462       -330.6008        821.1218       0       0
 3002092        2698.746       -334.0005        990.9146       0       0
 3002093        2747.251       -325.3295        826.8815       0       0
 3002094        2691.633       -334.0008        998.4094       0       0
 3002095        2745.639       -330.1493        831.0821       0       0
 3002096        2681.304       -334.0009        998.6797       0       0
 3002097         2745.28       -336.3342        832.0178       0       0
 3002098        2673.809       -334.0008        991.5672       0       0
 3002099        2747.473       -334.1136         826.303       0       0
 3002100        2673.539       -334.0005        981.2383       0       0
 3002101         2748.45       -340.0562         823.759       0       0
 3002102        2680.652       -334.0002        973.7435       0       0
 3002103        2766.121       -347.7407        777.7224       0       0
 3002104        2765.961       -356.7831        778.1405       0       0
 3002105        2746.847       -347.4418        827.9336       0       0
 3002106        2698.475       -334.0002        980.5856       0       0
 3002107        2749.056       -347.3851        822.1811       0       0
 3002108        2433.908       -80.27301        529.9568       0       0
 3002109        2433.908        -160.273        529.9568       0       0
 3002110        2433.908        -240.273        529.9568       0       0
 3002111        2433.908        -320.273        529.9568       0       0
 3002112        2433.908        -400.273        529.9568       0       0
 3002113        2433.908        -480.273        529.9568       0       0
 3002114        2433.908        -560.273        529.9568       0       0
 3002115        2433.908        -640.273        529.9568       0       0
 3002116        2433.908        -720.273        529.9568       0       0
 3002117        2493.995       -80.27301        580.3773       0       0
 3002118        2493.995        -160.273        580.3773       0       0
 3002119        2493.995        -240.273        580.3773       0       0
 3002120        2493.995        -320.273        580.3773       0       0
 3002121        2493.995        -400.273        580.3773       0       0
 3002122        2493.995        -480.273        580.3773       0       0
 3002123        2493.995        -560.273        580.3773       0       0
 3002124        2493.995        -640.273        580.3773       0       0
 3002125        2493.995        -720.273        580.3773       0       0
 3002126        2554.083       -80.27301        630.7978       0       0
 3002127        2554.083        -160.273        630.7978       0       0
 3002128        2554.083        -240.273        630.7978       0       0
 3002129        2554.083        -320.273        630.7978       0       0
 3002130        2554.083        -400.273        630.7978       0       0
 3002131        2554.083        -480.273        630.7978       0       0
 3002132        2554.083        -560.273        630.7978       0       0
 3002133        2554.083        -640.273        630.7978       0       0
 3002134        2554.083        -720.273        630.7978       0       0
 3002135        2373.821       -80.27301        479.5363       0       0
 3002136        2373.821        -160.273        479.5363       0       0
 3002137        2373.821        -240.273        479.5363       0       0
 3002138        2373.821        -320.273        479.5363       0       0
 3002139        2373.821        -400.273        479.5363       0       0
 3002140        2373.821        -480.273        479.5363       0       0
 3002141        2373.821        -560.273        479.5363       0       0
 3002142        2373.821        -640.273        479.5363       0       0
 3002143        2373.821        -720.273        479.5363       0       0
 3002144         2614.17       -80.27301        681.2183       0       0
 3002145         2614.17        -160.273        681.2183       0       0
 3002146         2614.17        -240.273        681.2183       0       0
 3002147         2614.17        -320.273        681.2183       0       0
 3002148         2614.17        -400.273        681.2183       0       0
 3002149         2614.17        -480.273        681.2183       0       0
 3002150         2614.17        -560.273        681.2183       0       0
 3002151         2614.17        -640.273        681.2183       0       0
 3002152         2614.17        -720.273        681.2183       0       0
 3002153        2373.821        -0.27301        479.5363       0       0
 3002154        2373.821        -800.273        479.5363       0       0
 3002155        2433.908        -0.27301        529.9568       0       0
 3002156        2433.908        -800.273        529.9568       0       0
 3002157        2493.995        -0.27301        580.3773       0       0
 3002158        2493.995        -800.273        580.3773       0       0
 3002159        2554.083        -0.27301        630.7978       0       0
 3002160        2554.083        -800.273        630.7978       0       0
 3002161         2614.17        -0.27301        681.2183       0       0
 3002162         2614.17        -800.273        681.2183       0       0
 3002163         2748.42          -334.0         823.845       0       0
 3002164         2748.42          -334.0         823.845       0       0
 3002165         2748.42          -234.0         823.845       0       0
 3002166        2841.778          -334.0        859.6815       0       0
 3002167        2223.667          -334.0        618.6234       0       0
 3002168        2167.735          -334.0        596.9068       0       0
 3002170        2167.735          -234.0        596.9068       0       0
 3002171        2167.735          -234.0        596.9068       0       0
 3002172        2167.735          -334.0        596.9068       0       0
 3002173        2679.194          -334.0        795.4901       0       0
 3002174          3215.0          -617.0           309.0       0       0
 3003054          2588.4        200.0005            91.0       0       0
 3003055        2655.063        200.0005            91.0       0       0
 3003056        2721.736        200.0005            91.0       0       0
 3003057          2788.4        200.0005            91.0       0       0
 3003058        2855.063        200.0005            91.0       0       0
 3003059        2921.736        200.0005            91.0       0       0
 3003060          2988.4        200.0005            91.0       0       0
 3003061          2588.4       -199.9995            91.0       0       0
 3003062        2655.063        -199.999            91.0       0       0
 3003063        2721.736       -199.9995            91.0       0       0
 3003064          2788.4        -199.999            91.0       0       0
 3003065        2855.063        -199.999            91.0       0       0
 3003066        2921.736       -199.9995            91.0       0       0
 3003067          2988.4       -199.9995            91.0       0       0
 3003068          2588.4        150.0005            91.0       0       0
 3003069          2588.4        100.0005            91.0       0       0
 3003070          2588.4         50.0005            91.0       0       0
 3003071          2588.4    5.035400e-04            91.0       0       0
 3003072          2588.4        -49.9995            91.0       0       0
 3003073          2588.4        -99.9995            91.0       0       0
 3003074          2588.4       -149.9995            91.0       0       0
 3003075        2655.063        150.0006            91.0       0       0
 3003076        2655.063         100.001            91.0       0       0
 3003077        2655.063        50.00101            91.0       0       0
 3003078        2655.063       0.0010071            91.0       0       0
 3003079        2655.063       -49.99899            91.0       0       0
 3003080        2655.063       -99.99901            91.0       0       0
 3003081        2655.063        -149.999            91.0       0       0
 3003082        2721.736        150.0005            91.0       0       0
 3003083        2721.736        100.0005            91.0       0       0
 3003084        2721.736         50.0005            91.0       0       0
 3003085        2721.736    5.035400e-04            91.0       0       0
 3003086        2721.736        -49.9995            91.0       0       0
 3003087        2721.736        -99.9995            91.0       0       0
 3003088        2721.736       -149.9995            91.0       0       0
 3003089          2788.4        150.0006            91.0       0       0
 3003090          2788.4         100.001            91.0       0       0
 3003091          2788.4        50.00101            91.0       0       0
 3003092          2788.4             0.0            31.0       0       0
 3003093          2788.4       -49.99899            91.0       0       0
 3003094          2788.4       -99.99901            91.0       0       0
 3003095          2788.4        -149.999            91.0       0       0
 3003096        2855.063        150.0006            91.0       0       0
 3003097        2855.063         100.001            91.0       0       0
 3003098        2855.063        50.00101            91.0       0       0
 3003099        2855.063       0.0010071            91.0       0       0
 3003100        2855.063       -49.99899            91.0       0       0
 3003101        2855.063       -99.99901            91.0       0       0
 3003102        2855.063        -149.999            91.0       0       0
 3003103        2921.736        150.0005            91.0       0       0
 3003104        2921.736        100.0005            91.0       0       0
 3003105        2921.736         50.0005            91.0       0       0
 3003106        2921.736    5.035400e-04            91.0       0       0
 3003107        2921.736        -49.9995            91.0       0       0
 3003108        2921.736        -99.9995            91.0       0       0
 3003109        2921.736       -149.9995            91.0       0       0
 3003110          2988.4        150.0005            91.0       0       0
 3003111          2988.4        100.0005            91.0       0       0
 3003112          2988.4         50.0005            91.0       0       0
 3003113          2988.4             0.0            91.0       0       0
 3003114          2988.4        -49.9995            91.0       0       0
 3003115          2988.4        -99.9995            91.0       0       0
 3003116          2988.4       -149.9995            91.0       0       0
 3003117          2600.0             0.0            31.0       0       0
 3003118          2788.4         200.001            31.0       0       0
$
$
$
$
$
*END
