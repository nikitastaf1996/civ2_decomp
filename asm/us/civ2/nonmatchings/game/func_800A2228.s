.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2228, 0x28

glabel func_800A2228
    /* 92A28 800A2228 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 92A2C 800A222C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 92A30 800A2230 1280043C */  lui        $a0, %hi(D_8011EA6C)
    /* 92A34 800A2234 6CEA8424 */  addiu      $a0, $a0, %lo(D_8011EA6C)
    /* 92A38 800A2238 4CE1030C */  jal        func_800F8530
    /* 92A3C 800A223C 02000524 */   addiu     $a1, $zero, 0x2
    /* 92A40 800A2240 1000BF8F */  lw         $ra, 0x10($sp)
    /* 92A44 800A2244 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 92A48 800A2248 0800E003 */  jr         $ra
    /* 92A4C 800A224C 00000000 */   nop
endlabel func_800A2228
