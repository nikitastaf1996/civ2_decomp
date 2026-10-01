.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CE78, 0x64

glabel func_8007CE78
    /* 6D678 8007CE78 1600A004 */  bltz       $a1, .L8007CED4
    /* 6D67C 8007CE7C 40100400 */   sll       $v0, $a0, 1
    /* 6D680 8007CE80 21104400 */  addu       $v0, $v0, $a0
    /* 6D684 8007CE84 80100200 */  sll        $v0, $v0, 2
    /* 6D688 8007CE88 21104400 */  addu       $v0, $v0, $a0
    /* 6D68C 8007CE8C 40300200 */  sll        $a2, $v0, 1
    /* 6D690 8007CE90 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6D694 8007CE94 21082600 */  addu       $at, $at, $a2
    /* 6D698 8007CE98 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 6D69C 8007CE9C 00000000 */  nop
    /* 6D6A0 8007CEA0 0C00A210 */  beq        $a1, $v0, .L8007CED4
    /* 6D6A4 8007CEA4 00000000 */   nop
    /* 6D6A8 8007CEA8 0A008004 */  bltz       $a0, .L8007CED4
    /* 6D6AC 8007CEAC 01000324 */   addiu     $v1, $zero, 0x1
    /* 6D6B0 8007CEB0 0418A300 */  sllv       $v1, $v1, $a1
    /* 6D6B4 8007CEB4 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 6D6B8 8007CEB8 21082600 */  addu       $at, $at, $a2
    /* 6D6BC 8007CEBC BDD62290 */  lbu        $v0, %lo(D_8010D6BD)($at)
    /* 6D6C0 8007CEC0 00000000 */  nop
    /* 6D6C4 8007CEC4 25104300 */  or         $v0, $v0, $v1
    /* 6D6C8 8007CEC8 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 6D6CC 8007CECC 21082600 */  addu       $at, $at, $a2
    /* 6D6D0 8007CED0 BDD622A0 */  sb         $v0, %lo(D_8010D6BD)($at)
  .L8007CED4:
    /* 6D6D4 8007CED4 0800E003 */  jr         $ra
    /* 6D6D8 8007CED8 00000000 */   nop
endlabel func_8007CE78
