.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094B1C, 0x10

glabel func_80094B1C
    /* 8531C 80094B1C 0C0080A4 */  sh         $zero, 0xC($a0)
    /* 85320 80094B20 0E008294 */  lhu        $v0, 0xE($a0)
    /* 85324 80094B24 0800E003 */  jr         $ra
    /* 85328 80094B28 100082A4 */   sh        $v0, 0x10($a0)
endlabel func_80094B1C
