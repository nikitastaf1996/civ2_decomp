.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B4F8, 0x28

glabel func_8002B4F8
    /* 1BCF8 8002B4F8 0580033C */  lui        $v1, %hi(D_80056498)
    /* 1BCFC 8002B4FC 98646324 */  addiu      $v1, $v1, %lo(D_80056498)
    /* 1BD00 8002B500 02000224 */  addiu      $v0, $zero, 0x2
    /* 1BD04 8002B504 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L8002B508:
    /* 1BD08 8002B508 000060A0 */  sb         $zero, 0x0($v1)
    /* 1BD0C 8002B50C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1BD10 8002B510 FDFF4414 */  bne        $v0, $a0, .L8002B508
    /* 1BD14 8002B514 01006324 */   addiu     $v1, $v1, 0x1
    /* 1BD18 8002B518 0800E003 */  jr         $ra
    /* 1BD1C 8002B51C 00000000 */   nop
endlabel func_8002B4F8
