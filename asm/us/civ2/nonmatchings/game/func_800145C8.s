.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800145C8, 0x24

glabel func_800145C8
    /* 4DC8 800145C8 03008004 */  bltz       $a0, .L800145D8
    /* 4DCC 800145CC DEFF8328 */   slti      $v1, $a0, -0x22
    /* 4DD0 800145D0 79510008 */  j          .L800145E4
    /* 4DD4 800145D4 21100000 */   addu      $v0, $zero, $zero
  .L800145D8:
    /* 4DD8 800145D8 02006010 */  beqz       $v1, .L800145E4
    /* 4DDC 800145DC 01000224 */   addiu     $v0, $zero, 0x1
    /* 4DE0 800145E0 02000224 */  addiu      $v0, $zero, 0x2
  .L800145E4:
    /* 4DE4 800145E4 0800E003 */  jr         $ra
    /* 4DE8 800145E8 00000000 */   nop
endlabel func_800145C8
