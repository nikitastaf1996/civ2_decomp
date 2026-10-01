.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001863C, 0xA8

glabel func_8001863C
    /* 8E3C 8001863C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8E40 80018640 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8E44 80018644 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8E48 80018648 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8E4C 8001864C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8E50 80018650 21908000 */  addu       $s2, $a0, $zero
    /* 8E54 80018654 2188A000 */  addu       $s1, $a1, $zero
    /* 8E58 80018658 2180C000 */  addu       $s0, $a2, $zero
    /* 8E5C 8001865C 21200000 */  addu       $a0, $zero, $zero
    /* 8E60 80018660 21280000 */  addu       $a1, $zero, $zero
    /* 8E64 80018664 7BF6000C */  jal        SsSetSerialAttr
    /* 8E68 80018668 01000624 */   addiu     $a2, $zero, 0x1
    /* 8E6C 8001866C 21200000 */  addu       $a0, $zero, $zero
    /* 8E70 80018670 5F000524 */  addiu      $a1, $zero, 0x5F
    /* 8E74 80018674 C7FD000C */  jal        SsSetSerialVol
    /* 8E78 80018678 5F000624 */   addiu     $a2, $zero, 0x5F
    /* 8E7C 8001867C 7F000424 */  addiu      $a0, $zero, 0x7F
    /* 8E80 80018680 8BF7000C */  jal        SsSetMVol
    /* 8E84 80018684 7F000524 */   addiu     $a1, $zero, 0x7F
    /* 8E88 80018688 0319010C */  jal        DecDCTReset
    /* 8E8C 8001868C 21200000 */   addu      $a0, $zero, $zero
    /* 8E90 80018690 AA19010C */  jal        DecDCToutCallback
    /* 8E94 80018694 21202002 */   addu      $a0, $s1, $zero
    /* 8E98 80018698 0580043C */  lui        $a0, %hi(D_80056598)
    /* 8E9C 8001869C 98658424 */  addiu      $a0, $a0, %lo(D_80056598)
    /* 8EA0 800186A0 ABB8000C */  jal        StSetRing
    /* 8EA4 800186A4 20000524 */   addiu     $a1, $zero, 0x20
    /* 8EA8 800186A8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 8EAC 800186AC 0400048E */  lw         $a0, 0x4($s0)
    /* 8EB0 800186B0 0800058E */  lw         $a1, 0x8($s0)
    /* 8EB4 800186B4 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 8EB8 800186B8 3BC6000C */  jal        StSetStream
    /* 8EBC 800186BC 21380000 */   addu      $a3, $zero, $zero
    /* 8EC0 800186C0 7361000C */  jal        func_800185CC
    /* 8EC4 800186C4 21204002 */   addu      $a0, $s2, $zero
    /* 8EC8 800186C8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 8ECC 800186CC 2000B28F */  lw         $s2, 0x20($sp)
    /* 8ED0 800186D0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8ED4 800186D4 1800B08F */  lw         $s0, 0x18($sp)
    /* 8ED8 800186D8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8EDC 800186DC 0800E003 */  jr         $ra
    /* 8EE0 800186E0 00000000 */   nop
endlabel func_8001863C
