.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C81A4, 0x14

glabel func_800C81A4
    /* B89A4 800C81A4 BC02828C */  lw         $v0, 0x2BC($a0)
    /* B89A8 800C81A8 00000000 */  nop
    /* B89AC 800C81AC 2128A200 */  addu       $a1, $a1, $v0
    /* B89B0 800C81B0 0800E003 */  jr         $ra
    /* B89B4 800C81B4 BC0285AC */   sw        $a1, 0x2BC($a0)
endlabel func_800C81A4
