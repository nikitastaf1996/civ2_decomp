.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014340, 0xCC

glabel func_80014340
    /* 4B40 80014340 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4B44 80014344 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4B48 80014348 21888000 */  addu       $s1, $a0, $zero
    /* 4B4C 8001434C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4B50 80014350 0180043C */  lui        $a0, %hi(D_80010068)
    /* 4B54 80014354 68008424 */  addiu      $a0, $a0, %lo(D_80010068)
    /* 4B58 80014358 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4B5C 8001435C 4551000C */  jal        func_80014514
    /* 4B60 80014360 2180A000 */   addu      $s0, $a1, $zero
    /* 4B64 80014364 FAFF1026 */  addiu      $s0, $s0, -0x6
    /* 4B68 80014368 21282002 */  addu       $a1, $s1, $zero
    /* 4B6C 8001436C 21200000 */  addu       $a0, $zero, $zero
    /* 4B70 80014370 00002282 */  lb         $v0, 0x0($s1)
    /* 4B74 80014374 00000000 */  nop
    /* 4B78 80014378 1D004010 */  beqz       $v0, .L800143F0
    /* 4B7C 8001437C 21180000 */   addu      $v1, $zero, $zero
    /* 4B80 80014380 0A000624 */  addiu      $a2, $zero, 0xA
    /* 4B84 80014384 20000724 */  addiu      $a3, $zero, 0x20
    /* 4B88 80014388 0000A280 */  lb         $v0, 0x0($a1)
  .L8001438C:
    /* 4B8C 8001438C 00000000 */  nop
    /* 4B90 80014390 06004610 */  beq        $v0, $a2, .L800143AC
    /* 4B94 80014394 00000000 */   nop
    /* 4B98 80014398 07004714 */  bne        $v0, $a3, .L800143B8
    /* 4B9C 8001439C 00000000 */   nop
    /* 4BA0 800143A0 03006324 */  addiu      $v1, $v1, 0x3
    /* 4BA4 800143A4 EF500008 */  j          .L800143BC
    /* 4BA8 800143A8 2120A000 */   addu      $a0, $a1, $zero
  .L800143AC:
    /* 4BAC 800143AC 21200000 */  addu       $a0, $zero, $zero
    /* 4BB0 800143B0 EF500008 */  j          .L800143BC
    /* 4BB4 800143B4 21180000 */   addu      $v1, $zero, $zero
  .L800143B8:
    /* 4BB8 800143B8 06006324 */  addiu      $v1, $v1, 0x6
  .L800143BC:
    /* 4BBC 800143BC 2A107000 */  slt        $v0, $v1, $s0
    /* 4BC0 800143C0 06004014 */  bnez       $v0, .L800143DC
    /* 4BC4 800143C4 00000000 */   nop
    /* 4BC8 800143C8 04008010 */  beqz       $a0, .L800143DC
    /* 4BCC 800143CC 21180000 */   addu      $v1, $zero, $zero
    /* 4BD0 800143D0 000086A0 */  sb         $a2, 0x0($a0)
    /* 4BD4 800143D4 21288000 */  addu       $a1, $a0, $zero
    /* 4BD8 800143D8 21200000 */  addu       $a0, $zero, $zero
  .L800143DC:
    /* 4BDC 800143DC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4BE0 800143E0 0000A280 */  lb         $v0, 0x0($a1)
    /* 4BE4 800143E4 00000000 */  nop
    /* 4BE8 800143E8 E8FF4014 */  bnez       $v0, .L8001438C
    /* 4BEC 800143EC 00000000 */   nop
  .L800143F0:
    /* 4BF0 800143F0 21102002 */  addu       $v0, $s1, $zero
    /* 4BF4 800143F4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4BF8 800143F8 1400B18F */  lw         $s1, 0x14($sp)
    /* 4BFC 800143FC 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C00 80014400 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4C04 80014404 0800E003 */  jr         $ra
    /* 4C08 80014408 00000000 */   nop
endlabel func_80014340
