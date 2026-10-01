.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E00A8, 0x70

glabel func_800E00A8
    /* D08A8 800E00A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* D08AC 800E00AC 2000BFAF */  sw         $ra, 0x20($sp)
    /* D08B0 800E00B0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* D08B4 800E00B4 1800B0AF */  sw         $s0, 0x18($sp)
    /* D08B8 800E00B8 2188A000 */  addu       $s1, $a1, $zero
    /* D08BC 800E00BC B00D828F */  lw         $v0, %gp_rel(D_80159288)($gp)
    /* D08C0 800E00C0 00000000 */  nop
    /* D08C4 800E00C4 08004004 */  bltz       $v0, .L800E00E8
    /* D08C8 800E00C8 2180C000 */   addu      $s0, $a2, $zero
    /* D08CC 800E00CC 00341000 */  sll        $a2, $s0, 16
    /* D08D0 800E00D0 003C0700 */  sll        $a3, $a3, 16
    /* D08D4 800E00D4 10000224 */  addiu      $v0, $zero, 0x10
    /* D08D8 800E00D8 1000A2AF */  sw         $v0, 0x10($sp)
    /* D08DC 800E00DC 03340600 */  sra        $a2, $a2, 16
    /* D08E0 800E00E0 59E7030C */  jal        func_800F9D64
    /* D08E4 800E00E4 033C0700 */   sra       $a3, $a3, 16
  .L800E00E8:
    /* D08E8 800E00E8 AD87030C */  jal        func_800E1EB4
    /* D08EC 800E00EC 21202002 */   addu      $a0, $s1, $zero
    /* D08F0 800E00F0 40180200 */  sll        $v1, $v0, 1
    /* D08F4 800E00F4 21186200 */  addu       $v1, $v1, $v0
    /* D08F8 800E00F8 40180300 */  sll        $v1, $v1, 1
    /* D08FC 800E00FC 21100302 */  addu       $v0, $s0, $v1
    /* D0900 800E0100 2000BF8F */  lw         $ra, 0x20($sp)
    /* D0904 800E0104 1C00B18F */  lw         $s1, 0x1C($sp)
    /* D0908 800E0108 1800B08F */  lw         $s0, 0x18($sp)
    /* D090C 800E010C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* D0910 800E0110 0800E003 */  jr         $ra
    /* D0914 800E0114 00000000 */   nop
endlabel func_800E00A8
