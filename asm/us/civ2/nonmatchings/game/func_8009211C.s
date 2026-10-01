.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009211C, 0x28

glabel func_8009211C
    /* 8291C 8009211C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 82920 80092120 1000BFAF */  sw         $ra, 0x10($sp)
    /* 82924 80092124 1280043C */  lui        $a0, %hi(D_8011ABF8)
    /* 82928 80092128 F8AB8424 */  addiu      $a0, $a0, %lo(D_8011ABF8)
    /* 8292C 8009212C 9AE0030C */  jal        func_800F8268
    /* 82930 80092130 00000000 */   nop
    /* 82934 80092134 1000BF8F */  lw         $ra, 0x10($sp)
    /* 82938 80092138 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8293C 8009213C 0800E003 */  jr         $ra
    /* 82940 80092140 00000000 */   nop
endlabel func_8009211C
