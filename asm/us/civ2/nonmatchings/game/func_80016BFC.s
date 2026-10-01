.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80016BFC, 0x3C

glabel func_80016BFC
    /* 73FC 80016BFC 02008018 */  blez       $a0, .L80016C08
    /* 7400 80016C00 04000324 */   addiu     $v1, $zero, 0x4
    /* 7404 80016C04 05000324 */  addiu      $v1, $zero, 0x5
  .L80016C08:
    /* 7408 80016C08 02008228 */  slti       $v0, $a0, 0x2
    /* 740C 80016C0C 02004014 */  bnez       $v0, .L80016C18
    /* 7410 80016C10 03008228 */   slti      $v0, $a0, 0x3
    /* 7414 80016C14 01006324 */  addiu      $v1, $v1, 0x1
  .L80016C18:
    /* 7418 80016C18 02004014 */  bnez       $v0, .L80016C24
    /* 741C 80016C1C 05008228 */   slti      $v0, $a0, 0x5
    /* 7420 80016C20 01006324 */  addiu      $v1, $v1, 0x1
  .L80016C24:
    /* 7424 80016C24 02004014 */  bnez       $v0, .L80016C30
    /* 7428 80016C28 00000000 */   nop
    /* 742C 80016C2C 01006324 */  addiu      $v1, $v1, 0x1
  .L80016C30:
    /* 7430 80016C30 0800E003 */  jr         $ra
    /* 7434 80016C34 21106000 */   addu      $v0, $v1, $zero
endlabel func_80016BFC
