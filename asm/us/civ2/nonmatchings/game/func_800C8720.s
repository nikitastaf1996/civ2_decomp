.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8720, 0xA0

glabel func_800C8720
    /* B8F20 800C8720 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B8F24 800C8724 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B8F28 800C8728 1800B2AF */  sw         $s2, 0x18($sp)
    /* B8F2C 800C872C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B8F30 800C8730 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8F34 800C8734 0500A014 */  bnez       $a1, .L800C874C
    /* B8F38 800C8738 21908000 */   addu      $s2, $a0, $zero
    /* B8F3C 800C873C 3C21030C */  jal        func_800C84F0
    /* B8F40 800C8740 21280000 */   addu      $a1, $zero, $zero
    /* B8F44 800C8744 E9210308 */  j          .L800C87A4
    /* B8F48 800C8748 00000000 */   nop
  .L800C874C:
    /* B8F4C 800C874C 01000224 */  addiu      $v0, $zero, 0x1
    /* B8F50 800C8750 0D00A210 */  beq        $a1, $v0, .L800C8788
    /* B8F54 800C8754 21204002 */   addu      $a0, $s2, $zero
    /* B8F58 800C8758 3C21030C */  jal        func_800C84F0
    /* B8F5C 800C875C 03000524 */   addiu     $a1, $zero, 0x3
    /* B8F60 800C8760 21804000 */  addu       $s0, $v0, $zero
    /* B8F64 800C8764 21204002 */  addu       $a0, $s2, $zero
    /* B8F68 800C8768 3C21030C */  jal        func_800C84F0
    /* B8F6C 800C876C 04000524 */   addiu     $a1, $zero, 0x4
    /* B8F70 800C8770 21884000 */  addu       $s1, $v0, $zero
    /* B8F74 800C8774 21204002 */  addu       $a0, $s2, $zero
    /* B8F78 800C8778 3C21030C */  jal        func_800C84F0
    /* B8F7C 800C877C 05000524 */   addiu     $a1, $zero, 0x5
    /* B8F80 800C8780 E8210308 */  j          .L800C87A0
    /* B8F84 800C8784 21801102 */   addu      $s0, $s0, $s1
  .L800C8788:
    /* B8F88 800C8788 3C21030C */  jal        func_800C84F0
    /* B8F8C 800C878C 01000524 */   addiu     $a1, $zero, 0x1
    /* B8F90 800C8790 21804000 */  addu       $s0, $v0, $zero
    /* B8F94 800C8794 21204002 */  addu       $a0, $s2, $zero
    /* B8F98 800C8798 3C21030C */  jal        func_800C84F0
    /* B8F9C 800C879C 02000524 */   addiu     $a1, $zero, 0x2
  .L800C87A0:
    /* B8FA0 800C87A0 21100202 */  addu       $v0, $s0, $v0
  .L800C87A4:
    /* B8FA4 800C87A4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B8FA8 800C87A8 1800B28F */  lw         $s2, 0x18($sp)
    /* B8FAC 800C87AC 1400B18F */  lw         $s1, 0x14($sp)
    /* B8FB0 800C87B0 1000B08F */  lw         $s0, 0x10($sp)
    /* B8FB4 800C87B4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B8FB8 800C87B8 0800E003 */  jr         $ra
    /* B8FBC 800C87BC 00000000 */   nop
endlabel func_800C8720
