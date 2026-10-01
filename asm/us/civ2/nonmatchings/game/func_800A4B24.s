.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A4B24, 0x50

glabel func_800A4B24
    /* 95324 800A4B24 1C10828F */  lw         $v0, %gp_rel(D_801594F4)($gp)
    /* 95328 800A4B28 00000000 */  nop
    /* 9532C 800A4B2C 23208200 */  subu       $a0, $a0, $v0
    /* 95330 800A4B30 2010828F */  lw         $v0, %gp_rel(D_801594F8)($gp)
    /* 95334 800A4B34 00000000 */  nop
    /* 95338 800A4B38 2328A200 */  subu       $a1, $a1, $v0
    /* 9533C 800A4B3C 21288500 */  addu       $a1, $a0, $a1
    /* 95340 800A4B40 43280500 */  sra        $a1, $a1, 1
    /* 95344 800A4B44 23208500 */  subu       $a0, $a0, $a1
    /* 95348 800A4B48 1280033C */  lui        $v1, %hi(D_8011D52C)
    /* 9534C 800A4B4C 2CD56324 */  addiu      $v1, $v1, %lo(D_8011D52C)
    /* 95350 800A4B50 40100400 */  sll        $v0, $a0, 1
    /* 95354 800A4B54 21104400 */  addu       $v0, $v0, $a0
    /* 95358 800A4B58 80110200 */  sll        $v0, $v0, 6
    /* 9535C 800A4B5C 21104300 */  addu       $v0, $v0, $v1
    /* 95360 800A4B60 80280500 */  sll        $a1, $a1, 2
    /* 95364 800A4B64 2128A200 */  addu       $a1, $a1, $v0
    /* 95368 800A4B68 6000A28C */  lw         $v0, 0x60($a1)
    /* 9536C 800A4B6C 0800E003 */  jr         $ra
    /* 95370 800A4B70 00000000 */   nop
endlabel func_800A4B24
