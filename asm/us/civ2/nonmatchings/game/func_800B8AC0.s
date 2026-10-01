.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8AC0, 0x10

glabel func_800B8AC0
    /* A92C0 800B8AC0 320285A4 */  sh         $a1, 0x232($a0)
    /* A92C4 800B8AC4 340286A4 */  sh         $a2, 0x234($a0)
    /* A92C8 800B8AC8 0800E003 */  jr         $ra
    /* A92CC 800B8ACC 360287A4 */   sh        $a3, 0x236($a0)
endlabel func_800B8AC0
