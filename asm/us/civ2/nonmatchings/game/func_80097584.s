.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097584, 0x8

glabel func_80097584
    /* 87D84 80097584 0800E003 */  jr         $ra
    /* 87D88 80097588 21100000 */   addu      $v0, $zero, $zero
endlabel func_80097584
