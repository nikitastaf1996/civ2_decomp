.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095E1C, 0x9C

glabel func_80095E1C
    /* 8661C 80095E1C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 86620 80095E20 1800BFAF */  sw         $ra, 0x18($sp)
    /* 86624 80095E24 1400B1AF */  sw         $s1, 0x14($sp)
    /* 86628 80095E28 21888000 */  addu       $s1, $a0, $zero
    /* 8662C 80095E2C 1C002012 */  beqz       $s1, .L80095EA0
    /* 86630 80095E30 1000B0AF */   sw        $s0, 0x10($sp)
    /* 86634 80095E34 331C040C */  jal        func_801070CC
    /* 86638 80095E38 21280000 */   addu      $a1, $zero, $zero
    /* 8663C 80095E3C 21804000 */  addu       $s0, $v0, $zero
    /* 86640 80095E40 17000012 */  beqz       $s0, .L80095EA0
    /* 86644 80095E44 02000224 */   addiu     $v0, $zero, 0x2
    /* 86648 80095E48 1800038E */  lw         $v1, 0x18($s0)
    /* 8664C 80095E4C 00000000 */  nop
    /* 86650 80095E50 05006214 */  bne        $v1, $v0, .L80095E68
    /* 86654 80095E54 00000000 */   nop
    /* 86658 80095E58 1000048E */  lw         $a0, 0x10($s0)
    /* 8665C 80095E5C 3582030C */  jal        __builtin_delete
    /* 86660 80095E60 00000000 */   nop
    /* 86664 80095E64 100000AE */  sw         $zero, 0x10($s0)
  .L80095E68:
    /* 86668 80095E68 0000108E */  lw         $s0, 0x0($s0)
    /* 8666C 80095E6C 89D6030C */  jal        func_800F5A24
    /* 86670 80095E70 21200002 */   addu      $a0, $s0, $zero
    /* 86674 80095E74 C6D5030C */  jal        func_800F5718
    /* 86678 80095E78 21200002 */   addu      $a0, $s0, $zero
    /* 8667C 80095E7C 21202002 */  addu       $a0, $s1, $zero
    /* 86680 80095E80 0980063C */  lui        $a2, %hi(func_80095BFC)
    /* 86684 80095E84 FC5BC624 */  addiu      $a2, $a2, %lo(func_80095BFC)
    /* 86688 80095E88 161C040C */  jal        func_80107058
    /* 8668C 80095E8C FCFF0524 */   addiu     $a1, $zero, -0x4
    /* 86690 80095E90 21202002 */  addu       $a0, $s1, $zero
    /* 86694 80095E94 21280000 */  addu       $a1, $zero, $zero
    /* 86698 80095E98 161C040C */  jal        func_80107058
    /* 8669C 80095E9C 21300000 */   addu      $a2, $zero, $zero
  .L80095EA0:
    /* 866A0 80095EA0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 866A4 80095EA4 1400B18F */  lw         $s1, 0x14($sp)
    /* 866A8 80095EA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 866AC 80095EAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 866B0 80095EB0 0800E003 */  jr         $ra
    /* 866B4 80095EB4 00000000 */   nop
endlabel func_80095E1C
