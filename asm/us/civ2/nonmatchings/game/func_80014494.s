.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014494, 0x28

glabel func_80014494
    /* 4C94 80014494 1680033C */  lui        $v1, %hi(D_801584D8)
    /* 4C98 80014498 D8846324 */  addiu      $v1, $v1, %lo(D_801584D8)
    /* 4C9C 8001449C 02000224 */  addiu      $v0, $zero, 0x2
    /* 4CA0 800144A0 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L800144A4:
    /* 4CA4 800144A4 000060A0 */  sb         $zero, 0x0($v1)
    /* 4CA8 800144A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4CAC 800144AC FDFF4414 */  bne        $v0, $a0, .L800144A4
    /* 4CB0 800144B0 01006324 */   addiu     $v1, $v1, 0x1
    /* 4CB4 800144B4 0800E003 */  jr         $ra
    /* 4CB8 800144B8 00000000 */   nop
endlabel func_80014494
