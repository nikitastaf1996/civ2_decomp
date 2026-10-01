.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B92C8, 0x88

glabel func_800B92C8
    /* A9AC8 800B92C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9ACC 800B92CC 21188000 */  addu       $v1, $a0, $zero
    /* A9AD0 800B92D0 2120C000 */  addu       $a0, $a2, $zero
    /* A9AD4 800B92D4 13008010 */  beqz       $a0, .L800B9324
    /* A9AD8 800B92D8 1800BFAF */   sw        $ra, 0x18($sp)
    /* A9ADC 800B92DC 040B828F */  lw         $v0, %gp_rel(D_80158FDC)($gp)
    /* A9AE0 800B92E0 00000000 */  nop
    /* A9AE4 800B92E4 0A004014 */  bnez       $v0, .L800B9310
    /* A9AE8 800B92E8 40010224 */   addiu     $v0, $zero, 0x140
    /* A9AEC 800B92EC 1400A2A7 */  sh         $v0, 0x14($sp)
    /* A9AF0 800B92F0 1800A224 */  addiu      $v0, $a1, 0x18
    /* A9AF4 800B92F4 1200A5A7 */  sh         $a1, 0x12($sp)
    /* A9AF8 800B92F8 1000A527 */  addiu      $a1, $sp, 0x10
    /* A9AFC 800B92FC 10000624 */  addiu      $a2, $zero, 0x10
    /* A9B00 800B9300 1000A3A7 */  sh         $v1, 0x10($sp)
    /* A9B04 800B9304 DC0F040C */  jal        func_80103F70
    /* A9B08 800B9308 1600A2A7 */   sh        $v0, 0x16($sp)
    /* A9B0C 800B930C 040B82AF */  sw         $v0, %gp_rel(D_80158FDC)($gp)
  .L800B9310:
    /* A9B10 800B9310 040B848F */  lw         $a0, %gp_rel(D_80158FDC)($gp)
    /* A9B14 800B9314 7D11040C */  jal        func_801045F4
    /* A9B18 800B9318 00000000 */   nop
    /* A9B1C 800B931C D0E40208 */  j          .L800B9340
    /* A9B20 800B9320 00000000 */   nop
  .L800B9324:
    /* A9B24 800B9324 040B848F */  lw         $a0, %gp_rel(D_80158FDC)($gp)
    /* A9B28 800B9328 00000000 */  nop
    /* A9B2C 800B932C 04008010 */  beqz       $a0, .L800B9340
    /* A9B30 800B9330 00000000 */   nop
    /* A9B34 800B9334 E511040C */  jal        func_80104794
    /* A9B38 800B9338 00000000 */   nop
    /* A9B3C 800B933C 040B80AF */  sw         $zero, %gp_rel(D_80158FDC)($gp)
  .L800B9340:
    /* A9B40 800B9340 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9B44 800B9344 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A9B48 800B9348 0800E003 */  jr         $ra
    /* A9B4C 800B934C 00000000 */   nop
endlabel func_800B92C8
