.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD784, 0x38

glabel func_800DD784
    /* CDF84 800DD784 40100400 */  sll        $v0, $a0, 1
    /* CDF88 800DD788 21104400 */  addu       $v0, $v0, $a0
    /* CDF8C 800DD78C 80100200 */  sll        $v0, $v0, 2
    /* CDF90 800DD790 23104400 */  subu       $v0, $v0, $a0
    /* CDF94 800DD794 00110200 */  sll        $v0, $v0, 4
    /* CDF98 800DD798 23104400 */  subu       $v0, $v0, $a0
    /* CDF9C 800DD79C C0100200 */  sll        $v0, $v0, 3
    /* CDFA0 800DD7A0 1180033C */  lui        $v1, %hi(D_801176D4)
    /* CDFA4 800DD7A4 D4766324 */  addiu      $v1, $v1, %lo(D_801176D4)
    /* CDFA8 800DD7A8 21104300 */  addu       $v0, $v0, $v1
    /* CDFAC 800DD7AC 21104500 */  addu       $v0, $v0, $a1
    /* CDFB0 800DD7B0 00004290 */  lbu        $v0, 0x0($v0)
    /* CDFB4 800DD7B4 0800E003 */  jr         $ra
    /* CDFB8 800DD7B8 00000000 */   nop
endlabel func_800DD784
