.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EB40, 0x124

glabel func_8007EB40
    /* 6F340 8007EB40 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6F344 8007EB44 3000BFAF */  sw         $ra, 0x30($sp)
    /* 6F348 8007EB48 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 6F34C 8007EB4C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 6F350 8007EB50 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6F354 8007EB54 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6F358 8007EB58 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6F35C 8007EB5C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6F360 8007EB60 21A88000 */  addu       $s5, $a0, $zero
    /* 6F364 8007EB64 21A0A000 */  addu       $s4, $a1, $zero
    /* 6F368 8007EB68 2188C000 */  addu       $s1, $a2, $zero
    /* 6F36C 8007EB6C 2198E000 */  addu       $s3, $a3, $zero
    /* 6F370 8007EB70 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 6F374 8007EB74 0F270224 */  addiu      $v0, $zero, 0x270F
    /* 6F378 8007EB78 0C0382AF */  sw         $v0, %gp_rel(D_801587E4)($gp)
    /* 6F37C 8007EB7C 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6F380 8007EB80 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6F384 8007EB84 00000000 */  nop
    /* 6F388 8007EB88 2B004018 */  blez       $v0, .L8007EC38
    /* 6F38C 8007EB8C 21800000 */   addu      $s0, $zero, $zero
  .L8007EB90:
    /* 6F390 8007EB90 0B002006 */  bltz       $s1, .L8007EBC0
    /* 6F394 8007EB94 40101000 */   sll       $v0, $s0, 1
    /* 6F398 8007EB98 21105000 */  addu       $v0, $v0, $s0
    /* 6F39C 8007EB9C 80100200 */  sll        $v0, $v0, 2
    /* 6F3A0 8007EBA0 21105000 */  addu       $v0, $v0, $s0
    /* 6F3A4 8007EBA4 40100200 */  sll        $v0, $v0, 1
    /* 6F3A8 8007EBA8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6F3AC 8007EBAC 21082200 */  addu       $at, $at, $v0
    /* 6F3B0 8007EBB0 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 6F3B4 8007EBB4 FF002232 */  andi       $v0, $s1, 0xFF
    /* 6F3B8 8007EBB8 18006214 */  bne        $v1, $v0, .L8007EC1C
    /* 6F3BC 8007EBBC 00000000 */   nop
  .L8007EBC0:
    /* 6F3C0 8007EBC0 16001312 */  beq        $s0, $s3, .L8007EC1C
    /* 6F3C4 8007EBC4 40101000 */   sll       $v0, $s0, 1
    /* 6F3C8 8007EBC8 21105000 */  addu       $v0, $v0, $s0
    /* 6F3CC 8007EBCC 80100200 */  sll        $v0, $v0, 2
    /* 6F3D0 8007EBD0 21105000 */  addu       $v0, $v0, $s0
    /* 6F3D4 8007EBD4 40100200 */  sll        $v0, $v0, 1
    /* 6F3D8 8007EBD8 2120A002 */  addu       $a0, $s5, $zero
    /* 6F3DC 8007EBDC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6F3E0 8007EBE0 21082200 */  addu       $at, $at, $v0
    /* 6F3E4 8007EBE4 B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* 6F3E8 8007EBE8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6F3EC 8007EBEC 21082200 */  addu       $at, $at, $v0
    /* 6F3F0 8007EBF0 B6D62784 */  lh         $a3, %lo(D_8010D6B6)($at)
    /* 6F3F4 8007EBF4 A73B030C */  jal        func_800CEE9C
    /* 6F3F8 8007EBF8 21288002 */   addu      $a1, $s4, $zero
    /* 6F3FC 8007EBFC 21184000 */  addu       $v1, $v0, $zero
    /* 6F400 8007EC00 0C03828F */  lw         $v0, %gp_rel(D_801587E4)($gp)
    /* 6F404 8007EC04 00000000 */  nop
    /* 6F408 8007EC08 2A104300 */  slt        $v0, $v0, $v1
    /* 6F40C 8007EC0C 03004014 */  bnez       $v0, .L8007EC1C
    /* 6F410 8007EC10 00000000 */   nop
    /* 6F414 8007EC14 0C0383AF */  sw         $v1, %gp_rel(D_801587E4)($gp)
    /* 6F418 8007EC18 21900002 */  addu       $s2, $s0, $zero
  .L8007EC1C:
    /* 6F41C 8007EC1C 01001026 */  addiu      $s0, $s0, 0x1
    /* 6F420 8007EC20 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6F424 8007EC24 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6F428 8007EC28 00000000 */  nop
    /* 6F42C 8007EC2C 2A100202 */  slt        $v0, $s0, $v0
    /* 6F430 8007EC30 D7FF4014 */  bnez       $v0, .L8007EB90
    /* 6F434 8007EC34 00000000 */   nop
  .L8007EC38:
    /* 6F438 8007EC38 21104002 */  addu       $v0, $s2, $zero
    /* 6F43C 8007EC3C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 6F440 8007EC40 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 6F444 8007EC44 2800B48F */  lw         $s4, 0x28($sp)
    /* 6F448 8007EC48 2400B38F */  lw         $s3, 0x24($sp)
    /* 6F44C 8007EC4C 2000B28F */  lw         $s2, 0x20($sp)
    /* 6F450 8007EC50 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6F454 8007EC54 1800B08F */  lw         $s0, 0x18($sp)
    /* 6F458 8007EC58 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 6F45C 8007EC5C 0800E003 */  jr         $ra
    /* 6F460 8007EC60 00000000 */   nop
endlabel func_8007EB40
