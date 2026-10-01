.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D110, 0x154

glabel func_8007D110
    /* 6D910 8007D110 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6D914 8007D114 2400BFAF */  sw         $ra, 0x24($sp)
    /* 6D918 8007D118 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6D91C 8007D11C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6D920 8007D120 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6D924 8007D124 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6D928 8007D128 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6D92C 8007D12C 21A08000 */  addu       $s4, $a0, $zero
    /* 6D930 8007D130 2198A000 */  addu       $s3, $a1, $zero
    /* 6D934 8007D134 2188C000 */  addu       $s1, $a2, $zero
    /* 6D938 8007D138 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6D93C 8007D13C 080382AF */  sw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6D940 8007D140 21800000 */  addu       $s0, $zero, $zero
    /* 6D944 8007D144 40101100 */  sll        $v0, $s1, 1
    /* 6D948 8007D148 21105100 */  addu       $v0, $v0, $s1
    /* 6D94C 8007D14C 80100200 */  sll        $v0, $v0, 2
    /* 6D950 8007D150 23105100 */  subu       $v0, $v0, $s1
    /* 6D954 8007D154 00110200 */  sll        $v0, $v0, 4
    /* 6D958 8007D158 23105100 */  subu       $v0, $v0, $s1
    /* 6D95C 8007D15C C0100200 */  sll        $v0, $v0, 3
    /* 6D960 8007D160 1180033C */  lui        $v1, %hi(D_801176B4)
    /* 6D964 8007D164 B4766324 */  addiu      $v1, $v1, %lo(D_801176B4)
    /* 6D968 8007D168 21904300 */  addu       $s2, $v0, $v1
  .L8007D16C:
    /* 6D96C 8007D16C 0803828F */  lw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6D970 8007D170 00000000 */  nop
    /* 6D974 8007D174 2E004104 */  bgez       $v0, .L8007D230
    /* 6D978 8007D178 0800022A */   slti      $v0, $s0, 0x8
    /* 6D97C 8007D17C 2C004010 */  beqz       $v0, .L8007D230
    /* 6D980 8007D180 00000000 */   nop
    /* 6D984 8007D184 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 6D988 8007D188 21083000 */  addu       $at, $at, $s0
    /* 6D98C 8007D18C 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 6D990 8007D190 173B030C */  jal        func_800CEC5C
    /* 6D994 8007D194 21208402 */   addu      $a0, $s4, $a0
    /* 6D998 8007D198 21204000 */  addu       $a0, $v0, $zero
    /* 6D99C 8007D19C 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 6D9A0 8007D1A0 21083000 */  addu       $at, $at, $s0
    /* 6D9A4 8007D1A4 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 6D9A8 8007D1A8 00000000 */  nop
    /* 6D9AC 8007D1AC 21286202 */  addu       $a1, $s3, $v0
    /* 6D9B0 8007D1B0 0D00A004 */  bltz       $a1, .L8007D1E8
    /* 6D9B4 8007D1B4 21180000 */   addu      $v1, $zero, $zero
    /* 6D9B8 8007D1B8 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6D9BC 8007D1BC 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6D9C0 8007D1C0 00000000 */  nop
    /* 6D9C4 8007D1C4 2A10A200 */  slt        $v0, $a1, $v0
    /* 6D9C8 8007D1C8 07004010 */  beqz       $v0, .L8007D1E8
    /* 6D9CC 8007D1CC 00000000 */   nop
    /* 6D9D0 8007D1D0 05008004 */  bltz       $a0, .L8007D1E8
    /* 6D9D4 8007D1D4 00000000 */   nop
    /* 6D9D8 8007D1D8 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6D9DC 8007D1DC 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6D9E0 8007D1E0 00000000 */  nop
    /* 6D9E4 8007D1E4 2A188200 */  slt        $v1, $a0, $v0
  .L8007D1E8:
    /* 6D9E8 8007D1E8 0F006010 */  beqz       $v1, .L8007D228
    /* 6D9EC 8007D1EC 00000000 */   nop
    /* 6D9F0 8007D1F0 3A62020C */  jal        func_800988E8
    /* 6D9F4 8007D1F4 00000000 */   nop
    /* 6D9F8 8007D1F8 21184000 */  addu       $v1, $v0, $zero
    /* 6D9FC 8007D1FC 0A006004 */  bltz       $v1, .L8007D228
    /* 6DA00 8007D200 00000000 */   nop
    /* 6DA04 8007D204 08007110 */  beq        $v1, $s1, .L8007D228
    /* 6DA08 8007D208 80100300 */   sll       $v0, $v1, 2
    /* 6DA0C 8007D20C 21105200 */  addu       $v0, $v0, $s2
    /* 6DA10 8007D210 0000428C */  lw         $v0, 0x0($v0)
    /* 6DA14 8007D214 00000000 */  nop
    /* 6DA18 8007D218 08004230 */  andi       $v0, $v0, 0x8
    /* 6DA1C 8007D21C 02004014 */  bnez       $v0, .L8007D228
    /* 6DA20 8007D220 00000000 */   nop
    /* 6DA24 8007D224 080383AF */  sw         $v1, %gp_rel(D_801587E0)($gp)
  .L8007D228:
    /* 6DA28 8007D228 5BF40108 */  j          .L8007D16C
    /* 6DA2C 8007D22C 01001026 */   addiu     $s0, $s0, 0x1
  .L8007D230:
    /* 6DA30 8007D230 0803828F */  lw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6DA34 8007D234 00000000 */  nop
    /* 6DA38 8007D238 27100200 */  nor        $v0, $zero, $v0
    /* 6DA3C 8007D23C C2170200 */  srl        $v0, $v0, 31
    /* 6DA40 8007D240 2400BF8F */  lw         $ra, 0x24($sp)
    /* 6DA44 8007D244 2000B48F */  lw         $s4, 0x20($sp)
    /* 6DA48 8007D248 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DA4C 8007D24C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DA50 8007D250 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DA54 8007D254 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DA58 8007D258 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6DA5C 8007D25C 0800E003 */  jr         $ra
    /* 6DA60 8007D260 00000000 */   nop
endlabel func_8007D110
