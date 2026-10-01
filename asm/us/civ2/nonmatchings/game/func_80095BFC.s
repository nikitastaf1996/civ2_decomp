.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095BFC, 0x110

glabel func_80095BFC
    /* 863FC 80095BFC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 86400 80095C00 2000BFAF */  sw         $ra, 0x20($sp)
    /* 86404 80095C04 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 86408 80095C08 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8640C 80095C0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 86410 80095C10 1000B0AF */  sw         $s0, 0x10($sp)
    /* 86414 80095C14 21888000 */  addu       $s1, $a0, $zero
    /* 86418 80095C18 2180A000 */  addu       $s0, $a1, $zero
    /* 8641C 80095C1C 2198E000 */  addu       $s3, $a3, $zero
    /* 86420 80095C20 0F000224 */  addiu      $v0, $zero, 0xF
    /* 86424 80095C24 30000212 */  beq        $s0, $v0, .L80095CE8
    /* 86428 80095C28 2190C000 */   addu      $s2, $a2, $zero
    /* 8642C 80095C2C 1000022E */  sltiu      $v0, $s0, 0x10
    /* 86430 80095C30 05004010 */  beqz       $v0, .L80095C48
    /* 86434 80095C34 02000224 */   addiu     $v0, $zero, 0x2
    /* 86438 80095C38 11000212 */  beq        $s0, $v0, .L80095C80
    /* 8643C 80095C3C 21202002 */   addu      $a0, $s1, $zero
    /* 86440 80095C40 34570208 */  j          .L80095CD0
    /* 86444 80095C44 00000000 */   nop
  .L80095C48:
    /* 86448 80095C48 0301022E */  sltiu      $v0, $s0, 0x103
    /* 8644C 80095C4C 1F004010 */  beqz       $v0, .L80095CCC
    /* 86450 80095C50 0001022E */   sltiu     $v0, $s0, 0x100
    /* 86454 80095C54 1E004014 */  bnez       $v0, .L80095CD0
    /* 86458 80095C58 21202002 */   addu      $a0, $s1, $zero
    /* 8645C 80095C5C 061C040C */  jal        func_80107018
    /* 86460 80095C60 21202002 */   addu      $a0, $s1, $zero
    /* 86464 80095C64 21204000 */  addu       $a0, $v0, $zero
    /* 86468 80095C68 FFFF0532 */  andi       $a1, $s0, 0xFFFF
    /* 8646C 80095C6C FFFF4632 */  andi       $a2, $s2, 0xFFFF
    /* 86470 80095C70 551B040C */  jal        func_80106D54
    /* 86474 80095C74 21386002 */   addu      $a3, $s3, $zero
    /* 86478 80095C78 3B570208 */  j          .L80095CEC
    /* 8647C 80095C7C 21100000 */   addu      $v0, $zero, $zero
  .L80095C80:
    /* 86480 80095C80 7C57020C */  jal        func_80095DF0
    /* 86484 80095C84 21202002 */   addu      $a0, $s1, $zero
    /* 86488 80095C88 21204000 */  addu       $a0, $v0, $zero
    /* 8648C 80095C8C 0F008010 */  beqz       $a0, .L80095CCC
    /* 86490 80095C90 03000224 */   addiu     $v0, $zero, 0x3
    /* 86494 80095C94 1800838C */  lw         $v1, 0x18($a0)
    /* 86498 80095C98 00000000 */  nop
    /* 8649C 80095C9C 06006210 */  beq        $v1, $v0, .L80095CB8
    /* 864A0 80095CA0 00000000 */   nop
    /* 864A4 80095CA4 0400848C */  lw         $a0, 0x4($a0)
    /* 864A8 80095CA8 2DD9030C */  jal        func_800F64B4
    /* 864AC 80095CAC 21280000 */   addu      $a1, $zero, $zero
    /* 864B0 80095CB0 31570208 */  j          .L80095CC4
    /* 864B4 80095CB4 00000000 */   nop
  .L80095CB8:
    /* 864B8 80095CB8 1000828C */  lw         $v0, 0x10($a0)
    /* 864BC 80095CBC 00000000 */  nop
    /* 864C0 80095CC0 000040AC */  sw         $zero, 0x0($v0)
  .L80095CC4:
    /* 864C4 80095CC4 8757020C */  jal        func_80095E1C
    /* 864C8 80095CC8 21202002 */   addu      $a0, $s1, $zero
  .L80095CCC:
    /* 864CC 80095CCC 21202002 */  addu       $a0, $s1, $zero
  .L80095CD0:
    /* 864D0 80095CD0 FFFF0532 */  andi       $a1, $s0, 0xFFFF
    /* 864D4 80095CD4 FFFF4632 */  andi       $a2, $s2, 0xFFFF
    /* 864D8 80095CD8 761B040C */  jal        func_80106DD8
    /* 864DC 80095CDC 21386002 */   addu      $a3, $s3, $zero
    /* 864E0 80095CE0 3B570208 */  j          .L80095CEC
    /* 864E4 80095CE4 00000000 */   nop
  .L80095CE8:
    /* 864E8 80095CE8 21100000 */  addu       $v0, $zero, $zero
  .L80095CEC:
    /* 864EC 80095CEC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 864F0 80095CF0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 864F4 80095CF4 1800B28F */  lw         $s2, 0x18($sp)
    /* 864F8 80095CF8 1400B18F */  lw         $s1, 0x14($sp)
    /* 864FC 80095CFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 86500 80095D00 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 86504 80095D04 0800E003 */  jr         $ra
    /* 86508 80095D08 00000000 */   nop
endlabel func_80095BFC
