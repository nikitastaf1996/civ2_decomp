.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006F828, 0x410

glabel func_8006F828
    /* 60028 8006F828 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 6002C 8006F82C 9000BFAF */  sw         $ra, 0x90($sp)
    /* 60030 8006F830 8C00B7AF */  sw         $s7, 0x8C($sp)
    /* 60034 8006F834 8800B6AF */  sw         $s6, 0x88($sp)
    /* 60038 8006F838 8400B5AF */  sw         $s5, 0x84($sp)
    /* 6003C 8006F83C 8000B4AF */  sw         $s4, 0x80($sp)
    /* 60040 8006F840 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 60044 8006F844 7800B2AF */  sw         $s2, 0x78($sp)
    /* 60048 8006F848 7400B1AF */  sw         $s1, 0x74($sp)
    /* 6004C 8006F84C 7000B0AF */  sw         $s0, 0x70($sp)
    /* 60050 8006F850 21B08000 */  addu       $s6, $a0, $zero
    /* 60054 8006F854 0200C22E */  sltiu      $v0, $s6, 0x2
    /* 60058 8006F858 18004010 */  beqz       $v0, .L8006F8BC
    /* 6005C 8006F85C 21A8A000 */   addu      $s5, $a1, $zero
    /* 60060 8006F860 8E12040C */  jal        func_80104A38
    /* 60064 8006F864 00991600 */   sll       $s3, $s6, 4
    /* 60068 8006F868 1000A427 */  addiu      $a0, $sp, 0x10
    /* 6006C 8006F86C 1680053C */  lui        $a1, %hi(D_801586EC)
    /* 60070 8006F870 EC86A524 */  addiu      $a1, $a1, %lo(D_801586EC)
    /* 60074 8006F874 E187030C */  jal        sprintf
    /* 60078 8006F878 2130C002 */   addu      $a2, $s6, $zero
    /* 6007C 8006F87C 21880000 */  addu       $s1, $zero, $zero
    /* 60080 8006F880 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8006F884:
    /* 60084 8006F884 1308040C */  jal        func_8010204C
    /* 60088 8006F888 0F00103C */   lui       $s0, (0xF3E58 >> 16)
    /* 6008C 8006F88C 4583030C */  jal        func_800E0D14
    /* 60090 8006F890 21206002 */   addu      $a0, $s3, $zero
    /* 60094 8006F894 583E1036 */  ori        $s0, $s0, (0xF3E58 & 0xFFFF)
  .L8006F898:
    /* 60098 8006F898 3108040C */  jal        func_801020C4
    /* 6009C 8006F89C 00000000 */   nop
    /* 600A0 8006F8A0 21204000 */  addu       $a0, $v0, $zero
    /* 600A4 8006F8A4 00140400 */  sll        $v0, $a0, 16
    /* 600A8 8006F8A8 03140200 */  sra        $v0, $v0, 16
    /* 600AC 8006F8AC 05005214 */  bne        $v0, $s2, .L8006F8C4
    /* 600B0 8006F8B0 21100002 */   addu      $v0, $s0, $zero
    /* 600B4 8006F8B4 F8FF401C */  bgtz       $v0, .L8006F898
    /* 600B8 8006F8B8 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L8006F8BC:
    /* 600BC 8006F8BC 02BF0108 */  j          .L8006FC08
    /* 600C0 8006F8C0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8006F8C4:
    /* 600C4 8006F8C4 00140400 */  sll        $v0, $a0, 16
    /* 600C8 8006F8C8 03140200 */  sra        $v0, $v0, 16
    /* 600CC 8006F8CC 01004338 */  xori       $v1, $v0, 0x1
    /* 600D0 8006F8D0 2B180300 */  sltu       $v1, $zero, $v1
    /* 600D4 8006F8D4 02004238 */  xori       $v0, $v0, 0x2
    /* 600D8 8006F8D8 2B100200 */  sltu       $v0, $zero, $v0
    /* 600DC 8006F8DC 25186200 */  or         $v1, $v1, $v0
    /* 600E0 8006F8E0 05006014 */  bnez       $v1, .L8006F8F8
    /* 600E4 8006F8E4 FFFF8224 */   addiu     $v0, $a0, -0x1
    /* 600E8 8006F8E8 01003126 */  addiu      $s1, $s1, 0x1
    /* 600EC 8006F8EC 1400222A */  slti       $v0, $s1, 0x14
    /* 600F0 8006F8F0 E4FF4014 */  bnez       $v0, .L8006F884
    /* 600F4 8006F8F4 FFFF8224 */   addiu     $v0, $a0, -0x1
  .L8006F8F8:
    /* 600F8 8006F8F8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 600FC 8006F8FC 0200422C */  sltiu      $v0, $v0, 0x2
    /* 60100 8006F900 C1004014 */  bnez       $v0, .L8006FC08
    /* 60104 8006F904 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 60108 8006F908 00140400 */  sll        $v0, $a0, 16
    /* 6010C 8006F90C 03140200 */  sra        $v0, $v0, 16
    /* 60110 8006F910 03000324 */  addiu      $v1, $zero, 0x3
    /* 60114 8006F914 1D004314 */  bne        $v0, $v1, .L8006F98C
    /* 60118 8006F918 80101600 */   sll       $v0, $s6, 2
    /* 6011C 8006F91C 21880000 */  addu       $s1, $zero, $zero
    /* 60120 8006F920 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8006F924:
    /* 60124 8006F924 1308040C */  jal        func_8010204C
    /* 60128 8006F928 0F00103C */   lui       $s0, (0xF3E58 >> 16)
    /* 6012C 8006F92C 4D83030C */  jal        _card_clear
    /* 60130 8006F930 21206002 */   addu      $a0, $s3, $zero
    /* 60134 8006F934 583E1036 */  ori        $s0, $s0, (0xF3E58 & 0xFFFF)
  .L8006F938:
    /* 60138 8006F938 6608040C */  jal        func_80102198
    /* 6013C 8006F93C 00000000 */   nop
    /* 60140 8006F940 21204000 */  addu       $a0, $v0, $zero
    /* 60144 8006F944 00140400 */  sll        $v0, $a0, 16
    /* 60148 8006F948 03140200 */  sra        $v0, $v0, 16
    /* 6014C 8006F94C 05005214 */  bne        $v0, $s2, .L8006F964
    /* 60150 8006F950 21100002 */   addu      $v0, $s0, $zero
    /* 60154 8006F954 F8FF401C */  bgtz       $v0, .L8006F938
    /* 60158 8006F958 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 6015C 8006F95C 02BF0108 */  j          .L8006FC08
    /* 60160 8006F960 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8006F964:
    /* 60164 8006F964 00140400 */  sll        $v0, $a0, 16
    /* 60168 8006F968 08004010 */  beqz       $v0, .L8006F98C
    /* 6016C 8006F96C 80101600 */   sll       $v0, $s6, 2
    /* 60170 8006F970 01003126 */  addiu      $s1, $s1, 0x1
    /* 60174 8006F974 1400222A */  slti       $v0, $s1, 0x14
    /* 60178 8006F978 EAFF4014 */  bnez       $v0, .L8006F924
    /* 6017C 8006F97C 00140400 */   sll       $v0, $a0, 16
    /* 60180 8006F980 A1004014 */  bnez       $v0, .L8006FC08
    /* 60184 8006F984 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 60188 8006F988 80101600 */  sll        $v0, $s6, 2
  .L8006F98C:
    /* 6018C 8006F98C 1680013C */  lui        $at, %hi(D_80158740)
    /* 60190 8006F990 21082200 */  addu       $at, $at, $v0
    /* 60194 8006F994 4087238C */  lw         $v1, %lo(D_80158740)($at)
    /* 60198 8006F998 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6019C 8006F99C 9A006214 */  bne        $v1, $v0, .L8006FC08
    /* 601A0 8006F9A0 21106000 */   addu      $v0, $v1, $zero
    /* 601A4 8006F9A4 21880000 */  addu       $s1, $zero, $zero
    /* 601A8 8006F9A8 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8006F9AC:
    /* 601AC 8006F9AC 1308040C */  jal        func_8010204C
    /* 601B0 8006F9B0 0F00103C */   lui       $s0, (0xF3E58 >> 16)
    /* 601B4 8006F9B4 4983030C */  jal        func_800E0D24
    /* 601B8 8006F9B8 21206002 */   addu      $a0, $s3, $zero
    /* 601BC 8006F9BC 583E1036 */  ori        $s0, $s0, (0xF3E58 & 0xFFFF)
  .L8006F9C0:
    /* 601C0 8006F9C0 3108040C */  jal        func_801020C4
    /* 601C4 8006F9C4 00000000 */   nop
    /* 601C8 8006F9C8 21204000 */  addu       $a0, $v0, $zero
    /* 601CC 8006F9CC 00140400 */  sll        $v0, $a0, 16
    /* 601D0 8006F9D0 03140200 */  sra        $v0, $v0, 16
    /* 601D4 8006F9D4 05005214 */  bne        $v0, $s2, .L8006F9EC
    /* 601D8 8006F9D8 21100002 */   addu      $v0, $s0, $zero
    /* 601DC 8006F9DC F8FF401C */  bgtz       $v0, .L8006F9C0
    /* 601E0 8006F9E0 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 601E4 8006F9E4 02BF0108 */  j          .L8006FC08
    /* 601E8 8006F9E8 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8006F9EC:
    /* 601EC 8006F9EC FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 601F0 8006F9F0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 601F4 8006F9F4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 601F8 8006F9F8 0A004010 */  beqz       $v0, .L8006FA24
    /* 601FC 8006F9FC 00140400 */   sll       $v0, $a0, 16
    /* 60200 8006FA00 01003126 */  addiu      $s1, $s1, 0x1
    /* 60204 8006FA04 1400222A */  slti       $v0, $s1, 0x14
    /* 60208 8006FA08 E8FF4014 */  bnez       $v0, .L8006F9AC
    /* 6020C 8006FA0C FFFF8224 */   addiu     $v0, $a0, -0x1
    /* 60210 8006FA10 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 60214 8006FA14 0200422C */  sltiu      $v0, $v0, 0x2
    /* 60218 8006FA18 7B004014 */  bnez       $v0, .L8006FC08
    /* 6021C 8006FA1C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 60220 8006FA20 00140400 */  sll        $v0, $a0, 16
  .L8006FA24:
    /* 60224 8006FA24 03140200 */  sra        $v0, $v0, 16
    /* 60228 8006FA28 03000324 */  addiu      $v1, $zero, 0x3
    /* 6022C 8006FA2C 03004314 */  bne        $v0, $v1, .L8006FA3C
    /* 60230 8006FA30 0200A22A */   slti      $v0, $s5, 0x2
    /* 60234 8006FA34 02BF0108 */  j          .L8006FC08
    /* 60238 8006FA38 FDFF0224 */   addiu     $v0, $zero, -0x3
  .L8006FA3C:
    /* 6023C 8006FA3C 40004010 */  beqz       $v0, .L8006FB40
    /* 60240 8006FA40 21880000 */   addu      $s1, $zero, $zero
    /* 60244 8006FA44 80101600 */  sll        $v0, $s6, 2
    /* 60248 8006FA48 21105600 */  addu       $v0, $v0, $s6
    /* 6024C 8006FA4C 00110200 */  sll        $v0, $v0, 4
    /* 60250 8006FA50 21985600 */  addu       $s3, $v0, $s6
    /* 60254 8006FA54 1180173C */  lui        $s7, %hi(D_8010BE00)
    /* 60258 8006FA58 00BEF726 */  addiu      $s7, $s7, %lo(D_8010BE00)
    /* 6025C 8006FA5C FFFF1424 */  addiu      $s4, $zero, -0x1
  .L8006FA60:
    /* 60260 8006FA60 1400222A */  slti       $v0, $s1, 0x14
    /* 60264 8006FA64 44004010 */  beqz       $v0, .L8006FB78
    /* 60268 8006FA68 21207702 */   addu      $a0, $s3, $s7
    /* 6026C 8006FA6C 858A030C */  jal        firstfile
    /* 60270 8006FA70 4800A527 */   addiu     $a1, $sp, 0x48
    /* 60274 8006FA74 FAFF4010 */  beqz       $v0, .L8006FA60
    /* 60278 8006FA78 01003126 */   addiu     $s1, $s1, 0x1
    /* 6027C 8006FA7C FED4030C */  jal        func_800F53F8
    /* 60280 8006FA80 80000424 */   addiu     $a0, $zero, 0x80
    /* 60284 8006FA84 21A84000 */  addu       $s5, $v0, $zero
    /* 60288 8006FA88 7CD6030C */  jal        func_800F59F0
    /* 6028C 8006FA8C 2120A002 */   addu      $a0, $s5, $zero
    /* 60290 8006FA90 21904000 */  addu       $s2, $v0, $zero
    /* 60294 8006FA94 21880000 */  addu       $s1, $zero, $zero
    /* 60298 8006FA98 21207702 */  addu       $a0, $s3, $s7
  .L8006FA9C:
    /* 6029C 8006FA9C 5D8A030C */  jal        func_800E2974
    /* 602A0 8006FAA0 01000524 */   addiu     $a1, $zero, 0x1
    /* 602A4 8006FAA4 21804000 */  addu       $s0, $v0, $zero
    /* 602A8 8006FAA8 06001416 */  bne        $s0, $s4, .L8006FAC4
    /* 602AC 8006FAAC 01003126 */   addiu     $s1, $s1, 0x1
    /* 602B0 8006FAB0 1400222A */  slti       $v0, $s1, 0x14
    /* 602B4 8006FAB4 F9FF4014 */  bnez       $v0, .L8006FA9C
    /* 602B8 8006FAB8 21207702 */   addu      $a0, $s3, $s7
    /* 602BC 8006FABC 52001412 */  beq        $s0, $s4, .L8006FC08
    /* 602C0 8006FAC0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8006FAC4:
    /* 602C4 8006FAC4 21200002 */  addu       $a0, $s0, $zero
    /* 602C8 8006FAC8 00020524 */  addiu      $a1, $zero, 0x200
    /* 602CC 8006FACC 618A030C */  jal        func_800E2984
    /* 602D0 8006FAD0 21300000 */   addu      $a2, $zero, $zero
    /* 602D4 8006FAD4 21880000 */  addu       $s1, $zero, $zero
  .L8006FAD8:
    /* 602D8 8006FAD8 21200002 */  addu       $a0, $s0, $zero
    /* 602DC 8006FADC 21284002 */  addu       $a1, $s2, $zero
    /* 602E0 8006FAE0 658A030C */  jal        func_800E2994
    /* 602E4 8006FAE4 80000624 */   addiu     $a2, $zero, 0x80
    /* 602E8 8006FAE8 05005414 */  bne        $v0, $s4, .L8006FB00
    /* 602EC 8006FAEC 00000000 */   nop
    /* 602F0 8006FAF0 01003126 */  addiu      $s1, $s1, 0x1
    /* 602F4 8006FAF4 1400222A */  slti       $v0, $s1, 0x14
    /* 602F8 8006FAF8 F7FF4014 */  bnez       $v0, .L8006FAD8
    /* 602FC 8006FAFC 00000000 */   nop
  .L8006FB00:
    /* 60300 8006FB00 6D8A030C */  jal        func_800E29B4
    /* 60304 8006FB04 21200002 */   addu      $a0, $s0, $zero
    /* 60308 8006FB08 80111600 */  sll        $v0, $s6, 6
    /* 6030C 8006FB0C 1180053C */  lui        $a1, %hi(D_8010BEB0)
    /* 60310 8006FB10 B0BEA524 */  addiu      $a1, $a1, %lo(D_8010BEB0)
    /* 60314 8006FB14 21204002 */  addu       $a0, $s2, $zero
    /* 60318 8006FB18 21284500 */  addu       $a1, $v0, $a1
    /* 6031C 8006FB1C C187030C */  jal        func_800E1F04
    /* 60320 8006FB20 40000624 */   addiu     $a2, $zero, 0x40
    /* 60324 8006FB24 C6D5030C */  jal        func_800F5718
    /* 60328 8006FB28 2120A002 */   addu      $a0, $s5, $zero
    /* 6032C 8006FB2C 1400232A */  slti       $v1, $s1, 0x14
    /* 60330 8006FB30 35006010 */  beqz       $v1, .L8006FC08
    /* 60334 8006FB34 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8006FB38:
    /* 60338 8006FB38 02BF0108 */  j          .L8006FC08
    /* 6033C 8006FB3C 01000224 */   addiu     $v0, $zero, 0x1
  .L8006FB40:
    /* 60340 8006FB40 80101600 */  sll        $v0, $s6, 2
    /* 60344 8006FB44 21105600 */  addu       $v0, $v0, $s6
    /* 60348 8006FB48 00110200 */  sll        $v0, $v0, 4
    /* 6034C 8006FB4C 21805600 */  addu       $s0, $v0, $s6
    /* 60350 8006FB50 1180123C */  lui        $s2, %hi(D_8010BE36)
    /* 60354 8006FB54 36BE5226 */  addiu      $s2, $s2, %lo(D_8010BE36)
    /* 60358 8006FB58 21201202 */  addu       $a0, $s0, $s2
  .L8006FB5C:
    /* 6035C 8006FB5C 858A030C */  jal        firstfile
    /* 60360 8006FB60 4800A527 */   addiu     $a1, $sp, 0x48
    /* 60364 8006FB64 F4FF4014 */  bnez       $v0, .L8006FB38
    /* 60368 8006FB68 01003126 */   addiu     $s1, $s1, 0x1
    /* 6036C 8006FB6C 1400222A */  slti       $v0, $s1, 0x14
    /* 60370 8006FB70 FAFF4014 */  bnez       $v0, .L8006FB5C
    /* 60374 8006FB74 21201202 */   addu      $a0, $s0, $s2
  .L8006FB78:
    /* 60378 8006FB78 0100A32E */  sltiu      $v1, $s5, 0x1
    /* 6037C 8006FB7C 0200A23A */  xori       $v0, $s5, 0x2
    /* 60380 8006FB80 0100422C */  sltiu      $v0, $v0, 0x1
    /* 60384 8006FB84 25186200 */  or         $v1, $v1, $v0
    /* 60388 8006FB88 1F006014 */  bnez       $v1, .L8006FC08
    /* 6038C 8006FB8C 21100000 */   addu      $v0, $zero, $zero
    /* 60390 8006FB90 1000A427 */  addiu      $a0, $sp, 0x10
    /* 60394 8006FB94 1680053C */  lui        $a1, %hi(D_801586FC)
    /* 60398 8006FB98 FC86A524 */  addiu      $a1, $a1, %lo(D_801586FC)
    /* 6039C 8006FB9C E187030C */  jal        sprintf
    /* 603A0 8006FBA0 2130C002 */   addu      $a2, $s6, $zero
    /* 603A4 8006FBA4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 603A8 8006FBA8 858A030C */  jal        firstfile
    /* 603AC 8006FBAC 4800A527 */   addiu     $a1, $sp, 0x48
    /* 603B0 8006FBB0 14004010 */  beqz       $v0, .L8006FC04
    /* 603B4 8006FBB4 0100103C */   lui       $s0, (0x1E000 >> 16)
    /* 603B8 8006FBB8 00E01036 */  ori        $s0, $s0, (0x1E000 & 0xFFFF)
  .L8006FBBC:
    /* 603BC 8006FBBC 6000A28F */  lw         $v0, 0x60($sp)
    /* 603C0 8006FBC0 00000000 */  nop
    /* 603C4 8006FBC4 23800202 */  subu       $s0, $s0, $v0
    /* 603C8 8006FBC8 758A030C */  jal        func_800E29D4
    /* 603CC 8006FBCC 4800A427 */   addiu     $a0, $sp, 0x48
    /* 603D0 8006FBD0 FAFF4014 */  bnez       $v0, .L8006FBBC
    /* 603D4 8006FBD4 01000224 */   addiu     $v0, $zero, 0x1
    /* 603D8 8006FBD8 0800A216 */  bne        $s5, $v0, .L8006FBFC
    /* 603DC 8006FBDC 0020022A */   slti      $v0, $s0, 0x2000
    /* 603E0 8006FBE0 0100023C */  lui        $v0, (0x13FFF >> 16)
    /* 603E4 8006FBE4 FF3F4234 */  ori        $v0, $v0, (0x13FFF & 0xFFFF)
    /* 603E8 8006FBE8 2A105000 */  slt        $v0, $v0, $s0
    /* 603EC 8006FBEC 06004014 */  bnez       $v0, .L8006FC08
    /* 603F0 8006FBF0 21100000 */   addu      $v0, $zero, $zero
    /* 603F4 8006FBF4 02BF0108 */  j          .L8006FC08
    /* 603F8 8006FBF8 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L8006FBFC:
    /* 603FC 8006FBFC 02004014 */  bnez       $v0, .L8006FC08
    /* 60400 8006FC00 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L8006FC04:
    /* 60404 8006FC04 21100000 */  addu       $v0, $zero, $zero
  .L8006FC08:
    /* 60408 8006FC08 9000BF8F */  lw         $ra, 0x90($sp)
    /* 6040C 8006FC0C 8C00B78F */  lw         $s7, 0x8C($sp)
    /* 60410 8006FC10 8800B68F */  lw         $s6, 0x88($sp)
    /* 60414 8006FC14 8400B58F */  lw         $s5, 0x84($sp)
    /* 60418 8006FC18 8000B48F */  lw         $s4, 0x80($sp)
    /* 6041C 8006FC1C 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 60420 8006FC20 7800B28F */  lw         $s2, 0x78($sp)
    /* 60424 8006FC24 7400B18F */  lw         $s1, 0x74($sp)
    /* 60428 8006FC28 7000B08F */  lw         $s0, 0x70($sp)
    /* 6042C 8006FC2C 9800BD27 */  addiu      $sp, $sp, 0x98
    /* 60430 8006FC30 0800E003 */  jr         $ra
    /* 60434 8006FC34 00000000 */   nop
endlabel func_8006F828
