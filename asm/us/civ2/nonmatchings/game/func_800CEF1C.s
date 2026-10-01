.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEF1C, 0x1C

glabel func_800CEF1C
    /* BF71C 800CEF1C C3100400 */  sra        $v0, $a0, 3
    /* BF720 800CEF20 0000A2AC */  sw         $v0, 0x0($a1)
    /* BF724 800CEF24 07008430 */  andi       $a0, $a0, 0x7
    /* BF728 800CEF28 01000224 */  addiu      $v0, $zero, 0x1
    /* BF72C 800CEF2C 04108200 */  sllv       $v0, $v0, $a0
    /* BF730 800CEF30 0800E003 */  jr         $ra
    /* BF734 800CEF34 0000C2AC */   sw        $v0, 0x0($a2)
endlabel func_800CEF1C
