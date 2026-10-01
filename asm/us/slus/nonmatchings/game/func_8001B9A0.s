.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B9A0, 0xBC

glabel func_8001B9A0
    /* C1A0 8001B9A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C1A4 8001B9A4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C1A8 8001B9A8 1800B2AF */  sw         $s2, 0x18($sp)
    /* C1AC 8001B9AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* C1B0 8001B9B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1B4 8001B9B4 01001024 */  addiu      $s0, $zero, 0x1
    /* C1B8 8001B9B8 1780123C */  lui        $s2, %hi(D_80172F18)
    /* C1BC 8001B9BC 182F5226 */  addiu      $s2, $s2, %lo(D_80172F18)
    /* C1C0 8001B9C0 FF001124 */  addiu      $s1, $zero, 0xFF
    /* C1C4 8001B9C4 00141000 */  sll        $v0, $s0, 16
  .L8001B9C8:
    /* C1C8 8001B9C8 C3130200 */  sra        $v0, $v0, 15
    /* C1CC 8001B9CC 21105200 */  addu       $v0, $v0, $s2
    /* C1D0 8001B9D0 00004484 */  lh         $a0, 0x0($v0)
    /* C1D4 8001B9D4 00000000 */  nop
    /* C1D8 8001B9D8 04009110 */  beq        $a0, $s1, .L8001B9EC
    /* C1DC 8001B9DC 01000226 */   addiu     $v0, $s0, 0x1
    /* C1E0 8001B9E0 1315010C */  jal        SsVabClose
    /* C1E4 8001B9E4 00000000 */   nop
    /* C1E8 8001B9E8 01000226 */  addiu      $v0, $s0, 0x1
  .L8001B9EC:
    /* C1EC 8001B9EC 21804000 */  addu       $s0, $v0, $zero
    /* C1F0 8001B9F0 00140200 */  sll        $v0, $v0, 16
    /* C1F4 8001B9F4 03140200 */  sra        $v0, $v0, 16
    /* C1F8 8001B9F8 08004228 */  slti       $v0, $v0, 0x8
    /* C1FC 8001B9FC F2FF4014 */  bnez       $v0, .L8001B9C8
    /* C200 8001BA00 00141000 */   sll       $v0, $s0, 16
    /* C204 8001BA04 01001024 */  addiu      $s0, $zero, 0x1
    /* C208 8001BA08 1780043C */  lui        $a0, %hi(D_80172F18)
    /* C20C 8001BA0C 182F8424 */  addiu      $a0, $a0, %lo(D_80172F18)
    /* C210 8001BA10 FF000324 */  addiu      $v1, $zero, 0xFF
    /* C214 8001BA14 00141000 */  sll        $v0, $s0, 16
  .L8001BA18:
    /* C218 8001BA18 C3130200 */  sra        $v0, $v0, 15
    /* C21C 8001BA1C 21104400 */  addu       $v0, $v0, $a0
    /* C220 8001BA20 000043A4 */  sh         $v1, 0x0($v0)
    /* C224 8001BA24 01000226 */  addiu      $v0, $s0, 0x1
    /* C228 8001BA28 21804000 */  addu       $s0, $v0, $zero
    /* C22C 8001BA2C 00140200 */  sll        $v0, $v0, 16
    /* C230 8001BA30 03140200 */  sra        $v0, $v0, 16
    /* C234 8001BA34 08004228 */  slti       $v0, $v0, 0x8
    /* C238 8001BA38 F7FF4014 */  bnez       $v0, .L8001BA18
    /* C23C 8001BA3C 00141000 */   sll       $v0, $s0, 16
    /* C240 8001BA40 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C244 8001BA44 1800B28F */  lw         $s2, 0x18($sp)
    /* C248 8001BA48 1400B18F */  lw         $s1, 0x14($sp)
    /* C24C 8001BA4C 1000B08F */  lw         $s0, 0x10($sp)
    /* C250 8001BA50 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C254 8001BA54 0800E003 */  jr         $ra
    /* C258 8001BA58 00000000 */   nop
endlabel func_8001B9A0
