.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098CB8, 0x94

glabel func_80098CB8
    /* 894B8 80098CB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 894BC 80098CBC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 894C0 80098CC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 894C4 80098CC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 894C8 80098CC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 894CC 80098CCC 21908000 */  addu       $s2, $a0, $zero
    /* 894D0 80098CD0 6961020C */  jal        func_800985A4
    /* 894D4 80098CD4 2188A000 */   addu      $s1, $a1, $zero
    /* 894D8 80098CD8 80004230 */  andi       $v0, $v0, 0x80
    /* 894DC 80098CDC 14004014 */  bnez       $v0, .L80098D30
    /* 894E0 80098CE0 21204002 */   addu      $a0, $s2, $zero
    /* 894E4 80098CE4 21282002 */  addu       $a1, $s1, $zero
    /* 894E8 80098CE8 80000624 */  addiu      $a2, $zero, 0x80
    /* 894EC 80098CEC 7261020C */  jal        func_800985C8
    /* 894F0 80098CF0 01000724 */   addiu     $a3, $zero, 0x1
    /* 894F4 80098CF4 01001024 */  addiu      $s0, $zero, 0x1
    /* 894F8 80098CF8 21204002 */  addu       $a0, $s2, $zero
  .L80098CFC:
    /* 894FC 80098CFC 21282002 */  addu       $a1, $s1, $zero
    /* 89500 80098D00 8961020C */  jal        func_80098624
    /* 89504 80098D04 21300002 */   addu      $a2, $s0, $zero
    /* 89508 80098D08 01001026 */  addiu      $s0, $s0, 0x1
    /* 8950C 80098D0C 0800022A */  slti       $v0, $s0, 0x8
    /* 89510 80098D10 FAFF4014 */  bnez       $v0, .L80098CFC
    /* 89514 80098D14 21204002 */   addu      $a0, $s2, $zero
    /* 89518 80098D18 1280033C */  lui        $v1, %hi(D_8011A27C)
    /* 8951C 80098D1C 7CA26324 */  addiu      $v1, $v1, %lo(D_8011A27C)
    /* 89520 80098D20 00006294 */  lhu        $v0, 0x0($v1)
    /* 89524 80098D24 00000000 */  nop
    /* 89528 80098D28 01004224 */  addiu      $v0, $v0, 0x1
    /* 8952C 80098D2C 000062A4 */  sh         $v0, 0x0($v1)
  .L80098D30:
    /* 89530 80098D30 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 89534 80098D34 1800B28F */  lw         $s2, 0x18($sp)
    /* 89538 80098D38 1400B18F */  lw         $s1, 0x14($sp)
    /* 8953C 80098D3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 89540 80098D40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 89544 80098D44 0800E003 */  jr         $ra
    /* 89548 80098D48 00000000 */   nop
endlabel func_80098CB8
