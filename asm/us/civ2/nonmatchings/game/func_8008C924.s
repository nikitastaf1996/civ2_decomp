.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008C924, 0x134

glabel func_8008C924
    /* 7D124 8008C924 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 7D128 8008C928 2800BFAF */  sw         $ra, 0x28($sp)
    /* 7D12C 8008C92C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 7D130 8008C930 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7D134 8008C934 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 7D138 8008C938 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7D13C 8008C93C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7D140 8008C940 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7D144 8008C944 40100400 */  sll        $v0, $a0, 1
    /* 7D148 8008C948 21104400 */  addu       $v0, $v0, $a0
    /* 7D14C 8008C94C 80100200 */  sll        $v0, $v0, 2
    /* 7D150 8008C950 23104400 */  subu       $v0, $v0, $a0
    /* 7D154 8008C954 C0100200 */  sll        $v0, $v0, 3
    /* 7D158 8008C958 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7D15C 8008C95C 21082200 */  addu       $at, $at, $v0
    /* 7D160 8008C960 D03E3584 */  lh         $s5, %lo(D_80113ED0)($at)
    /* 7D164 8008C964 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7D168 8008C968 21082200 */  addu       $at, $at, $v0
    /* 7D16C 8008C96C D23E3484 */  lh         $s4, %lo(D_80113ED2)($at)
    /* 7D170 8008C970 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7D174 8008C974 21082200 */  addu       $at, $at, $v0
    /* 7D178 8008C978 D83E3380 */  lb         $s3, %lo(D_80113ED8)($at)
    /* 7D17C 8008C97C 21900000 */  addu       $s2, $zero, $zero
  .L8008C980:
    /* 7D180 8008C980 2D00422A */  slti       $v0, $s2, 0x2D
    /* 7D184 8008C984 2A004010 */  beqz       $v0, .L8008CA30
    /* 7D188 8008C988 00000000 */   nop
    /* 7D18C 8008C98C 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* 7D190 8008C990 21083200 */  addu       $at, $at, $s2
    /* 7D194 8008C994 3CAC2480 */  lb         $a0, %lo(D_8011AC3C)($at)
    /* 7D198 8008C998 173B030C */  jal        func_800CEC5C
    /* 7D19C 8008C99C 2120A402 */   addu      $a0, $s5, $a0
    /* 7D1A0 8008C9A0 21884000 */  addu       $s1, $v0, $zero
    /* 7D1A4 8008C9A4 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* 7D1A8 8008C9A8 21083200 */  addu       $at, $at, $s2
    /* 7D1AC 8008C9AC 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* 7D1B0 8008C9B0 00000000 */  nop
    /* 7D1B4 8008C9B4 21808202 */  addu       $s0, $s4, $v0
    /* 7D1B8 8008C9B8 0D000006 */  bltz       $s0, .L8008C9F0
    /* 7D1BC 8008C9BC 21180000 */   addu      $v1, $zero, $zero
    /* 7D1C0 8008C9C0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 7D1C4 8008C9C4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 7D1C8 8008C9C8 00000000 */  nop
    /* 7D1CC 8008C9CC 2A100202 */  slt        $v0, $s0, $v0
    /* 7D1D0 8008C9D0 07004010 */  beqz       $v0, .L8008C9F0
    /* 7D1D4 8008C9D4 00000000 */   nop
    /* 7D1D8 8008C9D8 05002006 */  bltz       $s1, .L8008C9F0
    /* 7D1DC 8008C9DC 00000000 */   nop
    /* 7D1E0 8008C9E0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 7D1E4 8008C9E4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 7D1E8 8008C9E8 00000000 */  nop
    /* 7D1EC 8008C9EC 2A182202 */  slt        $v1, $s1, $v0
  .L8008C9F0:
    /* 7D1F0 8008C9F0 0D006010 */  beqz       $v1, .L8008CA28
    /* 7D1F4 8008C9F4 21202002 */   addu      $a0, $s1, $zero
    /* 7D1F8 8008C9F8 D161020C */  jal        func_80098744
    /* 7D1FC 8008C9FC 21280002 */   addu      $a1, $s0, $zero
    /* 7D200 8008CA00 21202002 */  addu       $a0, $s1, $zero
    /* 7D204 8008CA04 21280002 */  addu       $a1, $s0, $zero
    /* 7D208 8008CA08 DA61020C */  jal        func_80098768
    /* 7D20C 8008CA0C 07004630 */   andi      $a2, $v0, 0x7
    /* 7D210 8008CA10 1500422A */  slti       $v0, $s2, 0x15
    /* 7D214 8008CA14 04004010 */  beqz       $v0, .L8008CA28
    /* 7D218 8008CA18 21202002 */   addu      $a0, $s1, $zero
    /* 7D21C 8008CA1C 21280002 */  addu       $a1, $s0, $zero
    /* 7D220 8008CA20 5961020C */  jal        func_80098564
    /* 7D224 8008CA24 21306002 */   addu      $a2, $s3, $zero
  .L8008CA28:
    /* 7D228 8008CA28 60320208 */  j          .L8008C980
    /* 7D22C 8008CA2C 01005226 */   addiu     $s2, $s2, 0x1
  .L8008CA30:
    /* 7D230 8008CA30 2800BF8F */  lw         $ra, 0x28($sp)
    /* 7D234 8008CA34 2400B58F */  lw         $s5, 0x24($sp)
    /* 7D238 8008CA38 2000B48F */  lw         $s4, 0x20($sp)
    /* 7D23C 8008CA3C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7D240 8008CA40 1800B28F */  lw         $s2, 0x18($sp)
    /* 7D244 8008CA44 1400B18F */  lw         $s1, 0x14($sp)
    /* 7D248 8008CA48 1000B08F */  lw         $s0, 0x10($sp)
    /* 7D24C 8008CA4C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 7D250 8008CA50 0800E003 */  jr         $ra
    /* 7D254 8008CA54 00000000 */   nop
endlabel func_8008C924
