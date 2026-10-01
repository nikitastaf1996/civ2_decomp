.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EF2C, 0x44

glabel func_8007EF2C
    /* 6F72C 8007EF2C 21200000 */  addu       $a0, $zero, $zero
    /* 6F730 8007EF30 1180073C */  lui        $a3, %hi(D_8010C094)
    /* 6F734 8007EF34 94C0E724 */  addiu      $a3, $a3, %lo(D_8010C094)
    /* 6F738 8007EF38 1180063C */  lui        $a2, %hi(D_8010C0B4)
    /* 6F73C 8007EF3C B4C0C624 */  addiu      $a2, $a2, %lo(D_8010C0B4)
    /* 6F740 8007EF40 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L8007EF44:
    /* 6F744 8007EF44 80100400 */  sll        $v0, $a0, 2
    /* 6F748 8007EF48 21184700 */  addu       $v1, $v0, $a3
    /* 6F74C 8007EF4C 000060AC */  sw         $zero, 0x0($v1)
    /* 6F750 8007EF50 21104600 */  addu       $v0, $v0, $a2
    /* 6F754 8007EF54 000045AC */  sw         $a1, 0x0($v0)
    /* 6F758 8007EF58 01008424 */  addiu      $a0, $a0, 0x1
    /* 6F75C 8007EF5C 08008228 */  slti       $v0, $a0, 0x8
    /* 6F760 8007EF60 F8FF4014 */  bnez       $v0, .L8007EF44
    /* 6F764 8007EF64 00000000 */   nop
    /* 6F768 8007EF68 0800E003 */  jr         $ra
    /* 6F76C 8007EF6C 00000000 */   nop
endlabel func_8007EF2C
