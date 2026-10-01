.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6B2C, 0x8

glabel func_800C6B2C
    /* B732C 800C6B2C 0800E003 */  jr         $ra
    /* B7330 800C6B30 000080A0 */   sb        $zero, 0x0($a0)
endlabel func_800C6B2C
