.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE360, 0x170

glabel func_800CE360
    /* BEB60 800CE360 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BEB64 800CE364 2800BFAF */  sw         $ra, 0x28($sp)
    /* BEB68 800CE368 21408000 */  addu       $t0, $a0, $zero
    /* BEB6C 800CE36C 48010485 */  lh         $a0, 0x148($t0)
    /* BEB70 800CE370 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* BEB74 800CE374 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* BEB78 800CE378 00000000 */  nop
    /* BEB7C 800CE37C 26208200 */  xor        $a0, $a0, $v0
    /* BEB80 800CE380 2B200400 */  sltu       $a0, $zero, $a0
    /* BEB84 800CE384 FC08038D */  lw         $v1, 0x8FC($t0)
    /* BEB88 800CE388 00000000 */  nop
    /* BEB8C 800CE38C 03006238 */  xori       $v0, $v1, 0x3
    /* BEB90 800CE390 0100422C */  sltiu      $v0, $v0, 0x1
    /* BEB94 800CE394 25208200 */  or         $a0, $a0, $v0
    /* BEB98 800CE398 0100622C */  sltiu      $v0, $v1, 0x1
    /* BEB9C 800CE39C 25208200 */  or         $a0, $a0, $v0
    /* BEBA0 800CE3A0 02006338 */  xori       $v1, $v1, 0x2
    /* BEBA4 800CE3A4 0100632C */  sltiu      $v1, $v1, 0x1
    /* BEBA8 800CE3A8 25208300 */  or         $a0, $a0, $v1
    /* BEBAC 800CE3AC EA040285 */  lh         $v0, 0x4EA($t0)
    /* BEBB0 800CE3B0 00000000 */  nop
    /* BEBB4 800CE3B4 01004238 */  xori       $v0, $v0, 0x1
    /* BEBB8 800CE3B8 2B100200 */  sltu       $v0, $zero, $v0
    /* BEBBC 800CE3BC 24208200 */  and        $a0, $a0, $v0
    /* BEBC0 800CE3C0 3F008014 */  bnez       $a0, .L800CE4C0
    /* BEBC4 800CE3C4 2A000224 */   addiu     $v0, $zero, 0x2A
    /* BEBC8 800CE3C8 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BEBCC 800CE3CC BA000224 */  addiu      $v0, $zero, 0xBA
    /* BEBD0 800CE3D0 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BEBD4 800CE3D4 4C000224 */  addiu      $v0, $zero, 0x4C
    /* BEBD8 800CE3D8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BEBDC 800CE3DC CC000224 */  addiu      $v0, $zero, 0xCC
    /* BEBE0 800CE3E0 1100C014 */  bnez       $a2, .L800CE428
    /* BEBE4 800CE3E4 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* BEBE8 800CE3E8 BA000224 */  addiu      $v0, $zero, 0xBA
    /* BEBEC 800CE3EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* BEBF0 800CE3F0 2000A427 */  addiu      $a0, $sp, 0x20
    /* BEBF4 800CE3F4 40070525 */  addiu      $a1, $t0, 0x740
    /* BEBF8 800CE3F8 84000625 */  addiu      $a2, $t0, 0x84
    /* BEBFC 800CE3FC 89EE030C */  jal        func_800FBA24
    /* BEC00 800CE400 2A000724 */   addiu     $a3, $zero, 0x2A
    /* BEC04 800CE404 1800A297 */  lhu        $v0, 0x18($sp)
    /* BEC08 800CE408 00000000 */  nop
    /* BEC0C 800CE40C 01004224 */  addiu      $v0, $v0, 0x1
    /* BEC10 800CE410 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BEC14 800CE414 1A00A297 */  lhu        $v0, 0x1A($sp)
    /* BEC18 800CE418 00000000 */  nop
    /* BEC1C 800CE41C 01004224 */  addiu      $v0, $v0, 0x1
    /* BEC20 800CE420 19390308 */  j          .L800CE464
    /* BEC24 800CE424 1A00A2A7 */   sh        $v0, 0x1A($sp)
  .L800CE428:
    /* BEC28 800CE428 0700A010 */  beqz       $a1, .L800CE448
    /* BEC2C 800CE42C 2000A427 */   addiu     $a0, $sp, 0x20
    /* BEC30 800CE430 1800A787 */  lh         $a3, 0x18($sp)
    /* BEC34 800CE434 1A00A287 */  lh         $v0, 0x1A($sp)
    /* BEC38 800CE438 00000000 */  nop
    /* BEC3C 800CE43C 1000A2AF */  sw         $v0, 0x10($sp)
    /* BEC40 800CE440 17390308 */  j          .L800CE45C
    /* BEC44 800CE444 D4070525 */   addiu     $a1, $t0, 0x7D4
  .L800CE448:
    /* BEC48 800CE448 1800A787 */  lh         $a3, 0x18($sp)
    /* BEC4C 800CE44C 1A00A287 */  lh         $v0, 0x1A($sp)
    /* BEC50 800CE450 00000000 */  nop
    /* BEC54 800CE454 1000A2AF */  sw         $v0, 0x10($sp)
    /* BEC58 800CE458 68080525 */  addiu      $a1, $t0, 0x868
  .L800CE45C:
    /* BEC5C 800CE45C 89EE030C */  jal        func_800FBA24
    /* BEC60 800CE460 84000625 */   addiu     $a2, $t0, 0x84
  .L800CE464:
    /* BEC64 800CE464 1800A297 */  lhu        $v0, 0x18($sp)
    /* BEC68 800CE468 00000000 */  nop
    /* BEC6C 800CE46C 05004224 */  addiu      $v0, $v0, 0x5
    /* BEC70 800CE470 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BEC74 800CE474 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* BEC78 800CE478 00000000 */  nop
    /* BEC7C 800CE47C 05004224 */  addiu      $v0, $v0, 0x5
    /* BEC80 800CE480 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BEC84 800CE484 1A00A297 */  lhu        $v0, 0x1A($sp)
    /* BEC88 800CE488 00000000 */  nop
    /* BEC8C 800CE48C 03004224 */  addiu      $v0, $v0, 0x3
    /* BEC90 800CE490 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BEC94 800CE494 1E00A297 */  lhu        $v0, 0x1E($sp)
    /* BEC98 800CE498 00000000 */  nop
    /* BEC9C 800CE49C 03004224 */  addiu      $v0, $v0, 0x3
    /* BECA0 800CE4A0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* BECA4 800CE4A4 1000A0AF */  sw         $zero, 0x10($sp)
    /* BECA8 800CE4A8 21200000 */  addu       $a0, $zero, $zero
    /* BECAC 800CE4AC 1680053C */  lui        $a1, %hi(D_801591E8)
    /* BECB0 800CE4B0 E891A524 */  addiu      $a1, $a1, %lo(D_801591E8)
    /* BECB4 800CE4B4 06000624 */  addiu      $a2, $zero, 0x6
    /* BECB8 800CE4B8 320F040C */  jal        func_80103CC8
    /* BECBC 800CE4BC 1800A727 */   addiu     $a3, $sp, 0x18
  .L800CE4C0:
    /* BECC0 800CE4C0 2800BF8F */  lw         $ra, 0x28($sp)
    /* BECC4 800CE4C4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* BECC8 800CE4C8 0800E003 */  jr         $ra
    /* BECCC 800CE4CC 00000000 */   nop
endlabel func_800CE360
