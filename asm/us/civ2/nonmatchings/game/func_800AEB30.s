.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AEB30, 0x200

glabel func_800AEB30
    /* 9F330 800AEB30 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 9F334 800AEB34 2800BFAF */  sw         $ra, 0x28($sp)
    /* 9F338 800AEB38 2400B5AF */  sw         $s5, 0x24($sp)
    /* 9F33C 800AEB3C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9F340 800AEB40 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9F344 800AEB44 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9F348 800AEB48 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F34C 800AEB4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F350 800AEB50 21808000 */  addu       $s0, $a0, $zero
    /* 9F354 800AEB54 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* 9F358 800AEB58 6A000006 */  bltz       $s0, .L800AED04
    /* 9F35C 800AEB5C FFFF1424 */   addiu     $s4, $zero, -0x1
    /* 9F360 800AEB60 40101000 */  sll        $v0, $s0, 1
    /* 9F364 800AEB64 21105000 */  addu       $v0, $v0, $s0
    /* 9F368 800AEB68 80100200 */  sll        $v0, $v0, 2
    /* 9F36C 800AEB6C 21105000 */  addu       $v0, $v0, $s0
    /* 9F370 800AEB70 40100200 */  sll        $v0, $v0, 1
    /* 9F374 800AEB74 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 9F378 800AEB78 21082200 */  addu       $at, $at, $v0
    /* 9F37C 800AEB7C B4D63384 */  lh         $s3, %lo(D_8010D6B4)($at)
    /* 9F380 800AEB80 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 9F384 800AEB84 21082200 */  addu       $at, $at, $v0
    /* 9F388 800AEB88 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 9F38C 800AEB8C 00000000 */  nop
    /* 9F390 800AEB90 0D004006 */  bltz       $s2, .L800AEBC8
    /* 9F394 800AEB94 21180000 */   addu      $v1, $zero, $zero
    /* 9F398 800AEB98 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 9F39C 800AEB9C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 9F3A0 800AEBA0 00000000 */  nop
    /* 9F3A4 800AEBA4 2A104202 */  slt        $v0, $s2, $v0
    /* 9F3A8 800AEBA8 07004010 */  beqz       $v0, .L800AEBC8
    /* 9F3AC 800AEBAC 00000000 */   nop
    /* 9F3B0 800AEBB0 05006006 */  bltz       $s3, .L800AEBC8
    /* 9F3B4 800AEBB4 00000000 */   nop
    /* 9F3B8 800AEBB8 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 9F3BC 800AEBBC 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 9F3C0 800AEBC0 00000000 */  nop
    /* 9F3C4 800AEBC4 2A186202 */  slt        $v1, $s3, $v0
  .L800AEBC8:
    /* 9F3C8 800AEBC8 03006010 */  beqz       $v1, .L800AEBD8
    /* 9F3CC 800AEBCC 21206002 */   addu      $a0, $s3, $zero
    /* 9F3D0 800AEBD0 F760020C */  jal        func_800983DC
    /* 9F3D4 800AEBD4 21284002 */   addu      $a1, $s2, $zero
  .L800AEBD8:
    /* 9F3D8 800AEBD8 E6ED010C */  jal        func_8007B798
    /* 9F3DC 800AEBDC 21200002 */   addu      $a0, $s0, $zero
    /* 9F3E0 800AEBE0 21804000 */  addu       $s0, $v0, $zero
    /* 9F3E4 800AEBE4 48000006 */  bltz       $s0, .L800AED08
    /* 9F3E8 800AEBE8 2110A002 */   addu      $v0, $s5, $zero
    /* 9F3EC 800AEBEC 40101000 */  sll        $v0, $s0, 1
  .L800AEBF0:
    /* 9F3F0 800AEBF0 21105000 */  addu       $v0, $v0, $s0
    /* 9F3F4 800AEBF4 80100200 */  sll        $v0, $v0, 2
    /* 9F3F8 800AEBF8 21105000 */  addu       $v0, $v0, $s0
    /* 9F3FC 800AEBFC 40100200 */  sll        $v0, $v0, 1
    /* 9F400 800AEC00 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 9F404 800AEC04 21082200 */  addu       $at, $at, $v0
    /* 9F408 800AEC08 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 9F40C 800AEC0C 00000000 */  nop
    /* 9F410 800AEC10 80100300 */  sll        $v0, $v1, 2
    /* 9F414 800AEC14 21104300 */  addu       $v0, $v0, $v1
    /* 9F418 800AEC18 80100200 */  sll        $v0, $v0, 2
    /* 9F41C 800AEC1C 1180013C */  lui        $at, %hi(D_8010D285)
    /* 9F420 800AEC20 21082200 */  addu       $at, $at, $v0
    /* 9F424 800AEC24 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 9F428 800AEC28 00000000 */  nop
    /* 9F42C 800AEC2C 02004010 */  beqz       $v0, .L800AEC38
    /* 9F430 800AEC30 01001124 */   addiu     $s1, $zero, 0x1
    /* 9F434 800AEC34 02001124 */  addiu      $s1, $zero, 0x2
  .L800AEC38:
    /* 9F438 800AEC38 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 9F43C 800AEC3C 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 9F440 800AEC40 00000000 */  nop
    /* 9F444 800AEC44 0E000216 */  bne        $s0, $v0, .L800AEC80
    /* 9F448 800AEC48 40101000 */   sll       $v0, $s0, 1
    /* 9F44C 800AEC4C 21105000 */  addu       $v0, $v0, $s0
    /* 9F450 800AEC50 80100200 */  sll        $v0, $v0, 2
    /* 9F454 800AEC54 21105000 */  addu       $v0, $v0, $s0
    /* 9F458 800AEC58 40100200 */  sll        $v0, $v0, 1
    /* 9F45C 800AEC5C 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 9F460 800AEC60 21082200 */  addu       $at, $at, $v0
    /* 9F464 800AEC64 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 9F468 800AEC68 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 9F46C 800AEC6C B4AC4290 */  lbu        $v0, %lo(D_8011ACB4)($v0)
    /* 9F470 800AEC70 00000000 */  nop
    /* 9F474 800AEC74 02006214 */  bne        $v1, $v0, .L800AEC80
    /* 9F478 800AEC78 40101000 */   sll       $v0, $s0, 1
    /* 9F47C 800AEC7C 04001124 */  addiu      $s1, $zero, 0x4
  .L800AEC80:
    /* 9F480 800AEC80 21105000 */  addu       $v0, $v0, $s0
    /* 9F484 800AEC84 80100200 */  sll        $v0, $v0, 2
    /* 9F488 800AEC88 21105000 */  addu       $v0, $v0, $s0
    /* 9F48C 800AEC8C 40100200 */  sll        $v0, $v0, 1
    /* 9F490 800AEC90 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 9F494 800AEC94 21082200 */  addu       $at, $at, $v0
    /* 9F498 800AEC98 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 9F49C 800AEC9C 00000000 */  nop
    /* 9F4A0 800AECA0 80100300 */  sll        $v0, $v1, 2
    /* 9F4A4 800AECA4 21104300 */  addu       $v0, $v0, $v1
    /* 9F4A8 800AECA8 80100200 */  sll        $v0, $v0, 2
    /* 9F4AC 800AECAC 1180013C */  lui        $at, %hi(D_8010D285)
    /* 9F4B0 800AECB0 21082200 */  addu       $at, $at, $v0
    /* 9F4B4 800AECB4 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 9F4B8 800AECB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F4BC 800AECBC 08006214 */  bne        $v1, $v0, .L800AECE0
    /* 9F4C0 800AECC0 2A109102 */   slt       $v0, $s4, $s1
    /* 9F4C4 800AECC4 21206002 */  addu       $a0, $s3, $zero
    /* 9F4C8 800AECC8 2662020C */  jal        func_80098898
    /* 9F4CC 800AECCC 21284002 */   addu      $a1, $s2, $zero
    /* 9F4D0 800AECD0 03004004 */  bltz       $v0, .L800AECE0
    /* 9F4D4 800AECD4 2A109102 */   slt       $v0, $s4, $s1
    /* 9F4D8 800AECD8 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 9F4DC 800AECDC 2A109102 */  slt        $v0, $s4, $s1
  .L800AECE0:
    /* 9F4E0 800AECE0 03004010 */  beqz       $v0, .L800AECF0
    /* 9F4E4 800AECE4 00000000 */   nop
    /* 9F4E8 800AECE8 21A02002 */  addu       $s4, $s1, $zero
    /* 9F4EC 800AECEC 21A80002 */  addu       $s5, $s0, $zero
  .L800AECF0:
    /* 9F4F0 800AECF0 BFED010C */  jal        func_8007B6FC
    /* 9F4F4 800AECF4 21200002 */   addu      $a0, $s0, $zero
    /* 9F4F8 800AECF8 21804000 */  addu       $s0, $v0, $zero
    /* 9F4FC 800AECFC BCFF0106 */  bgez       $s0, .L800AEBF0
    /* 9F500 800AED00 40101000 */   sll       $v0, $s0, 1
  .L800AED04:
    /* 9F504 800AED04 2110A002 */  addu       $v0, $s5, $zero
  .L800AED08:
    /* 9F508 800AED08 2800BF8F */  lw         $ra, 0x28($sp)
    /* 9F50C 800AED0C 2400B58F */  lw         $s5, 0x24($sp)
    /* 9F510 800AED10 2000B48F */  lw         $s4, 0x20($sp)
    /* 9F514 800AED14 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9F518 800AED18 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F51C 800AED1C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F520 800AED20 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F524 800AED24 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 9F528 800AED28 0800E003 */  jr         $ra
    /* 9F52C 800AED2C 00000000 */   nop
endlabel func_800AEB30
