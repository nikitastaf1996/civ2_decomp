.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B16B4, 0x3C

glabel func_800B16B4
    /* A1EB4 800B16B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A1EB8 800B16B8 1800BFAF */  sw         $ra, 0x18($sp)
    /* A1EBC 800B16BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* A1EC0 800B16C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1EC4 800B16C4 21808000 */  addu       $s0, $a0, $zero
    /* A1EC8 800B16C8 02C5020C */  jal        func_800B1408
    /* A1ECC 800B16CC 2188A000 */   addu      $s1, $a1, $zero
    /* A1ED0 800B16D0 A60111A6 */  sh         $s1, 0x1A6($s0)
    /* A1ED4 800B16D4 21100002 */  addu       $v0, $s0, $zero
    /* A1ED8 800B16D8 1800BF8F */  lw         $ra, 0x18($sp)
    /* A1EDC 800B16DC 1400B18F */  lw         $s1, 0x14($sp)
    /* A1EE0 800B16E0 1000B08F */  lw         $s0, 0x10($sp)
    /* A1EE4 800B16E4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A1EE8 800B16E8 0800E003 */  jr         $ra
    /* A1EEC 800B16EC 00000000 */   nop
endlabel func_800B16B4
