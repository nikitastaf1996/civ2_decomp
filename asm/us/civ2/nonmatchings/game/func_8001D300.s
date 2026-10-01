.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D300, 0x420

glabel func_8001D300
    /* DB00 8001D300 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* DB04 8001D304 2000BFAF */  sw         $ra, 0x20($sp)
    /* DB08 8001D308 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* DB0C 8001D30C 1800B2AF */  sw         $s2, 0x18($sp)
    /* DB10 8001D310 1400B1AF */  sw         $s1, 0x14($sp)
    /* DB14 8001D314 1000B0AF */  sw         $s0, 0x10($sp)
    /* DB18 8001D318 1680023C */  lui        $v0, %hi(D_80158864)
    /* DB1C 8001D31C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DB20 8001D320 00000000 */  nop
    /* DB24 8001D324 08005380 */  lb         $s3, 0x8($v0)
    /* DB28 8001D328 1280033C */  lui        $v1, %hi(D_8011A272)
    /* DB2C 8001D32C 72A26324 */  addiu      $v1, $v1, %lo(D_8011A272)
    /* DB30 8001D330 00007090 */  lbu        $s0, 0x0($v1)
    /* DB34 8001D334 40101300 */  sll        $v0, $s3, 1
    /* DB38 8001D338 21105300 */  addu       $v0, $v0, $s3
    /* DB3C 8001D33C 80100200 */  sll        $v0, $v0, 2
    /* DB40 8001D340 23105300 */  subu       $v0, $v0, $s3
    /* DB44 8001D344 00110200 */  sll        $v0, $v0, 4
    /* DB48 8001D348 23105300 */  subu       $v0, $v0, $s3
    /* DB4C 8001D34C C0100200 */  sll        $v0, $v0, 3
    /* DB50 8001D350 1180013C */  lui        $at, %hi(D_801176A2)
    /* DB54 8001D354 21082200 */  addu       $at, $at, $v0
    /* DB58 8001D358 A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* DB5C 8001D35C 00000000 */  nop
    /* DB60 8001D360 18000202 */  mult       $s0, $v0
    /* DB64 8001D364 12800000 */  mflo       $s0
    /* DB68 8001D368 E8FF6294 */  lhu        $v0, -0x18($v1)
    /* DB6C 8001D36C 00000000 */  nop
    /* DB70 8001D370 80004230 */  andi       $v0, $v0, 0x80
    /* DB74 8001D374 09004010 */  beqz       $v0, .L8001D39C
    /* DB78 8001D378 43801000 */   sra       $s0, $s0, 1
    /* DB7C 8001D37C 1280023C */  lui        $v0, %hi(D_8011A390)
    /* DB80 8001D380 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* DB84 8001D384 00000000 */  nop
    /* DB88 8001D388 40004230 */  andi       $v0, $v0, 0x40
    /* DB8C 8001D38C 03004010 */  beqz       $v0, .L8001D39C
    /* DB90 8001D390 00000000 */   nop
    /* DB94 8001D394 21800000 */  addu       $s0, $zero, $zero
    /* DB98 8001D398 700080AF */  sw         $zero, %gp_rel(D_80158548)($gp)
  .L8001D39C:
    /* DB9C 8001D39C 1680043C */  lui        $a0, %hi(D_80158860)
    /* DBA0 8001D3A0 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* DBA4 8001D3A4 C826020C */  jal        func_80089B20
    /* DBA8 8001D3A8 1D000524 */   addiu     $a1, $zero, 0x1D
    /* DBAC 8001D3AC 08004010 */  beqz       $v0, .L8001D3D0
    /* DBB0 8001D3B0 0001022A */   slti      $v0, $s0, 0x100
    /* DBB4 8001D3B4 06004014 */  bnez       $v0, .L8001D3D0
    /* DBB8 8001D3B8 C2171000 */   srl       $v0, $s0, 31
  .L8001D3BC:
    /* DBBC 8001D3BC 21100202 */  addu       $v0, $s0, $v0
    /* DBC0 8001D3C0 43800200 */  sra        $s0, $v0, 1
    /* DBC4 8001D3C4 0001022A */  slti       $v0, $s0, 0x100
    /* DBC8 8001D3C8 FCFF4010 */  beqz       $v0, .L8001D3BC
    /* DBCC 8001D3CC C2171000 */   srl       $v0, $s0, 31
  .L8001D3D0:
    /* DBD0 8001D3D0 7000828F */  lw         $v0, %gp_rel(D_80158548)($gp)
    /* DBD4 8001D3D4 00000000 */  nop
    /* DBD8 8001D3D8 40880200 */  sll        $s1, $v0, 1
    /* DBDC 8001D3DC FF000224 */  addiu      $v0, $zero, 0xFF
    /* DBE0 8001D3E0 23105000 */  subu       $v0, $v0, $s0
    /* DBE4 8001D3E4 14004018 */  blez       $v0, .L8001D438
    /* DBE8 8001D3E8 00000000 */   nop
    /* DBEC 8001D3EC E6E9030C */  jal        func_800FA798
    /* DBF0 8001D3F0 00000000 */   nop
    /* DBF4 8001D3F4 00140200 */  sll        $v0, $v0, 16
    /* DBF8 8001D3F8 031C0200 */  sra        $v1, $v0, 16
    /* DBFC 8001D3FC 00010224 */  addiu      $v0, $zero, 0x100
    /* DC00 8001D400 23105000 */  subu       $v0, $v0, $s0
    /* DC04 8001D404 1A006200 */  div        $zero, $v1, $v0
    /* DC08 8001D408 02004014 */  bnez       $v0, .L8001D414
    /* DC0C 8001D40C 00000000 */   nop
    /* DC10 8001D410 0D000700 */  break      7
  .L8001D414:
    /* DC14 8001D414 FFFF0124 */  addiu      $at, $zero, -0x1
    /* DC18 8001D418 04004114 */  bne        $v0, $at, .L8001D42C
    /* DC1C 8001D41C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* DC20 8001D420 02006114 */  bne        $v1, $at, .L8001D42C
    /* DC24 8001D424 00000000 */   nop
    /* DC28 8001D428 0D000600 */  break      6
  .L8001D42C:
    /* DC2C 8001D42C 10180000 */  mfhi       $v1
    /* DC30 8001D430 0F750008 */  j          .L8001D43C
    /* DC34 8001D434 2A187100 */   slt       $v1, $v1, $s1
  .L8001D438:
    /* DC38 8001D438 2A181100 */  slt        $v1, $zero, $s1
  .L8001D43C:
    /* DC3C 8001D43C 54006010 */  beqz       $v1, .L8001D590
    /* DC40 8001D440 00000000 */   nop
    /* DC44 8001D444 E6E9030C */  jal        func_800FA798
    /* DC48 8001D448 00000000 */   nop
    /* DC4C 8001D44C 00140200 */  sll        $v0, $v0, 16
    /* DC50 8001D450 03840200 */  sra        $s0, $v0, 16
    /* DC54 8001D454 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* DC58 8001D458 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* DC5C 8001D45C 18000302 */  mult       $s0, $v1
    /* DC60 8001D460 10380000 */  mfhi       $a3
    /* DC64 8001D464 C3180700 */  sra        $v1, $a3, 3
    /* DC68 8001D468 C3170200 */  sra        $v0, $v0, 31
    /* DC6C 8001D46C 23186200 */  subu       $v1, $v1, $v0
    /* DC70 8001D470 80100300 */  sll        $v0, $v1, 2
    /* DC74 8001D474 21104300 */  addu       $v0, $v0, $v1
    /* DC78 8001D478 80100200 */  sll        $v0, $v0, 2
    /* DC7C 8001D47C 23800202 */  subu       $s0, $s0, $v0
    /* DC80 8001D480 00841000 */  sll        $s0, $s0, 16
    /* DC84 8001D484 03841000 */  sra        $s0, $s0, 16
    /* DC88 8001D488 1680023C */  lui        $v0, %hi(D_80158864)
    /* DC8C 8001D48C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DC90 8001D490 00000000 */  nop
    /* DC94 8001D494 00004284 */  lh         $v0, 0x0($v0)
    /* DC98 8001D498 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* DC9C 8001D49C 21083000 */  addu       $at, $at, $s0
    /* DCA0 8001D4A0 3CAC2480 */  lb         $a0, %lo(D_8011AC3C)($at)
    /* DCA4 8001D4A4 173B030C */  jal        func_800CEC5C
    /* DCA8 8001D4A8 21204400 */   addu      $a0, $v0, $a0
    /* DCAC 8001D4AC 21904000 */  addu       $s2, $v0, $zero
    /* DCB0 8001D4B0 1680023C */  lui        $v0, %hi(D_80158864)
    /* DCB4 8001D4B4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DCB8 8001D4B8 00000000 */  nop
    /* DCBC 8001D4BC 02005184 */  lh         $s1, 0x2($v0)
    /* DCC0 8001D4C0 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* DCC4 8001D4C4 21083000 */  addu       $at, $at, $s0
    /* DCC8 8001D4C8 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* DCCC 8001D4CC 00000000 */  nop
    /* DCD0 8001D4D0 21882202 */  addu       $s1, $s1, $v0
    /* DCD4 8001D4D4 0D002006 */  bltz       $s1, .L8001D50C
    /* DCD8 8001D4D8 21180000 */   addu      $v1, $zero, $zero
    /* DCDC 8001D4DC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* DCE0 8001D4E0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* DCE4 8001D4E4 00000000 */  nop
    /* DCE8 8001D4E8 2A102202 */  slt        $v0, $s1, $v0
    /* DCEC 8001D4EC 07004010 */  beqz       $v0, .L8001D50C
    /* DCF0 8001D4F0 00000000 */   nop
    /* DCF4 8001D4F4 05004006 */  bltz       $s2, .L8001D50C
    /* DCF8 8001D4F8 00000000 */   nop
    /* DCFC 8001D4FC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* DD00 8001D500 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* DD04 8001D504 00000000 */  nop
    /* DD08 8001D508 2A184202 */  slt        $v1, $s2, $v0
  .L8001D50C:
    /* DD0C 8001D50C 20006010 */  beqz       $v1, .L8001D590
    /* DD10 8001D510 21204002 */   addu      $a0, $s2, $zero
    /* DD14 8001D514 6961020C */  jal        func_800985A4
    /* DD18 8001D518 21282002 */   addu      $a1, $s1, $zero
    /* DD1C 8001D51C 82004230 */  andi       $v0, $v0, 0x82
    /* DD20 8001D520 1B004014 */  bnez       $v0, .L8001D590
    /* DD24 8001D524 21204002 */   addu      $a0, $s2, $zero
    /* DD28 8001D528 F760020C */  jal        func_800983DC
    /* DD2C 8001D52C 21282002 */   addu      $a1, $s1, $zero
    /* DD30 8001D530 17004014 */  bnez       $v0, .L8001D590
    /* DD34 8001D534 21204002 */   addu      $a0, $s2, $zero
    /* DD38 8001D538 2E63020C */  jal        func_80098CB8
    /* DD3C 8001D53C 21282002 */   addu      $a1, $s1, $zero
    /* DD40 8001D540 21204002 */  addu       $a0, $s2, $zero
    /* DD44 8001D544 1280063C */  lui        $a2, %hi(D_8011ACB4)
    /* DD48 8001D548 B4ACC68C */  lw         $a2, %lo(D_8011ACB4)($a2)
    /* DD4C 8001D54C A161020C */  jal        func_80098684
    /* DD50 8001D550 21282002 */   addu      $a1, $s1, $zero
    /* DD54 8001D554 0E004010 */  beqz       $v0, .L8001D590
    /* DD58 8001D558 21284002 */   addu      $a1, $s2, $zero
    /* DD5C 8001D55C 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* DD60 8001D560 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* DD64 8001D564 BC7B020C */  jal        func_8009EEF0
    /* DD68 8001D568 21302002 */   addu      $a2, $s1, $zero
    /* DD6C 8001D56C 1280023C */  lui        $v0, %hi(D_8011A25C)
    /* DD70 8001D570 5CA24294 */  lhu        $v0, %lo(D_8011A25C)($v0)
    /* DD74 8001D574 00000000 */  nop
    /* DD78 8001D578 00014230 */  andi       $v0, $v0, 0x100
    /* DD7C 8001D57C 04004014 */  bnez       $v0, .L8001D590
    /* DD80 8001D580 C31A0424 */   addiu     $a0, $zero, 0x1AC3
    /* DD84 8001D584 21280000 */  addu       $a1, $zero, $zero
    /* DD88 8001D588 2963000C */  jal        func_80018CA4
    /* DD8C 8001D58C 21300000 */   addu      $a2, $zero, $zero
  .L8001D590:
    /* DD90 8001D590 1680023C */  lui        $v0, %hi(D_80158864)
    /* DD94 8001D594 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DD98 8001D598 00000000 */  nop
    /* DD9C 8001D59C 0400428C */  lw         $v0, 0x4($v0)
    /* DDA0 8001D5A0 00000000 */  nop
    /* DDA4 8001D5A4 01004230 */  andi       $v0, $v0, 0x1
    /* DDA8 8001D5A8 28004010 */  beqz       $v0, .L8001D64C
    /* DDAC 8001D5AC 21880000 */   addu      $s1, $zero, $zero
    /* DDB0 8001D5B0 1680043C */  lui        $a0, %hi(D_80158860)
    /* DDB4 8001D5B4 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* DDB8 8001D5B8 C826020C */  jal        func_80089B20
    /* DDBC 8001D5BC 15000524 */   addiu     $a1, $zero, 0x15
    /* DDC0 8001D5C0 22004010 */  beqz       $v0, .L8001D64C
    /* DDC4 8001D5C4 21206002 */   addu      $a0, $s3, $zero
    /* DDC8 8001D5C8 8ACA010C */  jal        func_80072A28
    /* DDCC 8001D5CC 20000524 */   addiu     $a1, $zero, 0x20
    /* DDD0 8001D5D0 1E004014 */  bnez       $v0, .L8001D64C
    /* DDD4 8001D5D4 05000224 */   addiu     $v0, $zero, 0x5
    /* DDD8 8001D5D8 1280103C */  lui        $s0, %hi(D_8011A272)
    /* DDDC 8001D5DC 72A21026 */  addiu      $s0, $s0, %lo(D_8011A272)
    /* DDE0 8001D5E0 00000392 */  lbu        $v1, 0x0($s0)
    /* DDE4 8001D5E4 00000000 */  nop
    /* DDE8 8001D5E8 23104300 */  subu       $v0, $v0, $v1
    /* DDEC 8001D5EC 16004018 */  blez       $v0, .L8001D648
    /* DDF0 8001D5F0 00000000 */   nop
    /* DDF4 8001D5F4 E6E9030C */  jal        func_800FA798
    /* DDF8 8001D5F8 00000000 */   nop
    /* DDFC 8001D5FC 00140200 */  sll        $v0, $v0, 16
    /* DE00 8001D600 03140200 */  sra        $v0, $v0, 16
    /* DE04 8001D604 00000492 */  lbu        $a0, 0x0($s0)
    /* DE08 8001D608 06000324 */  addiu      $v1, $zero, 0x6
    /* DE0C 8001D60C 23186400 */  subu       $v1, $v1, $a0
    /* DE10 8001D610 1A004300 */  div        $zero, $v0, $v1
    /* DE14 8001D614 02006014 */  bnez       $v1, .L8001D620
    /* DE18 8001D618 00000000 */   nop
    /* DE1C 8001D61C 0D000700 */  break      7
  .L8001D620:
    /* DE20 8001D620 FFFF0124 */  addiu      $at, $zero, -0x1
    /* DE24 8001D624 04006114 */  bne        $v1, $at, .L8001D638
    /* DE28 8001D628 0080013C */   lui       $at, (0x80000000 >> 16)
    /* DE2C 8001D62C 02004114 */  bne        $v0, $at, .L8001D638
    /* DE30 8001D630 00000000 */   nop
    /* DE34 8001D634 0D000600 */  break      6
  .L8001D638:
    /* DE38 8001D638 10180000 */  mfhi       $v1
    /* DE3C 8001D63C 00000000 */  nop
    /* DE40 8001D640 02006014 */  bnez       $v1, .L8001D64C
    /* DE44 8001D644 00000000 */   nop
  .L8001D648:
    /* DE48 8001D648 01001124 */  addiu      $s1, $zero, 0x1
  .L8001D64C:
    /* DE4C 8001D64C 2C002012 */  beqz       $s1, .L8001D700
    /* DE50 8001D650 00000000 */   nop
    /* DE54 8001D654 1680023C */  lui        $v0, %hi(D_80158864)
    /* DE58 8001D658 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DE5C 8001D65C 00000000 */  nop
    /* DE60 8001D660 00004484 */  lh         $a0, 0x0($v0)
    /* DE64 8001D664 02004584 */  lh         $a1, 0x2($v0)
    /* DE68 8001D668 1280063C */  lui        $a2, %hi(D_8011ACB4)
    /* DE6C 8001D66C B4ACC68C */  lw         $a2, %lo(D_8011ACB4)($a2)
    /* DE70 8001D670 A161020C */  jal        func_80098684
    /* DE74 8001D674 00000000 */   nop
    /* DE78 8001D678 09004010 */  beqz       $v0, .L8001D6A0
    /* DE7C 8001D67C 00000000 */   nop
    /* DE80 8001D680 1680023C */  lui        $v0, %hi(D_80158864)
    /* DE84 8001D684 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DE88 8001D688 00000000 */  nop
    /* DE8C 8001D68C 00004484 */  lh         $a0, 0x0($v0)
    /* DE90 8001D690 02004584 */  lh         $a1, 0x2($v0)
    /* DE94 8001D694 08004680 */  lb         $a2, 0x8($v0)
    /* DE98 8001D698 6D7C020C */  jal        func_8009F1B4
    /* DE9C 8001D69C 00000000 */   nop
  .L8001D6A0:
    /* DEA0 8001D6A0 1680023C */  lui        $v0, %hi(D_80158864)
    /* DEA4 8001D6A4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DEA8 8001D6A8 00000000 */  nop
    /* DEAC 8001D6AC 00004484 */  lh         $a0, 0x0($v0)
    /* DEB0 8001D6B0 02004584 */  lh         $a1, 0x2($v0)
    /* DEB4 8001D6B4 65AB000C */  jal        func_8002AD94
    /* DEB8 8001D6B8 00000000 */   nop
    /* DEBC 8001D6BC 1680023C */  lui        $v0, %hi(D_80158864)
    /* DEC0 8001D6C0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* DEC4 8001D6C4 00000000 */  nop
    /* DEC8 8001D6C8 00004484 */  lh         $a0, 0x0($v0)
    /* DECC 8001D6CC 02004584 */  lh         $a1, 0x2($v0)
    /* DED0 8001D6D0 5363020C */  jal        func_80098D4C
    /* DED4 8001D6D4 00000000 */   nop
    /* DED8 8001D6D8 1680043C */  lui        $a0, %hi(D_80158860)
    /* DEDC 8001D6DC 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* DEE0 8001D6E0 15000524 */  addiu      $a1, $zero, 0x15
    /* DEE4 8001D6E4 E926020C */  jal        func_80089BA4
    /* DEE8 8001D6E8 21300000 */   addu      $a2, $zero, $zero
    /* DEEC 8001D6EC 031B0424 */  addiu      $a0, $zero, 0x1B03
    /* DEF0 8001D6F0 1380063C */  lui        $a2, %hi(D_80133A10)
    /* DEF4 8001D6F4 103AC624 */  addiu      $a2, $a2, %lo(D_80133A10)
    /* DEF8 8001D6F8 2963000C */  jal        func_80018CA4
    /* DEFC 8001D6FC 21280000 */   addu      $a1, $zero, $zero
  .L8001D700:
    /* DF00 8001D700 2000BF8F */  lw         $ra, 0x20($sp)
    /* DF04 8001D704 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DF08 8001D708 1800B28F */  lw         $s2, 0x18($sp)
    /* DF0C 8001D70C 1400B18F */  lw         $s1, 0x14($sp)
    /* DF10 8001D710 1000B08F */  lw         $s0, 0x10($sp)
    /* DF14 8001D714 2800BD27 */  addiu      $sp, $sp, 0x28
    /* DF18 8001D718 0800E003 */  jr         $ra
    /* DF1C 8001D71C 00000000 */   nop
endlabel func_8001D300
