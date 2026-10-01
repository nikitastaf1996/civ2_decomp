.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E384, 0x150

glabel func_8007E384
    /* 6EB84 8007E384 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6EB88 8007E388 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6EB8C 8007E38C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6EB90 8007E390 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6EB94 8007E394 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6EB98 8007E398 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6EB9C 8007E39C 21808000 */  addu       $s0, $a0, $zero
    /* 6EBA0 8007E3A0 40101000 */  sll        $v0, $s0, 1
    /* 6EBA4 8007E3A4 21105000 */  addu       $v0, $v0, $s0
    /* 6EBA8 8007E3A8 80100200 */  sll        $v0, $v0, 2
    /* 6EBAC 8007E3AC 21105000 */  addu       $v0, $v0, $s0
    /* 6EBB0 8007E3B0 40100200 */  sll        $v0, $v0, 1
    /* 6EBB4 8007E3B4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6EBB8 8007E3B8 21082200 */  addu       $at, $at, $v0
    /* 6EBBC 8007E3BC B4D63184 */  lh         $s1, %lo(D_8010D6B4)($at)
    /* 6EBC0 8007E3C0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6EBC4 8007E3C4 21082200 */  addu       $at, $at, $v0
    /* 6EBC8 8007E3C8 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 6EBCC 8007E3CC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6EBD0 8007E3D0 21082200 */  addu       $at, $at, $v0
    /* 6EBD4 8007E3D4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6EBD8 8007E3D8 00000000 */  nop
    /* 6EBDC 8007E3DC 80100300 */  sll        $v0, $v1, 2
    /* 6EBE0 8007E3E0 21104300 */  addu       $v0, $v0, $v1
    /* 6EBE4 8007E3E4 80100200 */  sll        $v0, $v0, 2
    /* 6EBE8 8007E3E8 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6EBEC 8007E3EC 21082200 */  addu       $at, $at, $v0
    /* 6EBF0 8007E3F0 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6EBF4 8007E3F4 02000224 */  addiu      $v0, $zero, 0x2
    /* 6EBF8 8007E3F8 1E006214 */  bne        $v1, $v0, .L8007E474
    /* 6EBFC 8007E3FC 21980000 */   addu      $s3, $zero, $zero
    /* 6EC00 8007E400 0D004006 */  bltz       $s2, .L8007E438
    /* 6EC04 8007E404 21180000 */   addu      $v1, $zero, $zero
    /* 6EC08 8007E408 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6EC0C 8007E40C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6EC10 8007E410 00000000 */  nop
    /* 6EC14 8007E414 2A104202 */  slt        $v0, $s2, $v0
    /* 6EC18 8007E418 07004010 */  beqz       $v0, .L8007E438
    /* 6EC1C 8007E41C 00000000 */   nop
    /* 6EC20 8007E420 05002006 */  bltz       $s1, .L8007E438
    /* 6EC24 8007E424 00000000 */   nop
    /* 6EC28 8007E428 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6EC2C 8007E42C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6EC30 8007E430 00000000 */  nop
    /* 6EC34 8007E434 2A182202 */  slt        $v1, $s1, $v0
  .L8007E438:
    /* 6EC38 8007E438 07006010 */  beqz       $v1, .L8007E458
    /* 6EC3C 8007E43C 21202002 */   addu      $a0, $s1, $zero
    /* 6EC40 8007E440 F760020C */  jal        func_800983DC
    /* 6EC44 8007E444 21284002 */   addu      $a1, $s2, $zero
    /* 6EC48 8007E448 0A004010 */  beqz       $v0, .L8007E474
    /* 6EC4C 8007E44C 00000000 */   nop
    /* 6EC50 8007E450 1DF90108 */  j          .L8007E474
    /* 6EC54 8007E454 01001324 */   addiu     $s3, $zero, 0x1
  .L8007E458:
    /* 6EC58 8007E458 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 6EC5C 8007E45C 05002216 */  bne        $s1, $v0, .L8007E474
    /* 6EC60 8007E460 01001324 */   addiu     $s3, $zero, 0x1
    /* 6EC64 8007E464 3DF3010C */  jal        func_8007CCF4
    /* 6EC68 8007E468 21200002 */   addu      $a0, $s0, $zero
    /* 6EC6C 8007E46C 2DF90108 */  j          .L8007E4B4
    /* 6EC70 8007E470 00000000 */   nop
  .L8007E474:
    /* 6EC74 8007E474 0D006012 */  beqz       $s3, .L8007E4AC
    /* 6EC78 8007E478 21200002 */   addu      $a0, $s0, $zero
    /* 6EC7C 8007E47C 1BF7010C */  jal        func_8007DC6C
    /* 6EC80 8007E480 01000524 */   addiu     $a1, $zero, 0x1
    /* 6EC84 8007E484 3DF3010C */  jal        func_8007CCF4
    /* 6EC88 8007E488 21200002 */   addu      $a0, $s0, $zero
    /* 6EC8C 8007E48C 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* 6EC90 8007E490 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* 6EC94 8007E494 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 6EC98 8007E498 21302002 */  addu       $a2, $s1, $zero
    /* 6EC9C 8007E49C AD61030C */  jal        func_800D86B4
    /* 6ECA0 8007E4A0 21384002 */   addu      $a3, $s2, $zero
    /* 6ECA4 8007E4A4 2DF90108 */  j          .L8007E4B4
    /* 6ECA8 8007E4A8 00000000 */   nop
  .L8007E4AC:
    /* 6ECAC 8007E4AC 04F2010C */  jal        func_8007C810
    /* 6ECB0 8007E4B0 21200002 */   addu      $a0, $s0, $zero
  .L8007E4B4:
    /* 6ECB4 8007E4B4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6ECB8 8007E4B8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6ECBC 8007E4BC 1800B28F */  lw         $s2, 0x18($sp)
    /* 6ECC0 8007E4C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 6ECC4 8007E4C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 6ECC8 8007E4C8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6ECCC 8007E4CC 0800E003 */  jr         $ra
    /* 6ECD0 8007E4D0 00000000 */   nop
endlabel func_8007E384
