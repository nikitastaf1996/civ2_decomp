.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089C78, 0x54

glabel func_80089C78
    /* 7A478 80089C78 21300000 */  addu       $a2, $zero, $zero
    /* 7A47C 80089C7C 40100400 */  sll        $v0, $a0, 1
    /* 7A480 80089C80 21104400 */  addu       $v0, $v0, $a0
    /* 7A484 80089C84 80100200 */  sll        $v0, $v0, 2
    /* 7A488 80089C88 23104400 */  subu       $v0, $v0, $a0
    /* 7A48C 80089C8C C0100200 */  sll        $v0, $v0, 3
    /* 7A490 80089C90 1180033C */  lui        $v1, %hi(D_80113F0F)
    /* 7A494 80089C94 0F3F6324 */  addiu      $v1, $v1, %lo(D_80113F0F)
    /* 7A498 80089C98 21184300 */  addu       $v1, $v0, $v1
    /* 7A49C 80089C9C 21106600 */  addu       $v0, $v1, $a2
  .L80089CA0:
    /* 7A4A0 80089CA0 00004280 */  lb         $v0, 0x0($v0)
    /* 7A4A4 80089CA4 00000000 */  nop
    /* 7A4A8 80089CA8 06004510 */  beq        $v0, $a1, .L80089CC4
    /* 7A4AC 80089CAC 01000224 */   addiu     $v0, $zero, 0x1
    /* 7A4B0 80089CB0 0100C624 */  addiu      $a2, $a2, 0x1
    /* 7A4B4 80089CB4 0300C228 */  slti       $v0, $a2, 0x3
    /* 7A4B8 80089CB8 F9FF4014 */  bnez       $v0, .L80089CA0
    /* 7A4BC 80089CBC 21106600 */   addu      $v0, $v1, $a2
    /* 7A4C0 80089CC0 21100000 */  addu       $v0, $zero, $zero
  .L80089CC4:
    /* 7A4C4 80089CC4 0800E003 */  jr         $ra
    /* 7A4C8 80089CC8 00000000 */   nop
endlabel func_80089C78
