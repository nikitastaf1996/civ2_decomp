.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8AE8, 0x64

glabel func_800D8AE8
    /* C92E8 800D8AE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C92EC 800D8AEC 2400BFAF */  sw         $ra, 0x24($sp)
    /* C92F0 800D8AF0 2000B0AF */  sw         $s0, 0x20($sp)
    /* C92F4 800D8AF4 21808000 */  addu       $s0, $a0, $zero
    /* C92F8 800D8AF8 1800A5A7 */  sh         $a1, 0x18($sp)
    /* C92FC 800D8AFC FCFFC624 */  addiu      $a2, $a2, -0x4
    /* C9300 800D8B00 1A00A6A7 */  sh         $a2, 0x1A($sp)
    /* C9304 800D8B04 40010224 */  addiu      $v0, $zero, 0x140
    /* C9308 800D8B08 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* C930C 800D8B0C F0000224 */  addiu      $v0, $zero, 0xF0
    /* C9310 800D8B10 AD87030C */  jal        func_800E1EB4
    /* C9314 800D8B14 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* C9318 800D8B18 00140200 */  sll        $v0, $v0, 16
    /* C931C 800D8B1C 10000324 */  addiu      $v1, $zero, 0x10
    /* C9320 800D8B20 1000A3AF */  sw         $v1, 0x10($sp)
    /* C9324 800D8B24 21200000 */  addu       $a0, $zero, $zero
    /* C9328 800D8B28 21280002 */  addu       $a1, $s0, $zero
    /* C932C 800D8B2C 03340200 */  sra        $a2, $v0, 16
    /* C9330 800D8B30 320F040C */  jal        func_80103CC8
    /* C9334 800D8B34 1800A727 */   addiu     $a3, $sp, 0x18
    /* C9338 800D8B38 2400BF8F */  lw         $ra, 0x24($sp)
    /* C933C 800D8B3C 2000B08F */  lw         $s0, 0x20($sp)
    /* C9340 800D8B40 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C9344 800D8B44 0800E003 */  jr         $ra
    /* C9348 800D8B48 00000000 */   nop
endlabel func_800D8AE8
