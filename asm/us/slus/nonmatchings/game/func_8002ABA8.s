.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002ABA8, 0x1CC

glabel func_8002ABA8
    /* 1B3A8 8002ABA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B3AC 8002ABAC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1B3B0 8002ABB0 07000224 */  addiu      $v0, $zero, 0x7
    /* 1B3B4 8002ABB4 0580013C */  lui        $at, %hi(D_80056528)
    /* 1B3B8 8002ABB8 286522A4 */  sh         $v0, %lo(D_80056528)($at)
    /* 1B3BC 8002ABBC 0580013C */  lui        $at, %hi(D_80056534)
    /* 1B3C0 8002ABC0 346520A4 */  sh         $zero, %lo(D_80056534)($at)
    /* 1B3C4 8002ABC4 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B3C8 8002ABC8 186520A4 */  sh         $zero, %lo(D_80056518)($at)
    /* 1B3CC 8002ABCC BE0B80A3 */  sb         $zero, %gp_rel(D_800552CE)($gp)
    /* 1B3D0 8002ABD0 BD0B80A3 */  sb         $zero, %gp_rel(D_800552CD)($gp)
    /* 1B3D4 8002ABD4 0580043C */  lui        $a0, %hi(D_8004C264)
    /* 1B3D8 8002ABD8 64C28424 */  addiu      $a0, $a0, %lo(D_8004C264)
    /* 1B3DC 8002ABDC F664000C */  jal        func_800193D8
    /* 1B3E0 8002ABE0 00000000 */   nop
    /* 1B3E4 8002ABE4 0580043C */  lui        $a0, %hi(D_8004C264)
    /* 1B3E8 8002ABE8 64C28424 */  addiu      $a0, $a0, %lo(D_8004C264)
    /* 1B3EC 8002ABEC E1A5000C */  jal        func_80029784
    /* 1B3F0 8002ABF0 21280000 */   addu      $a1, $zero, $zero
  .L8002ABF4:
    /* 1B3F4 8002ABF4 E976000C */  jal        func_8001DBA4
    /* 1B3F8 8002ABF8 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B3FC 8002ABFC C77F000C */  jal        func_8001FF1C
    /* 1B400 8002AC00 08000424 */   addiu     $a0, $zero, 0x8
    /* 1B404 8002AC04 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B408 8002AC08 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B40C 8002AC0C 00000000 */  nop
    /* 1B410 8002AC10 40004230 */  andi       $v0, $v0, 0x40
    /* 1B414 8002AC14 0B004010 */  beqz       $v0, .L8002AC44
    /* 1B418 8002AC18 00000000 */   nop
    /* 1B41C 8002AC1C CE6D000C */  jal        func_8001B738
    /* 1B420 8002AC20 07000424 */   addiu     $a0, $zero, 0x7
    /* 1B424 8002AC24 ED81000C */  jal        func_800207B4
    /* 1B428 8002AC28 00000000 */   nop
    /* 1B42C 8002AC2C E0A7000C */  jal        func_80029F80
    /* 1B430 8002AC30 00000000 */   nop
    /* 1B434 8002AC34 0580023C */  lui        $v0, %hi(D_80056534)
    /* 1B438 8002AC38 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* 1B43C 8002AC3C 59AB0008 */  j          .L8002AD64
    /* 1B440 8002AC40 01004224 */   addiu     $v0, $v0, 0x1
  .L8002AC44:
    /* 1B444 8002AC44 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B448 8002AC48 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B44C 8002AC4C 00000000 */  nop
    /* 1B450 8002AC50 10004230 */  andi       $v0, $v0, 0x10
    /* 1B454 8002AC54 07004010 */  beqz       $v0, .L8002AC74
    /* 1B458 8002AC58 00000000 */   nop
    /* 1B45C 8002AC5C CE6D000C */  jal        func_8001B738
    /* 1B460 8002AC60 05000424 */   addiu     $a0, $zero, 0x5
    /* 1B464 8002AC64 ED81000C */  jal        func_800207B4
    /* 1B468 8002AC68 00000000 */   nop
    /* 1B46C 8002AC6C 59AB0008 */  j          .L8002AD64
    /* 1B470 8002AC70 21100000 */   addu      $v0, $zero, $zero
  .L8002AC74:
    /* 1B474 8002AC74 0580023C */  lui        $v0, %hi(D_80056518)
    /* 1B478 8002AC78 18654294 */  lhu        $v0, %lo(D_80056518)($v0)
    /* 1B47C 8002AC7C 00000000 */  nop
    /* 1B480 8002AC80 30004014 */  bnez       $v0, .L8002AD44
    /* 1B484 8002AC84 00000000 */   nop
    /* 1B488 8002AC88 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B48C 8002AC8C 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B490 8002AC90 00000000 */  nop
    /* 1B494 8002AC94 00404230 */  andi       $v0, $v0, 0x4000
    /* 1B498 8002AC98 15004010 */  beqz       $v0, .L8002ACF0
    /* 1B49C 8002AC9C 00000000 */   nop
    /* 1B4A0 8002ACA0 0580033C */  lui        $v1, %hi(D_80056534)
    /* 1B4A4 8002ACA4 34656394 */  lhu        $v1, %lo(D_80056534)($v1)
    /* 1B4A8 8002ACA8 0580023C */  lui        $v0, %hi(D_80056528)
    /* 1B4AC 8002ACAC 28654294 */  lhu        $v0, %lo(D_80056528)($v0)
    /* 1B4B0 8002ACB0 00000000 */  nop
    /* 1B4B4 8002ACB4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1B4B8 8002ACB8 2A186200 */  slt        $v1, $v1, $v0
    /* 1B4BC 8002ACBC 0C006010 */  beqz       $v1, .L8002ACF0
    /* 1B4C0 8002ACC0 00000000 */   nop
    /* 1B4C4 8002ACC4 0580023C */  lui        $v0, %hi(D_80056534)
    /* 1B4C8 8002ACC8 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* 1B4CC 8002ACCC 00000000 */  nop
    /* 1B4D0 8002ACD0 01004224 */  addiu      $v0, $v0, 0x1
    /* 1B4D4 8002ACD4 0580013C */  lui        $at, %hi(D_80056534)
    /* 1B4D8 8002ACD8 346522A4 */  sh         $v0, %lo(D_80056534)($at)
    /* 1B4DC 8002ACDC 04000224 */  addiu      $v0, $zero, 0x4
    /* 1B4E0 8002ACE0 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B4E4 8002ACE4 186522A4 */  sh         $v0, %lo(D_80056518)($at)
    /* 1B4E8 8002ACE8 CE6D000C */  jal        func_8001B738
    /* 1B4EC 8002ACEC 02000424 */   addiu     $a0, $zero, 0x2
  .L8002ACF0:
    /* 1B4F0 8002ACF0 0580023C */  lui        $v0, %hi(D_80056504)
    /* 1B4F4 8002ACF4 0465428C */  lw         $v0, %lo(D_80056504)($v0)
    /* 1B4F8 8002ACF8 00000000 */  nop
    /* 1B4FC 8002ACFC 00104230 */  andi       $v0, $v0, 0x1000
    /* 1B500 8002AD00 BCFF4010 */  beqz       $v0, .L8002ABF4
    /* 1B504 8002AD04 00000000 */   nop
    /* 1B508 8002AD08 0580023C */  lui        $v0, %hi(D_80056534)
    /* 1B50C 8002AD0C 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* 1B510 8002AD10 00000000 */  nop
    /* 1B514 8002AD14 B7FF4010 */  beqz       $v0, .L8002ABF4
    /* 1B518 8002AD18 00000000 */   nop
    /* 1B51C 8002AD1C 0580023C */  lui        $v0, %hi(D_80056534)
    /* 1B520 8002AD20 34654294 */  lhu        $v0, %lo(D_80056534)($v0)
    /* 1B524 8002AD24 00000000 */  nop
    /* 1B528 8002AD28 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1B52C 8002AD2C 0580013C */  lui        $at, %hi(D_80056534)
    /* 1B530 8002AD30 346522A4 */  sh         $v0, %lo(D_80056534)($at)
    /* 1B534 8002AD34 CE6D000C */  jal        func_8001B738
    /* 1B538 8002AD38 02000424 */   addiu     $a0, $zero, 0x2
    /* 1B53C 8002AD3C FDAA0008 */  j          .L8002ABF4
    /* 1B540 8002AD40 00000000 */   nop
  .L8002AD44:
    /* 1B544 8002AD44 0580023C */  lui        $v0, %hi(D_80056518)
    /* 1B548 8002AD48 18654294 */  lhu        $v0, %lo(D_80056518)($v0)
    /* 1B54C 8002AD4C 00000000 */  nop
    /* 1B550 8002AD50 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1B554 8002AD54 0580013C */  lui        $at, %hi(D_80056518)
    /* 1B558 8002AD58 186522A4 */  sh         $v0, %lo(D_80056518)($at)
    /* 1B55C 8002AD5C FDAA0008 */  j          .L8002ABF4
    /* 1B560 8002AD60 00000000 */   nop
  .L8002AD64:
    /* 1B564 8002AD64 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1B568 8002AD68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B56C 8002AD6C 0800E003 */  jr         $ra
    /* 1B570 8002AD70 00000000 */   nop
endlabel func_8002ABA8
