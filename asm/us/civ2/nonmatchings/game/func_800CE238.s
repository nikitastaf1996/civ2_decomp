.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE238, 0x128

glabel func_800CE238
    /* BEA38 800CE238 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BEA3C 800CE23C 2800BFAF */  sw         $ra, 0x28($sp)
    /* BEA40 800CE240 21188000 */  addu       $v1, $a0, $zero
    /* BEA44 800CE244 10000224 */  addiu      $v0, $zero, 0x10
    /* BEA48 800CE248 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BEA4C 800CE24C BA000224 */  addiu      $v0, $zero, 0xBA
    /* BEA50 800CE250 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BEA54 800CE254 2A000224 */  addiu      $v0, $zero, 0x2A
    /* BEA58 800CE258 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BEA5C 800CE25C CC000224 */  addiu      $v0, $zero, 0xCC
    /* BEA60 800CE260 1500C014 */  bnez       $a2, .L800CE2B8
    /* BEA64 800CE264 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* BEA68 800CE268 BA000224 */  addiu      $v0, $zero, 0xBA
    /* BEA6C 800CE26C 1000A2AF */  sw         $v0, 0x10($sp)
    /* BEA70 800CE270 2000A427 */  addiu      $a0, $sp, 0x20
    /* BEA74 800CE274 84056524 */  addiu      $a1, $v1, 0x584
    /* BEA78 800CE278 84006624 */  addiu      $a2, $v1, 0x84
    /* BEA7C 800CE27C 89EE030C */  jal        func_800FBA24
    /* BEA80 800CE280 10000724 */   addiu     $a3, $zero, 0x10
    /* BEA84 800CE284 1800A297 */  lhu        $v0, 0x18($sp)
    /* BEA88 800CE288 00000000 */  nop
    /* BEA8C 800CE28C 01004224 */  addiu      $v0, $v0, 0x1
    /* BEA90 800CE290 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BEA94 800CE294 1A00A297 */  lhu        $v0, 0x1A($sp)
    /* BEA98 800CE298 00000000 */  nop
    /* BEA9C 800CE29C 01004224 */  addiu      $v0, $v0, 0x1
    /* BEAA0 800CE2A0 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BEAA4 800CE2A4 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* BEAA8 800CE2A8 00000000 */  nop
    /* BEAAC 800CE2AC 01004224 */  addiu      $v0, $v0, 0x1
    /* BEAB0 800CE2B0 BD380308 */  j          .L800CE2F4
    /* BEAB4 800CE2B4 1C00A2A7 */   sh        $v0, 0x1C($sp)
  .L800CE2B8:
    /* BEAB8 800CE2B8 0700A010 */  beqz       $a1, .L800CE2D8
    /* BEABC 800CE2BC 2000A427 */   addiu     $a0, $sp, 0x20
    /* BEAC0 800CE2C0 1800A787 */  lh         $a3, 0x18($sp)
    /* BEAC4 800CE2C4 1A00A287 */  lh         $v0, 0x1A($sp)
    /* BEAC8 800CE2C8 00000000 */  nop
    /* BEACC 800CE2CC 1000A2AF */  sw         $v0, 0x10($sp)
    /* BEAD0 800CE2D0 BB380308 */  j          .L800CE2EC
    /* BEAD4 800CE2D4 18066524 */   addiu     $a1, $v1, 0x618
  .L800CE2D8:
    /* BEAD8 800CE2D8 1800A787 */  lh         $a3, 0x18($sp)
    /* BEADC 800CE2DC 1A00A287 */  lh         $v0, 0x1A($sp)
    /* BEAE0 800CE2E0 00000000 */  nop
    /* BEAE4 800CE2E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* BEAE8 800CE2E8 AC066524 */  addiu      $a1, $v1, 0x6AC
  .L800CE2EC:
    /* BEAEC 800CE2EC 89EE030C */  jal        func_800FBA24
    /* BEAF0 800CE2F0 84006624 */   addiu     $a2, $v1, 0x84
  .L800CE2F4:
    /* BEAF4 800CE2F4 1800A297 */  lhu        $v0, 0x18($sp)
    /* BEAF8 800CE2F8 00000000 */  nop
    /* BEAFC 800CE2FC 07004224 */  addiu      $v0, $v0, 0x7
    /* BEB00 800CE300 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BEB04 800CE304 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* BEB08 800CE308 00000000 */  nop
    /* BEB0C 800CE30C 07004224 */  addiu      $v0, $v0, 0x7
    /* BEB10 800CE310 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BEB14 800CE314 1A00A297 */  lhu        $v0, 0x1A($sp)
    /* BEB18 800CE318 00000000 */  nop
    /* BEB1C 800CE31C 03004224 */  addiu      $v0, $v0, 0x3
    /* BEB20 800CE320 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BEB24 800CE324 1E00A297 */  lhu        $v0, 0x1E($sp)
    /* BEB28 800CE328 00000000 */  nop
    /* BEB2C 800CE32C 03004224 */  addiu      $v0, $v0, 0x3
    /* BEB30 800CE330 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* BEB34 800CE334 1000A0AF */  sw         $zero, 0x10($sp)
    /* BEB38 800CE338 21200000 */  addu       $a0, $zero, $zero
    /* BEB3C 800CE33C 1680053C */  lui        $a1, %hi(D_801591E4)
    /* BEB40 800CE340 E491A524 */  addiu      $a1, $a1, %lo(D_801591E4)
    /* BEB44 800CE344 02000624 */  addiu      $a2, $zero, 0x2
    /* BEB48 800CE348 320F040C */  jal        func_80103CC8
    /* BEB4C 800CE34C 1800A727 */   addiu     $a3, $sp, 0x18
    /* BEB50 800CE350 2800BF8F */  lw         $ra, 0x28($sp)
    /* BEB54 800CE354 3000BD27 */  addiu      $sp, $sp, 0x30
    /* BEB58 800CE358 0800E003 */  jr         $ra
    /* BEB5C 800CE35C 00000000 */   nop
endlabel func_800CE238
