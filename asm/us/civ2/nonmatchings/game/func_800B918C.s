.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B918C, 0x13C

glabel func_800B918C
    /* A998C 800B918C 88FCBD27 */  addiu      $sp, $sp, -0x378
    /* A9990 800B9190 7403BFAF */  sw         $ra, 0x374($sp)
    /* A9994 800B9194 7003B4AF */  sw         $s4, 0x370($sp)
    /* A9998 800B9198 6C03B3AF */  sw         $s3, 0x36C($sp)
    /* A999C 800B919C 6803B2AF */  sw         $s2, 0x368($sp)
    /* A99A0 800B91A0 6403B1AF */  sw         $s1, 0x364($sp)
    /* A99A4 800B91A4 6003B0AF */  sw         $s0, 0x360($sp)
    /* A99A8 800B91A8 21908000 */  addu       $s2, $a0, $zero
    /* A99AC 800B91AC 2198A000 */  addu       $s3, $a1, $zero
    /* A99B0 800B91B0 2188C000 */  addu       $s1, $a2, $zero
    /* A99B4 800B91B4 21A0E000 */  addu       $s4, $a3, $zero
    /* A99B8 800B91B8 2800A427 */  addiu      $a0, $sp, 0x28
    /* A99BC 800B91BC ADC5020C */  jal        func_800B16B4
    /* A99C0 800B91C0 00200524 */   addiu     $a1, $zero, 0x2000
    /* A99C4 800B91C4 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* A99C8 800B91C8 FCEC030C */  jal        func_800FB3F0
    /* A99CC 800B91CC 21200002 */   addu      $a0, $s0, $zero
    /* A99D0 800B91D0 21200002 */  addu       $a0, $s0, $zero
    /* A99D4 800B91D4 1680023C */  lui        $v0, %hi(D_801588A4)
    /* A99D8 800B91D8 A488428C */  lw         $v0, %lo(D_801588A4)($v0)
    /* A99DC 800B91DC 00000000 */  nop
    /* A99E0 800B91E0 04004010 */  beqz       $v0, .L800B91F4
    /* A99E4 800B91E4 20000524 */   addiu     $a1, $zero, 0x20
    /* A99E8 800B91E8 40000524 */  addiu      $a1, $zero, 0x40
    /* A99EC 800B91EC 1680023C */  lui        $v0, %hi(D_801588A4)
    /* A99F0 800B91F0 A488428C */  lw         $v0, %lo(D_801588A4)($v0)
  .L800B91F4:
    /* A99F4 800B91F4 00000000 */  nop
    /* A99F8 800B91F8 02004010 */  beqz       $v0, .L800B9204
    /* A99FC 800B91FC 18000624 */   addiu     $a2, $zero, 0x18
    /* A9A00 800B9200 30000624 */  addiu      $a2, $zero, 0x30
  .L800B9204:
    /* A9A04 800B9204 27ED030C */  jal        func_800FB49C
    /* A9A08 800B9208 21380000 */   addu      $a3, $zero, $zero
    /* A9A0C 800B920C 2800B027 */  addiu      $s0, $sp, 0x28
    /* A9A10 800B9210 1000A0AF */  sw         $zero, 0x10($sp)
    /* A9A14 800B9214 1400A0AF */  sw         $zero, 0x14($sp)
    /* A9A18 800B9218 1800A0AF */  sw         $zero, 0x18($sp)
    /* A9A1C 800B921C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* A9A20 800B9220 2000B1AF */  sw         $s1, 0x20($sp)
    /* A9A24 800B9224 21200002 */  addu       $a0, $s0, $zero
    /* A9A28 800B9228 21284002 */  addu       $a1, $s2, $zero
    /* A9A2C 800B922C 21306002 */  addu       $a2, $s3, $zero
    /* A9A30 800B9230 2CE0020C */  jal        func_800B80B0
    /* A9A34 800B9234 21380000 */   addu      $a3, $zero, $zero
    /* A9A38 800B9238 0C80053C */  lui        $a1, %hi(func_800B914C)
    /* A9A3C 800B923C 4C91A524 */  addiu      $a1, $a1, %lo(func_800B914C)
    /* A9A40 800B9240 35C9020C */  jal        func_800B24D4
    /* A9A44 800B9244 21200002 */   addu      $a0, $s0, $zero
    /* A9A48 800B9248 21200002 */  addu       $a0, $s0, $zero
    /* A9A4C 800B924C 3BC9020C */  jal        func_800B24EC
    /* A9A50 800B9250 21280000 */   addu      $a1, $zero, $zero
    /* A9A54 800B9254 C802B127 */  addiu      $s1, $sp, 0x2C8
    /* A9A58 800B9258 21200002 */  addu       $a0, $s0, $zero
    /* A9A5C 800B925C 21282002 */  addu       $a1, $s1, $zero
    /* A9A60 800B9260 21308002 */  addu       $a2, $s4, $zero
    /* A9A64 800B9264 3DC9020C */  jal        func_800B24F4
    /* A9A68 800B9268 21380000 */   addu      $a3, $zero, $zero
    /* A9A6C 800B926C 21200002 */  addu       $a0, $s0, $zero
    /* A9A70 800B9270 52DF020C */  jal        func_800B7D48
    /* A9A74 800B9274 21280000 */   addu      $a1, $zero, $zero
    /* A9A78 800B9278 21904000 */  addu       $s2, $v0, $zero
    /* A9A7C 800B927C E800A28F */  lw         $v0, 0xE8($sp)
    /* A9A80 800B9280 1680013C */  lui        $at, %hi(D_80158FD8)
    /* A9A84 800B9284 D88F22AC */  sw         $v0, %lo(D_80158FD8)($at)
    /* A9A88 800B9288 21202002 */  addu       $a0, $s1, $zero
    /* A9A8C 800B928C 12ED030C */  jal        func_800FB448
    /* A9A90 800B9290 02000524 */   addiu     $a1, $zero, 0x2
    /* A9A94 800B9294 21200002 */  addu       $a0, $s0, $zero
    /* A9A98 800B9298 0AC7020C */  jal        func_800B1C28
    /* A9A9C 800B929C 02000524 */   addiu     $a1, $zero, 0x2
    /* A9AA0 800B92A0 21104002 */  addu       $v0, $s2, $zero
    /* A9AA4 800B92A4 7403BF8F */  lw         $ra, 0x374($sp)
    /* A9AA8 800B92A8 7003B48F */  lw         $s4, 0x370($sp)
    /* A9AAC 800B92AC 6C03B38F */  lw         $s3, 0x36C($sp)
    /* A9AB0 800B92B0 6803B28F */  lw         $s2, 0x368($sp)
    /* A9AB4 800B92B4 6403B18F */  lw         $s1, 0x364($sp)
    /* A9AB8 800B92B8 6003B08F */  lw         $s0, 0x360($sp)
    /* A9ABC 800B92BC 7803BD27 */  addiu      $sp, $sp, 0x378
    /* A9AC0 800B92C0 0800E003 */  jr         $ra
    /* A9AC4 800B92C4 00000000 */   nop
endlabel func_800B918C
