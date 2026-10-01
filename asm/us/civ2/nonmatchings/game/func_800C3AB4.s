.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C3AB4, 0xA8

glabel func_800C3AB4
    /* B42B4 800C3AB4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B42B8 800C3AB8 2400B1AF */  sw         $s1, 0x24($sp)
    /* B42BC 800C3ABC 21888000 */  addu       $s1, $a0, $zero
    /* B42C0 800C3AC0 2000B0AF */  sw         $s0, 0x20($sp)
    /* B42C4 800C3AC4 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B42C8 800C3AC8 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B42CC 800C3ACC 21200002 */  addu       $a0, $s0, $zero
    /* B42D0 800C3AD0 09000524 */  addiu      $a1, $zero, 0x9
    /* B42D4 800C3AD4 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B42D8 800C3AD8 1000A2AF */  sw         $v0, 0x10($sp)
    /* B42DC 800C3ADC C8000224 */  addiu      $v0, $zero, 0xC8
    /* B42E0 800C3AE0 09000624 */  addiu      $a2, $zero, 0x9
    /* B42E4 800C3AE4 01000724 */  addiu      $a3, $zero, 0x1
    /* B42E8 800C3AE8 2800BFAF */  sw         $ra, 0x28($sp)
    /* B42EC 800C3AEC 1400A2AF */  sw         $v0, 0x14($sp)
    /* B42F0 800C3AF0 1800A0AF */  sw         $zero, 0x18($sp)
    /* B42F4 800C3AF4 6FE5020C */  jal        func_800B95BC
    /* B42F8 800C3AF8 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B42FC 800C3AFC 1280013C */  lui        $at, %hi(D_801210C4)
    /* B4300 800C3B00 C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* B4304 800C3B04 50E6020C */  jal        func_800B9940
    /* B4308 800C3B08 21200002 */   addu      $a0, $s0, $zero
    /* B430C 800C3B0C 0C80053C */  lui        $a1, %hi(func_800C2364)
    /* B4310 800C3B10 6423A524 */  addiu      $a1, $a1, %lo(func_800C2364)
    /* B4314 800C3B14 82DF030C */  jal        func_800F7E08
    /* B4318 800C3B18 21200002 */   addu      $a0, $s0, $zero
    /* B431C 800C3B1C E5DE030C */  jal        func_800F7B94
    /* B4320 800C3B20 21200002 */   addu      $a0, $s0, $zero
    /* B4324 800C3B24 F8EA030C */  jal        func_800FABE0
    /* B4328 800C3B28 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B432C 800C3B2C 05DD030C */  jal        func_800F7414
    /* B4330 800C3B30 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B4334 800C3B34 14DE030C */  jal        func_800F7850
    /* B4338 800C3B38 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B433C 800C3B3C 29E5020C */  jal        func_800B94A4
    /* B4340 800C3B40 21200002 */   addu      $a0, $s0, $zero
    /* B4344 800C3B44 2800BF8F */  lw         $ra, 0x28($sp)
    /* B4348 800C3B48 2400B18F */  lw         $s1, 0x24($sp)
    /* B434C 800C3B4C 2000B08F */  lw         $s0, 0x20($sp)
    /* B4350 800C3B50 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B4354 800C3B54 0800E003 */  jr         $ra
    /* B4358 800C3B58 00000000 */   nop
endlabel func_800C3AB4
