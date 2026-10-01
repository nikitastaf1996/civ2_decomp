.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A1B8, 0x54

glabel func_8001A1B8
    /* A9B8 8001A1B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9BC 8001A1BC 1800BFAF */  sw         $ra, 0x18($sp)
    /* A9C0 8001A1C0 926D000C */  jal        func_8001B648
    /* A9C4 8001A1C4 00000000 */   nop
    /* A9C8 8001A1C8 1000A0A7 */  sh         $zero, 0x10($sp)
    /* A9CC 8001A1CC 1200A0A7 */  sh         $zero, 0x12($sp)
    /* A9D0 8001A1D0 80020224 */  addiu      $v0, $zero, 0x280
    /* A9D4 8001A1D4 1400A2A7 */  sh         $v0, 0x14($sp)
    /* A9D8 8001A1D8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* A9DC 8001A1DC 1600A2A7 */  sh         $v0, 0x16($sp)
    /* A9E0 8001A1E0 1000A427 */  addiu      $a0, $sp, 0x10
    /* A9E4 8001A1E4 21280000 */  addu       $a1, $zero, $zero
    /* A9E8 8001A1E8 21300000 */  addu       $a2, $zero, $zero
    /* A9EC 8001A1EC 9BCF000C */  jal        ClearImage
    /* A9F0 8001A1F0 21380000 */   addu      $a3, $zero, $zero
    /* A9F4 8001A1F4 3ACF000C */  jal        DrawSync
    /* A9F8 8001A1F8 21200000 */   addu      $a0, $zero, $zero
    /* A9FC 8001A1FC 1800BF8F */  lw         $ra, 0x18($sp)
    /* AA00 8001A200 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AA04 8001A204 0800E003 */  jr         $ra
    /* AA08 8001A208 00000000 */   nop
endlabel func_8001A1B8
