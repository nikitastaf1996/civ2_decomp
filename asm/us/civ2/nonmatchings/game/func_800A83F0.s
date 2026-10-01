.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A83F0, 0x170

glabel func_800A83F0
    /* 98BF0 800A83F0 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 98BF4 800A83F4 B800BFAF */  sw         $ra, 0xB8($sp)
    /* 98BF8 800A83F8 B400B1AF */  sw         $s1, 0xB4($sp)
    /* 98BFC 800A83FC B000B0AF */  sw         $s0, 0xB0($sp)
    /* 98C00 800A8400 21108000 */  addu       $v0, $a0, $zero
    /* 98C04 800A8404 2188A000 */  addu       $s1, $a1, $zero
    /* 98C08 800A8408 32004010 */  beqz       $v0, .L800A84D4
    /* 98C0C 800A840C 01001024 */   addiu     $s0, $zero, 0x1
    /* 98C10 800A8410 1000A427 */  addiu      $a0, $sp, 0x10
    /* 98C14 800A8414 A587030C */  jal        func_800E1E94
    /* 98C18 800A8418 21284000 */   addu      $a1, $v0, $zero
    /* 98C1C 800A841C 1680053C */  lui        $a1, %hi(D_80158D34)
    /* 98C20 800A8420 348DA524 */  addiu      $a1, $a1, %lo(D_80158D34)
    /* 98C24 800A8424 B651020C */  jal        func_800946D8
    /* 98C28 800A8428 1000A427 */   addiu     $a0, $sp, 0x10
    /* 98C2C 800A842C 1280053C */  lui        $a1, %hi(D_8011F9E8)
    /* 98C30 800A8430 E8F9A524 */  addiu      $a1, $a1, %lo(D_8011F9E8)
    /* 98C34 800A8434 9D87030C */  jal        func_800E1E74
    /* 98C38 800A8438 1000A427 */   addiu     $a0, $sp, 0x10
    /* 98C3C 800A843C 0D004014 */  bnez       $v0, .L800A8474
    /* 98C40 800A8440 00000000 */   nop
    /* 98C44 800A8444 E9A0020C */  jal        func_800A83A4
    /* 98C48 800A8448 00000000 */   nop
    /* 98C4C 800A844C 1280013C */  lui        $at, %hi(D_8011FA48)
    /* 98C50 800A8450 48FA20A0 */  sb         $zero, %lo(D_8011FA48)($at)
    /* 98C54 800A8454 1280023C */  lui        $v0, %hi(D_8011FADC)
    /* 98C58 800A8458 DCFA4224 */  addiu      $v0, $v0, %lo(D_8011FADC)
    /* 98C5C 800A845C 000040AC */  sw         $zero, 0x0($v0)
    /* 98C60 800A8460 040040AC */  sw         $zero, 0x4($v0)
    /* 98C64 800A8464 BCFF4224 */  addiu      $v0, $v0, -0x44
    /* 98C68 800A8468 580882AF */  sw         $v0, %gp_rel(D_80158D30)($gp)
    /* 98C6C 800A846C 35A10208 */  j          .L800A84D4
    /* 98C70 800A8470 00000000 */   nop
  .L800A8474:
    /* 98C74 800A8474 1280053C */  lui        $a1, %hi(D_8011FA48)
    /* 98C78 800A8478 48FAA524 */  addiu      $a1, $a1, %lo(D_8011FA48)
    /* 98C7C 800A847C 9D87030C */  jal        func_800E1E74
    /* 98C80 800A8480 1000A427 */   addiu     $a0, $sp, 0x10
    /* 98C84 800A8484 06004014 */  bnez       $v0, .L800A84A0
    /* 98C88 800A8488 00000000 */   nop
    /* 98C8C 800A848C 5808848F */  lw         $a0, %gp_rel(D_80158D30)($gp)
    /* 98C90 800A8490 64F8030C */  jal        func_800FE190
    /* 98C94 800A8494 00000000 */   nop
    /* 98C98 800A8498 35A10208 */  j          .L800A84D4
    /* 98C9C 800A849C 00000000 */   nop
  .L800A84A0:
    /* 98CA0 800A84A0 E9A0020C */  jal        func_800A83A4
    /* 98CA4 800A84A4 00000000 */   nop
    /* 98CA8 800A84A8 1280043C */  lui        $a0, %hi(D_8011FA48)
    /* 98CAC 800A84AC 48FA8424 */  addiu      $a0, $a0, %lo(D_8011FA48)
    /* 98CB0 800A84B0 A587030C */  jal        func_800E1E94
    /* 98CB4 800A84B4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 98CB8 800A84B8 1680053C */  lui        $a1, %hi(D_80158D3C)
    /* 98CBC 800A84BC 3C8DA524 */  addiu      $a1, $a1, %lo(D_80158D3C)
    /* 98CC0 800A84C0 5151020C */  jal        func_80094544
    /* 98CC4 800A84C4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 98CC8 800A84C8 580882AF */  sw         $v0, %gp_rel(D_80158D30)($gp)
    /* 98CCC 800A84CC 19004010 */  beqz       $v0, .L800A8534
    /* 98CD0 800A84D0 00000000 */   nop
  .L800A84D4:
    /* 98CD4 800A84D4 16002012 */  beqz       $s1, .L800A8530
    /* 98CD8 800A84D8 21282002 */   addu      $a1, $s1, $zero
    /* 98CDC 800A84DC 0C00A018 */  blez       $a1, .L800A8510
    /* 98CE0 800A84E0 01010224 */   addiu     $v0, $zero, 0x101
    /* 98CE4 800A84E4 5808848F */  lw         $a0, %gp_rel(D_80158D30)($gp)
    /* 98CE8 800A84E8 00000000 */  nop
    /* 98CEC 800A84EC 38008384 */  lh         $v1, 0x38($a0)
    /* 98CF0 800A84F0 00000000 */  nop
    /* 98CF4 800A84F4 04006214 */  bne        $v1, $v0, .L800A8508
    /* 98CF8 800A84F8 00000000 */   nop
    /* 98CFC 800A84FC 480085AC */  sw         $a1, 0x48($a0)
    /* 98D00 800A8500 44A10208 */  j          .L800A8510
    /* 98D04 800A8504 440085AC */   sw        $a1, 0x44($a0)
  .L800A8508:
    /* 98D08 800A8508 8BF7030C */  jal        func_800FDE2C
    /* 98D0C 800A850C 00000000 */   nop
  .L800A8510:
    /* 98D10 800A8510 1280043C */  lui        $a0, %hi(D_80121340)
    /* 98D14 800A8514 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 98D18 800A8518 AD87030C */  jal        func_800E1EB4
    /* 98D1C 800A851C 00000000 */   nop
    /* 98D20 800A8520 1280033C */  lui        $v1, %hi(D_80121340)
    /* 98D24 800A8524 40136324 */  addiu      $v1, $v1, %lo(D_80121340)
    /* 98D28 800A8528 21104300 */  addu       $v0, $v0, $v1
    /* 98D2C 800A852C 680882AF */  sw         $v0, %gp_rel(D_80158D40)($gp)
  .L800A8530:
    /* 98D30 800A8530 21800000 */  addu       $s0, $zero, $zero
  .L800A8534:
    /* 98D34 800A8534 04000012 */  beqz       $s0, .L800A8548
    /* 98D38 800A8538 21100002 */   addu      $v0, $s0, $zero
    /* 98D3C 800A853C E9A0020C */  jal        func_800A83A4
    /* 98D40 800A8540 00000000 */   nop
    /* 98D44 800A8544 21100002 */  addu       $v0, $s0, $zero
  .L800A8548:
    /* 98D48 800A8548 B800BF8F */  lw         $ra, 0xB8($sp)
    /* 98D4C 800A854C B400B18F */  lw         $s1, 0xB4($sp)
    /* 98D50 800A8550 B000B08F */  lw         $s0, 0xB0($sp)
    /* 98D54 800A8554 C000BD27 */  addiu      $sp, $sp, 0xC0
    /* 98D58 800A8558 0800E003 */  jr         $ra
    /* 98D5C 800A855C 00000000 */   nop
endlabel func_800A83F0
