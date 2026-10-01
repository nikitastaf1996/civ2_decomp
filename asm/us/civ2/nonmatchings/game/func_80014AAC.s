.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014AAC, 0x38

glabel func_80014AAC
    /* 52AC 80014AAC 40180400 */  sll        $v1, $a0, 1
    /* 52B0 80014AB0 21186400 */  addu       $v1, $v1, $a0
    /* 52B4 80014AB4 80180300 */  sll        $v1, $v1, 2
    /* 52B8 80014AB8 23186400 */  subu       $v1, $v1, $a0
    /* 52BC 80014ABC C0180300 */  sll        $v1, $v1, 3
    /* 52C0 80014AC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 52C4 80014AC4 0410A200 */  sllv       $v0, $v0, $a1
    /* 52C8 80014AC8 1180013C */  lui        $at, %hi(D_80113F04)
    /* 52CC 80014ACC 21082300 */  addu       $at, $at, $v1
    /* 52D0 80014AD0 043F238C */  lw         $v1, %lo(D_80113F04)($at)
    /* 52D4 80014AD4 00000000 */  nop
    /* 52D8 80014AD8 24104300 */  and        $v0, $v0, $v1
    /* 52DC 80014ADC 0800E003 */  jr         $ra
    /* 52E0 80014AE0 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_80014AAC
