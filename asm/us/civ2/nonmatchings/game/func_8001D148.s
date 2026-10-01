.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D148, 0x1B8

glabel func_8001D148
    /* D948 8001D148 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D94C 8001D14C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* D950 8001D150 1800B2AF */  sw         $s2, 0x18($sp)
    /* D954 8001D154 1400B1AF */  sw         $s1, 0x14($sp)
    /* D958 8001D158 1000B0AF */  sw         $s0, 0x10($sp)
    /* D95C 8001D15C 1680123C */  lui        $s2, %hi(D_80158860)
    /* D960 8001D160 6088528E */  lw         $s2, %lo(D_80158860)($s2)
    /* D964 8001D164 1680023C */  lui        $v0, %hi(D_80158864)
    /* D968 8001D168 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D96C 8001D16C 00000000 */  nop
    /* D970 8001D170 08005180 */  lb         $s1, 0x8($v0)
    /* D974 8001D174 00000000 */  nop
    /* D978 8001D178 40101100 */  sll        $v0, $s1, 1
    /* D97C 8001D17C 21105100 */  addu       $v0, $v0, $s1
    /* D980 8001D180 80100200 */  sll        $v0, $v0, 2
    /* D984 8001D184 23105100 */  subu       $v0, $v0, $s1
    /* D988 8001D188 00110200 */  sll        $v0, $v0, 4
    /* D98C 8001D18C 23105100 */  subu       $v0, $v0, $s1
    /* D990 8001D190 C0100200 */  sll        $v0, $v0, 3
    /* D994 8001D194 1180013C */  lui        $at, %hi(D_8011769C)
    /* D998 8001D198 21082200 */  addu       $at, $at, $v0
    /* D99C 8001D19C 9C762384 */  lh         $v1, %lo(D_8011769C)($at)
    /* D9A0 8001D1A0 00000000 */  nop
    /* D9A4 8001D1A4 19006004 */  bltz       $v1, .L8001D20C
    /* D9A8 8001D1A8 00000000 */   nop
    /* D9AC 8001D1AC 1280043C */  lui        $a0, %hi(D_8011A275)
    /* D9B0 8001D1B0 75A28424 */  addiu      $a0, $a0, %lo(D_8011A275)
    /* D9B4 8001D1B4 00008290 */  lbu        $v0, 0x0($a0)
    /* D9B8 8001D1B8 00000000 */  nop
    /* D9BC 8001D1BC 07102202 */  srav       $v0, $v0, $s1
    /* D9C0 8001D1C0 01004230 */  andi       $v0, $v0, 0x1
    /* D9C4 8001D1C4 18004010 */  beqz       $v0, .L8001D228
    /* D9C8 8001D1C8 00000000 */   nop
    /* D9CC 8001D1CC FDFF8290 */  lbu        $v0, -0x3($a0)
    /* D9D0 8001D1D0 00000000 */  nop
    /* D9D4 8001D1D4 0D004014 */  bnez       $v0, .L8001D20C
    /* D9D8 8001D1D8 59000224 */   addiu     $v0, $zero, 0x59
    /* D9DC 8001D1DC 0B006210 */  beq        $v1, $v0, .L8001D20C
    /* D9E0 8001D1E0 00000000 */   nop
    /* D9E4 8001D1E4 1280013C */  lui        $at, %hi(D_8011A288)
    /* D9E8 8001D1E8 21082300 */  addu       $at, $at, $v1
    /* D9EC 8001D1EC 88A22280 */  lb         $v0, %lo(D_8011A288)($at)
    /* D9F0 8001D1F0 00000000 */  nop
    /* D9F4 8001D1F4 05004010 */  beqz       $v0, .L8001D20C
    /* D9F8 8001D1F8 00000000 */   nop
    /* D9FC 8001D1FC 7C00828F */  lw         $v0, %gp_rel(D_80158554)($gp)
    /* DA00 8001D200 00000000 */  nop
    /* DA04 8001D204 40100200 */  sll        $v0, $v0, 1
    /* DA08 8001D208 7C0082AF */  sw         $v0, %gp_rel(D_80158554)($gp)
  .L8001D20C:
    /* DA0C 8001D20C 1280023C */  lui        $v0, %hi(D_8011A275)
    /* DA10 8001D210 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* DA14 8001D214 00000000 */  nop
    /* DA18 8001D218 07102202 */  srav       $v0, $v0, $s1
    /* DA1C 8001D21C 01004230 */  andi       $v0, $v0, 0x1
    /* DA20 8001D220 1F004014 */  bnez       $v0, .L8001D2A0
    /* DA24 8001D224 40101100 */   sll       $v0, $s1, 1
  .L8001D228:
    /* DA28 8001D228 1280023C */  lui        $v0, %hi(D_8011A272)
    /* DA2C 8001D22C 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* DA30 8001D230 00000000 */  nop
    /* DA34 8001D234 0200422C */  sltiu      $v0, $v0, 0x2
    /* DA38 8001D238 19004014 */  bnez       $v0, .L8001D2A0
    /* DA3C 8001D23C 40101100 */   sll       $v0, $s1, 1
    /* DA40 8001D240 292B030C */  jal        func_800CACA4
    /* DA44 8001D244 21202002 */   addu      $a0, $s1, $zero
    /* DA48 8001D248 15004010 */  beqz       $v0, .L8001D2A0
    /* DA4C 8001D24C 40101100 */   sll       $v0, $s1, 1
    /* DA50 8001D250 23001024 */  addiu      $s0, $zero, 0x23
    /* DA54 8001D254 C0101000 */  sll        $v0, $s0, 3
  .L8001D258:
    /* DA58 8001D258 1180013C */  lui        $at, %hi(D_8010D06A)
    /* DA5C 8001D25C 21082200 */  addu       $at, $at, $v0
    /* DA60 8001D260 6AD02580 */  lb         $a1, %lo(D_8010D06A)($at)
    /* DA64 8001D264 8ACA010C */  jal        func_80072A28
    /* DA68 8001D268 21202002 */   addu      $a0, $s1, $zero
    /* DA6C 8001D26C 07004014 */  bnez       $v0, .L8001D28C
    /* DA70 8001D270 00000000 */   nop
    /* DA74 8001D274 7C00828F */  lw         $v0, %gp_rel(D_80158554)($gp)
    /* DA78 8001D278 00000000 */  nop
    /* DA7C 8001D27C 40100200 */  sll        $v0, $v0, 1
    /* DA80 8001D280 7C0082AF */  sw         $v0, %gp_rel(D_80158554)($gp)
    /* DA84 8001D284 A8740008 */  j          .L8001D2A0
    /* DA88 8001D288 40101100 */   sll       $v0, $s1, 1
  .L8001D28C:
    /* DA8C 8001D28C 01001026 */  addiu      $s0, $s0, 0x1
    /* DA90 8001D290 2600022A */  slti       $v0, $s0, 0x26
    /* DA94 8001D294 F0FF4014 */  bnez       $v0, .L8001D258
    /* DA98 8001D298 C0101000 */   sll       $v0, $s0, 3
    /* DA9C 8001D29C 40101100 */  sll        $v0, $s1, 1
  .L8001D2A0:
    /* DAA0 8001D2A0 21105100 */  addu       $v0, $v0, $s1
    /* DAA4 8001D2A4 80100200 */  sll        $v0, $v0, 2
    /* DAA8 8001D2A8 23105100 */  subu       $v0, $v0, $s1
    /* DAAC 8001D2AC 00110200 */  sll        $v0, $v0, 4
    /* DAB0 8001D2B0 23105100 */  subu       $v0, $v0, $s1
    /* DAB4 8001D2B4 C0100200 */  sll        $v0, $v0, 3
    /* DAB8 8001D2B8 1180013C */  lui        $at, %hi(D_801176A7)
    /* DABC 8001D2BC 21082200 */  addu       $at, $at, $v0
    /* DAC0 8001D2C0 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* DAC4 8001D2C4 00000000 */  nop
    /* DAC8 8001D2C8 04004010 */  beqz       $v0, .L8001D2DC
    /* DACC 8001D2CC 00000000 */   nop
    /* DAD0 8001D2D0 7C00858F */  lw         $a1, %gp_rel(D_80158554)($gp)
    /* DAD4 8001D2D4 4FDE010C */  jal        func_8007793C
    /* DAD8 8001D2D8 21202002 */   addu      $a0, $s1, $zero
  .L8001D2DC:
    /* DADC 8001D2DC 0C25020C */  jal        func_80089430
    /* DAE0 8001D2E0 21204002 */   addu      $a0, $s2, $zero
    /* DAE4 8001D2E4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* DAE8 8001D2E8 1800B28F */  lw         $s2, 0x18($sp)
    /* DAEC 8001D2EC 1400B18F */  lw         $s1, 0x14($sp)
    /* DAF0 8001D2F0 1000B08F */  lw         $s0, 0x10($sp)
    /* DAF4 8001D2F4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* DAF8 8001D2F8 0800E003 */  jr         $ra
    /* DAFC 8001D2FC 00000000 */   nop
endlabel func_8001D148
