.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094B10, 0xC

glabel func_80094B10
    /* 85310 80094B10 080080AC */  sw         $zero, 0x8($a0)
    /* 85314 80094B14 0800E003 */  jr         $ra
    /* 85318 80094B18 040080AC */   sw        $zero, 0x4($a0)
endlabel func_80094B10
