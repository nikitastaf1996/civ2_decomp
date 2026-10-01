.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80018878, 0xA4

glabel func_80018878
    /* 9078 80018878 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 907C 8001887C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9080 80018880 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9084 80018884 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9088 80018888 1400B1AF */  sw         $s1, 0x14($sp)
    /* 908C 8001888C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9090 80018890 21888000 */  addu       $s1, $a0, $zero
    /* 9094 80018894 2198A000 */  addu       $s3, $a1, $zero
    /* 9098 80018898 D0071224 */  addiu      $s2, $zero, 0x7D0
    /* 909C 8001889C 21202002 */  addu       $a0, $s1, $zero
  .L800188A0:
    /* 90A0 800188A0 B961000C */  jal        func_800186E4
    /* 90A4 800188A4 21286002 */   addu      $a1, $s3, $zero
    /* 90A8 800188A8 21804000 */  addu       $s0, $v0, $zero
    /* 90AC 800188AC 10000012 */  beqz       $s0, .L800188F0
    /* 90B0 800188B0 FFFF5226 */   addiu     $s2, $s2, -0x1
    /* 90B4 800188B4 0800228E */  lw         $v0, 0x8($s1)
    /* 90B8 800188B8 00000000 */  nop
    /* 90BC 800188BC 0100422C */  sltiu      $v0, $v0, 0x1
    /* 90C0 800188C0 080022AE */  sw         $v0, 0x8($s1)
    /* 90C4 800188C4 80100200 */  sll        $v0, $v0, 2
    /* 90C8 800188C8 21105100 */  addu       $v0, $v0, $s1
    /* 90CC 800188CC 0000458C */  lw         $a1, 0x0($v0)
    /* 90D0 800188D0 1580063C */  lui        $a2, %hi(D_8014DDE8)
    /* 90D4 800188D4 E8DDC624 */  addiu      $a2, $a2, %lo(D_8014DDE8)
    /* 90D8 800188D8 B31A010C */  jal        DecDCTvlc2
    /* 90DC 800188DC 21200002 */   addu      $a0, $s0, $zero
    /* 90E0 800188E0 5FC6000C */  jal        StFreeRing
    /* 90E4 800188E4 21200002 */   addu      $a0, $s0, $zero
    /* 90E8 800188E8 3F620008 */  j          .L800188FC
    /* 90EC 800188EC 21100000 */   addu      $v0, $zero, $zero
  .L800188F0:
    /* 90F0 800188F0 EBFF4016 */  bnez       $s2, .L800188A0
    /* 90F4 800188F4 21202002 */   addu      $a0, $s1, $zero
    /* 90F8 800188F8 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800188FC:
    /* 90FC 800188FC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9100 80018900 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9104 80018904 1800B28F */  lw         $s2, 0x18($sp)
    /* 9108 80018908 1400B18F */  lw         $s1, 0x14($sp)
    /* 910C 8001890C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9110 80018910 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9114 80018914 0800E003 */  jr         $ra
    /* 9118 80018918 00000000 */   nop
endlabel func_80018878
