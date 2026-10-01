.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014544, 0x38

glabel func_80014544
    /* 4D44 80014544 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4D48 80014548 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4D4C 8001454C 06008284 */  lh         $v0, 0x6($a0)
    /* 4D50 80014550 00008584 */  lh         $a1, 0x0($a0)
    /* 4D54 80014554 02008684 */  lh         $a2, 0x2($a0)
    /* 4D58 80014558 04008784 */  lh         $a3, 0x4($a0)
    /* 4D5C 8001455C 0180043C */  lui        $a0, %hi(D_80010088)
    /* 4D60 80014560 88008424 */  addiu      $a0, $a0, %lo(D_80010088)
    /* 4D64 80014564 4551000C */  jal        func_80014514
    /* 4D68 80014568 1000A2AF */   sw        $v0, 0x10($sp)
    /* 4D6C 8001456C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4D70 80014570 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4D74 80014574 0800E003 */  jr         $ra
    /* 4D78 80014578 00000000 */   nop
endlabel func_80014544
