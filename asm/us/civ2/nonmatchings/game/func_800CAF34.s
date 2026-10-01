.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAF34, 0x8

glabel func_800CAF34
    /* BB734 800CAF34 0800E003 */  jr         $ra
    /* BB738 800CAF38 800C80AC */   sw        $zero, 0xC80($a0)
endlabel func_800CAF34
