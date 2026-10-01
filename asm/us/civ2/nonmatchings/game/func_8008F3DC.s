.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008F3DC, 0xCC

glabel func_8008F3DC
    /* 7FBDC 8008F3DC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7FBE0 8008F3E0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7FBE4 8008F3E4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7FBE8 8008F3E8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7FBEC 8008F3EC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7FBF0 8008F3F0 21908000 */  addu       $s2, $a0, $zero
    /* 7FBF4 8008F3F4 2188A000 */  addu       $s1, $a1, $zero
    /* 7FBF8 8008F3F8 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7FBFC 8008F3FC 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7FC00 8008F400 00000000 */  nop
    /* 7FC04 8008F404 21004018 */  blez       $v0, .L8008F48C
    /* 7FC08 8008F408 21800000 */   addu      $s0, $zero, $zero
    /* 7FC0C 8008F40C 40101000 */  sll        $v0, $s0, 1
  .L8008F410:
    /* 7FC10 8008F410 21105000 */  addu       $v0, $v0, $s0
    /* 7FC14 8008F414 80100200 */  sll        $v0, $v0, 2
    /* 7FC18 8008F418 23105000 */  subu       $v0, $v0, $s0
    /* 7FC1C 8008F41C C0280200 */  sll        $a1, $v0, 3
    /* 7FC20 8008F420 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7FC24 8008F424 21082500 */  addu       $at, $at, $a1
    /* 7FC28 8008F428 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 7FC2C 8008F42C FF004232 */  andi       $v0, $s2, 0xFF
    /* 7FC30 8008F430 0F006214 */  bne        $v1, $v0, .L8008F470
    /* 7FC34 8008F434 00000000 */   nop
    /* 7FC38 8008F438 0B002006 */  bltz       $s1, .L8008F468
    /* 7FC3C 8008F43C 21200002 */   addu      $a0, $s0, $zero
    /* 7FC40 8008F440 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7FC44 8008F444 21082500 */  addu       $at, $at, $a1
    /* 7FC48 8008F448 D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* 7FC4C 8008F44C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7FC50 8008F450 21082500 */  addu       $at, $at, $a1
    /* 7FC54 8008F454 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* 7FC58 8008F458 2561020C */  jal        func_80098494
    /* 7FC5C 8008F45C 00000000 */   nop
    /* 7FC60 8008F460 03005114 */  bne        $v0, $s1, .L8008F470
    /* 7FC64 8008F464 21200002 */   addu      $a0, $s0, $zero
  .L8008F468:
    /* 7FC68 8008F468 943A020C */  jal        func_8008EA50
    /* 7FC6C 8008F46C 63000524 */   addiu     $a1, $zero, 0x63
  .L8008F470:
    /* 7FC70 8008F470 01001026 */  addiu      $s0, $s0, 0x1
    /* 7FC74 8008F474 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7FC78 8008F478 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7FC7C 8008F47C 00000000 */  nop
    /* 7FC80 8008F480 2A100202 */  slt        $v0, $s0, $v0
    /* 7FC84 8008F484 E2FF4014 */  bnez       $v0, .L8008F410
    /* 7FC88 8008F488 40101000 */   sll       $v0, $s0, 1
  .L8008F48C:
    /* 7FC8C 8008F48C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7FC90 8008F490 2000B28F */  lw         $s2, 0x20($sp)
    /* 7FC94 8008F494 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7FC98 8008F498 1800B08F */  lw         $s0, 0x18($sp)
    /* 7FC9C 8008F49C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7FCA0 8008F4A0 0800E003 */  jr         $ra
    /* 7FCA4 8008F4A4 00000000 */   nop
endlabel func_8008F3DC
