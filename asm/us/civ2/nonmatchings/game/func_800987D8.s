.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800987D8, 0x70

glabel func_800987D8
    /* 88FD8 800987D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88FDC 800987DC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 88FE0 800987E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88FE4 800987E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88FE8 800987E8 21808000 */  addu       $s0, $a0, $zero
    /* 88FEC 800987EC 5061020C */  jal        func_80098540
    /* 88FF0 800987F0 2188A000 */   addu      $s1, $a1, $zero
    /* 88FF4 800987F4 21184000 */  addu       $v1, $v0, $zero
    /* 88FF8 800987F8 0D006014 */  bnez       $v1, .L80098830
    /* 88FFC 800987FC 21106000 */   addu      $v0, $v1, $zero
    /* 89000 80098800 21200002 */  addu       $a0, $s0, $zero
    /* 89004 80098804 D161020C */  jal        func_80098744
    /* 89008 80098808 21282002 */   addu      $a1, $s1, $zero
    /* 8900C 8009880C 21184000 */  addu       $v1, $v0, $zero
    /* 89010 80098810 06006010 */  beqz       $v1, .L8009882C
    /* 89014 80098814 21206000 */   addu      $a0, $v1, $zero
    /* 89018 80098818 08000224 */  addiu      $v0, $zero, 0x8
    /* 8901C 8009881C 2A104300 */  slt        $v0, $v0, $v1
    /* 89020 80098820 02004010 */  beqz       $v0, .L8009882C
    /* 89024 80098824 08000324 */   addiu     $v1, $zero, 0x8
    /* 89028 80098828 21188000 */  addu       $v1, $a0, $zero
  .L8009882C:
    /* 8902C 8009882C 21106000 */  addu       $v0, $v1, $zero
  .L80098830:
    /* 89030 80098830 1800BF8F */  lw         $ra, 0x18($sp)
    /* 89034 80098834 1400B18F */  lw         $s1, 0x14($sp)
    /* 89038 80098838 1000B08F */  lw         $s0, 0x10($sp)
    /* 8903C 8009883C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 89040 80098840 0800E003 */  jr         $ra
    /* 89044 80098844 00000000 */   nop
endlabel func_800987D8
