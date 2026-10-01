.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C2198, 0xA8

glabel func_800C2198
    /* B2998 800C2198 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B299C 800C219C 2400B1AF */  sw         $s1, 0x24($sp)
    /* B29A0 800C21A0 21888000 */  addu       $s1, $a0, $zero
    /* B29A4 800C21A4 2000B0AF */  sw         $s0, 0x20($sp)
    /* B29A8 800C21A8 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B29AC 800C21AC 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B29B0 800C21B0 21200002 */  addu       $a0, $s0, $zero
    /* B29B4 800C21B4 08000524 */  addiu      $a1, $zero, 0x8
    /* B29B8 800C21B8 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B29BC 800C21BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* B29C0 800C21C0 C8000224 */  addiu      $v0, $zero, 0xC8
    /* B29C4 800C21C4 08000624 */  addiu      $a2, $zero, 0x8
    /* B29C8 800C21C8 01000724 */  addiu      $a3, $zero, 0x1
    /* B29CC 800C21CC 2800BFAF */  sw         $ra, 0x28($sp)
    /* B29D0 800C21D0 1400A2AF */  sw         $v0, 0x14($sp)
    /* B29D4 800C21D4 1800A0AF */  sw         $zero, 0x18($sp)
    /* B29D8 800C21D8 6FE5020C */  jal        func_800B95BC
    /* B29DC 800C21DC 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B29E0 800C21E0 1280013C */  lui        $at, %hi(D_801210C4)
    /* B29E4 800C21E4 C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* B29E8 800C21E8 50E6020C */  jal        func_800B9940
    /* B29EC 800C21EC 21200002 */   addu      $a0, $s0, $zero
    /* B29F0 800C21F0 0C80053C */  lui        $a1, %hi(func_800C1C60)
    /* B29F4 800C21F4 601CA524 */  addiu      $a1, $a1, %lo(func_800C1C60)
    /* B29F8 800C21F8 82DF030C */  jal        func_800F7E08
    /* B29FC 800C21FC 21200002 */   addu      $a0, $s0, $zero
    /* B2A00 800C2200 E5DE030C */  jal        func_800F7B94
    /* B2A04 800C2204 21200002 */   addu      $a0, $s0, $zero
    /* B2A08 800C2208 F8EA030C */  jal        func_800FABE0
    /* B2A0C 800C220C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B2A10 800C2210 05DD030C */  jal        func_800F7414
    /* B2A14 800C2214 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B2A18 800C2218 14DE030C */  jal        func_800F7850
    /* B2A1C 800C221C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B2A20 800C2220 29E5020C */  jal        func_800B94A4
    /* B2A24 800C2224 21200002 */   addu      $a0, $s0, $zero
    /* B2A28 800C2228 2800BF8F */  lw         $ra, 0x28($sp)
    /* B2A2C 800C222C 2400B18F */  lw         $s1, 0x24($sp)
    /* B2A30 800C2230 2000B08F */  lw         $s0, 0x20($sp)
    /* B2A34 800C2234 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B2A38 800C2238 0800E003 */  jr         $ra
    /* B2A3C 800C223C 00000000 */   nop
endlabel func_800C2198
