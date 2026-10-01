.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065FF0, 0x10

glabel func_80065FF0
    /* 567F0 80065FF0 1680013C */  lui        $at, %hi(D_80158870)
    /* 567F4 80065FF4 708820A0 */  sb         $zero, %lo(D_80158870)($at)
    /* 567F8 80065FF8 0800E003 */  jr         $ra
    /* 567FC 80065FFC 00000000 */   nop
endlabel func_80065FF0
