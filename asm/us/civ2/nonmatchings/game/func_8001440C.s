.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001440C, 0x3C

glabel func_8001440C
    /* 4C0C 8001440C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C10 80014410 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4C14 80014414 3ED7030C */  jal        func_800F5CF8
    /* 4C18 80014418 00000000 */   nop
    /* 4C1C 8001441C 02004104 */  bgez       $v0, .L80014428
    /* 4C20 80014420 00000000 */   nop
    /* 4C24 80014424 FF034224 */  addiu      $v0, $v0, 0x3FF
  .L80014428:
    /* 4C28 80014428 0180043C */  lui        $a0, %hi(D_8001007C)
    /* 4C2C 8001442C 7C008424 */  addiu      $a0, $a0, %lo(D_8001007C)
    /* 4C30 80014430 4551000C */  jal        func_80014514
    /* 4C34 80014434 832A0200 */   sra       $a1, $v0, 10
    /* 4C38 80014438 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4C3C 8001443C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4C40 80014440 0800E003 */  jr         $ra
    /* 4C44 80014444 00000000 */   nop
endlabel func_8001440C
