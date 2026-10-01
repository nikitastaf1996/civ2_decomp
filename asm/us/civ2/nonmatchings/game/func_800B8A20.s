.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8A20, 0xC

glabel func_800B8A20
    /* A9220 800B8A20 180285A4 */  sh         $a1, 0x218($a0)
    /* A9224 800B8A24 0800E003 */  jr         $ra
    /* A9228 800B8A28 160280A4 */   sh        $zero, 0x216($a0)
endlabel func_800B8A20
