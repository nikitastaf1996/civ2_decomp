.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B5E68, 0x178

glabel func_800B5E68
    /* A6668 800B5E68 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A666C 800B5E6C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A6670 800B5E70 1800B2AF */  sw         $s2, 0x18($sp)
    /* A6674 800B5E74 1400B1AF */  sw         $s1, 0x14($sp)
    /* A6678 800B5E78 1000B0AF */  sw         $s0, 0x10($sp)
    /* A667C 800B5E7C 21808000 */  addu       $s0, $a0, $zero
    /* A6680 800B5E80 2188A000 */  addu       $s1, $a1, $zero
    /* A6684 800B5E84 C801028E */  lw         $v0, 0x1C8($s0)
    /* A6688 800B5E88 00000000 */  nop
    /* A668C 800B5E8C 0B004010 */  beqz       $v0, .L800B5EBC
    /* A6690 800B5E90 2190C000 */   addu      $s2, $a2, $zero
    /* A6694 800B5E94 24010286 */  lh         $v0, 0x124($s0)
    /* A6698 800B5E98 00000000 */  nop
    /* A669C 800B5E9C 2A102202 */  slt        $v0, $s1, $v0
    /* A66A0 800B5EA0 48004014 */  bnez       $v0, .L800B5FC4
    /* A66A4 800B5EA4 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* A66A8 800B5EA8 28010286 */  lh         $v0, 0x128($s0)
    /* A66AC 800B5EAC 00000000 */  nop
    /* A66B0 800B5EB0 2A102202 */  slt        $v0, $s1, $v0
    /* A66B4 800B5EB4 43004010 */  beqz       $v0, .L800B5FC4
    /* A66B8 800B5EB8 FCFF0224 */   addiu     $v0, $zero, -0x4
  .L800B5EBC:
    /* A66BC 800B5EBC 26010286 */  lh         $v0, 0x126($s0)
    /* A66C0 800B5EC0 00000000 */  nop
    /* A66C4 800B5EC4 2A104202 */  slt        $v0, $s2, $v0
    /* A66C8 800B5EC8 3E004014 */  bnez       $v0, .L800B5FC4
    /* A66CC 800B5ECC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A66D0 800B5ED0 2A010286 */  lh         $v0, 0x12A($s0)
    /* A66D4 800B5ED4 00000000 */  nop
    /* A66D8 800B5ED8 2A104202 */  slt        $v0, $s2, $v0
    /* A66DC 800B5EDC 39004010 */  beqz       $v0, .L800B5FC4
    /* A66E0 800B5EE0 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* A66E4 800B5EE4 24010286 */  lh         $v0, 0x124($s0)
    /* A66E8 800B5EE8 00000000 */  nop
    /* A66EC 800B5EEC 2A102202 */  slt        $v0, $s1, $v0
    /* A66F0 800B5EF0 34004014 */  bnez       $v0, .L800B5FC4
    /* A66F4 800B5EF4 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* A66F8 800B5EF8 28010286 */  lh         $v0, 0x128($s0)
    /* A66FC 800B5EFC 00000000 */  nop
    /* A6700 800B5F00 2A102202 */  slt        $v0, $s1, $v0
    /* A6704 800B5F04 2F004010 */  beqz       $v0, .L800B5FC4
    /* A6708 800B5F08 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* A670C 800B5F0C 6001058E */  lw         $a1, 0x160($s0)
    /* A6710 800B5F10 7ACC020C */  jal        func_800B31E8
    /* A6714 800B5F14 21200002 */   addu      $a0, $s0, $zero
    /* A6718 800B5F18 24010586 */  lh         $a1, 0x124($s0)
    /* A671C 800B5F1C 00000000 */  nop
    /* A6720 800B5F20 23282502 */  subu       $a1, $s1, $a1
    /* A6724 800B5F24 26010486 */  lh         $a0, 0x126($s0)
    /* A6728 800B5F28 00000000 */  nop
    /* A672C 800B5F2C 23204402 */  subu       $a0, $s2, $a0
    /* A6730 800B5F30 4C01038E */  lw         $v1, 0x14C($s0)
    /* A6734 800B5F34 00000000 */  nop
    /* A6738 800B5F38 1A00A300 */  div        $zero, $a1, $v1
    /* A673C 800B5F3C 02006014 */  bnez       $v1, .L800B5F48
    /* A6740 800B5F40 00000000 */   nop
    /* A6744 800B5F44 0D000700 */  break      7
  .L800B5F48:
    /* A6748 800B5F48 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A674C 800B5F4C 04006114 */  bne        $v1, $at, .L800B5F60
    /* A6750 800B5F50 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A6754 800B5F54 0200A114 */  bne        $a1, $at, .L800B5F60
    /* A6758 800B5F58 00000000 */   nop
    /* A675C 800B5F5C 0D000600 */  break      6
  .L800B5F60:
    /* A6760 800B5F60 12280000 */  mflo       $a1
    /* A6764 800B5F64 5001038E */  lw         $v1, 0x150($s0)
    /* A6768 800B5F68 00000000 */  nop
    /* A676C 800B5F6C 1A008300 */  div        $zero, $a0, $v1
    /* A6770 800B5F70 02006014 */  bnez       $v1, .L800B5F7C
    /* A6774 800B5F74 00000000 */   nop
    /* A6778 800B5F78 0D000700 */  break      7
  .L800B5F7C:
    /* A677C 800B5F7C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A6780 800B5F80 04006114 */  bne        $v1, $at, .L800B5F94
    /* A6784 800B5F84 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A6788 800B5F88 02008114 */  bne        $a0, $at, .L800B5F94
    /* A678C 800B5F8C 00000000 */   nop
    /* A6790 800B5F90 0D000600 */  break      6
  .L800B5F94:
    /* A6794 800B5F94 12200000 */  mflo       $a0
    /* A6798 800B5F98 00000000 */  nop
    /* A679C 800B5F9C 21104400 */  addu       $v0, $v0, $a0
    /* A67A0 800B5FA0 4400038E */  lw         $v1, 0x44($s0)
    /* A67A4 800B5FA4 00000000 */  nop
    /* A67A8 800B5FA8 1800A300 */  mult       $a1, $v1
    /* A67AC 800B5FAC 1C00068E */  lw         $a2, 0x1C($s0)
    /* A67B0 800B5FB0 12380000 */  mflo       $a3
    /* A67B4 800B5FB4 21204700 */  addu       $a0, $v0, $a3
    /* A67B8 800B5FB8 21280000 */  addu       $a1, $zero, $zero
    /* A67BC 800B5FBC F53A030C */  jal        func_800CEBD4
    /* A67C0 800B5FC0 FFFFC624 */   addiu     $a2, $a2, -0x1
  .L800B5FC4:
    /* A67C4 800B5FC4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A67C8 800B5FC8 1800B28F */  lw         $s2, 0x18($sp)
    /* A67CC 800B5FCC 1400B18F */  lw         $s1, 0x14($sp)
    /* A67D0 800B5FD0 1000B08F */  lw         $s0, 0x10($sp)
    /* A67D4 800B5FD4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A67D8 800B5FD8 0800E003 */  jr         $ra
    /* A67DC 800B5FDC 00000000 */   nop
endlabel func_800B5E68
