.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DA30, 0x3D0

glabel func_8001DA30
    /* E230 8001DA30 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* E234 8001DA34 5400BFAF */  sw         $ra, 0x54($sp)
    /* E238 8001DA38 5000BEAF */  sw         $fp, 0x50($sp)
    /* E23C 8001DA3C 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* E240 8001DA40 4800B6AF */  sw         $s6, 0x48($sp)
    /* E244 8001DA44 4400B5AF */  sw         $s5, 0x44($sp)
    /* E248 8001DA48 4000B4AF */  sw         $s4, 0x40($sp)
    /* E24C 8001DA4C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* E250 8001DA50 3800B2AF */  sw         $s2, 0x38($sp)
    /* E254 8001DA54 3400B1AF */  sw         $s1, 0x34($sp)
    /* E258 8001DA58 3000B0AF */  sw         $s0, 0x30($sp)
    /* E25C 8001DA5C 1000A0AF */  sw         $zero, 0x10($sp)
    /* E260 8001DA60 1680023C */  lui        $v0, %hi(D_80158864)
    /* E264 8001DA64 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E268 8001DA68 00000000 */  nop
    /* E26C 8001DA6C 00004484 */  lh         $a0, 0x0($v0)
    /* E270 8001DA70 02004584 */  lh         $a1, 0x2($v0)
    /* E274 8001DA74 2E61020C */  jal        func_800984B8
    /* E278 8001DA78 00000000 */   nop
    /* E27C 8001DA7C 1800A2AF */  sw         $v0, 0x18($sp)
    /* E280 8001DA80 1680023C */  lui        $v0, %hi(D_80158864)
    /* E284 8001DA84 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E288 8001DA88 00000000 */  nop
    /* E28C 8001DA8C 08005580 */  lb         $s5, 0x8($v0)
    /* E290 8001DA90 00000000 */  nop
    /* E294 8001DA94 40101500 */  sll        $v0, $s5, 1
    /* E298 8001DA98 21105500 */  addu       $v0, $v0, $s5
    /* E29C 8001DA9C 80100200 */  sll        $v0, $v0, 2
    /* E2A0 8001DAA0 23105500 */  subu       $v0, $v0, $s5
    /* E2A4 8001DAA4 00110200 */  sll        $v0, $v0, 4
    /* E2A8 8001DAA8 23105500 */  subu       $v0, $v0, $s5
    /* E2AC 8001DAAC C0100200 */  sll        $v0, $v0, 3
    /* E2B0 8001DAB0 1180033C */  lui        $v1, %hi(D_80117906)
    /* E2B4 8001DAB4 06796324 */  addiu      $v1, $v1, %lo(D_80117906)
    /* E2B8 8001DAB8 21104300 */  addu       $v0, $v0, $v1
    /* E2BC 8001DABC 1800A88F */  lw         $t0, 0x18($sp)
    /* E2C0 8001DAC0 00000000 */  nop
    /* E2C4 8001DAC4 21104800 */  addu       $v0, $v0, $t0
    /* E2C8 8001DAC8 00004290 */  lbu        $v0, 0x0($v0)
    /* E2CC 8001DACC 00000000 */  nop
    /* E2D0 8001DAD0 0200422C */  sltiu      $v0, $v0, 0x2
    /* E2D4 8001DAD4 BC004014 */  bnez       $v0, .L8001DDC8
    /* E2D8 8001DAD8 00000000 */   nop
    /* E2DC 8001DADC 2000A0AF */  sw         $zero, 0x20($sp)
  .L8001DAE0:
    /* E2E0 8001DAE0 1280023C */  lui        $v0, %hi(D_8011A282)
    /* E2E4 8001DAE4 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* E2E8 8001DAE8 00000000 */  nop
    /* E2EC 8001DAEC B0004018 */  blez       $v0, .L8001DDB0
    /* E2F0 8001DAF0 21980000 */   addu      $s3, $zero, $zero
  .L8001DAF4:
    /* E2F4 8001DAF4 1680023C */  lui        $v0, %hi(D_80158860)
    /* E2F8 8001DAF8 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* E2FC 8001DAFC 00000000 */  nop
    /* E300 8001DB00 A4006212 */  beq        $s3, $v0, .L8001DD94
    /* E304 8001DB04 40101300 */   sll       $v0, $s3, 1
    /* E308 8001DB08 21105300 */  addu       $v0, $v0, $s3
    /* E30C 8001DB0C 80100200 */  sll        $v0, $v0, 2
    /* E310 8001DB10 23105300 */  subu       $v0, $v0, $s3
    /* E314 8001DB14 C0100200 */  sll        $v0, $v0, 3
    /* E318 8001DB18 1180013C */  lui        $at, %hi(D_80113ED8)
    /* E31C 8001DB1C 21082200 */  addu       $at, $at, $v0
    /* E320 8001DB20 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* E324 8001DB24 00000000 */  nop
    /* E328 8001DB28 15007510 */  beq        $v1, $s5, .L8001DB80
    /* E32C 8001DB2C 00000000 */   nop
    /* E330 8001DB30 2000A88F */  lw         $t0, 0x20($sp)
    /* E334 8001DB34 00000000 */  nop
    /* E338 8001DB38 96000011 */  beqz       $t0, .L8001DD94
    /* E33C 8001DB3C 40101500 */   sll       $v0, $s5, 1
    /* E340 8001DB40 21105500 */  addu       $v0, $v0, $s5
    /* E344 8001DB44 80100200 */  sll        $v0, $v0, 2
    /* E348 8001DB48 23105500 */  subu       $v0, $v0, $s5
    /* E34C 8001DB4C 00110200 */  sll        $v0, $v0, 4
    /* E350 8001DB50 23105500 */  subu       $v0, $v0, $s5
    /* E354 8001DB54 C0100200 */  sll        $v0, $v0, 3
    /* E358 8001DB58 80180300 */  sll        $v1, $v1, 2
    /* E35C 8001DB5C 1180083C */  lui        $t0, %hi(D_801176B4)
    /* E360 8001DB60 B4760825 */  addiu      $t0, $t0, %lo(D_801176B4)
    /* E364 8001DB64 21104800 */  addu       $v0, $v0, $t0
    /* E368 8001DB68 21186200 */  addu       $v1, $v1, $v0
    /* E36C 8001DB6C 0000628C */  lw         $v0, 0x0($v1)
    /* E370 8001DB70 00000000 */  nop
    /* E374 8001DB74 0C004230 */  andi       $v0, $v0, 0xC
    /* E378 8001DB78 86004010 */  beqz       $v0, .L8001DD94
    /* E37C 8001DB7C 00000000 */   nop
  .L8001DB80:
    /* E380 8001DB80 40101300 */  sll        $v0, $s3, 1
    /* E384 8001DB84 21105300 */  addu       $v0, $v0, $s3
    /* E388 8001DB88 80100200 */  sll        $v0, $v0, 2
    /* E38C 8001DB8C 23105300 */  subu       $v0, $v0, $s3
    /* E390 8001DB90 C0100200 */  sll        $v0, $v0, 3
    /* E394 8001DB94 1180013C */  lui        $at, %hi(D_80113ED0)
    /* E398 8001DB98 21082200 */  addu       $at, $at, $v0
    /* E39C 8001DB9C D03E3784 */  lh         $s7, %lo(D_80113ED0)($at)
    /* E3A0 8001DBA0 1180013C */  lui        $at, %hi(D_80113ED2)
    /* E3A4 8001DBA4 21082200 */  addu       $at, $at, $v0
    /* E3A8 8001DBA8 D23E3684 */  lh         $s6, %lo(D_80113ED2)($at)
    /* E3AC 8001DBAC 1680023C */  lui        $v0, %hi(D_80158864)
    /* E3B0 8001DBB0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* E3B4 8001DBB4 00000000 */  nop
    /* E3B8 8001DBB8 00005284 */  lh         $s2, 0x0($v0)
    /* E3BC 8001DBBC 02005184 */  lh         $s1, 0x2($v0)
    /* E3C0 8001DBC0 21F00000 */  addu       $fp, $zero, $zero
    /* E3C4 8001DBC4 2120E002 */  addu       $a0, $s7, $zero
    /* E3C8 8001DBC8 2E61020C */  jal        func_800984B8
    /* E3CC 8001DBCC 2128C002 */   addu      $a1, $s6, $zero
    /* E3D0 8001DBD0 1800A88F */  lw         $t0, 0x18($sp)
    /* E3D4 8001DBD4 00000000 */  nop
    /* E3D8 8001DBD8 6E000215 */  bne        $t0, $v0, .L8001DD94
    /* E3DC 8001DBDC 2120E002 */   addu      $a0, $s7, $zero
    /* E3E0 8001DBE0 2128C002 */  addu       $a1, $s6, $zero
    /* E3E4 8001DBE4 21304002 */  addu       $a2, $s2, $zero
    /* E3E8 8001DBE8 653B030C */  jal        func_800CED94
    /* E3EC 8001DBEC 21382002 */   addu      $a3, $s1, $zero
    /* E3F0 8001DBF0 17004228 */  slti       $v0, $v0, 0x17
    /* E3F4 8001DBF4 67004010 */  beqz       $v0, .L8001DD94
    /* E3F8 8001DBF8 01000224 */   addiu     $v0, $zero, 0x1
    /* E3FC 8001DBFC 1680013C */  lui        $at, %hi(D_80158AC0)
    /* E400 8001DC00 C08A22AC */  sw         $v0, %lo(D_80158AC0)($at)
    /* E404 8001DC04 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* E408 8001DC08 1680013C */  lui        $at, %hi(D_80158AC4)
    /* E40C 8001DC0C C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
    /* E410 8001DC10 1680013C */  lui        $at, %hi(D_80158AD4)
    /* E414 8001DC14 D48A37AC */  sw         $s7, %lo(D_80158AD4)($at)
    /* E418 8001DC18 1680013C */  lui        $at, %hi(D_80158AD8)
    /* E41C 8001DC1C D88A36AC */  sw         $s6, %lo(D_80158AD8)($at)
    /* E420 8001DC20 02000224 */  addiu      $v0, $zero, 0x2
    /* E424 8001DC24 1680013C */  lui        $at, %hi(D_80158ABC)
    /* E428 8001DC28 BC8A22AC */  sw         $v0, %lo(D_80158ABC)($at)
    /* E42C 8001DC2C 01001424 */  addiu      $s4, $zero, 0x1
    /* E430 8001DC30 21204002 */  addu       $a0, $s2, $zero
  .L8001DC34:
    /* E434 8001DC34 21282002 */  addu       $a1, $s1, $zero
    /* E438 8001DC38 F092020C */  jal        func_800A4BC0
    /* E43C 8001DC3C 63000624 */   addiu     $a2, $zero, 0x63
    /* E440 8001DC40 21804000 */  addu       $s0, $v0, $zero
    /* E444 8001DC44 3B000006 */  bltz       $s0, .L8001DD34
    /* E448 8001DC48 08000224 */   addiu     $v0, $zero, 0x8
    /* E44C 8001DC4C 39000212 */  beq        $s0, $v0, .L8001DD34
    /* E450 8001DC50 00000000 */   nop
    /* E454 8001DC54 1280013C */  lui        $at, %hi(D_8011AC24)
    /* E458 8001DC58 21083000 */  addu       $at, $at, $s0
    /* E45C 8001DC5C 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* E460 8001DC60 173B030C */  jal        func_800CEC5C
    /* E464 8001DC64 21204402 */   addu      $a0, $s2, $a0
    /* E468 8001DC68 21904000 */  addu       $s2, $v0, $zero
    /* E46C 8001DC6C 1280013C */  lui        $at, %hi(D_8011AC30)
    /* E470 8001DC70 21083000 */  addu       $at, $at, $s0
    /* E474 8001DC74 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* E478 8001DC78 03005716 */  bne        $s2, $s7, .L8001DC88
    /* E47C 8001DC7C 21882202 */   addu      $s1, $s1, $v0
    /* E480 8001DC80 2C003612 */  beq        $s1, $s6, .L8001DD34
    /* E484 8001DC84 00000000 */   nop
  .L8001DC88:
    /* E488 8001DC88 21204002 */  addu       $a0, $s2, $zero
    /* E48C 8001DC8C 1262020C */  jal        func_80098848
    /* E490 8001DC90 21282002 */   addu      $a1, $s1, $zero
    /* E494 8001DC94 21004104 */  bgez       $v0, .L8001DD1C
    /* E498 8001DC98 21204002 */   addu      $a0, $s2, $zero
    /* E49C 8001DC9C 6961020C */  jal        func_800985A4
    /* E4A0 8001DCA0 21282002 */   addu      $a1, $s1, $zero
    /* E4A4 8001DCA4 10004230 */  andi       $v0, $v0, 0x10
    /* E4A8 8001DCA8 12004014 */  bnez       $v0, .L8001DCF4
    /* E4AC 8001DCAC 21204002 */   addu      $a0, $s2, $zero
    /* E4B0 8001DCB0 21800000 */  addu       $s0, $zero, $zero
    /* E4B4 8001DCB4 BD60020C */  jal        func_800982F4
    /* E4B8 8001DCB8 21282002 */   addu      $a1, $s1, $zero
    /* E4BC 8001DCBC 00004290 */  lbu        $v0, 0x0($v0)
    /* E4C0 8001DCC0 00000000 */  nop
    /* E4C4 8001DCC4 80004230 */  andi       $v0, $v0, 0x80
    /* E4C8 8001DCC8 05004010 */  beqz       $v0, .L8001DCE0
    /* E4CC 8001DCCC 2120A002 */   addu      $a0, $s5, $zero
    /* E4D0 8001DCD0 8ACA010C */  jal        func_80072A28
    /* E4D4 8001DCD4 07000524 */   addiu     $a1, $zero, 0x7
    /* E4D8 8001DCD8 02004010 */  beqz       $v0, .L8001DCE4
    /* E4DC 8001DCDC 00000000 */   nop
  .L8001DCE0:
    /* E4E0 8001DCE0 01001024 */  addiu      $s0, $zero, 0x1
  .L8001DCE4:
    /* E4E4 8001DCE4 0D000012 */  beqz       $s0, .L8001DD1C
    /* E4E8 8001DCE8 00000000 */   nop
    /* E4EC 8001DCEC 47770008 */  j          .L8001DD1C
    /* E4F0 8001DCF0 21A00000 */   addu      $s4, $zero, $zero
  .L8001DCF4:
    /* E4F4 8001DCF4 6961020C */  jal        func_800985A4
    /* E4F8 8001DCF8 21282002 */   addu      $a1, $s1, $zero
    /* E4FC 8001DCFC 20004230 */  andi       $v0, $v0, 0x20
    /* E500 8001DD00 06004014 */  bnez       $v0, .L8001DD1C
    /* E504 8001DD04 2120A002 */   addu      $a0, $s5, $zero
    /* E508 8001DD08 8ACA010C */  jal        func_80072A28
    /* E50C 8001DD0C 43000524 */   addiu     $a1, $zero, 0x43
    /* E510 8001DD10 02004010 */  beqz       $v0, .L8001DD1C
    /* E514 8001DD14 00000000 */   nop
    /* E518 8001DD18 21A00000 */  addu       $s4, $zero, $zero
  .L8001DD1C:
    /* E51C 8001DD1C 0100DE27 */  addiu      $fp, $fp, 0x1
    /* E520 8001DD20 3300C22B */  slti       $v0, $fp, 0x33
    /* E524 8001DD24 03004010 */  beqz       $v0, .L8001DD34
    /* E528 8001DD28 00000000 */   nop
    /* E52C 8001DD2C C1FF8016 */  bnez       $s4, .L8001DC34
    /* E530 8001DD30 21204002 */   addu      $a0, $s2, $zero
  .L8001DD34:
    /* E534 8001DD34 1680013C */  lui        $at, %hi(D_80158AC0)
    /* E538 8001DD38 C08A20AC */  sw         $zero, %lo(D_80158AC0)($at)
    /* E53C 8001DD3C 15008016 */  bnez       $s4, .L8001DD94
    /* E540 8001DD40 21204002 */   addu      $a0, $s2, $zero
    /* E544 8001DD44 4F62020C */  jal        func_8009893C
    /* E548 8001DD48 21282002 */   addu      $a1, $s1, $zero
    /* E54C 8001DD4C 03004004 */  bltz       $v0, .L8001DD5C
    /* E550 8001DD50 21204002 */   addu      $a0, $s2, $zero
    /* E554 8001DD54 0F005514 */  bne        $v0, $s5, .L8001DD94
    /* E558 8001DD58 00000000 */   nop
  .L8001DD5C:
    /* E55C 8001DD5C 21282002 */  addu       $a1, $s1, $zero
    /* E560 8001DD60 6062020C */  jal        func_80098980
    /* E564 8001DD64 2130A002 */   addu      $a2, $s5, $zero
    /* E568 8001DD68 03004004 */  bltz       $v0, .L8001DD78
    /* E56C 8001DD6C 00000000 */   nop
    /* E570 8001DD70 08005514 */  bne        $v0, $s5, .L8001DD94
    /* E574 8001DD74 00000000 */   nop
  .L8001DD78:
    /* E578 8001DD78 01000224 */  addiu      $v0, $zero, 0x1
    /* E57C 8001DD7C 3C0082AF */  sw         $v0, %gp_rel(D_80158514)($gp)
    /* E580 8001DD80 E40092AF */  sw         $s2, %gp_rel(D_801585BC)($gp)
    /* E584 8001DD84 E80091AF */  sw         $s1, %gp_rel(D_801585C0)($gp)
    /* E588 8001DD88 01000824 */  addiu      $t0, $zero, 0x1
    /* E58C 8001DD8C 72770008 */  j          .L8001DDC8
    /* E590 8001DD90 1000A8AF */   sw        $t0, 0x10($sp)
  .L8001DD94:
    /* E594 8001DD94 01007326 */  addiu      $s3, $s3, 0x1
    /* E598 8001DD98 1280023C */  lui        $v0, %hi(D_8011A282)
    /* E59C 8001DD9C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* E5A0 8001DDA0 00000000 */  nop
    /* E5A4 8001DDA4 2A106202 */  slt        $v0, $s3, $v0
    /* E5A8 8001DDA8 52FF4014 */  bnez       $v0, .L8001DAF4
    /* E5AC 8001DDAC 00000000 */   nop
  .L8001DDB0:
    /* E5B0 8001DDB0 2000A88F */  lw         $t0, 0x20($sp)
    /* E5B4 8001DDB4 00000000 */  nop
    /* E5B8 8001DDB8 01000825 */  addiu      $t0, $t0, 0x1
    /* E5BC 8001DDBC 02000229 */  slti       $v0, $t0, 0x2
    /* E5C0 8001DDC0 47FF4014 */  bnez       $v0, .L8001DAE0
    /* E5C4 8001DDC4 2000A8AF */   sw        $t0, 0x20($sp)
  .L8001DDC8:
    /* E5C8 8001DDC8 1000A28F */  lw         $v0, 0x10($sp)
    /* E5CC 8001DDCC 5400BF8F */  lw         $ra, 0x54($sp)
    /* E5D0 8001DDD0 5000BE8F */  lw         $fp, 0x50($sp)
    /* E5D4 8001DDD4 4C00B78F */  lw         $s7, 0x4C($sp)
    /* E5D8 8001DDD8 4800B68F */  lw         $s6, 0x48($sp)
    /* E5DC 8001DDDC 4400B58F */  lw         $s5, 0x44($sp)
    /* E5E0 8001DDE0 4000B48F */  lw         $s4, 0x40($sp)
    /* E5E4 8001DDE4 3C00B38F */  lw         $s3, 0x3C($sp)
    /* E5E8 8001DDE8 3800B28F */  lw         $s2, 0x38($sp)
    /* E5EC 8001DDEC 3400B18F */  lw         $s1, 0x34($sp)
    /* E5F0 8001DDF0 3000B08F */  lw         $s0, 0x30($sp)
    /* E5F4 8001DDF4 5800BD27 */  addiu      $sp, $sp, 0x58
    /* E5F8 8001DDF8 0800E003 */  jr         $ra
    /* E5FC 8001DDFC 00000000 */   nop
endlabel func_8001DA30
