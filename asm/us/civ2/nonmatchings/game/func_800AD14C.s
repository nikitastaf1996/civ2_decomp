.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AD14C, 0x740

glabel func_800AD14C
    /* 9D94C 800AD14C 60FCBD27 */  addiu      $sp, $sp, -0x3A0
    /* 9D950 800AD150 9C03BFAF */  sw         $ra, 0x39C($sp)
    /* 9D954 800AD154 9803B2AF */  sw         $s2, 0x398($sp)
    /* 9D958 800AD158 9403B1AF */  sw         $s1, 0x394($sp)
    /* 9D95C 800AD15C 9003B0AF */  sw         $s0, 0x390($sp)
    /* 9D960 800AD160 21908000 */  addu       $s2, $a0, $zero
    /* 9D964 800AD164 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D968 800AD168 ADC5020C */  jal        func_800B16B4
    /* 9D96C 800AD16C 00200524 */   addiu     $a1, $zero, 0x2000
    /* 9D970 800AD170 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9D974 800AD174 9AE0030C */  jal        func_800F8268
    /* 9D978 800AD178 21200002 */   addu      $a0, $s0, $zero
    /* 9D97C 800AD17C EFE9030C */  jal        func_800FA7BC
    /* 9D980 800AD180 F402A427 */   addiu     $a0, $sp, 0x2F4
    /* 9D984 800AD184 0403A0AF */  sw         $zero, 0x304($sp)
    /* 9D988 800AD188 0803A0AF */  sw         $zero, 0x308($sp)
    /* 9D98C 800AD18C 0C03A0AF */  sw         $zero, 0x30C($sp)
    /* 9D990 800AD190 1003A0AF */  sw         $zero, 0x310($sp)
    /* 9D994 800AD194 1403A0AF */  sw         $zero, 0x314($sp)
    /* 9D998 800AD198 1803A0AF */  sw         $zero, 0x318($sp)
    /* 9D99C 800AD19C 1C03A0AF */  sw         $zero, 0x31C($sp)
    /* 9D9A0 800AD1A0 2003A0AF */  sw         $zero, 0x320($sp)
    /* 9D9A4 800AD1A4 2403A0AF */  sw         $zero, 0x324($sp)
    /* 9D9A8 800AD1A8 2803A0AF */  sw         $zero, 0x328($sp)
    /* 9D9AC 800AD1AC 2C03A0AF */  sw         $zero, 0x32C($sp)
    /* 9D9B0 800AD1B0 3003A0AF */  sw         $zero, 0x330($sp)
    /* 9D9B4 800AD1B4 3403A0AF */  sw         $zero, 0x334($sp)
    /* 9D9B8 800AD1B8 3803A0AF */  sw         $zero, 0x338($sp)
    /* 9D9BC 800AD1BC 3C03A0AF */  sw         $zero, 0x33C($sp)
    /* 9D9C0 800AD1C0 4003A0AF */  sw         $zero, 0x340($sp)
    /* 9D9C4 800AD1C4 4403A0AF */  sw         $zero, 0x344($sp)
    /* 9D9C8 800AD1C8 4803A0AF */  sw         $zero, 0x348($sp)
    /* 9D9CC 800AD1CC 4C03A0AF */  sw         $zero, 0x34C($sp)
    /* 9D9D0 800AD1D0 5003A0AF */  sw         $zero, 0x350($sp)
    /* 9D9D4 800AD1D4 5403A0AF */  sw         $zero, 0x354($sp)
    /* 9D9D8 800AD1D8 5803A0AF */  sw         $zero, 0x358($sp)
    /* 9D9DC 800AD1DC 5C03A0AF */  sw         $zero, 0x35C($sp)
    /* 9D9E0 800AD1E0 6003A0A7 */  sh         $zero, 0x360($sp)
    /* 9D9E4 800AD1E4 6203A0A7 */  sh         $zero, 0x362($sp)
    /* 9D9E8 800AD1E8 00400224 */  addiu      $v0, $zero, 0x4000
    /* 9D9EC 800AD1EC 6403A2A7 */  sh         $v0, 0x364($sp)
    /* 9D9F0 800AD1F0 6603A2A7 */  sh         $v0, 0x366($sp)
    /* 9D9F4 800AD1F4 6E03A0A7 */  sh         $zero, 0x36E($sp)
    /* 9D9F8 800AD1F8 7003A0A7 */  sh         $zero, 0x370($sp)
    /* 9D9FC 800AD1FC 6803A0A7 */  sh         $zero, 0x368($sp)
    /* 9DA00 800AD200 01000224 */  addiu      $v0, $zero, 0x1
    /* 9DA04 800AD204 6A03A2A7 */  sh         $v0, 0x36A($sp)
    /* 9DA08 800AD208 6C03A2A7 */  sh         $v0, 0x36C($sp)
    /* 9DA0C 800AD20C 7803A0AF */  sw         $zero, 0x378($sp)
    /* 9DA10 800AD210 7C03A0AF */  sw         $zero, 0x37C($sp)
    /* 9DA14 800AD214 8003A0AF */  sw         $zero, 0x380($sp)
    /* 9DA18 800AD218 01000224 */  addiu      $v0, $zero, 0x1
    /* 9DA1C 800AD21C 8403A2A3 */  sb         $v0, 0x384($sp)
    /* 9DA20 800AD220 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 9DA24 800AD224 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9DA28 800AD228 F002A2AF */  sw         $v0, 0x2F0($sp)
    /* 9DA2C 800AD22C 7803A0AF */  sw         $zero, 0x378($sp)
    /* 9DA30 800AD230 8803A0AF */  sw         $zero, 0x388($sp)
    /* 9DA34 800AD234 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 9DA38 800AD238 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9DA3C 800AD23C F8000224 */  addiu      $v0, $zero, 0xF8
    /* 9DA40 800AD240 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9DA44 800AD244 BC000224 */  addiu      $v0, $zero, 0xBC
    /* 9DA48 800AD248 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9DA4C 800AD24C 1180023C */  lui        $v0, %hi(D_8010CBE0)
    /* 9DA50 800AD250 E0CB4224 */  addiu      $v0, $v0, %lo(D_8010CBE0)
    /* 9DA54 800AD254 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 9DA58 800AD258 21200002 */  addu       $a0, $s0, $zero
    /* 9DA5C 800AD25C 1680053C */  lui        $a1, %hi(D_80158E64)
    /* 9DA60 800AD260 648EA524 */  addiu      $a1, $a1, %lo(D_80158E64)
    /* 9DA64 800AD264 21300000 */  addu       $a2, $zero, $zero
    /* 9DA68 800AD268 B3DE030C */  jal        func_800F7ACC
    /* 9DA6C 800AD26C 24000724 */   addiu     $a3, $zero, 0x24
    /* 9DA70 800AD270 40101200 */  sll        $v0, $s2, 1
    /* 9DA74 800AD274 1280013C */  lui        $at, %hi(D_8011FFF4)
    /* 9DA78 800AD278 21082200 */  addu       $at, $at, $v0
    /* 9DA7C 800AD27C F4FF3084 */  lh         $s0, %lo(D_8011FFF4)($at)
    /* 9DA80 800AD280 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DA84 800AD284 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DA88 800AD288 CB1A030C */  jal        func_800C6B2C
    /* 9DA8C 800AD28C 00000000 */   nop
    /* 9DA90 800AD290 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DA94 800AD294 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DA98 800AD298 1680053C */  lui        $a1, %hi(D_80158E68)
    /* 9DA9C 800AD29C 688EA524 */  addiu      $a1, $a1, %lo(D_80158E68)
    /* 9DAA0 800AD2A0 9987030C */  jal        func_800E1E64
    /* 9DAA4 800AD2A4 00000000 */   nop
    /* 9DAA8 800AD2A8 1E00022A */  slti       $v0, $s0, 0x1E
    /* 9DAAC 800AD2AC 07004010 */  beqz       $v0, .L800AD2CC
    /* 9DAB0 800AD2B0 3C00022A */   slti      $v0, $s0, 0x3C
    /* 9DAB4 800AD2B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DAB8 800AD2B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DABC 800AD2BC 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9DAC0 800AD2C0 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9DAC4 800AD2C4 EFB40208 */  j          .L800AD3BC
    /* 9DAC8 800AD2C8 00000000 */   nop
  .L800AD2CC:
    /* 9DACC 800AD2CC 07004010 */  beqz       $v0, .L800AD2EC
    /* 9DAD0 800AD2D0 5A00022A */   slti      $v0, $s0, 0x5A
    /* 9DAD4 800AD2D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DAD8 800AD2D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DADC 800AD2DC 1680053C */  lui        $a1, %hi(D_80158E74)
    /* 9DAE0 800AD2E0 748EA524 */  addiu      $a1, $a1, %lo(D_80158E74)
    /* 9DAE4 800AD2E4 EFB40208 */  j          .L800AD3BC
    /* 9DAE8 800AD2E8 00000000 */   nop
  .L800AD2EC:
    /* 9DAEC 800AD2EC 07004010 */  beqz       $v0, .L800AD30C
    /* 9DAF0 800AD2F0 7800022A */   slti      $v0, $s0, 0x78
    /* 9DAF4 800AD2F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DAF8 800AD2F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DAFC 800AD2FC 1680053C */  lui        $a1, %hi(D_80158E78)
    /* 9DB00 800AD300 788EA524 */  addiu      $a1, $a1, %lo(D_80158E78)
    /* 9DB04 800AD304 EFB40208 */  j          .L800AD3BC
    /* 9DB08 800AD308 00000000 */   nop
  .L800AD30C:
    /* 9DB0C 800AD30C 07004010 */  beqz       $v0, .L800AD32C
    /* 9DB10 800AD310 9600022A */   slti      $v0, $s0, 0x96
    /* 9DB14 800AD314 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DB18 800AD318 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DB1C 800AD31C 1680053C */  lui        $a1, %hi(D_80158E7C)
    /* 9DB20 800AD320 7C8EA524 */  addiu      $a1, $a1, %lo(D_80158E7C)
    /* 9DB24 800AD324 EFB40208 */  j          .L800AD3BC
    /* 9DB28 800AD328 00000000 */   nop
  .L800AD32C:
    /* 9DB2C 800AD32C 07004010 */  beqz       $v0, .L800AD34C
    /* 9DB30 800AD330 B400022A */   slti      $v0, $s0, 0xB4
    /* 9DB34 800AD334 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DB38 800AD338 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DB3C 800AD33C 1680053C */  lui        $a1, %hi(D_80158E80)
    /* 9DB40 800AD340 808EA524 */  addiu      $a1, $a1, %lo(D_80158E80)
    /* 9DB44 800AD344 EFB40208 */  j          .L800AD3BC
    /* 9DB48 800AD348 00000000 */   nop
  .L800AD34C:
    /* 9DB4C 800AD34C 07004010 */  beqz       $v0, .L800AD36C
    /* 9DB50 800AD350 D200022A */   slti      $v0, $s0, 0xD2
    /* 9DB54 800AD354 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DB58 800AD358 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DB5C 800AD35C 1680053C */  lui        $a1, %hi(D_80158E84)
    /* 9DB60 800AD360 848EA524 */  addiu      $a1, $a1, %lo(D_80158E84)
    /* 9DB64 800AD364 EFB40208 */  j          .L800AD3BC
    /* 9DB68 800AD368 00000000 */   nop
  .L800AD36C:
    /* 9DB6C 800AD36C 07004010 */  beqz       $v0, .L800AD38C
    /* 9DB70 800AD370 F000022A */   slti      $v0, $s0, 0xF0
    /* 9DB74 800AD374 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DB78 800AD378 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DB7C 800AD37C 1680053C */  lui        $a1, %hi(D_80158E88)
    /* 9DB80 800AD380 888EA524 */  addiu      $a1, $a1, %lo(D_80158E88)
    /* 9DB84 800AD384 EFB40208 */  j          .L800AD3BC
    /* 9DB88 800AD388 00000000 */   nop
  .L800AD38C:
    /* 9DB8C 800AD38C 07004010 */  beqz       $v0, .L800AD3AC
    /* 9DB90 800AD390 00000000 */   nop
    /* 9DB94 800AD394 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DB98 800AD398 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DB9C 800AD39C 1680053C */  lui        $a1, %hi(D_80158E8C)
    /* 9DBA0 800AD3A0 8C8EA524 */  addiu      $a1, $a1, %lo(D_80158E8C)
    /* 9DBA4 800AD3A4 EFB40208 */  j          .L800AD3BC
    /* 9DBA8 800AD3A8 00000000 */   nop
  .L800AD3AC:
    /* 9DBAC 800AD3AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DBB0 800AD3B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DBB4 800AD3B4 1680053C */  lui        $a1, %hi(D_80158E90)
    /* 9DBB8 800AD3B8 908EA524 */  addiu      $a1, $a1, %lo(D_80158E90)
  .L800AD3BC:
    /* 9DBBC 800AD3BC 9987030C */  jal        func_800E1E64
    /* 9DBC0 800AD3C0 00000000 */   nop
    /* 9DBC4 800AD3C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DBC8 800AD3C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DBCC 800AD3CC 1680053C */  lui        $a1, %hi(D_80158E94)
    /* 9DBD0 800AD3D0 948EA524 */  addiu      $a1, $a1, %lo(D_80158E94)
    /* 9DBD4 800AD3D4 9987030C */  jal        func_800E1E64
    /* 9DBD8 800AD3D8 00000000 */   nop
    /* 9DBDC 800AD3DC 6400022A */  slti       $v0, $s0, 0x64
    /* 9DBE0 800AD3E0 08004010 */  beqz       $v0, .L800AD404
    /* 9DBE4 800AD3E4 0A00022A */   slti      $v0, $s0, 0xA
    /* 9DBE8 800AD3E8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DBEC 800AD3EC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DBF0 800AD3F0 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9DBF4 800AD3F4 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9DBF8 800AD3F8 9987030C */  jal        func_800E1E64
    /* 9DBFC 800AD3FC 00000000 */   nop
    /* 9DC00 800AD400 0A00022A */  slti       $v0, $s0, 0xA
  .L800AD404:
    /* 9DC04 800AD404 07004010 */  beqz       $v0, .L800AD424
    /* 9DC08 800AD408 00000000 */   nop
    /* 9DC0C 800AD40C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DC10 800AD410 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DC14 800AD414 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9DC18 800AD418 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9DC1C 800AD41C 9987030C */  jal        func_800E1E64
    /* 9DC20 800AD420 00000000 */   nop
  .L800AD424:
    /* 9DC24 800AD424 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DC28 800AD428 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DC2C 800AD42C 9C1B030C */  jal        func_800C6E70
    /* 9DC30 800AD430 21280002 */   addu      $a1, $s0, $zero
    /* 9DC34 800AD434 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DC38 800AD438 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DC3C 800AD43C 1680053C */  lui        $a1, %hi(D_80158E9C)
    /* 9DC40 800AD440 9C8EA524 */  addiu      $a1, $a1, %lo(D_80158E9C)
    /* 9DC44 800AD444 9987030C */  jal        func_800E1E64
    /* 9DC48 800AD448 00000000 */   nop
    /* 9DC4C 800AD44C C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9DC50 800AD450 21200002 */  addu       $a0, $s0, $zero
    /* 9DC54 800AD454 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9DC58 800AD458 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9DC5C 800AD45C FDFF0624 */  addiu      $a2, $zero, -0x3
    /* 9DC60 800AD460 76E2030C */  jal        func_800F89D8
    /* 9DC64 800AD464 21380000 */   addu      $a3, $zero, $zero
    /* 9DC68 800AD468 800990AF */  sw         $s0, %gp_rel(D_80158E58)($gp)
    /* 9DC6C 800AD46C 0B80053C */  lui        $a1, %hi(func_800AB32C)
    /* 9DC70 800AD470 2CB3A524 */  addiu      $a1, $a1, %lo(func_800AB32C)
    /* 9DC74 800AD474 82DF030C */  jal        func_800F7E08
    /* 9DC78 800AD478 21200002 */   addu      $a0, $s0, $zero
    /* 9DC7C 800AD47C 8FB8020C */  jal        func_800AE23C
    /* 9DC80 800AD480 21800000 */   addu      $s0, $zero, $zero
    /* 9DC84 800AD484 3C00022A */  slti       $v0, $s0, 0x3C
  .L800AD488:
    /* 9DC88 800AD488 05004010 */  beqz       $v0, .L800AD4A0
    /* 9DC8C 800AD48C 00000000 */   nop
    /* 9DC90 800AD490 8E12040C */  jal        func_80104A38
    /* 9DC94 800AD494 01001026 */   addiu     $s0, $s0, 0x1
    /* 9DC98 800AD498 22B50208 */  j          .L800AD488
    /* 9DC9C 800AD49C 3C00022A */   slti      $v0, $s0, 0x3C
  .L800AD4A0:
    /* 9DCA0 800AD4A0 8BBA020C */  jal        func_800AEA2C
    /* 9DCA4 800AD4A4 C0881200 */   sll       $s1, $s2, 3
    /* 9DCA8 800AD4A8 1180013C */  lui        $at, %hi(D_8010D064)
    /* 9DCAC 800AD4AC 21083100 */  addu       $at, $at, $s1
    /* 9DCB0 800AD4B0 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* 9DCB4 800AD4B4 ABAC020C */  jal        func_800AB2AC
    /* 9DCB8 800AD4B8 21200000 */   addu      $a0, $zero, $zero
    /* 9DCBC 800AD4BC 2800B027 */  addiu      $s0, $sp, 0x28
    /* 9DCC0 800AD4C0 A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9DCC4 800AD4C4 4001023C */  lui        $v0, (0x1404001 >> 16)
    /* 9DCC8 800AD4C8 01404234 */  ori        $v0, $v0, (0x1404001 & 0xFFFF)
    /* 9DCCC 800AD4CC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9DCD0 800AD4D0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9DCD4 800AD4D4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9DCD8 800AD4D8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9DCDC 800AD4DC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9DCE0 800AD4E0 21200002 */  addu       $a0, $s0, $zero
    /* 9DCE4 800AD4E4 C9060624 */  addiu      $a2, $zero, 0x6C9
    /* 9DCE8 800AD4E8 2CE0020C */  jal        func_800B80B0
    /* 9DCEC 800AD4EC 21380000 */   addu      $a3, $zero, $zero
    /* 9DCF0 800AD4F0 21200002 */  addu       $a0, $s0, $zero
    /* 9DCF4 800AD4F4 3BC9020C */  jal        func_800B24EC
    /* 9DCF8 800AD4F8 08000524 */   addiu     $a1, $zero, 0x8
    /* 9DCFC 800AD4FC 21283202 */  addu       $a1, $s1, $s2
    /* 9DD00 800AD500 80280500 */  sll        $a1, $a1, 2
    /* 9DD04 800AD504 2128B200 */  addu       $a1, $a1, $s2
    /* 9DD08 800AD508 80280500 */  sll        $a1, $a1, 2
    /* 9DD0C 800AD50C 1380023C */  lui        $v0, %hi(D_80131638)
    /* 9DD10 800AD510 38164224 */  addiu      $v0, $v0, %lo(D_80131638)
    /* 9DD14 800AD514 21200002 */  addu       $a0, $s0, $zero
    /* 9DD18 800AD518 2128A200 */  addu       $a1, $a1, $v0
    /* 9DD1C 800AD51C 21300000 */  addu       $a2, $zero, $zero
    /* 9DD20 800AD520 3DC9020C */  jal        func_800B24F4
    /* 9DD24 800AD524 21380000 */   addu      $a3, $zero, $zero
    /* 9DD28 800AD528 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DD2C 800AD52C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DD30 800AD530 CB1A030C */  jal        func_800C6B2C
    /* 9DD34 800AD534 00000000 */   nop
    /* 9DD38 800AD538 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DD3C 800AD53C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DD40 800AD540 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9DD44 800AD544 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9DD48 800AD548 9987030C */  jal        func_800E1E64
    /* 9DD4C 800AD54C 00000000 */   nop
    /* 9DD50 800AD550 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DD54 800AD554 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DD58 800AD558 731B030C */  jal        func_800C6DCC
    /* 9DD5C 800AD55C 7E000524 */   addiu     $a1, $zero, 0x7E
    /* 9DD60 800AD560 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DD64 800AD564 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DD68 800AD568 F71A030C */  jal        func_800C6BDC
    /* 9DD6C 800AD56C 00000000 */   nop
    /* 9DD70 800AD570 1180013C */  lui        $at, %hi(D_8010D06A)
    /* 9DD74 800AD574 21083100 */  addu       $at, $at, $s1
    /* 9DD78 800AD578 6AD02280 */  lb         $v0, %lo(D_8010D06A)($at)
    /* 9DD7C 800AD57C 00000000 */  nop
    /* 9DD80 800AD580 07004104 */  bgez       $v0, .L800AD5A0
    /* 9DD84 800AD584 C0101200 */   sll       $v0, $s2, 3
    /* 9DD88 800AD588 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DD8C 800AD58C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DD90 800AD590 731B030C */  jal        func_800C6DCC
    /* 9DD94 800AD594 0E000524 */   addiu     $a1, $zero, 0xE
    /* 9DD98 800AD598 74B50208 */  j          .L800AD5D0
    /* 9DD9C 800AD59C 00000000 */   nop
  .L800AD5A0:
    /* 9DDA0 800AD5A0 1180013C */  lui        $at, %hi(D_8010D06A)
    /* 9DDA4 800AD5A4 21082200 */  addu       $at, $at, $v0
    /* 9DDA8 800AD5A8 6AD02280 */  lb         $v0, %lo(D_8010D06A)($at)
    /* 9DDAC 800AD5AC 00000000 */  nop
    /* 9DDB0 800AD5B0 00110200 */  sll        $v0, $v0, 4
    /* 9DDB4 800AD5B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DDB8 800AD5B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DDBC 800AD5BC 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 9DDC0 800AD5C0 21082200 */  addu       $at, $at, $v0
    /* 9DDC4 800AD5C4 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 9DDC8 800AD5C8 651B030C */  jal        func_800C6D94
    /* 9DDCC 800AD5CC 00000000 */   nop
  .L800AD5D0:
    /* 9DDD0 800AD5D0 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9DDD4 800AD5D4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9DDD8 800AD5D8 69C7020C */  jal        func_800B1DA4
    /* 9DDDC 800AD5DC 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9DDE0 800AD5E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DDE4 800AD5E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DDE8 800AD5E8 CB1A030C */  jal        func_800C6B2C
    /* 9DDEC 800AD5EC 00000000 */   nop
    /* 9DDF0 800AD5F0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DDF4 800AD5F4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DDF8 800AD5F8 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9DDFC 800AD5FC A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9DE00 800AD600 9987030C */  jal        func_800E1E64
    /* 9DE04 800AD604 00000000 */   nop
    /* 9DE08 800AD608 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DE0C 800AD60C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DE10 800AD610 0180053C */  lui        $a1, %hi(D_80012144)
    /* 9DE14 800AD614 4421A524 */  addiu      $a1, $a1, %lo(D_80012144)
    /* 9DE18 800AD618 9987030C */  jal        func_800E1E64
    /* 9DE1C 800AD61C 00000000 */   nop
    /* 9DE20 800AD620 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DE24 800AD624 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DE28 800AD628 F71A030C */  jal        func_800C6BDC
    /* 9DE2C 800AD62C 00000000 */   nop
    /* 9DE30 800AD630 C0101200 */  sll        $v0, $s2, 3
    /* 9DE34 800AD634 1180013C */  lui        $at, %hi(D_8010D068)
    /* 9DE38 800AD638 21082200 */  addu       $at, $at, $v0
    /* 9DE3C 800AD63C 68D02290 */  lbu        $v0, %lo(D_8010D068)($at)
    /* 9DE40 800AD640 1280053C */  lui        $a1, %hi(D_8011A5CC)
    /* 9DE44 800AD644 CCA5A590 */  lbu        $a1, %lo(D_8011A5CC)($a1)
    /* 9DE48 800AD648 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DE4C 800AD64C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DE50 800AD650 18004500 */  mult       $v0, $a1
    /* 9DE54 800AD654 12280000 */  mflo       $a1
    /* 9DE58 800AD658 9C1B030C */  jal        func_800C6E70
    /* 9DE5C 800AD65C 00000000 */   nop
    /* 9DE60 800AD660 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9DE64 800AD664 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9DE68 800AD668 69C7020C */  jal        func_800B1DA4
    /* 9DE6C 800AD66C 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9DE70 800AD670 2300422A */  slti       $v0, $s2, 0x23
    /* 9DE74 800AD674 23004010 */  beqz       $v0, .L800AD704
    /* 9DE78 800AD678 2700422A */   slti      $v0, $s2, 0x27
    /* 9DE7C 800AD67C 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 9DE80 800AD680 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 9DE84 800AD684 C875000C */  jal        func_8001D720
    /* 9DE88 800AD688 21284002 */   addu      $a1, $s2, $zero
    /* 9DE8C 800AD68C 21804000 */  addu       $s0, $v0, $zero
    /* 9DE90 800AD690 1C000012 */  beqz       $s0, .L800AD704
    /* 9DE94 800AD694 2700422A */   slti      $v0, $s2, 0x27
    /* 9DE98 800AD698 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DE9C 800AD69C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DEA0 800AD6A0 CB1A030C */  jal        func_800C6B2C
    /* 9DEA4 800AD6A4 00000000 */   nop
    /* 9DEA8 800AD6A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DEAC 800AD6AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DEB0 800AD6B0 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9DEB4 800AD6B4 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9DEB8 800AD6B8 9987030C */  jal        func_800E1E64
    /* 9DEBC 800AD6BC 00000000 */   nop
    /* 9DEC0 800AD6C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DEC4 800AD6C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DEC8 800AD6C8 731B030C */  jal        func_800C6DCC
    /* 9DECC 800AD6CC 9E000524 */   addiu     $a1, $zero, 0x9E
    /* 9DED0 800AD6D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DED4 800AD6D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DED8 800AD6D8 F71A030C */  jal        func_800C6BDC
    /* 9DEDC 800AD6DC 00000000 */   nop
    /* 9DEE0 800AD6E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DEE4 800AD6E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DEE8 800AD6E8 131C030C */  jal        func_800C704C
    /* 9DEEC 800AD6EC 21280002 */   addu      $a1, $s0, $zero
    /* 9DEF0 800AD6F0 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9DEF4 800AD6F4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9DEF8 800AD6F8 69C7020C */  jal        func_800B1DA4
    /* 9DEFC 800AD6FC 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9DF00 800AD700 2700422A */  slti       $v0, $s2, 0x27
  .L800AD704:
    /* 9DF04 800AD704 25004014 */  bnez       $v0, .L800AD79C
    /* 9DF08 800AD708 00000000 */   nop
    /* 9DF0C 800AD70C 1280013C */  lui        $at, %hi(D_8011A705)
    /* 9DF10 800AD710 21083200 */  addu       $at, $at, $s2
    /* 9DF14 800AD714 05A73080 */  lb         $s0, %lo(D_8011A705)($at)
    /* 9DF18 800AD718 00000000 */  nop
    /* 9DF1C 800AD71C 1F000006 */  bltz       $s0, .L800AD79C
    /* 9DF20 800AD720 00000000 */   nop
    /* 9DF24 800AD724 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DF28 800AD728 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DF2C 800AD72C CB1A030C */  jal        func_800C6B2C
    /* 9DF30 800AD730 00000000 */   nop
    /* 9DF34 800AD734 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DF38 800AD738 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DF3C 800AD73C 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9DF40 800AD740 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9DF44 800AD744 9987030C */  jal        func_800E1E64
    /* 9DF48 800AD748 00000000 */   nop
    /* 9DF4C 800AD74C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DF50 800AD750 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DF54 800AD754 731B030C */  jal        func_800C6DCC
    /* 9DF58 800AD758 9F000524 */   addiu     $a1, $zero, 0x9F
    /* 9DF5C 800AD75C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DF60 800AD760 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DF64 800AD764 F71A030C */  jal        func_800C6BDC
    /* 9DF68 800AD768 00000000 */   nop
    /* 9DF6C 800AD76C 00111000 */  sll        $v0, $s0, 4
    /* 9DF70 800AD770 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9DF74 800AD774 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9DF78 800AD778 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 9DF7C 800AD77C 21082200 */  addu       $at, $at, $v0
    /* 9DF80 800AD780 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 9DF84 800AD784 651B030C */  jal        func_800C6D94
    /* 9DF88 800AD788 00000000 */   nop
    /* 9DF8C 800AD78C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9DF90 800AD790 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9DF94 800AD794 69C7020C */  jal        func_800B1DA4
    /* 9DF98 800AD798 2800A427 */   addiu     $a0, $sp, 0x28
  .L800AD79C:
    /* 9DF9C 800AD79C 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9DFA0 800AD7A0 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9DFA4 800AD7A4 69C7020C */  jal        func_800B1DA4
    /* 9DFA8 800AD7A8 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9DFAC 800AD7AC 80881200 */  sll        $s1, $s2, 2
    /* 9DFB0 800AD7B0 2800B027 */  addiu      $s0, $sp, 0x28
    /* 9DFB4 800AD7B4 A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9DFB8 800AD7B8 1280013C */  lui        $at, %hi(D_80120350)
    /* 9DFBC 800AD7BC 21083100 */  addu       $at, $at, $s1
    /* 9DFC0 800AD7C0 5003268C */  lw         $a2, %lo(D_80120350)($at)
    /* 9DFC4 800AD7C4 00800234 */  ori        $v0, $zero, 0x8000
    /* 9DFC8 800AD7C8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9DFCC 800AD7CC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9DFD0 800AD7D0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9DFD4 800AD7D4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9DFD8 800AD7D8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9DFDC 800AD7DC 21200002 */  addu       $a0, $s0, $zero
    /* 9DFE0 800AD7E0 2CE0020C */  jal        func_800B80B0
    /* 9DFE4 800AD7E4 21380000 */   addu      $a3, $zero, $zero
    /* 9DFE8 800AD7E8 21200002 */  addu       $a0, $s0, $zero
    /* 9DFEC 800AD7EC 52DF020C */  jal        func_800B7D48
    /* 9DFF0 800AD7F0 21280000 */   addu      $a1, $zero, $zero
    /* 9DFF4 800AD7F4 0F270324 */  addiu      $v1, $zero, 0x270F
    /* 9DFF8 800AD7F8 06004314 */  bne        $v0, $v1, .L800AD814
    /* 9DFFC 800AD7FC 00000000 */   nop
    /* 9E000 800AD800 1280013C */  lui        $at, %hi(D_801204F8)
    /* 9E004 800AD804 21083100 */  addu       $at, $at, $s1
    /* 9E008 800AD808 F804248C */  lw         $a0, %lo(D_801204F8)($at)
    /* 9E00C 800AD80C A2BA020C */  jal        func_800AEA88
    /* 9E010 800AD810 00000000 */   nop
  .L800AD814:
    /* 9E014 800AD814 16BA020C */  jal        func_800AE858
    /* 9E018 800AD818 00000000 */   nop
    /* 9E01C 800AD81C 7CEA030C */  jal        func_800FA9F0
    /* 9E020 800AD820 F402A427 */   addiu     $a0, $sp, 0x2F4
    /* 9E024 800AD824 C802A427 */  addiu      $a0, $sp, 0x2C8
    /* 9E028 800AD828 21280000 */  addu       $a1, $zero, $zero
    /* 9E02C 800AD82C A9E0030C */  jal        func_800F82A4
    /* 9E030 800AD830 21300000 */   addu      $a2, $zero, $zero
    /* 9E034 800AD834 8E12040C */  jal        func_80104A38
    /* 9E038 800AD838 00000000 */   nop
    /* 9E03C 800AD83C C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9E040 800AD840 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 9E044 800AD844 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9E048 800AD848 F002A2AF */  sw         $v0, 0x2F0($sp)
    /* 9E04C 800AD84C F402A427 */  addiu      $a0, $sp, 0x2F4
    /* 9E050 800AD850 F5E9030C */  jal        func_800FA7D4
    /* 9E054 800AD854 21280000 */   addu      $a1, $zero, $zero
    /* 9E058 800AD858 21200002 */  addu       $a0, $s0, $zero
    /* 9E05C 800AD85C 4CE1030C */  jal        func_800F8530
    /* 9E060 800AD860 02000524 */   addiu     $a1, $zero, 0x2
    /* 9E064 800AD864 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E068 800AD868 0AC7020C */  jal        func_800B1C28
    /* 9E06C 800AD86C 02000524 */   addiu     $a1, $zero, 0x2
    /* 9E070 800AD870 9C03BF8F */  lw         $ra, 0x39C($sp)
    /* 9E074 800AD874 9803B28F */  lw         $s2, 0x398($sp)
    /* 9E078 800AD878 9403B18F */  lw         $s1, 0x394($sp)
    /* 9E07C 800AD87C 9003B08F */  lw         $s0, 0x390($sp)
    /* 9E080 800AD880 A003BD27 */  addiu      $sp, $sp, 0x3A0
    /* 9E084 800AD884 0800E003 */  jr         $ra
    /* 9E088 800AD888 00000000 */   nop
endlabel func_800AD14C
