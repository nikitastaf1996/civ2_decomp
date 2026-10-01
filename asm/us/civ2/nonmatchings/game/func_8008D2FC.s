.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008D2FC, 0x12C

glabel func_8008D2FC
    /* 7DAFC 8008D2FC 21388000 */  addu       $a3, $a0, $zero
    /* 7DB00 8008D300 2130A000 */  addu       $a2, $a1, $zero
    /* 7DB04 8008D304 40100700 */  sll        $v0, $a3, 1
    /* 7DB08 8008D308 21284000 */  addu       $a1, $v0, $zero
    /* 7DB0C 8008D30C 21104700 */  addu       $v0, $v0, $a3
    /* 7DB10 8008D310 80100200 */  sll        $v0, $v0, 2
    /* 7DB14 8008D314 23104700 */  subu       $v0, $v0, $a3
    /* 7DB18 8008D318 C0100200 */  sll        $v0, $v0, 3
    /* 7DB1C 8008D31C 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DB20 8008D320 21082200 */  addu       $at, $at, $v0
    /* 7DB24 8008D324 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* 7DB28 8008D328 00000000 */  nop
    /* 7DB2C 8008D32C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 7DB30 8008D330 2A10C200 */  slt        $v0, $a2, $v0
    /* 7DB34 8008D334 26004010 */  beqz       $v0, .L8008D3D0
    /* 7DB38 8008D338 40180700 */   sll       $v1, $a3, 1
    /* 7DB3C 8008D33C 11800B3C */  lui        $t3, %hi(D_80113F18)
    /* 7DB40 8008D340 183F6B25 */  addiu      $t3, $t3, %lo(D_80113F18)
    /* 7DB44 8008D344 11800A3C */  lui        $t2, %hi(D_80113F1A)
    /* 7DB48 8008D348 1A3F4A25 */  addiu      $t2, $t2, %lo(D_80113F1A)
    /* 7DB4C 8008D34C 1180093C */  lui        $t1, %hi(D_80113F15)
    /* 7DB50 8008D350 153F2925 */  addiu      $t1, $t1, %lo(D_80113F15)
    /* 7DB54 8008D354 1180083C */  lui        $t0, %hi(D_80113F16)
    /* 7DB58 8008D358 163F0825 */  addiu      $t0, $t0, %lo(D_80113F16)
    /* 7DB5C 8008D35C 2118A700 */  addu       $v1, $a1, $a3
  .L8008D360:
    /* 7DB60 8008D360 80180300 */  sll        $v1, $v1, 2
    /* 7DB64 8008D364 23186700 */  subu       $v1, $v1, $a3
    /* 7DB68 8008D368 C0180300 */  sll        $v1, $v1, 3
    /* 7DB6C 8008D36C 40100600 */  sll        $v0, $a2, 1
    /* 7DB70 8008D370 21206B00 */  addu       $a0, $v1, $t3
    /* 7DB74 8008D374 21204400 */  addu       $a0, $v0, $a0
    /* 7DB78 8008D378 21104A00 */  addu       $v0, $v0, $t2
    /* 7DB7C 8008D37C 21104300 */  addu       $v0, $v0, $v1
    /* 7DB80 8008D380 00004294 */  lhu        $v0, 0x0($v0)
    /* 7DB84 8008D384 00000000 */  nop
    /* 7DB88 8008D388 000082A4 */  sh         $v0, 0x0($a0)
    /* 7DB8C 8008D38C 21206900 */  addu       $a0, $v1, $t1
    /* 7DB90 8008D390 21208600 */  addu       $a0, $a0, $a2
    /* 7DB94 8008D394 21106600 */  addu       $v0, $v1, $a2
    /* 7DB98 8008D398 21104800 */  addu       $v0, $v0, $t0
    /* 7DB9C 8008D39C 00004290 */  lbu        $v0, 0x0($v0)
    /* 7DBA0 8008D3A0 00000000 */  nop
    /* 7DBA4 8008D3A4 000082A0 */  sb         $v0, 0x0($a0)
    /* 7DBA8 8008D3A8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 7DBAC 8008D3AC 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DBB0 8008D3B0 21082300 */  addu       $at, $at, $v1
    /* 7DBB4 8008D3B4 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* 7DBB8 8008D3B8 00000000 */  nop
    /* 7DBBC 8008D3BC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 7DBC0 8008D3C0 2A10C200 */  slt        $v0, $a2, $v0
    /* 7DBC4 8008D3C4 E6FF4014 */  bnez       $v0, .L8008D360
    /* 7DBC8 8008D3C8 2118A700 */   addu      $v1, $a1, $a3
    /* 7DBCC 8008D3CC 40180700 */  sll        $v1, $a3, 1
  .L8008D3D0:
    /* 7DBD0 8008D3D0 21186700 */  addu       $v1, $v1, $a3
    /* 7DBD4 8008D3D4 80180300 */  sll        $v1, $v1, 2
    /* 7DBD8 8008D3D8 23186700 */  subu       $v1, $v1, $a3
    /* 7DBDC 8008D3DC C0180300 */  sll        $v1, $v1, 3
    /* 7DBE0 8008D3E0 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DBE4 8008D3E4 21082300 */  addu       $at, $at, $v1
    /* 7DBE8 8008D3E8 0E3F2290 */  lbu        $v0, %lo(D_80113F0E)($at)
    /* 7DBEC 8008D3EC 00000000 */  nop
    /* 7DBF0 8008D3F0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 7DBF4 8008D3F4 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DBF8 8008D3F8 21082300 */  addu       $at, $at, $v1
    /* 7DBFC 8008D3FC 0E3F22A0 */  sb         $v0, %lo(D_80113F0E)($at)
    /* 7DC00 8008D400 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 7DC04 8008D404 21082300 */  addu       $at, $at, $v1
    /* 7DC08 8008D408 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* 7DC0C 8008D40C 0200043C */  lui        $a0, (0x20000 >> 16)
    /* 7DC10 8008D410 25104400 */  or         $v0, $v0, $a0
    /* 7DC14 8008D414 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 7DC18 8008D418 21082300 */  addu       $at, $at, $v1
    /* 7DC1C 8008D41C D43E22AC */  sw         $v0, %lo(D_80113ED4)($at)
    /* 7DC20 8008D420 0800E003 */  jr         $ra
    /* 7DC24 8008D424 00000000 */   nop
endlabel func_8008D2FC
