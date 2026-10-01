.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2250, 0x28

glabel func_800A2250
    /* 92A50 800A2250 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 92A54 800A2254 1000BFAF */  sw         $ra, 0x10($sp)
    /* 92A58 800A2258 1280043C */  lui        $a0, %hi(D_8011EA6C)
    /* 92A5C 800A225C 6CEA8424 */  addiu      $a0, $a0, %lo(D_8011EA6C)
    /* 92A60 800A2260 9AE0030C */  jal        func_800F8268
    /* 92A64 800A2264 00000000 */   nop
    /* 92A68 800A2268 1000BF8F */  lw         $ra, 0x10($sp)
    /* 92A6C 800A226C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 92A70 800A2270 0800E003 */  jr         $ra
    /* 92A74 800A2274 00000000 */   nop
endlabel func_800A2250
