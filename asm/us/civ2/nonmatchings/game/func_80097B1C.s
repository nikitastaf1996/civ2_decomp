.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097B1C, 0x38

glabel func_80097B1C
    /* 8831C 80097B1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88320 80097B20 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88324 80097B24 1280043C */  lui        $a0, %hi(D_8011B5B4)
    /* 88328 80097B28 B4B58424 */  addiu      $a0, $a0, %lo(D_8011B5B4)
    /* 8832C 80097B2C C12B030C */  jal        func_800CAF04
    /* 88330 80097B30 00000000 */   nop
    /* 88334 80097B34 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 88338 80097B38 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 8833C 80097B3C 9AE0030C */  jal        func_800F8268
    /* 88340 80097B40 00000000 */   nop
    /* 88344 80097B44 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88348 80097B48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8834C 80097B4C 0800E003 */  jr         $ra
    /* 88350 80097B50 00000000 */   nop
endlabel func_80097B1C
