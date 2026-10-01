.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BEA94, 0xCC

glabel func_800BEA94
    /* AF294 800BEA94 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* AF298 800BEA98 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* AF29C 800BEA9C 21888000 */  addu       $s1, $a0, $zero
    /* AF2A0 800BEAA0 2800B0AF */  sw         $s0, 0x28($sp)
    /* AF2A4 800BEAA4 1280103C */  lui        $s0, %hi(D_80120D84)
    /* AF2A8 800BEAA8 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* AF2AC 800BEAAC 21200002 */  addu       $a0, $s0, $zero
    /* AF2B0 800BEAB0 02000524 */  addiu      $a1, $zero, 0x2
    /* AF2B4 800BEAB4 2C010224 */  addiu      $v0, $zero, 0x12C
    /* AF2B8 800BEAB8 1000A2AF */  sw         $v0, 0x10($sp)
    /* AF2BC 800BEABC C8000224 */  addiu      $v0, $zero, 0xC8
    /* AF2C0 800BEAC0 02000624 */  addiu      $a2, $zero, 0x2
    /* AF2C4 800BEAC4 21380000 */  addu       $a3, $zero, $zero
    /* AF2C8 800BEAC8 3000BFAF */  sw         $ra, 0x30($sp)
    /* AF2CC 800BEACC 1400A2AF */  sw         $v0, 0x14($sp)
    /* AF2D0 800BEAD0 1800A0AF */  sw         $zero, 0x18($sp)
    /* AF2D4 800BEAD4 6FE5020C */  jal        func_800B95BC
    /* AF2D8 800BEAD8 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* AF2DC 800BEADC 0C80053C */  lui        $a1, %hi(func_800BD870)
    /* AF2E0 800BEAE0 70D8A524 */  addiu      $a1, $a1, %lo(func_800BD870)
    /* AF2E4 800BEAE4 1280013C */  lui        $at, %hi(D_801210C4)
    /* AF2E8 800BEAE8 C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* AF2EC 800BEAEC 1280013C */  lui        $at, %hi(D_80121104)
    /* AF2F0 800BEAF0 041120AC */  sw         $zero, %lo(D_80121104)($at)
    /* AF2F4 800BEAF4 82DF030C */  jal        func_800F7E08
    /* AF2F8 800BEAF8 21200002 */   addu      $a0, $s0, $zero
    /* AF2FC 800BEAFC 0C80023C */  lui        $v0, %hi(func_800BE910)
    /* AF300 800BEB00 10E94224 */  addiu      $v0, $v0, %lo(func_800BE910)
    /* AF304 800BEB04 1280013C */  lui        $at, %hi(D_80120DE8)
    /* AF308 800BEB08 E80D22AC */  sw         $v0, %lo(D_80120DE8)($at)
    /* AF30C 800BEB0C E5DE030C */  jal        func_800F7B94
    /* AF310 800BEB10 21200002 */   addu      $a0, $s0, $zero
    /* AF314 800BEB14 F8EA030C */  jal        func_800FABE0
    /* AF318 800BEB18 2C000426 */   addiu     $a0, $s0, 0x2C
    /* AF31C 800BEB1C 05DD030C */  jal        func_800F7414
    /* AF320 800BEB20 2C000426 */   addiu     $a0, $s0, 0x2C
  .L800BEB24:
    /* AF324 800BEB24 1280023C */  lui        $v0, %hi(D_80120DA0)
    /* AF328 800BEB28 A00D428C */  lw         $v0, %lo(D_80120DA0)($v0)
    /* AF32C 800BEB2C 00000000 */  nop
    /* AF330 800BEB30 05004010 */  beqz       $v0, .L800BEB48
    /* AF334 800BEB34 00000000 */   nop
    /* AF338 800BEB38 1E12040C */  jal        func_80104878
    /* AF33C 800BEB3C 00000000 */   nop
    /* AF340 800BEB40 C9FA0208 */  j          .L800BEB24
    /* AF344 800BEB44 00000000 */   nop
  .L800BEB48:
    /* AF348 800BEB48 3000BF8F */  lw         $ra, 0x30($sp)
    /* AF34C 800BEB4C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* AF350 800BEB50 2800B08F */  lw         $s0, 0x28($sp)
    /* AF354 800BEB54 3800BD27 */  addiu      $sp, $sp, 0x38
    /* AF358 800BEB58 0800E003 */  jr         $ra
    /* AF35C 800BEB5C 00000000 */   nop
endlabel func_800BEA94
