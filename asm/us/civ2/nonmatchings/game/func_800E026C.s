.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E026C, 0x20

glabel func_800E026C
    /* D0A6C 800E026C 21102002 */  addu       $v0, $s1, $zero
    /* D0A70 800E0270 00040324 */  addiu      $v1, $zero, 0x400
  .L800E0274:
    /* D0A74 800E0274 000040A4 */  sh         $zero, 0x0($v0)
    /* D0A78 800E0278 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* D0A7C 800E027C FDFF6014 */  bnez       $v1, .L800E0274
    /* D0A80 800E0280 02004224 */   addiu     $v0, $v0, 0x2
    /* D0A84 800E0284 0800E003 */  jr         $ra
    /* D0A88 800E0288 00000000 */   nop
endlabel func_800E026C
