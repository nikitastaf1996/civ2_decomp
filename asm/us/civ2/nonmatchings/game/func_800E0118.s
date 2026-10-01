.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0118, 0x94

glabel func_800E0118
    /* D0918 800E0118 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* D091C 800E011C 2800BFAF */  sw         $ra, 0x28($sp)
    /* D0920 800E0120 2400B5AF */  sw         $s5, 0x24($sp)
    /* D0924 800E0124 2000B4AF */  sw         $s4, 0x20($sp)
    /* D0928 800E0128 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D092C 800E012C 1800B2AF */  sw         $s2, 0x18($sp)
    /* D0930 800E0130 1400B1AF */  sw         $s1, 0x14($sp)
    /* D0934 800E0134 1000B0AF */  sw         $s0, 0x10($sp)
    /* D0938 800E0138 21A08000 */  addu       $s4, $a0, $zero
    /* D093C 800E013C 2198A000 */  addu       $s3, $a1, $zero
    /* D0940 800E0140 2190C000 */  addu       $s2, $a2, $zero
    /* D0944 800E0144 21A8E000 */  addu       $s5, $a3, $zero
    /* D0948 800E0148 4000B18F */  lw         $s1, 0x40($sp)
    /* D094C 800E014C AD87030C */  jal        func_800E1EB4
    /* D0950 800E0150 21206002 */   addu      $a0, $s3, $zero
    /* D0954 800E0154 40800200 */  sll        $s0, $v0, 1
    /* D0958 800E0158 21800202 */  addu       $s0, $s0, $v0
    /* D095C 800E015C 40801000 */  sll        $s0, $s0, 1
    /* D0960 800E0160 43881100 */  sra        $s1, $s1, 1
    /* D0964 800E0164 21905102 */  addu       $s2, $s2, $s1
    /* D0968 800E0168 43301000 */  sra        $a2, $s0, 1
    /* D096C 800E016C 21208002 */  addu       $a0, $s4, $zero
    /* D0970 800E0170 21286002 */  addu       $a1, $s3, $zero
    /* D0974 800E0174 23304602 */  subu       $a2, $s2, $a2
    /* D0978 800E0178 2A80030C */  jal        func_800E00A8
    /* D097C 800E017C 2138A002 */   addu      $a3, $s5, $zero
    /* D0980 800E0180 21100002 */  addu       $v0, $s0, $zero
    /* D0984 800E0184 2800BF8F */  lw         $ra, 0x28($sp)
    /* D0988 800E0188 2400B58F */  lw         $s5, 0x24($sp)
    /* D098C 800E018C 2000B48F */  lw         $s4, 0x20($sp)
    /* D0990 800E0190 1C00B38F */  lw         $s3, 0x1C($sp)
    /* D0994 800E0194 1800B28F */  lw         $s2, 0x18($sp)
    /* D0998 800E0198 1400B18F */  lw         $s1, 0x14($sp)
    /* D099C 800E019C 1000B08F */  lw         $s0, 0x10($sp)
    /* D09A0 800E01A0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* D09A4 800E01A4 0800E003 */  jr         $ra
    /* D09A8 800E01A8 00000000 */   nop
endlabel func_800E0118
