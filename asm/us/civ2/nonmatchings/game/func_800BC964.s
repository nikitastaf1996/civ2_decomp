.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BC964, 0xCC

glabel func_800BC964
    /* AD164 800BC964 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AD168 800BC968 2400B1AF */  sw         $s1, 0x24($sp)
    /* AD16C 800BC96C 21888000 */  addu       $s1, $a0, $zero
    /* AD170 800BC970 2000B0AF */  sw         $s0, 0x20($sp)
    /* AD174 800BC974 1280103C */  lui        $s0, %hi(D_80120D84)
    /* AD178 800BC978 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* AD17C 800BC97C 21200002 */  addu       $a0, $s0, $zero
    /* AD180 800BC980 01000524 */  addiu      $a1, $zero, 0x1
    /* AD184 800BC984 2C010224 */  addiu      $v0, $zero, 0x12C
    /* AD188 800BC988 1000A2AF */  sw         $v0, 0x10($sp)
    /* AD18C 800BC98C C8000224 */  addiu      $v0, $zero, 0xC8
    /* AD190 800BC990 01000624 */  addiu      $a2, $zero, 0x1
    /* AD194 800BC994 21380000 */  addu       $a3, $zero, $zero
    /* AD198 800BC998 2800BFAF */  sw         $ra, 0x28($sp)
    /* AD19C 800BC99C 1400A2AF */  sw         $v0, 0x14($sp)
    /* AD1A0 800BC9A0 1800A0AF */  sw         $zero, 0x18($sp)
    /* AD1A4 800BC9A4 6FE5020C */  jal        func_800B95BC
    /* AD1A8 800BC9A8 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* AD1AC 800BC9AC 0C80053C */  lui        $a1, %hi(func_800BBDAC)
    /* AD1B0 800BC9B0 ACBDA524 */  addiu      $a1, $a1, %lo(func_800BBDAC)
    /* AD1B4 800BC9B4 1280013C */  lui        $at, %hi(D_801210C4)
    /* AD1B8 800BC9B8 C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* AD1BC 800BC9BC 82DF030C */  jal        func_800F7E08
    /* AD1C0 800BC9C0 21200002 */   addu      $a0, $s0, $zero
    /* AD1C4 800BC9C4 0C80023C */  lui        $v0, %hi(func_800BC614)
    /* AD1C8 800BC9C8 14C64224 */  addiu      $v0, $v0, %lo(func_800BC614)
    /* AD1CC 800BC9CC 1280013C */  lui        $at, %hi(D_80120DE8)
    /* AD1D0 800BC9D0 E80D22AC */  sw         $v0, %lo(D_80120DE8)($at)
    /* AD1D4 800BC9D4 E5DE030C */  jal        func_800F7B94
    /* AD1D8 800BC9D8 21200002 */   addu      $a0, $s0, $zero
    /* AD1DC 800BC9DC F8EA030C */  jal        func_800FABE0
    /* AD1E0 800BC9E0 2C000426 */   addiu     $a0, $s0, 0x2C
    /* AD1E4 800BC9E4 05DD030C */  jal        func_800F7414
    /* AD1E8 800BC9E8 2C000426 */   addiu     $a0, $s0, 0x2C
    /* AD1EC 800BC9EC 1280013C */  lui        $at, %hi(D_80121134)
    /* AD1F0 800BC9F0 341120A4 */  sh         $zero, %lo(D_80121134)($at)
  .L800BC9F4:
    /* AD1F4 800BC9F4 1280023C */  lui        $v0, %hi(D_80120DA0)
    /* AD1F8 800BC9F8 A00D428C */  lw         $v0, %lo(D_80120DA0)($v0)
    /* AD1FC 800BC9FC 00000000 */  nop
    /* AD200 800BCA00 05004010 */  beqz       $v0, .L800BCA18
    /* AD204 800BCA04 00000000 */   nop
    /* AD208 800BCA08 1E12040C */  jal        func_80104878
    /* AD20C 800BCA0C 00000000 */   nop
    /* AD210 800BCA10 7DF20208 */  j          .L800BC9F4
    /* AD214 800BCA14 00000000 */   nop
  .L800BCA18:
    /* AD218 800BCA18 2800BF8F */  lw         $ra, 0x28($sp)
    /* AD21C 800BCA1C 2400B18F */  lw         $s1, 0x24($sp)
    /* AD220 800BCA20 2000B08F */  lw         $s0, 0x20($sp)
    /* AD224 800BCA24 3000BD27 */  addiu      $sp, $sp, 0x30
    /* AD228 800BCA28 0800E003 */  jr         $ra
    /* AD22C 800BCA2C 00000000 */   nop
endlabel func_800BC964
