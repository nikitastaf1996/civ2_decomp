.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24EC, 0x8

glabel func_800B24EC
    /* A2CEC 800B24EC 0800E003 */  jr         $ra
    /* A2CF0 800B24F0 140180AC */   sw        $zero, 0x114($a0)
endlabel func_800B24EC
