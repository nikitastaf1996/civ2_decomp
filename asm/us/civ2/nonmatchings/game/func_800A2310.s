.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2310, 0xC

glabel func_800A2310
    /* 92B10 800A2310 21108000 */  addu       $v0, $a0, $zero
    /* 92B14 800A2314 0800E003 */  jr         $ra
    /* 92B18 800A2318 010040A0 */   sb        $zero, 0x1($v0)
endlabel func_800A2310
