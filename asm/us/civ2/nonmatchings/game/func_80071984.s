.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80071984, 0x10

glabel func_80071984
    /* 62184 80071984 1680013C */  lui        $at, %hi(D_8015887C)
    /* 62188 80071988 7C8820AC */  sw         $zero, %lo(D_8015887C)($at)
    /* 6218C 8007198C 0800E003 */  jr         $ra
    /* 62190 80071990 21100000 */   addu      $v0, $zero, $zero
endlabel func_80071984
