.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8AD0, 0x190

glabel func_800B8AD0
    /* A92D0 800B8AD0 08FDBD27 */  addiu      $sp, $sp, -0x2F8
    /* A92D4 800B8AD4 F402BFAF */  sw         $ra, 0x2F4($sp)
    /* A92D8 800B8AD8 F002B6AF */  sw         $s6, 0x2F0($sp)
    /* A92DC 800B8ADC EC02B5AF */  sw         $s5, 0x2EC($sp)
    /* A92E0 800B8AE0 E802B4AF */  sw         $s4, 0x2E8($sp)
    /* A92E4 800B8AE4 E402B3AF */  sw         $s3, 0x2E4($sp)
    /* A92E8 800B8AE8 E002B2AF */  sw         $s2, 0x2E0($sp)
    /* A92EC 800B8AEC DC02B1AF */  sw         $s1, 0x2DC($sp)
    /* A92F0 800B8AF0 D802B0AF */  sw         $s0, 0x2D8($sp)
    /* A92F4 800B8AF4 21A08000 */  addu       $s4, $a0, $zero
    /* A92F8 800B8AF8 21A8A000 */  addu       $s5, $a1, $zero
    /* A92FC 800B8AFC 21B0C000 */  addu       $s6, $a2, $zero
    /* A9300 800B8B00 2180E000 */  addu       $s0, $a3, $zero
    /* A9304 800B8B04 0803B18F */  lw         $s1, 0x308($sp)
    /* A9308 800B8B08 0C03B28F */  lw         $s2, 0x30C($sp)
    /* A930C 800B8B0C 1003B38F */  lw         $s3, 0x310($sp)
    /* A9310 800B8B10 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9314 800B8B14 ADC5020C */  jal        func_800B16B4
    /* A9318 800B8B18 00200524 */   addiu     $a1, $zero, 0x2000
    /* A931C 800B8B1C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A9320 800B8B20 1400B0AF */  sw         $s0, 0x14($sp)
    /* A9324 800B8B24 1800B1AF */  sw         $s1, 0x18($sp)
    /* A9328 800B8B28 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* A932C 800B8B2C 2000B3AF */  sw         $s3, 0x20($sp)
    /* A9330 800B8B30 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9334 800B8B34 21288002 */  addu       $a1, $s4, $zero
    /* A9338 800B8B38 2130A002 */  addu       $a2, $s5, $zero
    /* A933C 800B8B3C 2CE0020C */  jal        func_800B80B0
    /* A9340 800B8B40 2138C002 */   addu      $a3, $s6, $zero
    /* A9344 800B8B44 38004014 */  bnez       $v0, .L800B8C28
    /* A9348 800B8B48 2800A427 */   addiu     $a0, $sp, 0x28
    /* A934C 800B8B4C 5800A28F */  lw         $v0, 0x58($sp)
    /* A9350 800B8B50 00000000 */  nop
    /* A9354 800B8B54 04004230 */  andi       $v0, $v0, 0x4
    /* A9358 800B8B58 13004010 */  beqz       $v0, .L800B8BA8
    /* A935C 800B8B5C 00000000 */   nop
    /* A9360 800B8B60 4400A28F */  lw         $v0, 0x44($sp)
    /* A9364 800B8B64 00000000 */  nop
    /* A9368 800B8B68 0F004018 */  blez       $v0, .L800B8BA8
    /* A936C 800B8B6C 21800000 */   addu      $s0, $zero, $zero
    /* A9370 800B8B70 01001124 */  addiu      $s1, $zero, 0x1
    /* A9374 800B8B74 04101102 */  sllv       $v0, $s1, $s0
  .L800B8B78:
    /* A9378 800B8B78 FC0A868F */  lw         $a2, %gp_rel(D_80158FD4)($gp)
    /* A937C 800B8B7C 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9380 800B8B80 21280002 */  addu       $a1, $s0, $zero
    /* A9384 800B8B84 E9C8020C */  jal        func_800B23A4
    /* A9388 800B8B88 24304600 */   and       $a2, $v0, $a2
    /* A938C 800B8B8C 01001026 */  addiu      $s0, $s0, 0x1
    /* A9390 800B8B90 4400A28F */  lw         $v0, 0x44($sp)
    /* A9394 800B8B94 00000000 */  nop
    /* A9398 800B8B98 2A100202 */  slt        $v0, $s0, $v0
    /* A939C 800B8B9C F6FF4014 */  bnez       $v0, .L800B8B78
    /* A93A0 800B8BA0 04101102 */   sllv      $v0, $s1, $s0
    /* A93A4 800B8BA4 2800A427 */  addiu      $a0, $sp, 0x28
  .L800B8BA8:
    /* A93A8 800B8BA8 52DF020C */  jal        func_800B7D48
    /* A93AC 800B8BAC 21280000 */   addu      $a1, $zero, $zero
    /* A93B0 800B8BB0 21B04000 */  addu       $s6, $v0, $zero
    /* A93B4 800B8BB4 E800A28F */  lw         $v0, 0xE8($sp)
    /* A93B8 800B8BB8 00000000 */  nop
    /* A93BC 800B8BBC 000B82AF */  sw         $v0, %gp_rel(D_80158FD8)($gp)
    /* A93C0 800B8BC0 5800A28F */  lw         $v0, 0x58($sp)
    /* A93C4 800B8BC4 00000000 */  nop
    /* A93C8 800B8BC8 04004230 */  andi       $v0, $v0, 0x4
    /* A93CC 800B8BCC 16004010 */  beqz       $v0, .L800B8C28
    /* A93D0 800B8BD0 2800A427 */   addiu     $a0, $sp, 0x28
    /* A93D4 800B8BD4 FC0A80AF */  sw         $zero, %gp_rel(D_80158FD4)($gp)
    /* A93D8 800B8BD8 4400A28F */  lw         $v0, 0x44($sp)
    /* A93DC 800B8BDC 00000000 */  nop
    /* A93E0 800B8BE0 11004018 */  blez       $v0, .L800B8C28
    /* A93E4 800B8BE4 21800000 */   addu      $s0, $zero, $zero
    /* A93E8 800B8BE8 01001124 */  addiu      $s1, $zero, 0x1
    /* A93EC 800B8BEC 2800A427 */  addiu      $a0, $sp, 0x28
  .L800B8BF0:
    /* A93F0 800B8BF0 D8C8020C */  jal        func_800B2360
    /* A93F4 800B8BF4 21280002 */   addu      $a1, $s0, $zero
    /* A93F8 800B8BF8 05004010 */  beqz       $v0, .L800B8C10
    /* A93FC 800B8BFC 04101102 */   sllv      $v0, $s1, $s0
    /* A9400 800B8C00 FC0A838F */  lw         $v1, %gp_rel(D_80158FD4)($gp)
    /* A9404 800B8C04 00000000 */  nop
    /* A9408 800B8C08 25104300 */  or         $v0, $v0, $v1
    /* A940C 800B8C0C FC0A82AF */  sw         $v0, %gp_rel(D_80158FD4)($gp)
  .L800B8C10:
    /* A9410 800B8C10 01001026 */  addiu      $s0, $s0, 0x1
    /* A9414 800B8C14 4400A28F */  lw         $v0, 0x44($sp)
    /* A9418 800B8C18 00000000 */  nop
    /* A941C 800B8C1C 2A100202 */  slt        $v0, $s0, $v0
    /* A9420 800B8C20 F3FF4014 */  bnez       $v0, .L800B8BF0
    /* A9424 800B8C24 2800A427 */   addiu     $a0, $sp, 0x28
  .L800B8C28:
    /* A9428 800B8C28 0AC7020C */  jal        func_800B1C28
    /* A942C 800B8C2C 02000524 */   addiu     $a1, $zero, 0x2
    /* A9430 800B8C30 2110C002 */  addu       $v0, $s6, $zero
    /* A9434 800B8C34 F402BF8F */  lw         $ra, 0x2F4($sp)
    /* A9438 800B8C38 F002B68F */  lw         $s6, 0x2F0($sp)
    /* A943C 800B8C3C EC02B58F */  lw         $s5, 0x2EC($sp)
    /* A9440 800B8C40 E802B48F */  lw         $s4, 0x2E8($sp)
    /* A9444 800B8C44 E402B38F */  lw         $s3, 0x2E4($sp)
    /* A9448 800B8C48 E002B28F */  lw         $s2, 0x2E0($sp)
    /* A944C 800B8C4C DC02B18F */  lw         $s1, 0x2DC($sp)
    /* A9450 800B8C50 D802B08F */  lw         $s0, 0x2D8($sp)
    /* A9454 800B8C54 F802BD27 */  addiu      $sp, $sp, 0x2F8
    /* A9458 800B8C58 0800E003 */  jr         $ra
    /* A945C 800B8C5C 00000000 */   nop
endlabel func_800B8AD0
