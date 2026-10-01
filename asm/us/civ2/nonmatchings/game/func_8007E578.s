.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E578, 0xD0

glabel func_8007E578
    /* 6ED78 8007E578 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6ED7C 8007E57C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6ED80 8007E580 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6ED84 8007E584 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6ED88 8007E588 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6ED8C 8007E58C 21808000 */  addu       $s0, $a0, $zero
    /* 6ED90 8007E590 2FF0010C */  jal        func_8007C0BC
    /* 6ED94 8007E594 21880000 */   addu      $s1, $zero, $zero
    /* 6ED98 8007E598 E6ED010C */  jal        func_8007B798
    /* 6ED9C 8007E59C 21200002 */   addu      $a0, $s0, $zero
    /* 6EDA0 8007E5A0 21804000 */  addu       $s0, $v0, $zero
    /* 6EDA4 8007E5A4 21000006 */  bltz       $s0, .L8007E62C
    /* 6EDA8 8007E5A8 21102002 */   addu      $v0, $s1, $zero
    /* 6EDAC 8007E5AC 02001224 */  addiu      $s2, $zero, 0x2
    /* 6EDB0 8007E5B0 40101000 */  sll        $v0, $s0, 1
  .L8007E5B4:
    /* 6EDB4 8007E5B4 21105000 */  addu       $v0, $v0, $s0
    /* 6EDB8 8007E5B8 80100200 */  sll        $v0, $v0, 2
    /* 6EDBC 8007E5BC 21105000 */  addu       $v0, $v0, $s0
    /* 6EDC0 8007E5C0 40100200 */  sll        $v0, $v0, 1
    /* 6EDC4 8007E5C4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6EDC8 8007E5C8 21082200 */  addu       $at, $at, $v0
    /* 6EDCC 8007E5CC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6EDD0 8007E5D0 00000000 */  nop
    /* 6EDD4 8007E5D4 80100300 */  sll        $v0, $v1, 2
    /* 6EDD8 8007E5D8 21104300 */  addu       $v0, $v0, $v1
    /* 6EDDC 8007E5DC 80100200 */  sll        $v0, $v0, 2
    /* 6EDE0 8007E5E0 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6EDE4 8007E5E4 21082200 */  addu       $at, $at, $v0
    /* 6EDE8 8007E5E8 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 6EDEC 8007E5EC 00000000 */  nop
    /* 6EDF0 8007E5F0 08005214 */  bne        $v0, $s2, .L8007E614
    /* 6EDF4 8007E5F4 21200002 */   addu      $a0, $s0, $zero
    /* 6EDF8 8007E5F8 1BF7010C */  jal        func_8007DC6C
    /* 6EDFC 8007E5FC 21280000 */   addu      $a1, $zero, $zero
    /* 6EE00 8007E600 21184000 */  addu       $v1, $v0, $zero
    /* 6EE04 8007E604 2A102302 */  slt        $v0, $s1, $v1
    /* 6EE08 8007E608 02004010 */  beqz       $v0, .L8007E614
    /* 6EE0C 8007E60C 00000000 */   nop
    /* 6EE10 8007E610 21886000 */  addu       $s1, $v1, $zero
  .L8007E614:
    /* 6EE14 8007E614 BFED010C */  jal        func_8007B6FC
    /* 6EE18 8007E618 21200002 */   addu      $a0, $s0, $zero
    /* 6EE1C 8007E61C 21804000 */  addu       $s0, $v0, $zero
    /* 6EE20 8007E620 E4FF0106 */  bgez       $s0, .L8007E5B4
    /* 6EE24 8007E624 40101000 */   sll       $v0, $s0, 1
    /* 6EE28 8007E628 21102002 */  addu       $v0, $s1, $zero
  .L8007E62C:
    /* 6EE2C 8007E62C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6EE30 8007E630 1800B28F */  lw         $s2, 0x18($sp)
    /* 6EE34 8007E634 1400B18F */  lw         $s1, 0x14($sp)
    /* 6EE38 8007E638 1000B08F */  lw         $s0, 0x10($sp)
    /* 6EE3C 8007E63C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6EE40 8007E640 0800E003 */  jr         $ra
    /* 6EE44 8007E644 00000000 */   nop
endlabel func_8007E578
