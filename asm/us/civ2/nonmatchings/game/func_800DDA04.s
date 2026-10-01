.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DDA04, 0x364

glabel func_800DDA04
    /* CE204 800DDA04 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* CE208 800DDA08 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* CE20C 800DDA0C 5800BEAF */  sw         $fp, 0x58($sp)
    /* CE210 800DDA10 5400B7AF */  sw         $s7, 0x54($sp)
    /* CE214 800DDA14 5000B6AF */  sw         $s6, 0x50($sp)
    /* CE218 800DDA18 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* CE21C 800DDA1C 4800B4AF */  sw         $s4, 0x48($sp)
    /* CE220 800DDA20 4400B3AF */  sw         $s3, 0x44($sp)
    /* CE224 800DDA24 4000B2AF */  sw         $s2, 0x40($sp)
    /* CE228 800DDA28 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* CE22C 800DDA2C 3800B0AF */  sw         $s0, 0x38($sp)
    /* CE230 800DDA30 21F08000 */  addu       $fp, $a0, $zero
    /* CE234 800DDA34 1800A5AF */  sw         $a1, 0x18($sp)
    /* CE238 800DDA38 1280023C */  lui        $v0, %hi(D_8011A280)
    /* CE23C 800DDA3C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* CE240 800DDA40 00000000 */  nop
    /* CE244 800DDA44 BB004018 */  blez       $v0, .L800DDD34
    /* CE248 800DDA48 21980000 */   addu      $s3, $zero, $zero
    /* CE24C 800DDA4C 40100500 */  sll        $v0, $a1, 1
    /* CE250 800DDA50 21104500 */  addu       $v0, $v0, $a1
    /* CE254 800DDA54 80100200 */  sll        $v0, $v0, 2
    /* CE258 800DDA58 23104500 */  subu       $v0, $v0, $a1
    /* CE25C 800DDA5C 00110200 */  sll        $v0, $v0, 4
    /* CE260 800DDA60 2000A2AF */  sw         $v0, 0x20($sp)
    /* CE264 800DDA64 21404000 */  addu       $t0, $v0, $zero
    /* CE268 800DDA68 23400501 */  subu       $t0, $t0, $a1
    /* CE26C 800DDA6C 2000A8AF */  sw         $t0, 0x20($sp)
    /* CE270 800DDA70 40101300 */  sll        $v0, $s3, 1
  .L800DDA74:
    /* CE274 800DDA74 21105300 */  addu       $v0, $v0, $s3
    /* CE278 800DDA78 80100200 */  sll        $v0, $v0, 2
    /* CE27C 800DDA7C 21105300 */  addu       $v0, $v0, $s3
    /* CE280 800DDA80 40800200 */  sll        $s0, $v0, 1
    /* CE284 800DDA84 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* CE288 800DDA88 21083000 */  addu       $at, $at, $s0
    /* CE28C 800DDA8C BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* CE290 800DDA90 00000000 */  nop
    /* CE294 800DDA94 A000C217 */  bne        $fp, $v0, .L800DDD18
    /* CE298 800DDA98 2130C003 */   addu      $a2, $fp, $zero
    /* CE29C 800DDA9C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* CE2A0 800DDAA0 21083000 */  addu       $at, $at, $s0
    /* CE2A4 800DDAA4 B4D63684 */  lh         $s6, %lo(D_8010D6B4)($at)
    /* CE2A8 800DDAA8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* CE2AC 800DDAAC 21083000 */  addu       $at, $at, $s0
    /* CE2B0 800DDAB0 B6D63584 */  lh         $s5, %lo(D_8010D6B6)($at)
    /* CE2B4 800DDAB4 1800A98F */  lw         $t1, 0x18($sp)
    /* CE2B8 800DDAB8 00000000 */  nop
    /* CE2BC 800DDABC 1000A9AF */  sw         $t1, 0x10($sp)
    /* CE2C0 800DDAC0 2120C002 */  addu       $a0, $s6, $zero
    /* CE2C4 800DDAC4 2128A002 */  addu       $a1, $s5, $zero
    /* CE2C8 800DDAC8 6026020C */  jal        func_80089980
    /* CE2CC 800DDACC FFFF0724 */   addiu     $a3, $zero, -0x1
    /* CE2D0 800DDAD0 21904000 */  addu       $s2, $v0, $zero
    /* CE2D4 800DDAD4 90004006 */  bltz       $s2, .L800DDD18
    /* CE2D8 800DDAD8 40101200 */   sll       $v0, $s2, 1
    /* CE2DC 800DDADC 21105200 */  addu       $v0, $v0, $s2
    /* CE2E0 800DDAE0 80100200 */  sll        $v0, $v0, 2
    /* CE2E4 800DDAE4 23105200 */  subu       $v0, $v0, $s2
    /* CE2E8 800DDAE8 C0100200 */  sll        $v0, $v0, 3
    /* CE2EC 800DDAEC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CE2F0 800DDAF0 21082200 */  addu       $at, $at, $v0
    /* CE2F4 800DDAF4 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CE2F8 800DDAF8 1800A88F */  lw         $t0, 0x18($sp)
    /* CE2FC 800DDAFC 00000000 */  nop
    /* CE300 800DDB00 85000215 */  bne        $t0, $v0, .L800DDD18
    /* CE304 800DDB04 00000000 */   nop
    /* CE308 800DDB08 2120C002 */  addu       $a0, $s6, $zero
    /* CE30C 800DDB0C 2561020C */  jal        func_80098494
    /* CE310 800DDB10 2128A002 */   addu      $a1, $s5, $zero
    /* CE314 800DDB14 21B84000 */  addu       $s7, $v0, $zero
    /* CE318 800DDB18 2120C002 */  addu       $a0, $s6, $zero
    /* CE31C 800DDB1C F760020C */  jal        func_800983DC
    /* CE320 800DDB20 2128A002 */   addu      $a1, $s5, $zero
    /* CE324 800DDB24 1B004014 */  bnez       $v0, .L800DDB94
    /* CE328 800DDB28 0F271424 */   addiu     $s4, $zero, 0x270F
    /* CE32C 800DDB2C 2000A98F */  lw         $t1, 0x20($sp)
    /* CE330 800DDB30 00000000 */  nop
    /* CE334 800DDB34 C0100900 */  sll        $v0, $t1, 3
    /* CE338 800DDB38 1180033C */  lui        $v1, %hi(D_80117906)
    /* CE33C 800DDB3C 06796324 */  addiu      $v1, $v1, %lo(D_80117906)
    /* CE340 800DDB40 21104300 */  addu       $v0, $v0, $v1
    /* CE344 800DDB44 21105700 */  addu       $v0, $v0, $s7
    /* CE348 800DDB48 00004290 */  lbu        $v0, 0x0($v0)
    /* CE34C 800DDB4C 00000000 */  nop
    /* CE350 800DDB50 71004010 */  beqz       $v0, .L800DDD18
    /* CE354 800DDB54 00000000 */   nop
    /* CE358 800DDB58 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* CE35C 800DDB5C 21083000 */  addu       $at, $at, $s0
    /* CE360 800DDB60 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* CE364 800DDB64 00000000 */  nop
    /* CE368 800DDB68 80100300 */  sll        $v0, $v1, 2
    /* CE36C 800DDB6C 21104300 */  addu       $v0, $v0, $v1
    /* CE370 800DDB70 80100200 */  sll        $v0, $v0, 2
    /* CE374 800DDB74 1180013C */  lui        $at, %hi(D_8010D28E)
    /* CE378 800DDB78 21082200 */  addu       $at, $at, $v0
    /* CE37C 800DDB7C 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* CE380 800DDB80 07000224 */  addiu      $v0, $zero, 0x7
    /* CE384 800DDB84 64006210 */  beq        $v1, $v0, .L800DDD18
    /* CE388 800DDB88 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* CE38C 800DDB8C 11770308 */  j          .L800DDC44
    /* CE390 800DDB90 00000000 */   nop
  .L800DDB94:
    /* CE394 800DDB94 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* CE398 800DDB98 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CE39C 800DDB9C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CE3A0 800DDBA0 00000000 */  nop
    /* CE3A4 800DDBA4 2E004018 */  blez       $v0, .L800DDC60
    /* CE3A8 800DDBA8 21800000 */   addu      $s0, $zero, $zero
    /* CE3AC 800DDBAC 40101000 */  sll        $v0, $s0, 1
  .L800DDBB0:
    /* CE3B0 800DDBB0 21105000 */  addu       $v0, $v0, $s0
    /* CE3B4 800DDBB4 80100200 */  sll        $v0, $v0, 2
    /* CE3B8 800DDBB8 23105000 */  subu       $v0, $v0, $s0
    /* CE3BC 800DDBBC C0880200 */  sll        $s1, $v0, 3
    /* CE3C0 800DDBC0 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CE3C4 800DDBC4 21083100 */  addu       $at, $at, $s1
    /* CE3C8 800DDBC8 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CE3CC 800DDBCC 00000000 */  nop
    /* CE3D0 800DDBD0 13005E14 */  bne        $v0, $fp, .L800DDC20
    /* CE3D4 800DDBD4 21200002 */   addu      $a0, $s0, $zero
    /* CE3D8 800DDBD8 2A3D020C */  jal        func_8008F4A8
    /* CE3DC 800DDBDC 2128E002 */   addu      $a1, $s7, $zero
    /* CE3E0 800DDBE0 0F004010 */  beqz       $v0, .L800DDC20
    /* CE3E4 800DDBE4 2120C002 */   addu      $a0, $s6, $zero
    /* CE3E8 800DDBE8 1180013C */  lui        $at, %hi(D_80113ED0)
    /* CE3EC 800DDBEC 21083100 */  addu       $at, $at, $s1
    /* CE3F0 800DDBF0 D03E2684 */  lh         $a2, %lo(D_80113ED0)($at)
    /* CE3F4 800DDBF4 1180013C */  lui        $at, %hi(D_80113ED2)
    /* CE3F8 800DDBF8 21083100 */  addu       $at, $at, $s1
    /* CE3FC 800DDBFC D23E2784 */  lh         $a3, %lo(D_80113ED2)($at)
    /* CE400 800DDC00 A73B030C */  jal        func_800CEE9C
    /* CE404 800DDC04 2128A002 */   addu      $a1, $s5, $zero
    /* CE408 800DDC08 21184000 */  addu       $v1, $v0, $zero
    /* CE40C 800DDC0C 2A107400 */  slt        $v0, $v1, $s4
    /* CE410 800DDC10 03004010 */  beqz       $v0, .L800DDC20
    /* CE414 800DDC14 00000000 */   nop
    /* CE418 800DDC18 21A06000 */  addu       $s4, $v1, $zero
    /* CE41C 800DDC1C 21900002 */  addu       $s2, $s0, $zero
  .L800DDC20:
    /* CE420 800DDC20 01001026 */  addiu      $s0, $s0, 0x1
    /* CE424 800DDC24 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CE428 800DDC28 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CE42C 800DDC2C 00000000 */  nop
    /* CE430 800DDC30 2A100202 */  slt        $v0, $s0, $v0
    /* CE434 800DDC34 DEFF4014 */  bnez       $v0, .L800DDBB0
    /* CE438 800DDC38 40101000 */   sll       $v0, $s0, 1
    /* CE43C 800DDC3C 18770308 */  j          .L800DDC60
    /* CE440 800DDC40 00000000 */   nop
  .L800DDC44:
    /* CE444 800DDC44 1000A2AF */  sw         $v0, 0x10($sp)
    /* CE448 800DDC48 2120C002 */  addu       $a0, $s6, $zero
    /* CE44C 800DDC4C 2128A002 */  addu       $a1, $s5, $zero
    /* CE450 800DDC50 2130C003 */  addu       $a2, $fp, $zero
    /* CE454 800DDC54 6026020C */  jal        func_80089980
    /* CE458 800DDC58 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* CE45C 800DDC5C 21904000 */  addu       $s2, $v0, $zero
  .L800DDC60:
    /* CE460 800DDC60 2D004006 */  bltz       $s2, .L800DDD18
    /* CE464 800DDC64 00000000 */   nop
    /* CE468 800DDC68 C2F8010C */  jal        func_8007E308
    /* CE46C 800DDC6C 21206002 */   addu      $a0, $s3, $zero
    /* CE470 800DDC70 40101200 */  sll        $v0, $s2, 1
    /* CE474 800DDC74 21105200 */  addu       $v0, $v0, $s2
    /* CE478 800DDC78 80100200 */  sll        $v0, $v0, 2
    /* CE47C 800DDC7C 23105200 */  subu       $v0, $v0, $s2
    /* CE480 800DDC80 C0800200 */  sll        $s0, $v0, 3
    /* CE484 800DDC84 1180013C */  lui        $at, %hi(D_80113ED0)
    /* CE488 800DDC88 21083000 */  addu       $at, $at, $s0
    /* CE48C 800DDC8C D03E2584 */  lh         $a1, %lo(D_80113ED0)($at)
    /* CE490 800DDC90 1180013C */  lui        $at, %hi(D_80113ED2)
    /* CE494 800DDC94 21083000 */  addu       $at, $at, $s0
    /* CE498 800DDC98 D23E2684 */  lh         $a2, %lo(D_80113ED2)($at)
    /* CE49C 800DDC9C ABEF010C */  jal        func_8007BEAC
    /* CE4A0 800DDCA0 21206002 */   addu      $a0, $s3, $zero
    /* CE4A4 800DDCA4 1280033C */  lui        $v1, %hi(D_8011ACBC)
    /* CE4A8 800DDCA8 BCAC638C */  lw         $v1, %lo(D_8011ACBC)($v1)
    /* CE4AC 800DDCAC 01000224 */  addiu      $v0, $zero, 0x1
    /* CE4B0 800DDCB0 11006214 */  bne        $v1, $v0, .L800DDCF8
    /* CE4B4 800DDCB4 40101300 */   sll       $v0, $s3, 1
    /* CE4B8 800DDCB8 1280023C */  lui        $v0, %hi(D_8011A268)
    /* CE4BC 800DDCBC 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* CE4C0 800DDCC0 00000000 */  nop
    /* CE4C4 800DDCC4 0C006216 */  bne        $s3, $v0, .L800DDCF8
    /* CE4C8 800DDCC8 40101300 */   sll       $v0, $s3, 1
    /* CE4CC 800DDCCC 1180013C */  lui        $at, %hi(D_80113ED0)
    /* CE4D0 800DDCD0 21083000 */  addu       $at, $at, $s0
    /* CE4D4 800DDCD4 D03E2294 */  lhu        $v0, %lo(D_80113ED0)($at)
    /* CE4D8 800DDCD8 1680013C */  lui        $at, %hi(D_80158886)
    /* CE4DC 800DDCDC 868822A4 */  sh         $v0, %lo(D_80158886)($at)
    /* CE4E0 800DDCE0 1180013C */  lui        $at, %hi(D_80113ED2)
    /* CE4E4 800DDCE4 21083000 */  addu       $at, $at, $s0
    /* CE4E8 800DDCE8 D23E2294 */  lhu        $v0, %lo(D_80113ED2)($at)
    /* CE4EC 800DDCEC 1680013C */  lui        $at, %hi(D_80158888)
    /* CE4F0 800DDCF0 888822A4 */  sh         $v0, %lo(D_80158888)($at)
    /* CE4F4 800DDCF4 40101300 */  sll        $v0, $s3, 1
  .L800DDCF8:
    /* CE4F8 800DDCF8 21105300 */  addu       $v0, $v0, $s3
    /* CE4FC 800DDCFC 80100200 */  sll        $v0, $v0, 2
    /* CE500 800DDD00 21105300 */  addu       $v0, $v0, $s3
    /* CE504 800DDD04 40100200 */  sll        $v0, $v0, 1
    /* CE508 800DDD08 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* CE50C 800DDD0C 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* CE510 800DDD10 21082200 */  addu       $at, $at, $v0
    /* CE514 800DDD14 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
  .L800DDD18:
    /* CE518 800DDD18 01007326 */  addiu      $s3, $s3, 0x1
    /* CE51C 800DDD1C 1280023C */  lui        $v0, %hi(D_8011A280)
    /* CE520 800DDD20 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* CE524 800DDD24 00000000 */  nop
    /* CE528 800DDD28 2A106202 */  slt        $v0, $s3, $v0
    /* CE52C 800DDD2C 51FF4014 */  bnez       $v0, .L800DDA74
    /* CE530 800DDD30 40101300 */   sll       $v0, $s3, 1
  .L800DDD34:
    /* CE534 800DDD34 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* CE538 800DDD38 5800BE8F */  lw         $fp, 0x58($sp)
    /* CE53C 800DDD3C 5400B78F */  lw         $s7, 0x54($sp)
    /* CE540 800DDD40 5000B68F */  lw         $s6, 0x50($sp)
    /* CE544 800DDD44 4C00B58F */  lw         $s5, 0x4C($sp)
    /* CE548 800DDD48 4800B48F */  lw         $s4, 0x48($sp)
    /* CE54C 800DDD4C 4400B38F */  lw         $s3, 0x44($sp)
    /* CE550 800DDD50 4000B28F */  lw         $s2, 0x40($sp)
    /* CE554 800DDD54 3C00B18F */  lw         $s1, 0x3C($sp)
    /* CE558 800DDD58 3800B08F */  lw         $s0, 0x38($sp)
    /* CE55C 800DDD5C 6000BD27 */  addiu      $sp, $sp, 0x60
    /* CE560 800DDD60 0800E003 */  jr         $ra
    /* CE564 800DDD64 00000000 */   nop
endlabel func_800DDA04
