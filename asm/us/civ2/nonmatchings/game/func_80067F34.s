.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80067F34, 0x44

glabel func_80067F34
    /* 58734 80067F34 0B008004 */  bltz       $a0, .L80067F64
    /* 58738 80067F38 21280000 */   addu      $a1, $zero, $zero
    /* 5873C 80067F3C 1280033C */  lui        $v1, %hi(D_8011A272)
    /* 58740 80067F40 72A26390 */  lbu        $v1, %lo(D_8011A272)($v1)
    /* 58744 80067F44 07000224 */  addiu      $v0, $zero, 0x7
    /* 58748 80067F48 23184300 */  subu       $v1, $v0, $v1
  .L80067F4C:
    /* 5874C 80067F4C 1800A300 */  mult       $a1, $v1
    /* 58750 80067F50 12380000 */  mflo       $a3
    /* 58754 80067F54 0100A524 */  addiu      $a1, $a1, 0x1
    /* 58758 80067F58 2A108500 */  slt        $v0, $a0, $a1
    /* 5875C 80067F5C FBFF4010 */  beqz       $v0, .L80067F4C
    /* 58760 80067F60 2130C700 */   addu      $a2, $a2, $a3
  .L80067F64:
    /* 58764 80067F64 C2170600 */  srl        $v0, $a2, 31
    /* 58768 80067F68 2110C200 */  addu       $v0, $a2, $v0
    /* 5876C 80067F6C 43100200 */  sra        $v0, $v0, 1
    /* 58770 80067F70 0800E003 */  jr         $ra
    /* 58774 80067F74 01004224 */   addiu     $v0, $v0, 0x1
endlabel func_80067F34
