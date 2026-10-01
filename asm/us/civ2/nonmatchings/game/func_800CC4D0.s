.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CC4D0, 0x60

glabel func_800CC4D0
    /* BCCD0 800CC4D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BCCD4 800CC4D4 1400BFAF */  sw         $ra, 0x14($sp)
    /* BCCD8 800CC4D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* BCCDC 800CC4DC F8EA030C */  jal        func_800FABE0
    /* BCCE0 800CC4E0 21808000 */   addu      $s0, $a0, $zero
    /* BCCE4 800CC4E4 BF12040C */  jal        func_80104AFC
    /* BCCE8 800CC4E8 00000000 */   nop
    /* BCCEC 800CC4EC 02000224 */  addiu      $v0, $zero, 0x2
    /* BCCF0 800CC4F0 FC0802AE */  sw         $v0, 0x8FC($s0)
    /* BCCF4 800CC4F4 5038030C */  jal        func_800CE140
    /* BCCF8 800CC4F8 21200002 */   addu      $a0, $s0, $zero
    /* BCCFC 800CC4FC 03000224 */  addiu      $v0, $zero, 0x3
    /* BCD00 800CC500 FC0802AE */  sw         $v0, 0x8FC($s0)
    /* BCD04 800CC504 8F2F030C */  jal        func_800CBE3C
    /* BCD08 800CC508 21200002 */   addu      $a0, $s0, $zero
    /* BCD0C 800CC50C EFEA030C */  jal        func_800FABBC
    /* BCD10 800CC510 21200002 */   addu      $a0, $s0, $zero
    /* BCD14 800CC514 BF12040C */  jal        func_80104AFC
    /* BCD18 800CC518 00000000 */   nop
    /* BCD1C 800CC51C 1400BF8F */  lw         $ra, 0x14($sp)
    /* BCD20 800CC520 1000B08F */  lw         $s0, 0x10($sp)
    /* BCD24 800CC524 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BCD28 800CC528 0800E003 */  jr         $ra
    /* BCD2C 800CC52C 00000000 */   nop
endlabel func_800CC4D0
