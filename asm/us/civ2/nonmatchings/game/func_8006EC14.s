.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006EC14, 0xE8

glabel func_8006EC14
    /* 5F414 8006EC14 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 5F418 8006EC18 3000BFAF */  sw         $ra, 0x30($sp)
    /* 5F41C 8006EC1C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 5F420 8006EC20 2800B2AF */  sw         $s2, 0x28($sp)
    /* 5F424 8006EC24 2400B1AF */  sw         $s1, 0x24($sp)
    /* 5F428 8006EC28 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5F42C 8006EC2C 2198A000 */  addu       $s3, $a1, $zero
    /* 5F430 8006EC30 4800B28F */  lw         $s2, 0x48($sp)
    /* 5F434 8006EC34 4C00B08F */  lw         $s0, 0x4C($sp)
    /* 5F438 8006EC38 6402848F */  lw         $a0, %gp_rel(D_8015873C)($gp)
    /* 5F43C 8006EC3C 7CD6030C */  jal        func_800F59F0
    /* 5F440 8006EC40 2188C000 */   addu      $s1, $a2, $zero
    /* 5F444 8006EC44 00024224 */  addiu      $v0, $v0, 0x200
    /* 5F448 8006EC48 1680043C */  lui        $a0, %hi(D_80159338)
    /* 5F44C 8006EC4C 3893848C */  lw         $a0, %lo(D_80159338)($a0)
    /* 5F450 8006EC50 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 5F454 8006EC54 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 5F458 8006EC58 19008300 */  multu      $a0, $v1
    /* 5F45C 8006EC5C 10400000 */  mfhi       $t0
    /* 5F460 8006EC60 82200800 */  srl        $a0, $t0, 2
    /* 5F464 8006EC64 C0181100 */  sll        $v1, $s1, 3
    /* 5F468 8006EC68 23187100 */  subu       $v1, $v1, $s1
    /* 5F46C 8006EC6C 80180300 */  sll        $v1, $v1, 2
    /* 5F470 8006EC70 21187100 */  addu       $v1, $v1, $s1
    /* 5F474 8006EC74 80180300 */  sll        $v1, $v1, 2
    /* 5F478 8006EC78 21186200 */  addu       $v1, $v1, $v0
    /* 5F47C 8006EC7C 66006284 */  lh         $v0, 0x66($v1)
    /* 5F480 8006EC80 00000000 */  nop
    /* 5F484 8006EC84 1B008200 */  divu       $zero, $a0, $v0
    /* 5F488 8006EC88 02004014 */  bnez       $v0, .L8006EC94
    /* 5F48C 8006EC8C 00000000 */   nop
    /* 5F490 8006EC90 0D000700 */  break      7
  .L8006EC94:
    /* 5F494 8006EC94 10100000 */  mfhi       $v0
    /* 5F498 8006EC98 00000000 */  nop
    /* 5F49C 8006EC9C 80100200 */  sll        $v0, $v0, 2
    /* 5F4A0 8006ECA0 21104300 */  addu       $v0, $v0, $v1
    /* 5F4A4 8006ECA4 1C015226 */  addiu      $s2, $s2, 0x11C
    /* 5F4A8 8006ECA8 00941200 */  sll        $s2, $s2, 16
    /* 5F4AC 8006ECAC 0C001026 */  addiu      $s0, $s0, 0xC
    /* 5F4B0 8006ECB0 00841000 */  sll        $s0, $s0, 16
    /* 5F4B4 8006ECB4 03841000 */  sra        $s0, $s0, 16
    /* 5F4B8 8006ECB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5F4BC 8006ECBC 1800A427 */  addiu      $a0, $sp, 0x18
    /* 5F4C0 8006ECC0 6800458C */  lw         $a1, 0x68($v0)
    /* 5F4C4 8006ECC4 21306002 */  addu       $a2, $s3, $zero
    /* 5F4C8 8006ECC8 89EE030C */  jal        func_800FBA24
    /* 5F4CC 8006ECCC 033C1200 */   sra       $a3, $s2, 16
    /* 5F4D0 8006ECD0 6402848F */  lw         $a0, %gp_rel(D_8015873C)($gp)
    /* 5F4D4 8006ECD4 89D6030C */  jal        func_800F5A24
    /* 5F4D8 8006ECD8 00000000 */   nop
    /* 5F4DC 8006ECDC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 5F4E0 8006ECE0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 5F4E4 8006ECE4 2800B28F */  lw         $s2, 0x28($sp)
    /* 5F4E8 8006ECE8 2400B18F */  lw         $s1, 0x24($sp)
    /* 5F4EC 8006ECEC 2000B08F */  lw         $s0, 0x20($sp)
    /* 5F4F0 8006ECF0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 5F4F4 8006ECF4 0800E003 */  jr         $ra
    /* 5F4F8 8006ECF8 00000000 */   nop
endlabel func_8006EC14
