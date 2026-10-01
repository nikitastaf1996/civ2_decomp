.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097AE4, 0x38

glabel func_80097AE4
    /* 882E4 80097AE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 882E8 80097AE8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 882EC 80097AEC 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 882F0 80097AF0 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 882F4 80097AF4 4CE1030C */  jal        func_800F8530
    /* 882F8 80097AF8 02000524 */   addiu     $a1, $zero, 0x2
    /* 882FC 80097AFC 1280043C */  lui        $a0, %hi(D_8011B5B4)
    /* 88300 80097B00 B4B58424 */  addiu      $a0, $a0, %lo(D_8011B5B4)
    /* 88304 80097B04 C32B030C */  jal        func_800CAF0C
    /* 88308 80097B08 02000524 */   addiu     $a1, $zero, 0x2
    /* 8830C 80097B0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88310 80097B10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88314 80097B14 0800E003 */  jr         $ra
    /* 88318 80097B18 00000000 */   nop
endlabel func_80097AE4
