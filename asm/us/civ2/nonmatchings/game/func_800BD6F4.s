.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BD6F4, 0x120

glabel func_800BD6F4
    /* ADEF4 800BD6F4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ADEF8 800BD6F8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ADEFC 800BD6FC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* ADF00 800BD700 3000B2AF */  sw         $s2, 0x30($sp)
    /* ADF04 800BD704 21908000 */  addu       $s2, $a0, $zero
    /* ADF08 800BD708 2800B0AF */  sw         $s0, 0x28($sp)
    /* ADF0C 800BD70C 21800000 */  addu       $s0, $zero, $zero
    /* ADF10 800BD710 3400BFAF */  sw         $ra, 0x34($sp)
    /* ADF14 800BD714 12004018 */  blez       $v0, .L800BD760
    /* ADF18 800BD718 2C00B1AF */   sw        $s1, 0x2C($sp)
    /* ADF1C 800BD71C 21880000 */  addu       $s1, $zero, $zero
  .L800BD720:
    /* ADF20 800BD720 1180013C */  lui        $at, %hi(D_80113ED8)
    /* ADF24 800BD724 21083100 */  addu       $at, $at, $s1
    /* ADF28 800BD728 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* ADF2C 800BD72C 00000000 */  nop
    /* ADF30 800BD730 05005214 */  bne        $v0, $s2, .L800BD748
    /* ADF34 800BD734 00000000 */   nop
    /* ADF38 800BD738 0C25020C */  jal        func_80089430
    /* ADF3C 800BD73C 21200002 */   addu      $a0, $s0, $zero
    /* ADF40 800BD740 0C63000C */  jal        func_80018C30
    /* ADF44 800BD744 21200000 */   addu      $a0, $zero, $zero
  .L800BD748:
    /* ADF48 800BD748 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ADF4C 800BD74C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ADF50 800BD750 01001026 */  addiu      $s0, $s0, 0x1
    /* ADF54 800BD754 2A100202 */  slt        $v0, $s0, $v0
    /* ADF58 800BD758 F1FF4014 */  bnez       $v0, .L800BD720
    /* ADF5C 800BD75C 58003126 */   addiu     $s1, $s1, 0x58
  .L800BD760:
    /* ADF60 800BD760 1280103C */  lui        $s0, %hi(D_80120D84)
    /* ADF64 800BD764 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* ADF68 800BD768 21200002 */  addu       $a0, $s0, $zero
    /* ADF6C 800BD76C 04000524 */  addiu      $a1, $zero, 0x4
    /* ADF70 800BD770 2C010224 */  addiu      $v0, $zero, 0x12C
    /* ADF74 800BD774 1000A2AF */  sw         $v0, 0x10($sp)
    /* ADF78 800BD778 C8000224 */  addiu      $v0, $zero, 0xC8
    /* ADF7C 800BD77C 04000624 */  addiu      $a2, $zero, 0x4
    /* ADF80 800BD780 21380000 */  addu       $a3, $zero, $zero
    /* ADF84 800BD784 1400A2AF */  sw         $v0, 0x14($sp)
    /* ADF88 800BD788 1800A0AF */  sw         $zero, 0x18($sp)
    /* ADF8C 800BD78C 6FE5020C */  jal        func_800B95BC
    /* ADF90 800BD790 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* ADF94 800BD794 0C80053C */  lui        $a1, %hi(func_800BCDB0)
    /* ADF98 800BD798 B0CDA524 */  addiu      $a1, $a1, %lo(func_800BCDB0)
    /* ADF9C 800BD79C 1280013C */  lui        $at, %hi(D_801210C4)
    /* ADFA0 800BD7A0 C41032AC */  sw         $s2, %lo(D_801210C4)($at)
    /* ADFA4 800BD7A4 82DF030C */  jal        func_800F7E08
    /* ADFA8 800BD7A8 21200002 */   addu      $a0, $s0, $zero
    /* ADFAC 800BD7AC 0C80023C */  lui        $v0, %hi(func_800BD3E4)
    /* ADFB0 800BD7B0 E4D34224 */  addiu      $v0, $v0, %lo(func_800BD3E4)
    /* ADFB4 800BD7B4 1280013C */  lui        $at, %hi(D_80120DE8)
    /* ADFB8 800BD7B8 E80D22AC */  sw         $v0, %lo(D_80120DE8)($at)
    /* ADFBC 800BD7BC E5DE030C */  jal        func_800F7B94
    /* ADFC0 800BD7C0 21200002 */   addu      $a0, $s0, $zero
    /* ADFC4 800BD7C4 F8EA030C */  jal        func_800FABE0
    /* ADFC8 800BD7C8 2C000426 */   addiu     $a0, $s0, 0x2C
    /* ADFCC 800BD7CC 05DD030C */  jal        func_800F7414
    /* ADFD0 800BD7D0 2C000426 */   addiu     $a0, $s0, 0x2C
  .L800BD7D4:
    /* ADFD4 800BD7D4 1280023C */  lui        $v0, %hi(D_80120DA0)
    /* ADFD8 800BD7D8 A00D428C */  lw         $v0, %lo(D_80120DA0)($v0)
    /* ADFDC 800BD7DC 00000000 */  nop
    /* ADFE0 800BD7E0 05004010 */  beqz       $v0, .L800BD7F8
    /* ADFE4 800BD7E4 00000000 */   nop
    /* ADFE8 800BD7E8 1E12040C */  jal        func_80104878
    /* ADFEC 800BD7EC 00000000 */   nop
    /* ADFF0 800BD7F0 F5F50208 */  j          .L800BD7D4
    /* ADFF4 800BD7F4 00000000 */   nop
  .L800BD7F8:
    /* ADFF8 800BD7F8 3400BF8F */  lw         $ra, 0x34($sp)
    /* ADFFC 800BD7FC 3000B28F */  lw         $s2, 0x30($sp)
    /* AE000 800BD800 2C00B18F */  lw         $s1, 0x2C($sp)
    /* AE004 800BD804 2800B08F */  lw         $s0, 0x28($sp)
    /* AE008 800BD808 3800BD27 */  addiu      $sp, $sp, 0x38
    /* AE00C 800BD80C 0800E003 */  jr         $ra
    /* AE010 800BD810 00000000 */   nop
endlabel func_800BD6F4
