.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE284, 0x3DC

glabel func_800DE284
    /* CEA84 800DE284 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* CEA88 800DE288 5000BFAF */  sw         $ra, 0x50($sp)
    /* CEA8C 800DE28C 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* CEA90 800DE290 4800B4AF */  sw         $s4, 0x48($sp)
    /* CEA94 800DE294 4400B3AF */  sw         $s3, 0x44($sp)
    /* CEA98 800DE298 4000B2AF */  sw         $s2, 0x40($sp)
    /* CEA9C 800DE29C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* CEAA0 800DE2A0 3800B0AF */  sw         $s0, 0x38($sp)
    /* CEAA4 800DE2A4 98E9030C */  jal        func_800FA660
    /* CEAA8 800DE2A8 21908000 */   addu      $s2, $a0, $zero
    /* CEAAC 800DE2AC 80000224 */  addiu      $v0, $zero, 0x80
    /* CEAB0 800DE2B0 1680013C */  lui        $at, %hi(D_801592E4)
    /* CEAB4 800DE2B4 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* CEAB8 800DE2B8 F8EA030C */  jal        func_800FABE0
    /* CEABC 800DE2BC 21204002 */   addu      $a0, $s2, $zero
    /* CEAC0 800DE2C0 B0005026 */  addiu      $s0, $s2, 0xB0
    /* CEAC4 800DE2C4 F8EA030C */  jal        func_800FABE0
    /* CEAC8 800DE2C8 21200002 */   addu      $a0, $s0, $zero
    /* CEACC 800DE2CC 05DD030C */  jal        func_800F7414
    /* CEAD0 800DE2D0 21200002 */   addu      $a0, $s0, $zero
    /* CEAD4 800DE2D4 54E9030C */  jal        func_800FA550
    /* CEAD8 800DE2D8 FF000424 */   addiu     $a0, $zero, 0xFF
    /* CEADC 800DE2DC CB1A030C */  jal        func_800C6B2C
    /* CEAE0 800DE2E0 14024426 */   addiu     $a0, $s2, 0x214
    /* CEAE4 800DE2E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEAE8 800DE2E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEAEC 800DE2EC CB1A030C */  jal        func_800C6B2C
    /* CEAF0 800DE2F0 21980000 */   addu      $s3, $zero, $zero
    /* CEAF4 800DE2F4 1002438E */  lw         $v1, 0x210($s2)
    /* CEAF8 800DE2F8 00000000 */  nop
    /* CEAFC 800DE2FC 40100300 */  sll        $v0, $v1, 1
    /* CEB00 800DE300 21104300 */  addu       $v0, $v0, $v1
    /* CEB04 800DE304 80100200 */  sll        $v0, $v0, 2
    /* CEB08 800DE308 23104300 */  subu       $v0, $v0, $v1
    /* CEB0C 800DE30C 00110200 */  sll        $v0, $v0, 4
    /* CEB10 800DE310 23104300 */  subu       $v0, $v0, $v1
    /* CEB14 800DE314 C0100200 */  sll        $v0, $v0, 3
    /* CEB18 800DE318 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEB1C 800DE31C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEB20 800DE320 1180013C */  lui        $at, %hi(D_80117A78)
    /* CEB24 800DE324 21082200 */  addu       $at, $at, $v0
    /* CEB28 800DE328 787A2584 */  lh         $a1, %lo(D_80117A78)($at)
    /* CEB2C 800DE32C AD98010C */  jal        func_800662B4
    /* CEB30 800DE330 40001524 */   addiu     $s5, $zero, 0x40
    /* CEB34 800DE334 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* CEB38 800DE338 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* CEB3C 800DE33C 1280053C */  lui        $a1, %hi(D_80121340)
    /* CEB40 800DE340 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CEB44 800DE344 A587030C */  jal        func_800E1E94
    /* CEB48 800DE348 00000000 */   nop
    /* CEB4C 800DE34C 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEB50 800DE350 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEB54 800DE354 CB1A030C */  jal        func_800C6B2C
    /* CEB58 800DE358 00000000 */   nop
    /* CEB5C 800DE35C 1002438E */  lw         $v1, 0x210($s2)
    /* CEB60 800DE360 00000000 */  nop
    /* CEB64 800DE364 40100300 */  sll        $v0, $v1, 1
    /* CEB68 800DE368 21104300 */  addu       $v0, $v0, $v1
    /* CEB6C 800DE36C 80100200 */  sll        $v0, $v0, 2
    /* CEB70 800DE370 23104300 */  subu       $v0, $v0, $v1
    /* CEB74 800DE374 00110200 */  sll        $v0, $v0, 4
    /* CEB78 800DE378 23104300 */  subu       $v0, $v0, $v1
    /* CEB7C 800DE37C C0100200 */  sll        $v0, $v0, 3
    /* CEB80 800DE380 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEB84 800DE384 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEB88 800DE388 1180013C */  lui        $at, %hi(D_80117A7A)
    /* CEB8C 800DE38C 21082200 */  addu       $at, $at, $v0
    /* CEB90 800DE390 7A7A2584 */  lh         $a1, %lo(D_80117A7A)($at)
    /* CEB94 800DE394 9C1B030C */  jal        func_800C6E70
    /* CEB98 800DE398 00000000 */   nop
    /* CEB9C 800DE39C 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEBA0 800DE3A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEBA4 800DE3A4 1680053C */  lui        $a1, %hi(D_8015925C)
    /* CEBA8 800DE3A8 5C92A524 */  addiu      $a1, $a1, %lo(D_8015925C)
    /* CEBAC 800DE3AC 9987030C */  jal        func_800E1E64
    /* CEBB0 800DE3B0 00000000 */   nop
    /* CEBB4 800DE3B4 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* CEBB8 800DE3B8 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* CEBBC 800DE3BC 1280053C */  lui        $a1, %hi(D_80121340)
    /* CEBC0 800DE3C0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CEBC4 800DE3C4 A587030C */  jal        func_800E1E94
    /* CEBC8 800DE3C8 00000000 */   nop
    /* CEBCC 800DE3CC 1002448E */  lw         $a0, 0x210($s2)
    /* CEBD0 800DE3D0 8A54020C */  jal        func_80095228
    /* CEBD4 800DE3D4 00000000 */   nop
    /* CEBD8 800DE3D8 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* CEBDC 800DE3DC 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* CEBE0 800DE3E0 A587030C */  jal        func_800E1E94
    /* CEBE4 800DE3E4 21284000 */   addu      $a1, $v0, $zero
    /* CEBE8 800DE3E8 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEBEC 800DE3EC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEBF0 800DE3F0 CB1A030C */  jal        func_800C6B2C
    /* CEBF4 800DE3F4 00000000 */   nop
    /* CEBF8 800DE3F8 1002438E */  lw         $v1, 0x210($s2)
    /* CEBFC 800DE3FC 00000000 */  nop
    /* CEC00 800DE400 40100300 */  sll        $v0, $v1, 1
    /* CEC04 800DE404 21104300 */  addu       $v0, $v0, $v1
    /* CEC08 800DE408 80100200 */  sll        $v0, $v0, 2
    /* CEC0C 800DE40C 23104300 */  subu       $v0, $v0, $v1
    /* CEC10 800DE410 00110200 */  sll        $v0, $v0, 4
    /* CEC14 800DE414 23104300 */  subu       $v0, $v0, $v1
    /* CEC18 800DE418 C0100200 */  sll        $v0, $v0, 3
    /* CEC1C 800DE41C 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEC20 800DE420 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEC24 800DE424 1180013C */  lui        $at, %hi(D_80117A76)
    /* CEC28 800DE428 21082200 */  addu       $at, $at, $v0
    /* CEC2C 800DE42C 767A2584 */  lh         $a1, %lo(D_80117A76)($at)
    /* CEC30 800DE430 AD98010C */  jal        func_800662B4
    /* CEC34 800DE434 00000000 */   nop
    /* CEC38 800DE438 1280043C */  lui        $a0, %hi(D_8011FDE8)
    /* CEC3C 800DE43C E8FD8424 */  addiu      $a0, $a0, %lo(D_8011FDE8)
    /* CEC40 800DE440 1280053C */  lui        $a1, %hi(D_80121340)
    /* CEC44 800DE444 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CEC48 800DE448 A587030C */  jal        func_800E1E94
    /* CEC4C 800DE44C 00000000 */   nop
    /* CEC50 800DE450 1002448E */  lw         $a0, 0x210($s2)
    /* CEC54 800DE454 F853020C */  jal        func_80094FE0
    /* CEC58 800DE458 00000000 */   nop
    /* CEC5C 800DE45C 1280043C */  lui        $a0, %hi(D_8011FE38)
    /* CEC60 800DE460 38FE8424 */  addiu      $a0, $a0, %lo(D_8011FE38)
    /* CEC64 800DE464 A587030C */  jal        func_800E1E94
    /* CEC68 800DE468 21284000 */   addu      $a1, $v0, $zero
    /* CEC6C 800DE46C 1280143C */  lui        $s4, %hi(D_80121340)
    /* CEC70 800DE470 40139426 */  addiu      $s4, $s4, %lo(D_80121340)
  .L800DE474:
    /* CEC74 800DE474 0300622A */  slti       $v0, $s3, 0x3
    /* CEC78 800DE478 66004010 */  beqz       $v0, .L800DE614
    /* CEC7C 800DE47C 80000224 */   addiu     $v0, $zero, 0x80
    /* CEC80 800DE480 CB1A030C */  jal        func_800C6B2C
    /* CEC84 800DE484 14024426 */   addiu     $a0, $s2, 0x214
    /* CEC88 800DE488 80101300 */  sll        $v0, $s3, 2
    /* CEC8C 800DE48C 1680043C */  lui        $a0, %hi(D_80158840)
    /* CEC90 800DE490 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* CEC94 800DE494 1480013C */  lui        $at, %hi(D_801388AC)
    /* CEC98 800DE498 21082200 */  addu       $at, $at, $v0
    /* CEC9C 800DE49C AC88258C */  lw         $a1, %lo(D_801388AC)($at)
    /* CECA0 800DE4A0 FCA0020C */  jal        func_800A83F0
    /* CECA4 800DE4A4 00000000 */   nop
    /* CECA8 800DE4A8 58004014 */  bnez       $v0, .L800DE60C
    /* CECAC 800DE4AC 21880000 */   addu      $s1, $zero, $zero
    /* CECB0 800DE4B0 21800000 */  addu       $s0, $zero, $zero
  .L800DE4B4:
    /* CECB4 800DE4B4 58A1020C */  jal        func_800A8560
    /* CECB8 800DE4B8 00000000 */   nop
    /* CECBC 800DE4BC 00004280 */  lb         $v0, 0x0($v0)
    /* CECC0 800DE4C0 00000000 */  nop
    /* CECC4 800DE4C4 14005510 */  beq        $v0, $s5, .L800DE518
    /* CECC8 800DE4C8 00000000 */   nop
    /* CECCC 800DE4CC 1680053C */  lui        $a1, %hi(D_80158D40)
    /* CECD0 800DE4D0 408DA58C */  lw         $a1, %lo(D_80158D40)($a1)
    /* CECD4 800DE4D4 9987030C */  jal        func_800E1E64
    /* CECD8 800DE4D8 14024426 */   addiu     $a0, $s2, 0x214
    /* CECDC 800DE4DC 1680043C */  lui        $a0, %hi(D_80158D40)
    /* CECE0 800DE4E0 408D848C */  lw         $a0, %lo(D_80158D40)($a0)
    /* CECE4 800DE4E4 AD87030C */  jal        func_800E1EB4
    /* CECE8 800DE4E8 00000000 */   nop
    /* CECEC 800DE4EC 21184000 */  addu       $v1, $v0, $zero
    /* CECF0 800DE4F0 2A100302 */  slt        $v0, $s0, $v1
    /* CECF4 800DE4F4 02004010 */  beqz       $v0, .L800DE500
    /* CECF8 800DE4F8 00000000 */   nop
    /* CECFC 800DE4FC 21806000 */  addu       $s0, $v1, $zero
  .L800DE500:
    /* CED00 800DE500 1680053C */  lui        $a1, %hi(D_80159264)
    /* CED04 800DE504 6492A524 */  addiu      $a1, $a1, %lo(D_80159264)
    /* CED08 800DE508 9987030C */  jal        func_800E1E64
    /* CED0C 800DE50C 14024426 */   addiu     $a0, $s2, 0x214
    /* CED10 800DE510 2D790308 */  j          .L800DE4B4
    /* CED14 800DE514 01003126 */   addiu     $s1, $s1, 0x1
  .L800DE518:
    /* CED18 800DE518 1280043C */  lui        $a0, %hi(D_80121340)
    /* CED1C 800DE51C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CED20 800DE520 CB1A030C */  jal        func_800C6B2C
    /* CED24 800DE524 00000000 */   nop
    /* CED28 800DE528 1280053C */  lui        $a1, %hi(D_80121340)
    /* CED2C 800DE52C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* CED30 800DE530 33AC020C */  jal        func_800AB0CC
    /* CED34 800DE534 14024426 */   addiu     $a0, $s2, 0x214
    /* CED38 800DE538 2000A0A7 */  sh         $zero, 0x20($sp)
    /* CED3C 800DE53C 2200A0A7 */  sh         $zero, 0x22($sp)
    /* CED40 800DE540 40010224 */  addiu      $v0, $zero, 0x140
    /* CED44 800DE544 2400A2A7 */  sh         $v0, 0x24($sp)
    /* CED48 800DE548 78000224 */  addiu      $v0, $zero, 0x78
    /* CED4C 800DE54C 2600A2A7 */  sh         $v0, 0x26($sp)
    /* CED50 800DE550 40101000 */  sll        $v0, $s0, 1
    /* CED54 800DE554 21105000 */  addu       $v0, $v0, $s0
    /* CED58 800DE558 40800200 */  sll        $s0, $v0, 1
    /* CED5C 800DE55C 40101100 */  sll        $v0, $s1, 1
    /* CED60 800DE560 21105100 */  addu       $v0, $v0, $s1
    /* CED64 800DE564 80880200 */  sll        $s1, $v0, 2
    /* CED68 800DE568 43101000 */  sra        $v0, $s0, 1
    /* CED6C 800DE56C A0000324 */  addiu      $v1, $zero, 0xA0
    /* CED70 800DE570 23186200 */  subu       $v1, $v1, $v0
    /* CED74 800DE574 43201100 */  sra        $a0, $s1, 1
    /* CED78 800DE578 78000224 */  addiu      $v0, $zero, 0x78
    /* CED7C 800DE57C 23104400 */  subu       $v0, $v0, $a0
    /* CED80 800DE580 1800A3A7 */  sh         $v1, 0x18($sp)
    /* CED84 800DE584 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* CED88 800DE588 40016324 */  addiu      $v1, $v1, 0x140
    /* CED8C 800DE58C 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* CED90 800DE590 21105100 */  addu       $v0, $v0, $s1
    /* CED94 800DE594 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* CED98 800DE598 21880000 */  addu       $s1, $zero, $zero
    /* CED9C 800DE59C 21800000 */  addu       $s0, $zero, $zero
  .L800DE5A0:
    /* CEDA0 800DE5A0 7907040C */  jal        func_80101DE4
    /* CEDA4 800DE5A4 01000424 */   addiu     $a0, $zero, 0x1
    /* CEDA8 800DE5A8 1680013C */  lui        $at, %hi(D_801592E4)
    /* CEDAC 800DE5AC E49230A4 */  sh         $s0, %lo(D_801592E4)($at)
    /* CEDB0 800DE5B0 AD87030C */  jal        func_800E1EB4
    /* CEDB4 800DE5B4 21208002 */   addu      $a0, $s4, $zero
    /* CEDB8 800DE5B8 00140200 */  sll        $v0, $v0, 16
    /* CEDBC 800DE5BC 10000324 */  addiu      $v1, $zero, 0x10
    /* CEDC0 800DE5C0 1000A3AF */  sw         $v1, 0x10($sp)
    /* CEDC4 800DE5C4 21200000 */  addu       $a0, $zero, $zero
    /* CEDC8 800DE5C8 21288002 */  addu       $a1, $s4, $zero
    /* CEDCC 800DE5CC 03340200 */  sra        $a2, $v0, 16
    /* CEDD0 800DE5D0 320F040C */  jal        func_80103CC8
    /* CEDD4 800DE5D4 1800A727 */   addiu     $a3, $sp, 0x18
    /* CEDD8 800DE5D8 1C07040C */  jal        func_80101C70
    /* CEDDC 800DE5DC 01003126 */   addiu     $s1, $s1, 0x1
    /* CEDE0 800DE5E0 3C00222A */  slti       $v0, $s1, 0x3C
    /* CEDE4 800DE5E4 03004010 */  beqz       $v0, .L800DE5F4
    /* CEDE8 800DE5E8 6801222A */   slti      $v0, $s1, 0x168
    /* CEDEC 800DE5EC 80790308 */  j          .L800DE600
    /* CEDF0 800DE5F0 02001026 */   addiu     $s0, $s0, 0x2
  .L800DE5F4:
    /* CEDF4 800DE5F4 02004010 */  beqz       $v0, .L800DE600
    /* CEDF8 800DE5F8 FEFF1026 */   addiu     $s0, $s0, -0x2
    /* CEDFC 800DE5FC 80001024 */  addiu      $s0, $zero, 0x80
  .L800DE600:
    /* CEE00 800DE600 A401222A */  slti       $v0, $s1, 0x1A4
    /* CEE04 800DE604 E6FF4014 */  bnez       $v0, .L800DE5A0
    /* CEE08 800DE608 00000000 */   nop
  .L800DE60C:
    /* CEE0C 800DE60C 1D790308 */  j          .L800DE474
    /* CEE10 800DE610 01007326 */   addiu     $s3, $s3, 0x1
  .L800DE614:
    /* CEE14 800DE614 1680013C */  lui        $at, %hi(D_801592E4)
    /* CEE18 800DE618 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* CEE1C 800DE61C 1002458E */  lw         $a1, 0x210($s2)
    /* CEE20 800DE620 7278030C */  jal        func_800DE1C8
    /* CEE24 800DE624 21204002 */   addu      $a0, $s2, $zero
    /* CEE28 800DE628 84004426 */  addiu      $a0, $s2, 0x84
    /* CEE2C 800DE62C 01000524 */  addiu      $a1, $zero, 0x1
    /* CEE30 800DE630 16D8030C */  jal        func_800F6058
    /* CEE34 800DE634 91030624 */   addiu     $a2, $zero, 0x391
    /* CEE38 800DE638 5000BF8F */  lw         $ra, 0x50($sp)
    /* CEE3C 800DE63C 4C00B58F */  lw         $s5, 0x4C($sp)
    /* CEE40 800DE640 4800B48F */  lw         $s4, 0x48($sp)
    /* CEE44 800DE644 4400B38F */  lw         $s3, 0x44($sp)
    /* CEE48 800DE648 4000B28F */  lw         $s2, 0x40($sp)
    /* CEE4C 800DE64C 3C00B18F */  lw         $s1, 0x3C($sp)
    /* CEE50 800DE650 3800B08F */  lw         $s0, 0x38($sp)
    /* CEE54 800DE654 5800BD27 */  addiu      $sp, $sp, 0x58
    /* CEE58 800DE658 0800E003 */  jr         $ra
    /* CEE5C 800DE65C 00000000 */   nop
endlabel func_800DE284
