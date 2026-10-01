.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E065C, 0xF8

glabel func_800E065C
    /* D0E5C 800E065C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D0E60 800E0660 1000B6AF */  sw         $s6, 0x10($sp)
    /* D0E64 800E0664 1400B7AF */  sw         $s7, 0x14($sp)
    /* D0E68 800E0668 2178E003 */  addu       $t7, $ra, $zero
    /* D0E6C 800E066C 0000968C */  lw         $s6, 0x0($a0)
    /* D0E70 800E0670 04008424 */  addiu      $a0, $a0, 0x4
    /* D0E74 800E0674 20001724 */  addiu      $s7, $zero, 0x20
    /* D0E78 800E0678 EB80030C */  jal        func_800E03AC
    /* D0E7C 800E067C 00000000 */   nop
    /* D0E80 800E0680 40400200 */  sll        $t0, $v0, 1
  .L800E0684:
    /* D0E84 800E0684 CB80030C */  jal        func_800E032C
    /* D0E88 800E0688 00000000 */   nop
    /* D0E8C 800E068C 09004014 */  bnez       $v0, .L800E06B4
    /* D0E90 800E0690 00000000 */   nop
    /* D0E94 800E0694 D480030C */  jal        func_800E0350
    /* D0E98 800E0698 00000000 */   nop
    /* D0E9C 800E069C 0000A2A0 */  sb         $v0, 0x0($a1)
    /* D0EA0 800E06A0 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* D0EA4 800E06A4 F7FF0015 */  bnez       $t0, .L800E0684
    /* D0EA8 800E06A8 0100A524 */   addiu     $a1, $a1, 0x1
    /* D0EAC 800E06AC CB810308 */  j          .L800E072C
    /* D0EB0 800E06B0 00000000 */   nop
  .L800E06B4:
    /* D0EB4 800E06B4 D480030C */  jal        func_800E0350
    /* D0EB8 800E06B8 00000000 */   nop
    /* D0EBC 800E06BC 0E004014 */  bnez       $v0, .L800E06F8
    /* D0EC0 800E06C0 00000000 */   nop
    /* D0EC4 800E06C4 D480030C */  jal        func_800E0350
    /* D0EC8 800E06C8 00000000 */   nop
    /* D0ECC 800E06CC D480030C */  jal        func_800E0350
    /* D0ED0 800E06D0 21484000 */   addu      $t1, $v0, $zero
  .L800E06D4:
    /* D0ED4 800E06D4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* D0ED8 800E06D8 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* D0EDC 800E06DC 13000011 */  beqz       $t0, .L800E072C
    /* D0EE0 800E06E0 0100A524 */   addiu     $a1, $a1, 0x1
    /* D0EE4 800E06E4 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* D0EE8 800E06E8 FAFF2015 */  bnez       $t1, .L800E06D4
    /* D0EEC 800E06EC 00000000 */   nop
    /* D0EF0 800E06F0 A1810308 */  j          .L800E0684
    /* D0EF4 800E06F4 00000000 */   nop
  .L800E06F8:
    /* D0EF8 800E06F8 EB80030C */  jal        func_800E03AC
    /* D0EFC 800E06FC 21484000 */   addu      $t1, $v0, $zero
    /* D0F00 800E0700 2350A200 */  subu       $t2, $a1, $v0
  .L800E0704:
    /* D0F04 800E0704 00004281 */  lb         $v0, 0x0($t2)
    /* D0F08 800E0708 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* D0F0C 800E070C 0000A2A0 */  sb         $v0, 0x0($a1)
    /* D0F10 800E0710 0100A524 */  addiu      $a1, $a1, 0x1
    /* D0F14 800E0714 05000011 */  beqz       $t0, .L800E072C
    /* D0F18 800E0718 FFFF2925 */   addiu     $t1, $t1, -0x1
    /* D0F1C 800E071C F9FF2015 */  bnez       $t1, .L800E0704
    /* D0F20 800E0720 01004A25 */   addiu     $t2, $t2, 0x1
    /* D0F24 800E0724 A1810308 */  j          .L800E0684
    /* D0F28 800E0728 00000000 */   nop
  .L800E072C:
    /* D0F2C 800E072C 20000324 */  addiu      $v1, $zero, 0x20
    /* D0F30 800E0730 0200E316 */  bne        $s7, $v1, .L800E073C
    /* D0F34 800E0734 21F8E001 */   addu      $ra, $t7, $zero
    /* D0F38 800E0738 FCFF8424 */  addiu      $a0, $a0, -0x4
  .L800E073C:
    /* D0F3C 800E073C 21108000 */  addu       $v0, $a0, $zero
    /* D0F40 800E0740 1000B68F */  lw         $s6, 0x10($sp)
    /* D0F44 800E0744 1400B78F */  lw         $s7, 0x14($sp)
    /* D0F48 800E0748 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D0F4C 800E074C 0800E003 */  jr         $ra
    /* D0F50 800E0750 00000000 */   nop
endlabel func_800E065C
