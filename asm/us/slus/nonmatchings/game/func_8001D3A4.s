.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D3A4, 0x234

glabel func_8001D3A4
    /* DBA4 8001D3A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* DBA8 8001D3A8 1800BFAF */  sw         $ra, 0x18($sp)
    /* DBAC 8001D3AC 1400B1AF */  sw         $s1, 0x14($sp)
    /* DBB0 8001D3B0 1673000C */  jal        func_8001CC58
    /* DBB4 8001D3B4 1000B0AF */   sw        $s0, 0x10($sp)
    /* DBB8 8001D3B8 DA72000C */  jal        func_8001CB68
    /* DBBC 8001D3BC 04000424 */   addiu     $a0, $zero, 0x4
    /* DBC0 8001D3C0 7F000424 */  addiu      $a0, $zero, 0x7F
    /* DBC4 8001D3C4 8BF7000C */  jal        SsSetMVol
    /* DBC8 8001D3C8 7F000524 */   addiu     $a1, $zero, 0x7F
    /* DBCC 8001D3CC BF72000C */  jal        func_8001CAFC
    /* DBD0 8001D3D0 3C000424 */   addiu     $a0, $zero, 0x3C
    /* DBD4 8001D3D4 21800000 */  addu       $s0, $zero, $zero
  .L8001D3D8:
    /* DBD8 8001D3D8 9269000C */  jal        func_8001A648
    /* DBDC 8001D3DC 04000424 */   addiu     $a0, $zero, 0x4
    /* DBE0 8001D3E0 BF72000C */  jal        func_8001CAFC
    /* DBE4 8001D3E4 01000424 */   addiu     $a0, $zero, 0x1
    /* DBE8 8001D3E8 01000226 */  addiu      $v0, $s0, 0x1
    /* DBEC 8001D3EC 21804000 */  addu       $s0, $v0, $zero
    /* DBF0 8001D3F0 00140200 */  sll        $v0, $v0, 16
    /* DBF4 8001D3F4 03140200 */  sra        $v0, $v0, 16
    /* DBF8 8001D3F8 18004228 */  slti       $v0, $v0, 0x18
    /* DBFC 8001D3FC F6FF4014 */  bnez       $v0, .L8001D3D8
    /* DC00 8001D400 00000000 */   nop
    /* DC04 8001D404 9D73000C */  jal        func_8001CE74
    /* DC08 8001D408 21800000 */   addu      $s0, $zero, $zero
    /* DC0C 8001D40C 04000224 */  addiu      $v0, $zero, 0x4
    /* DC10 8001D410 0580013C */  lui        $at, %hi(D_80056528)
    /* DC14 8001D414 286522A4 */  sh         $v0, %lo(D_80056528)($at)
    /* DC18 8001D418 0580013C */  lui        $at, %hi(D_80056534)
    /* DC1C 8001D41C 346520A4 */  sh         $zero, %lo(D_80056534)($at)
    /* DC20 8001D420 0580013C */  lui        $at, %hi(D_80056518)
    /* DC24 8001D424 186520A4 */  sh         $zero, %lo(D_80056518)($at)
    /* DC28 8001D428 B00B80A7 */  sh         $zero, %gp_rel(D_800552C0)($gp)
    /* DC2C 8001D42C 08001124 */  addiu      $s1, $zero, 0x8
  .L8001D430:
    /* DC30 8001D430 BF72000C */  jal        func_8001CAFC
    /* DC34 8001D434 01000424 */   addiu     $a0, $zero, 0x1
    /* DC38 8001D438 0580043C */  lui        $a0, %hi(D_80056534)
    /* DC3C 8001D43C 34658494 */  lhu        $a0, %lo(D_80056534)($a0)
    /* DC40 8001D440 6974000C */  jal        func_8001D1A4
    /* DC44 8001D444 00000000 */   nop
    /* DC48 8001D448 0580023C */  lui        $v0, %hi(D_80056504)
    /* DC4C 8001D44C 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* DC50 8001D450 00000000 */  nop
    /* DC54 8001D454 60084230 */  andi       $v0, $v0, 0x860
    /* DC58 8001D458 0B004010 */  beqz       $v0, .L8001D488
    /* DC5C 8001D45C 00000000 */   nop
    /* DC60 8001D460 CE6D000C */  jal        func_8001B738
    /* DC64 8001D464 07000424 */   addiu     $a0, $zero, 0x7
    /* DC68 8001D468 0580023C */  lui        $v0, %hi(D_80056534)
    /* DC6C 8001D46C 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* DC70 8001D470 0580013C */  lui        $at, %hi(D_8005650C)
    /* DC74 8001D474 0C6522A4 */  sh         $v0, %lo(D_8005650C)($at)
    /* DC78 8001D478 EE72000C */  jal        func_8001CBB8
    /* DC7C 8001D47C 04000424 */   addiu     $a0, $zero, 0x4
    /* DC80 8001D480 70750008 */  j          .L8001D5C0
    /* DC84 8001D484 21100000 */   addu      $v0, $zero, $zero
  .L8001D488:
    /* DC88 8001D488 0580023C */  lui        $v0, %hi(D_80056518)
    /* DC8C 8001D48C 18654294 */  lhu        $v0, %lo(D_80056518)($v0)
    /* DC90 8001D490 00000000 */  nop
    /* DC94 8001D494 3A004014 */  bnez       $v0, .L8001D580
    /* DC98 8001D498 00000000 */   nop
    /* DC9C 8001D49C 0580023C */  lui        $v0, %hi(D_80056504)
    /* DCA0 8001D4A0 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* DCA4 8001D4A4 00000000 */  nop
    /* DCA8 8001D4A8 00404230 */  andi       $v0, $v0, 0x4000
    /* DCAC 8001D4AC 18004010 */  beqz       $v0, .L8001D510
    /* DCB0 8001D4B0 00000000 */   nop
    /* DCB4 8001D4B4 0580033C */  lui        $v1, %hi(D_80056534)
    /* DCB8 8001D4B8 34656394 */  lhu        $v1, %lo(D_80056534)($v1)
    /* DCBC 8001D4BC 0580023C */  lui        $v0, %hi(D_80056528)
    /* DCC0 8001D4C0 28654294 */  lhu        $v0, %lo(D_80056528)($v0)
    /* DCC4 8001D4C4 00000000 */  nop
    /* DCC8 8001D4C8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* DCCC 8001D4CC 05006214 */  bne        $v1, $v0, .L8001D4E4
    /* DCD0 8001D4D0 00000000 */   nop
    /* DCD4 8001D4D4 0580013C */  lui        $at, %hi(D_80056534)
    /* DCD8 8001D4D8 346520A4 */  sh         $zero, %lo(D_80056534)($at)
    /* DCDC 8001D4DC 3F750008 */  j          .L8001D4FC
    /* DCE0 8001D4E0 00000000 */   nop
  .L8001D4E4:
    /* DCE4 8001D4E4 0580023C */  lui        $v0, %hi(D_80056534)
    /* DCE8 8001D4E8 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* DCEC 8001D4EC 00000000 */  nop
    /* DCF0 8001D4F0 01004224 */  addiu      $v0, $v0, 0x1
    /* DCF4 8001D4F4 0580013C */  lui        $at, %hi(D_80056534)
    /* DCF8 8001D4F8 346522A4 */  sh         $v0, %lo(D_80056534)($at)
  .L8001D4FC:
    /* DCFC 8001D4FC 0580013C */  lui        $at, %hi(D_80056518)
    /* DD00 8001D500 186531A4 */  sh         $s1, %lo(D_80056518)($at)
    /* DD04 8001D504 B00B80A7 */  sh         $zero, %gp_rel(D_800552C0)($gp)
    /* DD08 8001D508 CE6D000C */  jal        func_8001B738
    /* DD0C 8001D50C 02000424 */   addiu     $a0, $zero, 0x2
  .L8001D510:
    /* DD10 8001D510 0580023C */  lui        $v0, %hi(D_80056504)
    /* DD14 8001D514 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* DD18 8001D518 00000000 */  nop
    /* DD1C 8001D51C 00104230 */  andi       $v0, $v0, 0x1000
    /* DD20 8001D520 1E004010 */  beqz       $v0, .L8001D59C
    /* DD24 8001D524 01000226 */   addiu     $v0, $s0, 0x1
    /* DD28 8001D528 0580023C */  lui        $v0, %hi(D_80056534)
    /* DD2C 8001D52C 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* DD30 8001D530 00000000 */  nop
    /* DD34 8001D534 05004014 */  bnez       $v0, .L8001D54C
    /* DD38 8001D538 00000000 */   nop
    /* DD3C 8001D53C 0580023C */  lui        $v0, %hi(D_80056528)
    /* DD40 8001D540 28654294 */  lhu        $v0, %lo(D_80056528)($v0)
    /* DD44 8001D544 57750008 */  j          .L8001D55C
    /* DD48 8001D548 FFFF4224 */   addiu     $v0, $v0, -0x1
  .L8001D54C:
    /* DD4C 8001D54C 0580023C */  lui        $v0, %hi(D_80056534)
    /* DD50 8001D550 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* DD54 8001D554 00000000 */  nop
    /* DD58 8001D558 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001D55C:
    /* DD5C 8001D55C 0580013C */  lui        $at, %hi(D_80056534)
    /* DD60 8001D560 346522A4 */  sh         $v0, %lo(D_80056534)($at)
    /* DD64 8001D564 0580013C */  lui        $at, %hi(D_80056518)
    /* DD68 8001D568 186531A4 */  sh         $s1, %lo(D_80056518)($at)
    /* DD6C 8001D56C B00B80A7 */  sh         $zero, %gp_rel(D_800552C0)($gp)
    /* DD70 8001D570 CE6D000C */  jal        func_8001B738
    /* DD74 8001D574 02000424 */   addiu     $a0, $zero, 0x2
    /* DD78 8001D578 67750008 */  j          .L8001D59C
    /* DD7C 8001D57C 01000226 */   addiu     $v0, $s0, 0x1
  .L8001D580:
    /* DD80 8001D580 0580023C */  lui        $v0, %hi(D_80056518)
    /* DD84 8001D584 18654294 */  lhu        $v0, %lo(D_80056518)($v0)
    /* DD88 8001D588 00000000 */  nop
    /* DD8C 8001D58C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* DD90 8001D590 0580013C */  lui        $at, %hi(D_80056518)
    /* DD94 8001D594 186522A4 */  sh         $v0, %lo(D_80056518)($at)
    /* DD98 8001D598 01000226 */  addiu      $v0, $s0, 0x1
  .L8001D59C:
    /* DD9C 8001D59C 21804000 */  addu       $s0, $v0, $zero
    /* DDA0 8001D5A0 00140200 */  sll        $v0, $v0, 16
    /* DDA4 8001D5A4 03140200 */  sra        $v0, $v0, 16
    /* DDA8 8001D5A8 100E4228 */  slti       $v0, $v0, 0xE10
    /* DDAC 8001D5AC A0FF4014 */  bnez       $v0, .L8001D430
    /* DDB0 8001D5B0 00000000 */   nop
    /* DDB4 8001D5B4 EE72000C */  jal        func_8001CBB8
    /* DDB8 8001D5B8 04000424 */   addiu     $a0, $zero, 0x4
    /* DDBC 8001D5BC FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8001D5C0:
    /* DDC0 8001D5C0 1800BF8F */  lw         $ra, 0x18($sp)
    /* DDC4 8001D5C4 1400B18F */  lw         $s1, 0x14($sp)
    /* DDC8 8001D5C8 1000B08F */  lw         $s0, 0x10($sp)
    /* DDCC 8001D5CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* DDD0 8001D5D0 0800E003 */  jr         $ra
    /* DDD4 8001D5D4 00000000 */   nop
endlabel func_8001D3A4
