.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80085170, 0x40

glabel func_80085170
    /* 75970 80085170 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 75974 80085174 1800BFAF */  sw         $ra, 0x18($sp)
    /* 75978 80085178 3000A28F */  lw         $v0, 0x30($sp)
    /* 7597C 8008517C 1000A5A7 */  sh         $a1, 0x10($sp)
    /* 75980 80085180 1200A6A7 */  sh         $a2, 0x12($sp)
    /* 75984 80085184 2128A700 */  addu       $a1, $a1, $a3
    /* 75988 80085188 1400A5A7 */  sh         $a1, 0x14($sp)
    /* 7598C 8008518C 2130C200 */  addu       $a2, $a2, $v0
    /* 75990 80085190 1600A6A7 */  sh         $a2, 0x16($sp)
    /* 75994 80085194 3400A687 */  lh         $a2, 0x34($sp)
    /* 75998 80085198 A8E3030C */  jal        func_800F8EA0
    /* 7599C 8008519C 1000A527 */   addiu     $a1, $sp, 0x10
    /* 759A0 800851A0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 759A4 800851A4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 759A8 800851A8 0800E003 */  jr         $ra
    /* 759AC 800851AC 00000000 */   nop
endlabel func_80085170
