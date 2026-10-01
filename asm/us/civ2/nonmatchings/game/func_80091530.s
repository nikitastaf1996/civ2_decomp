.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80091530, 0x98

glabel func_80091530
    /* 81D30 80091530 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 81D34 80091534 2400BFAF */  sw         $ra, 0x24($sp)
    /* 81D38 80091538 2000B0AF */  sw         $s0, 0x20($sp)
    /* 81D3C 8009153C 21808000 */  addu       $s0, $a0, $zero
    /* 81D40 80091540 7907040C */  jal        func_80101DE4
    /* 81D44 80091544 01000424 */   addiu     $a0, $zero, 0x1
    /* 81D48 80091548 BC00028E */  lw         $v0, 0xBC($s0)
    /* 81D4C 8009154C 00000000 */  nop
    /* 81D50 80091550 0400448C */  lw         $a0, 0x4($v0)
    /* 81D54 80091554 D707040C */  jal        func_80101F5C
    /* 81D58 80091558 00000000 */   nop
    /* 81D5C 8009155C 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 81D60 80091560 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 81D64 80091564 40010224 */  addiu      $v0, $zero, 0x140
    /* 81D68 80091568 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 81D6C 8009156C F0000324 */  addiu      $v1, $zero, 0xF0
    /* 81D70 80091570 1E00A3A7 */  sh         $v1, 0x1E($sp)
    /* 81D74 80091574 50038297 */  lhu        $v0, %gp_rel(D_80158828)($gp)
    /* 81D78 80091578 00000000 */  nop
    /* 81D7C 8009157C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 81D80 80091580 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 81D84 80091584 40014224 */  addiu      $v0, $v0, 0x140
    /* 81D88 80091588 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 81D8C 8009158C 1600A3A7 */  sh         $v1, 0x16($sp)
    /* 81D90 80091590 48010426 */  addiu      $a0, $s0, 0x148
    /* 81D94 80091594 B0000526 */  addiu      $a1, $s0, 0xB0
    /* 81D98 80091598 1000A627 */  addiu      $a2, $sp, 0x10
    /* 81D9C 8009159C 1FE4030C */  jal        func_800F907C
    /* 81DA0 800915A0 1800A727 */   addiu     $a3, $sp, 0x18
    /* 81DA4 800915A4 1743020C */  jal        func_80090C5C
    /* 81DA8 800915A8 21200002 */   addu      $a0, $s0, $zero
    /* 81DAC 800915AC 7245020C */  jal        func_800915C8
    /* 81DB0 800915B0 21200002 */   addu      $a0, $s0, $zero
    /* 81DB4 800915B4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 81DB8 800915B8 2000B08F */  lw         $s0, 0x20($sp)
    /* 81DBC 800915BC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 81DC0 800915C0 0800E003 */  jr         $ra
    /* 81DC4 800915C4 00000000 */   nop
endlabel func_80091530
