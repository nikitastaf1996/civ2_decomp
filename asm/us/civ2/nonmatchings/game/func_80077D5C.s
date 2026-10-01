.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077D5C, 0x30

glabel func_80077D5C
    /* 6855C 80077D5C 40100400 */  sll        $v0, $a0, 1
    /* 68560 80077D60 21104400 */  addu       $v0, $v0, $a0
    /* 68564 80077D64 80100200 */  sll        $v0, $v0, 2
    /* 68568 80077D68 23104400 */  subu       $v0, $v0, $a0
    /* 6856C 80077D6C 00110200 */  sll        $v0, $v0, 4
    /* 68570 80077D70 23104400 */  subu       $v0, $v0, $a0
    /* 68574 80077D74 C0100200 */  sll        $v0, $v0, 3
    /* 68578 80077D78 1180013C */  lui        $at, %hi(D_80117A74)
    /* 6857C 80077D7C 21082200 */  addu       $at, $at, $v0
    /* 68580 80077D80 747A2290 */  lbu        $v0, %lo(D_80117A74)($at)
    /* 68584 80077D84 0800E003 */  jr         $ra
    /* 68588 80077D88 01004230 */   andi      $v0, $v0, 0x1
endlabel func_80077D5C
