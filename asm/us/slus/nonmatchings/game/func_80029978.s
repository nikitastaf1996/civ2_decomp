.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80029978, 0x608

glabel func_80029978
    /* 1A178 80029978 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1A17C 8002997C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1A180 80029980 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1A184 80029984 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1A188 80029988 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1A18C 8002998C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1A190 80029990 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1A194 80029994 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1A198 80029998 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A19C 8002999C E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A1A0 800299A0 1580053C */  lui        $a1, %hi(D_8014C1A0)
    /* 1A1A4 800299A4 A0C1A524 */  addiu      $a1, $a1, %lo(D_8014C1A0)
    /* 1A1A8 800299A8 1D6C000C */  jal        func_8001B074
    /* 1A1AC 800299AC 0A010624 */   addiu     $a2, $zero, 0x10A
    /* 1A1B0 800299B0 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 1A1B4 800299B4 1380013C */  lui        $at, %hi(D_8012C64C)
    /* 1A1B8 800299B8 4CC622A4 */  sh         $v0, %lo(D_8012C64C)($at)
    /* 1A1BC 800299BC 78000224 */  addiu      $v0, $zero, 0x78
    /* 1A1C0 800299C0 1380013C */  lui        $at, %hi(D_8012C64E)
    /* 1A1C4 800299C4 4EC622A4 */  sh         $v0, %lo(D_8012C64E)($at)
    /* 1A1C8 800299C8 B8000224 */  addiu      $v0, $zero, 0xB8
    /* 1A1CC 800299CC 1380013C */  lui        $at, %hi(D_8012C650)
    /* 1A1D0 800299D0 50C622A4 */  sh         $v0, %lo(D_8012C650)($at)
    /* 1A1D4 800299D4 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 1A1D8 800299D8 1380013C */  lui        $at, %hi(D_8012C652)
    /* 1A1DC 800299DC 52C622A4 */  sh         $v0, %lo(D_8012C652)($at)
    /* 1A1E0 800299E0 1380013C */  lui        $at, %hi(D_8012C656)
    /* 1A1E4 800299E4 56C620A0 */  sb         $zero, %lo(D_8012C656)($at)
    /* 1A1E8 800299E8 1380013C */  lui        $at, %hi(D_8012C657)
    /* 1A1EC 800299EC 57C620A0 */  sb         $zero, %lo(D_8012C657)($at)
    /* 1A1F0 800299F0 5C000224 */  addiu      $v0, $zero, 0x5C
    /* 1A1F4 800299F4 1380013C */  lui        $at, %hi(D_8012C660)
    /* 1A1F8 800299F8 60C622A4 */  sh         $v0, %lo(D_8012C660)($at)
    /* 1A1FC 800299FC 68000224 */  addiu      $v0, $zero, 0x68
    /* 1A200 80029A00 1380013C */  lui        $at, %hi(D_8012C662)
    /* 1A204 80029A04 62C622A4 */  sh         $v0, %lo(D_8012C662)($at)
    /* 1A208 80029A08 1380013C */  lui        $at, %hi(D_8012C664)
    /* 1A20C 80029A0C 64C620A4 */  sh         $zero, %lo(D_8012C664)($at)
    /* 1A210 80029A10 0B00023C */  lui        $v0, (0xB4000 >> 16)
    /* 1A214 80029A14 00404234 */  ori        $v0, $v0, (0xB4000 & 0xFFFF)
    /* 1A218 80029A18 1380013C */  lui        $at, %hi(D_8012C668)
    /* 1A21C 80029A1C 68C622AC */  sw         $v0, %lo(D_8012C668)($at)
    /* 1A220 80029A20 21800000 */  addu       $s0, $zero, $zero
  .L80029A24:
    /* 1A224 80029A24 1380023C */  lui        $v0, %hi(D_8012C664)
    /* 1A228 80029A28 64C64294 */  lhu        $v0, %lo(D_8012C664)($v0)
    /* 1A22C 80029A2C 00000000 */  nop
    /* 1A230 80029A30 80004224 */  addiu      $v0, $v0, 0x80
    /* 1A234 80029A34 1380013C */  lui        $at, %hi(D_8012C664)
    /* 1A238 80029A38 64C622A4 */  sh         $v0, %lo(D_8012C664)($at)
    /* 1A23C 80029A3C E976000C */  jal        func_8001DBA4
    /* 1A240 80029A40 01000424 */   addiu     $a0, $zero, 0x1
    /* 1A244 80029A44 01000226 */  addiu      $v0, $s0, 0x1
    /* 1A248 80029A48 21804000 */  addu       $s0, $v0, $zero
    /* 1A24C 80029A4C 00140200 */  sll        $v0, $v0, 16
    /* 1A250 80029A50 03140200 */  sra        $v0, $v0, 16
    /* 1A254 80029A54 30004228 */  slti       $v0, $v0, 0x30
    /* 1A258 80029A58 F2FF4014 */  bnez       $v0, .L80029A24
    /* 1A25C 80029A5C 00000000 */   nop
    /* 1A260 80029A60 E976000C */  jal        func_8001DBA4
    /* 1A264 80029A64 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A268 80029A68 0580043C */  lui        $a0, %hi(D_8004C278)
    /* 1A26C 80029A6C 78C28424 */  addiu      $a0, $a0, %lo(D_8004C278)
    /* 1A270 80029A70 F664000C */  jal        func_800193D8
    /* 1A274 80029A74 02011124 */   addiu     $s1, $zero, 0x102
    /* 1A278 80029A78 0580043C */  lui        $a0, %hi(D_8004C278)
    /* 1A27C 80029A7C 78C28424 */  addiu      $a0, $a0, %lo(D_8004C278)
    /* 1A280 80029A80 E1A5000C */  jal        func_80029784
    /* 1A284 80029A84 21280000 */   addu      $a1, $zero, $zero
    /* 1A288 80029A88 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A28C 80029A8C E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A290 80029A90 1580053C */  lui        $a1, %hi(D_8014C15C)
    /* 1A294 80029A94 5CC1A524 */  addiu      $a1, $a1, %lo(D_8014C15C)
    /* 1A298 80029A98 1D6C000C */  jal        func_8001B074
    /* 1A29C 80029A9C 0C010624 */   addiu     $a2, $zero, 0x10C
    /* 1A2A0 80029AA0 1380013C */  lui        $at, %hi(D_8012C694)
    /* 1A2A4 80029AA4 94C631A4 */  sh         $s1, %lo(D_8012C694)($at)
    /* 1A2A8 80029AA8 20001024 */  addiu      $s0, $zero, 0x20
    /* 1A2AC 80029AAC 1380013C */  lui        $at, %hi(D_8012C696)
    /* 1A2B0 80029AB0 96C630A4 */  sh         $s0, %lo(D_8012C696)($at)
    /* 1A2B4 80029AB4 1380013C */  lui        $at, %hi(D_8012C698)
    /* 1A2B8 80029AB8 98C630A4 */  sh         $s0, %lo(D_8012C698)($at)
    /* 1A2BC 80029ABC 10001524 */  addiu      $s5, $zero, 0x10
    /* 1A2C0 80029AC0 1380013C */  lui        $at, %hi(D_8012C69A)
    /* 1A2C4 80029AC4 9AC635A4 */  sh         $s5, %lo(D_8012C69A)($at)
    /* 1A2C8 80029AC8 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 1A2CC 80029ACC 1380013C */  lui        $at, %hi(D_8012C69E)
    /* 1A2D0 80029AD0 9EC622A0 */  sb         $v0, %lo(D_8012C69E)($at)
    /* 1A2D4 80029AD4 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1A2D8 80029AD8 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1A2DC 80029ADC 00000000 */  nop
    /* 1A2E0 80029AE0 04004294 */  lhu        $v0, 0x4($v0)
    /* 1A2E4 80029AE4 00000000 */  nop
    /* 1A2E8 80029AE8 00110200 */  sll        $v0, $v0, 4
    /* 1A2EC 80029AEC 1380013C */  lui        $at, %hi(D_8012C69F)
    /* 1A2F0 80029AF0 9FC622A0 */  sb         $v0, %lo(D_8012C69F)($at)
    /* 1A2F4 80029AF4 CE6D000C */  jal        func_8001B738
    /* 1A2F8 80029AF8 21200000 */   addu      $a0, $zero, $zero
    /* 1A2FC 80029AFC E976000C */  jal        func_8001DBA4
    /* 1A300 80029B00 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A304 80029B04 0580043C */  lui        $a0, %hi(D_8004C28C)
    /* 1A308 80029B08 8CC28424 */  addiu      $a0, $a0, %lo(D_8004C28C)
    /* 1A30C 80029B0C F664000C */  jal        func_800193D8
    /* 1A310 80029B10 A0001424 */   addiu     $s4, $zero, 0xA0
    /* 1A314 80029B14 0580043C */  lui        $a0, %hi(D_8004C28C)
    /* 1A318 80029B18 8CC28424 */  addiu      $a0, $a0, %lo(D_8004C28C)
    /* 1A31C 80029B1C E1A5000C */  jal        func_80029784
    /* 1A320 80029B20 21280000 */   addu      $a1, $zero, $zero
    /* 1A324 80029B24 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A328 80029B28 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A32C 80029B2C 1580053C */  lui        $a1, %hi(D_8014C15C)
    /* 1A330 80029B30 5CC1A524 */  addiu      $a1, $a1, %lo(D_8014C15C)
    /* 1A334 80029B34 1D6C000C */  jal        func_8001B074
    /* 1A338 80029B38 0D010624 */   addiu     $a2, $zero, 0x10D
    /* 1A33C 80029B3C 1380013C */  lui        $at, %hi(D_8012C6B8)
    /* 1A340 80029B40 B8C631A4 */  sh         $s1, %lo(D_8012C6B8)($at)
    /* 1A344 80029B44 34000224 */  addiu      $v0, $zero, 0x34
    /* 1A348 80029B48 1380013C */  lui        $at, %hi(D_8012C6BA)
    /* 1A34C 80029B4C BAC622A4 */  sh         $v0, %lo(D_8012C6BA)($at)
    /* 1A350 80029B50 1380013C */  lui        $at, %hi(D_8012C6BC)
    /* 1A354 80029B54 BCC630A4 */  sh         $s0, %lo(D_8012C6BC)($at)
    /* 1A358 80029B58 1380013C */  lui        $at, %hi(D_8012C6BE)
    /* 1A35C 80029B5C BEC635A4 */  sh         $s5, %lo(D_8012C6BE)($at)
    /* 1A360 80029B60 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 1A364 80029B64 1380013C */  lui        $at, %hi(D_8012C6C2)
    /* 1A368 80029B68 C2C622A0 */  sb         $v0, %lo(D_8012C6C2)($at)
    /* 1A36C 80029B6C 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1A370 80029B70 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1A374 80029B74 00000000 */  nop
    /* 1A378 80029B78 06004294 */  lhu        $v0, 0x6($v0)
    /* 1A37C 80029B7C 00000000 */  nop
    /* 1A380 80029B80 00110200 */  sll        $v0, $v0, 4
    /* 1A384 80029B84 1380013C */  lui        $at, %hi(D_8012C6C3)
    /* 1A388 80029B88 C3C622A0 */  sb         $v0, %lo(D_8012C6C3)($at)
    /* 1A38C 80029B8C CE6D000C */  jal        func_8001B738
    /* 1A390 80029B90 21200000 */   addu      $a0, $zero, $zero
    /* 1A394 80029B94 E976000C */  jal        func_8001DBA4
    /* 1A398 80029B98 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A39C 80029B9C 0580043C */  lui        $a0, %hi(D_8004C2A0)
    /* 1A3A0 80029BA0 A0C28424 */  addiu      $a0, $a0, %lo(D_8004C2A0)
    /* 1A3A4 80029BA4 F664000C */  jal        func_800193D8
    /* 1A3A8 80029BA8 22011124 */   addiu     $s1, $zero, 0x122
    /* 1A3AC 80029BAC 0580043C */  lui        $a0, %hi(D_8004C2A0)
    /* 1A3B0 80029BB0 A0C28424 */  addiu      $a0, $a0, %lo(D_8004C2A0)
    /* 1A3B4 80029BB4 E1A5000C */  jal        func_80029784
    /* 1A3B8 80029BB8 21280000 */   addu      $a1, $zero, $zero
    /* 1A3BC 80029BBC 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A3C0 80029BC0 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A3C4 80029BC4 1580053C */  lui        $a1, %hi(D_8014C228)
    /* 1A3C8 80029BC8 28C2A524 */  addiu      $a1, $a1, %lo(D_8014C228)
    /* 1A3CC 80029BCC 1D6C000C */  jal        func_8001B074
    /* 1A3D0 80029BD0 0E010624 */   addiu     $a2, $zero, 0x10E
    /* 1A3D4 80029BD4 EA000224 */  addiu      $v0, $zero, 0xEA
    /* 1A3D8 80029BD8 1380013C */  lui        $at, %hi(D_8012C6DC)
    /* 1A3DC 80029BDC DCC622A4 */  sh         $v0, %lo(D_8012C6DC)($at)
    /* 1A3E0 80029BE0 48000224 */  addiu      $v0, $zero, 0x48
    /* 1A3E4 80029BE4 1380013C */  lui        $at, %hi(D_8012C6DE)
    /* 1A3E8 80029BE8 DEC622A4 */  sh         $v0, %lo(D_8012C6DE)($at)
    /* 1A3EC 80029BEC 38000224 */  addiu      $v0, $zero, 0x38
    /* 1A3F0 80029BF0 1380013C */  lui        $at, %hi(D_8012C6E0)
    /* 1A3F4 80029BF4 E0C622A4 */  sh         $v0, %lo(D_8012C6E0)($at)
    /* 1A3F8 80029BF8 1380013C */  lui        $at, %hi(D_8012C6E2)
    /* 1A3FC 80029BFC E2C635A4 */  sh         $s5, %lo(D_8012C6E2)($at)
    /* 1A400 80029C00 1380013C */  lui        $at, %hi(D_8012C6E6)
    /* 1A404 80029C04 E6C634A0 */  sb         $s4, %lo(D_8012C6E6)($at)
    /* 1A408 80029C08 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1A40C 80029C0C 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1A410 80029C10 00000000 */  nop
    /* 1A414 80029C14 08004294 */  lhu        $v0, 0x8($v0)
    /* 1A418 80029C18 00000000 */  nop
    /* 1A41C 80029C1C 00110200 */  sll        $v0, $v0, 4
    /* 1A420 80029C20 A0004224 */  addiu      $v0, $v0, 0xA0
    /* 1A424 80029C24 1380013C */  lui        $at, %hi(D_8012C6E7)
    /* 1A428 80029C28 E7C622A0 */  sb         $v0, %lo(D_8012C6E7)($at)
    /* 1A42C 80029C2C CE6D000C */  jal        func_8001B738
    /* 1A430 80029C30 21200000 */   addu      $a0, $zero, $zero
    /* 1A434 80029C34 E976000C */  jal        func_8001DBA4
    /* 1A438 80029C38 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A43C 80029C3C 0580043C */  lui        $a0, %hi(D_8004C2B4)
    /* 1A440 80029C40 B4C28424 */  addiu      $a0, $a0, %lo(D_8004C2B4)
    /* 1A444 80029C44 F664000C */  jal        func_800193D8
    /* 1A448 80029C48 50001224 */   addiu     $s2, $zero, 0x50
    /* 1A44C 80029C4C 0580043C */  lui        $a0, %hi(D_8004C2B4)
    /* 1A450 80029C50 B4C28424 */  addiu      $a0, $a0, %lo(D_8004C2B4)
    /* 1A454 80029C54 E1A5000C */  jal        func_80029784
    /* 1A458 80029C58 21280000 */   addu      $a1, $zero, $zero
    /* 1A45C 80029C5C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A460 80029C60 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A464 80029C64 1580053C */  lui        $a1, %hi(D_8014C228)
    /* 1A468 80029C68 28C2A524 */  addiu      $a1, $a1, %lo(D_8014C228)
    /* 1A46C 80029C6C 1D6C000C */  jal        func_8001B074
    /* 1A470 80029C70 0F010624 */   addiu     $a2, $zero, 0x10F
    /* 1A474 80029C74 1380013C */  lui        $at, %hi(D_8012C700)
    /* 1A478 80029C78 00C731A4 */  sh         $s1, %lo(D_8012C700)($at)
    /* 1A47C 80029C7C 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 1A480 80029C80 1380013C */  lui        $at, %hi(D_8012C702)
    /* 1A484 80029C84 02C722A4 */  sh         $v0, %lo(D_8012C702)($at)
    /* 1A488 80029C88 1380013C */  lui        $at, %hi(D_8012C704)
    /* 1A48C 80029C8C 04C732A4 */  sh         $s2, %lo(D_8012C704)($at)
    /* 1A490 80029C90 18001324 */  addiu      $s3, $zero, 0x18
    /* 1A494 80029C94 1380013C */  lui        $at, %hi(D_8012C706)
    /* 1A498 80029C98 06C733A4 */  sh         $s3, %lo(D_8012C706)($at)
    /* 1A49C 80029C9C 1380013C */  lui        $at, %hi(D_8012C70A)
    /* 1A4A0 80029CA0 0AC734A0 */  sb         $s4, %lo(D_8012C70A)($at)
    /* 1A4A4 80029CA4 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1A4A8 80029CA8 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1A4AC 80029CAC 00000000 */  nop
    /* 1A4B0 80029CB0 0A004394 */  lhu        $v1, 0xA($v0)
    /* 1A4B4 80029CB4 00000000 */  nop
    /* 1A4B8 80029CB8 40100300 */  sll        $v0, $v1, 1
    /* 1A4BC 80029CBC 21104300 */  addu       $v0, $v0, $v1
    /* 1A4C0 80029CC0 C0100200 */  sll        $v0, $v0, 3
    /* 1A4C4 80029CC4 1380013C */  lui        $at, %hi(D_8012C70B)
    /* 1A4C8 80029CC8 0BC722A0 */  sb         $v0, %lo(D_8012C70B)($at)
    /* 1A4CC 80029CCC 1380013C */  lui        $at, %hi(D_8012C714)
    /* 1A4D0 80029CD0 14C732A4 */  sh         $s2, %lo(D_8012C714)($at)
    /* 1A4D4 80029CD4 000C1024 */  addiu      $s0, $zero, 0xC00
    /* 1A4D8 80029CD8 1380013C */  lui        $at, %hi(D_8012C718)
    /* 1A4DC 80029CDC 18C730A4 */  sh         $s0, %lo(D_8012C718)($at)
    /* 1A4E0 80029CE0 1380013C */  lui        $at, %hi(D_8012C71A)
    /* 1A4E4 80029CE4 1AC730A4 */  sh         $s0, %lo(D_8012C71A)($at)
    /* 1A4E8 80029CE8 CE6D000C */  jal        func_8001B738
    /* 1A4EC 80029CEC 21200000 */   addu      $a0, $zero, $zero
    /* 1A4F0 80029CF0 E976000C */  jal        func_8001DBA4
    /* 1A4F4 80029CF4 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A4F8 80029CF8 0580043C */  lui        $a0, %hi(D_8004C2C8)
    /* 1A4FC 80029CFC C8C28424 */  addiu      $a0, $a0, %lo(D_8004C2C8)
    /* 1A500 80029D00 F664000C */  jal        func_800193D8
    /* 1A504 80029D04 00000000 */   nop
    /* 1A508 80029D08 0580043C */  lui        $a0, %hi(D_8004C2C8)
    /* 1A50C 80029D0C C8C28424 */  addiu      $a0, $a0, %lo(D_8004C2C8)
    /* 1A510 80029D10 E1A5000C */  jal        func_80029784
    /* 1A514 80029D14 21280000 */   addu      $a1, $zero, $zero
    /* 1A518 80029D18 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A51C 80029D1C E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A520 80029D20 1580053C */  lui        $a1, %hi(D_8014C15C)
    /* 1A524 80029D24 5CC1A524 */  addiu      $a1, $a1, %lo(D_8014C15C)
    /* 1A528 80029D28 1D6C000C */  jal        func_8001B074
    /* 1A52C 80029D2C 10010624 */   addiu     $a2, $zero, 0x110
    /* 1A530 80029D30 1380013C */  lui        $at, %hi(D_8012C724)
    /* 1A534 80029D34 24C731A4 */  sh         $s1, %lo(D_8012C724)($at)
    /* 1A538 80029D38 6F000224 */  addiu      $v0, $zero, 0x6F
    /* 1A53C 80029D3C 1380013C */  lui        $at, %hi(D_8012C726)
    /* 1A540 80029D40 26C722A4 */  sh         $v0, %lo(D_8012C726)($at)
    /* 1A544 80029D44 30000424 */  addiu      $a0, $zero, 0x30
    /* 1A548 80029D48 1380013C */  lui        $at, %hi(D_8012C728)
    /* 1A54C 80029D4C 28C724A4 */  sh         $a0, %lo(D_8012C728)($at)
    /* 1A550 80029D50 1380013C */  lui        $at, %hi(D_8012C72A)
    /* 1A554 80029D54 2AC733A4 */  sh         $s3, %lo(D_8012C72A)($at)
    /* 1A558 80029D58 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1A55C 80029D5C 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1A560 80029D60 00000000 */  nop
    /* 1A564 80029D64 0C004394 */  lhu        $v1, 0xC($v0)
    /* 1A568 80029D68 00000000 */  nop
    /* 1A56C 80029D6C 40100300 */  sll        $v0, $v1, 1
    /* 1A570 80029D70 21104300 */  addu       $v0, $v0, $v1
    /* 1A574 80029D74 40110200 */  sll        $v0, $v0, 5
    /* 1A578 80029D78 1380013C */  lui        $at, %hi(D_8012C72E)
    /* 1A57C 80029D7C 2EC722A0 */  sb         $v0, %lo(D_8012C72E)($at)
    /* 1A580 80029D80 60000224 */  addiu      $v0, $zero, 0x60
    /* 1A584 80029D84 1380013C */  lui        $at, %hi(D_8012C72F)
    /* 1A588 80029D88 2FC722A0 */  sb         $v0, %lo(D_8012C72F)($at)
    /* 1A58C 80029D8C 1380013C */  lui        $at, %hi(D_8012C738)
    /* 1A590 80029D90 38C724A4 */  sh         $a0, %lo(D_8012C738)($at)
    /* 1A594 80029D94 1380013C */  lui        $at, %hi(D_8012C73C)
    /* 1A598 80029D98 3CC730A4 */  sh         $s0, %lo(D_8012C73C)($at)
    /* 1A59C 80029D9C 1380013C */  lui        $at, %hi(D_8012C73E)
    /* 1A5A0 80029DA0 3EC730A4 */  sh         $s0, %lo(D_8012C73E)($at)
    /* 1A5A4 80029DA4 CE6D000C */  jal        func_8001B738
    /* 1A5A8 80029DA8 21200000 */   addu      $a0, $zero, $zero
    /* 1A5AC 80029DAC E976000C */  jal        func_8001DBA4
    /* 1A5B0 80029DB0 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A5B4 80029DB4 0580043C */  lui        $a0, %hi(D_8004C2DC)
    /* 1A5B8 80029DB8 DCC28424 */  addiu      $a0, $a0, %lo(D_8004C2DC)
    /* 1A5BC 80029DBC F664000C */  jal        func_800193D8
    /* 1A5C0 80029DC0 00000000 */   nop
    /* 1A5C4 80029DC4 0580043C */  lui        $a0, %hi(D_8004C2DC)
    /* 1A5C8 80029DC8 DCC28424 */  addiu      $a0, $a0, %lo(D_8004C2DC)
    /* 1A5CC 80029DCC E1A5000C */  jal        func_80029784
    /* 1A5D0 80029DD0 21280000 */   addu      $a1, $zero, $zero
    /* 1A5D4 80029DD4 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A5D8 80029DD8 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A5DC 80029DDC 1580053C */  lui        $a1, %hi(D_8014C228)
    /* 1A5E0 80029DE0 28C2A524 */  addiu      $a1, $a1, %lo(D_8014C228)
    /* 1A5E4 80029DE4 1D6C000C */  jal        func_8001B074
    /* 1A5E8 80029DE8 11010624 */   addiu     $a2, $zero, 0x111
    /* 1A5EC 80029DEC 1380013C */  lui        $at, %hi(D_8012C748)
    /* 1A5F0 80029DF0 48C731A4 */  sh         $s1, %lo(D_8012C748)($at)
    /* 1A5F4 80029DF4 84000224 */  addiu      $v0, $zero, 0x84
    /* 1A5F8 80029DF8 1380013C */  lui        $at, %hi(D_8012C74A)
    /* 1A5FC 80029DFC 4AC722A4 */  sh         $v0, %lo(D_8012C74A)($at)
    /* 1A600 80029E00 1380013C */  lui        $at, %hi(D_8012C74C)
    /* 1A604 80029E04 4CC732A4 */  sh         $s2, %lo(D_8012C74C)($at)
    /* 1A608 80029E08 14000224 */  addiu      $v0, $zero, 0x14
    /* 1A60C 80029E0C 1380013C */  lui        $at, %hi(D_8012C74E)
    /* 1A610 80029E10 4EC722A4 */  sh         $v0, %lo(D_8012C74E)($at)
    /* 1A614 80029E14 0580053C */  lui        $a1, %hi(D_80056514)
    /* 1A618 80029E18 1465A58C */  lw         $a1, %lo(D_80056514)($a1)
    /* 1A61C 80029E1C 00000000 */  nop
    /* 1A620 80029E20 0E00A294 */  lhu        $v0, 0xE($a1)
    /* 1A624 80029E24 AAAA043C */  lui        $a0, (0xAAAAAAAB >> 16)
    /* 1A628 80029E28 ABAA8434 */  ori        $a0, $a0, (0xAAAAAAAB & 0xFFFF)
    /* 1A62C 80029E2C 19004400 */  multu      $v0, $a0
    /* 1A630 80029E30 10380000 */  mfhi       $a3
    /* 1A634 80029E34 C2180700 */  srl        $v1, $a3, 3
    /* 1A638 80029E38 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 1A63C 80029E3C 80100300 */  sll        $v0, $v1, 2
    /* 1A640 80029E40 21104300 */  addu       $v0, $v0, $v1
    /* 1A644 80029E44 00110200 */  sll        $v0, $v0, 4
    /* 1A648 80029E48 1380013C */  lui        $at, %hi(D_8012C752)
    /* 1A64C 80029E4C 52C722A0 */  sb         $v0, %lo(D_8012C752)($at)
    /* 1A650 80029E50 0E00A394 */  lhu        $v1, 0xE($a1)
    /* 1A654 80029E54 00000000 */  nop
    /* 1A658 80029E58 19006400 */  multu      $v1, $a0
    /* 1A65C 80029E5C 10380000 */  mfhi       $a3
    /* 1A660 80029E60 C2200700 */  srl        $a0, $a3, 3
    /* 1A664 80029E64 40100400 */  sll        $v0, $a0, 1
    /* 1A668 80029E68 21104400 */  addu       $v0, $v0, $a0
    /* 1A66C 80029E6C 80100200 */  sll        $v0, $v0, 2
    /* 1A670 80029E70 23186200 */  subu       $v1, $v1, $v0
    /* 1A674 80029E74 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 1A678 80029E78 80100300 */  sll        $v0, $v1, 2
    /* 1A67C 80029E7C 21104300 */  addu       $v0, $v0, $v1
    /* 1A680 80029E80 80100200 */  sll        $v0, $v0, 2
    /* 1A684 80029E84 1380013C */  lui        $at, %hi(D_8012C753)
    /* 1A688 80029E88 53C722A0 */  sb         $v0, %lo(D_8012C753)($at)
    /* 1A68C 80029E8C 1380013C */  lui        $at, %hi(D_8012C75C)
    /* 1A690 80029E90 5CC732A4 */  sh         $s2, %lo(D_8012C75C)($at)
    /* 1A694 80029E94 000E0224 */  addiu      $v0, $zero, 0xE00
    /* 1A698 80029E98 1380013C */  lui        $at, %hi(D_8012C760)
    /* 1A69C 80029E9C 60C722A4 */  sh         $v0, %lo(D_8012C760)($at)
    /* 1A6A0 80029EA0 1380013C */  lui        $at, %hi(D_8012C762)
    /* 1A6A4 80029EA4 62C722A4 */  sh         $v0, %lo(D_8012C762)($at)
    /* 1A6A8 80029EA8 CE6D000C */  jal        func_8001B738
    /* 1A6AC 80029EAC 21200000 */   addu      $a0, $zero, $zero
    /* 1A6B0 80029EB0 E976000C */  jal        func_8001DBA4
    /* 1A6B4 80029EB4 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A6B8 80029EB8 0580043C */  lui        $a0, %hi(D_8004C2F0)
    /* 1A6BC 80029EBC F0C28424 */  addiu      $a0, $a0, %lo(D_8004C2F0)
    /* 1A6C0 80029EC0 F664000C */  jal        func_800193D8
    /* 1A6C4 80029EC4 00000000 */   nop
    /* 1A6C8 80029EC8 0580043C */  lui        $a0, %hi(D_8004C2F0)
    /* 1A6CC 80029ECC F0C28424 */  addiu      $a0, $a0, %lo(D_8004C2F0)
    /* 1A6D0 80029ED0 E1A5000C */  jal        func_80029784
    /* 1A6D4 80029ED4 21280000 */   addu      $a1, $zero, $zero
    /* 1A6D8 80029ED8 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* 1A6DC 80029EDC E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* 1A6E0 80029EE0 1580053C */  lui        $a1, %hi(D_8014C228)
    /* 1A6E4 80029EE4 28C2A524 */  addiu      $a1, $a1, %lo(D_8014C228)
    /* 1A6E8 80029EE8 1D6C000C */  jal        func_8001B074
    /* 1A6EC 80029EEC 12010624 */   addiu     $a2, $zero, 0x112
    /* 1A6F0 80029EF0 CA000224 */  addiu      $v0, $zero, 0xCA
    /* 1A6F4 80029EF4 1380013C */  lui        $at, %hi(D_8012C76C)
    /* 1A6F8 80029EF8 6CC722A4 */  sh         $v0, %lo(D_8012C76C)($at)
    /* 1A6FC 80029EFC 98000224 */  addiu      $v0, $zero, 0x98
    /* 1A700 80029F00 1380013C */  lui        $at, %hi(D_8012C76E)
    /* 1A704 80029F04 6EC722A4 */  sh         $v0, %lo(D_8012C76E)($at)
    /* 1A708 80029F08 58000224 */  addiu      $v0, $zero, 0x58
    /* 1A70C 80029F0C 1380013C */  lui        $at, %hi(D_8012C770)
    /* 1A710 80029F10 70C722A4 */  sh         $v0, %lo(D_8012C770)($at)
    /* 1A714 80029F14 1380013C */  lui        $at, %hi(D_8012C772)
    /* 1A718 80029F18 72C735A4 */  sh         $s5, %lo(D_8012C772)($at)
    /* 1A71C 80029F1C 1380013C */  lui        $at, %hi(D_8012C776)
    /* 1A720 80029F20 76C734A0 */  sb         $s4, %lo(D_8012C776)($at)
    /* 1A724 80029F24 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1A728 80029F28 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1A72C 80029F2C 00000000 */  nop
    /* 1A730 80029F30 10004294 */  lhu        $v0, 0x10($v0)
    /* 1A734 80029F34 00000000 */  nop
    /* 1A738 80029F38 00110200 */  sll        $v0, $v0, 4
    /* 1A73C 80029F3C 60004224 */  addiu      $v0, $v0, 0x60
    /* 1A740 80029F40 1380013C */  lui        $at, %hi(D_8012C777)
    /* 1A744 80029F44 77C722A0 */  sb         $v0, %lo(D_8012C777)($at)
    /* 1A748 80029F48 CE6D000C */  jal        func_8001B738
    /* 1A74C 80029F4C 21200000 */   addu      $a0, $zero, $zero
    /* 1A750 80029F50 E976000C */  jal        func_8001DBA4
    /* 1A754 80029F54 0F000424 */   addiu     $a0, $zero, 0xF
    /* 1A758 80029F58 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1A75C 80029F5C 2400B58F */  lw         $s5, 0x24($sp)
    /* 1A760 80029F60 2000B48F */  lw         $s4, 0x20($sp)
    /* 1A764 80029F64 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1A768 80029F68 1800B28F */  lw         $s2, 0x18($sp)
    /* 1A76C 80029F6C 1400B18F */  lw         $s1, 0x14($sp)
    /* 1A770 80029F70 1000B08F */  lw         $s0, 0x10($sp)
    /* 1A774 80029F74 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1A778 80029F78 0800E003 */  jr         $ra
    /* 1A77C 80029F7C 00000000 */   nop
endlabel func_80029978
