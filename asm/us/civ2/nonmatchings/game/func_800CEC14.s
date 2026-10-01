.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEC14, 0x18

glabel func_800CEC14
    /* BF414 800CEC14 00008384 */  lh         $v1, 0x0($a0)
    /* BF418 800CEC18 0000A294 */  lhu        $v0, 0x0($a1)
    /* BF41C 800CEC1C 00000000 */  nop
    /* BF420 800CEC20 000082A4 */  sh         $v0, 0x0($a0)
    /* BF424 800CEC24 0800E003 */  jr         $ra
    /* BF428 800CEC28 0000A3A4 */   sh        $v1, 0x0($a1)
endlabel func_800CEC14
