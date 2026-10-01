.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084B84, 0xB0

glabel func_80084B84
    /* 75384 80084B84 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 75388 80084B88 2000BFAF */  sw         $ra, 0x20($sp)
    /* 7538C 80084B8C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 75390 80084B90 1800B2AF */  sw         $s2, 0x18($sp)
    /* 75394 80084B94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 75398 80084B98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7539C 80084B9C 1680053C */  lui        $a1, %hi(D_801587EC)
    /* 753A0 80084BA0 EC87A524 */  addiu      $a1, $a1, %lo(D_801587EC)
    /* 753A4 80084BA4 9D87030C */  jal        func_800E1E74
    /* 753A8 80084BA8 21888000 */   addu      $s1, $a0, $zero
    /* 753AC 80084BAC 19004010 */  beqz       $v0, .L80084C14
    /* 753B0 80084BB0 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 753B4 80084BB4 1680053C */  lui        $a1, %hi(D_801587F0)
    /* 753B8 80084BB8 F087A524 */  addiu      $a1, $a1, %lo(D_801587F0)
    /* 753BC 80084BBC 9D87030C */  jal        func_800E1E74
    /* 753C0 80084BC0 21202002 */   addu      $a0, $s1, $zero
    /* 753C4 80084BC4 05004014 */  bnez       $v0, .L80084BDC
    /* 753C8 80084BC8 FDFF1224 */   addiu     $s2, $zero, -0x3
    /* 753CC 80084BCC 05130208 */  j          .L80084C14
    /* 753D0 80084BD0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80084BD4:
    /* 753D4 80084BD4 04130208 */  j          .L80084C10
    /* 753D8 80084BD8 21900002 */   addu      $s2, $s0, $zero
  .L80084BDC:
    /* 753DC 80084BDC 21800000 */  addu       $s0, $zero, $zero
    /* 753E0 80084BE0 1180133C */  lui        $s3, %hi(D_8010C29C)
    /* 753E4 80084BE4 9CC27326 */  addiu      $s3, $s3, %lo(D_8010C29C)
  .L80084BE8:
    /* 753E8 80084BE8 00291000 */  sll        $a1, $s0, 4
    /* 753EC 80084BEC 21202002 */  addu       $a0, $s1, $zero
    /* 753F0 80084BF0 9D87030C */  jal        func_800E1E74
    /* 753F4 80084BF4 2128B300 */   addu      $a1, $a1, $s3
    /* 753F8 80084BF8 F6FF4010 */  beqz       $v0, .L80084BD4
    /* 753FC 80084BFC 00000000 */   nop
    /* 75400 80084C00 01001026 */  addiu      $s0, $s0, 0x1
    /* 75404 80084C04 5D00022A */  slti       $v0, $s0, 0x5D
    /* 75408 80084C08 F7FF4014 */  bnez       $v0, .L80084BE8
    /* 7540C 80084C0C 00000000 */   nop
  .L80084C10:
    /* 75410 80084C10 21104002 */  addu       $v0, $s2, $zero
  .L80084C14:
    /* 75414 80084C14 2000BF8F */  lw         $ra, 0x20($sp)
    /* 75418 80084C18 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7541C 80084C1C 1800B28F */  lw         $s2, 0x18($sp)
    /* 75420 80084C20 1400B18F */  lw         $s1, 0x14($sp)
    /* 75424 80084C24 1000B08F */  lw         $s0, 0x10($sp)
    /* 75428 80084C28 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7542C 80084C2C 0800E003 */  jr         $ra
    /* 75430 80084C30 00000000 */   nop
endlabel func_80084B84
