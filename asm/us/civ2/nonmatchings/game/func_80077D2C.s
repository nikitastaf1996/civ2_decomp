.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077D2C, 0x30

glabel func_80077D2C
    /* 6852C 80077D2C 40100400 */  sll        $v0, $a0, 1
    /* 68530 80077D30 21104400 */  addu       $v0, $v0, $a0
    /* 68534 80077D34 80100200 */  sll        $v0, $v0, 2
    /* 68538 80077D38 23104400 */  subu       $v0, $v0, $a0
    /* 6853C 80077D3C 00110200 */  sll        $v0, $v0, 4
    /* 68540 80077D40 23104400 */  subu       $v0, $v0, $a0
    /* 68544 80077D44 C0100200 */  sll        $v0, $v0, 3
    /* 68548 80077D48 1180013C */  lui        $at, %hi(D_80117A74)
    /* 6854C 80077D4C 21082200 */  addu       $at, $at, $v0
    /* 68550 80077D50 747A2290 */  lbu        $v0, %lo(D_80117A74)($at)
    /* 68554 80077D54 0800E003 */  jr         $ra
    /* 68558 80077D58 02004230 */   andi      $v0, $v0, 0x2
endlabel func_80077D2C
