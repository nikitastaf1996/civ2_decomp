.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DA388, 0x274

glabel func_800DA388
    /* CAB88 800DA388 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* CAB8C 800DA38C 2400BFAF */  sw         $ra, 0x24($sp)
    /* CAB90 800DA390 2000B2AF */  sw         $s2, 0x20($sp)
    /* CAB94 800DA394 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CAB98 800DA398 1800B0AF */  sw         $s0, 0x18($sp)
    /* CAB9C 800DA39C 1380023C */  lui        $v0, %hi(D_80136994)
    /* CABA0 800DA3A0 9469428C */  lw         $v0, %lo(D_80136994)($v0)
    /* CABA4 800DA3A4 00000000 */  nop
    /* CABA8 800DA3A8 8D004014 */  bnez       $v0, .L800DA5E0
    /* CABAC 800DA3AC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* CABB0 800DA3B0 1680043C */  lui        $a0, %hi(D_8015EE88)
    /* CABB4 800DA3B4 88EE8424 */  addiu      $a0, $a0, %lo(D_8015EE88)
    /* CABB8 800DA3B8 0180053C */  lui        $a1, %hi(D_80013210)
    /* CABBC 800DA3BC 1032A524 */  addiu      $a1, $a1, %lo(D_80013210)
    /* CABC0 800DA3C0 0A000624 */  addiu      $a2, $zero, 0xA
    /* CABC4 800DA3C4 76E2030C */  jal        func_800F89D8
    /* CABC8 800DA3C8 C0000724 */   addiu     $a3, $zero, 0xC0
    /* CABCC 800DA3CC 21800000 */  addu       $s0, $zero, $zero
    /* CABD0 800DA3D0 1380123C */  lui        $s2, %hi(D_80136978)
    /* CABD4 800DA3D4 78695226 */  addiu      $s2, $s2, %lo(D_80136978)
    /* CABD8 800DA3D8 0E001124 */  addiu      $s1, $zero, 0xE
    /* CABDC 800DA3DC C0281000 */  sll        $a1, $s0, 3
  .L800DA3E0:
    /* CABE0 800DA3E0 2128B000 */  addu       $a1, $a1, $s0
    /* CABE4 800DA3E4 80280500 */  sll        $a1, $a1, 2
    /* CABE8 800DA3E8 2120B000 */  addu       $a0, $a1, $s0
    /* CABEC 800DA3EC 80200400 */  sll        $a0, $a0, 2
    /* CABF0 800DA3F0 1000B1AF */  sw         $s1, 0x10($sp)
    /* CABF4 800DA3F4 21209200 */  addu       $a0, $a0, $s2
    /* CABF8 800DA3F8 1800A524 */  addiu      $a1, $a1, 0x18
    /* CABFC 800DA3FC 21300000 */  addu       $a2, $zero, $zero
    /* CAC00 800DA400 6D63030C */  jal        func_800D8DB4
    /* CAC04 800DA404 24000724 */   addiu     $a3, $zero, 0x24
    /* CAC08 800DA408 01001026 */  addiu      $s0, $s0, 0x1
    /* CAC0C 800DA40C 0800022A */  slti       $v0, $s0, 0x8
    /* CAC10 800DA410 F3FF4014 */  bnez       $v0, .L800DA3E0
    /* CAC14 800DA414 C0281000 */   sll       $a1, $s0, 3
    /* CAC18 800DA418 13001124 */  addiu      $s1, $zero, 0x13
    /* CAC1C 800DA41C 1000B1AF */  sw         $s1, 0x10($sp)
    /* CAC20 800DA420 1380043C */  lui        $a0, %hi(D_80136E18)
    /* CAC24 800DA424 186E8424 */  addiu      $a0, $a0, %lo(D_80136E18)
    /* CAC28 800DA428 18000524 */  addiu      $a1, $zero, 0x18
    /* CAC2C 800DA42C 0E000624 */  addiu      $a2, $zero, 0xE
    /* CAC30 800DA430 6D63030C */  jal        func_800D8DB4
    /* CAC34 800DA434 20010724 */   addiu     $a3, $zero, 0x120
    /* CAC38 800DA438 18001024 */  addiu      $s0, $zero, 0x18
    /* CAC3C 800DA43C 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAC40 800DA440 1380043C */  lui        $a0, %hi(D_80136EAC)
    /* CAC44 800DA444 AC6E8424 */  addiu      $a0, $a0, %lo(D_80136EAC)
    /* CAC48 800DA448 20000524 */  addiu      $a1, $zero, 0x20
    /* CAC4C 800DA44C 22000624 */  addiu      $a2, $zero, 0x22
    /* CAC50 800DA450 6D63030C */  jal        func_800D8DB4
    /* CAC54 800DA454 20000724 */   addiu     $a3, $zero, 0x20
    /* CAC58 800DA458 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAC5C 800DA45C 1380043C */  lui        $a0, %hi(D_80136F40)
    /* CAC60 800DA460 406F8424 */  addiu      $a0, $a0, %lo(D_80136F40)
    /* CAC64 800DA464 40000524 */  addiu      $a1, $zero, 0x40
    /* CAC68 800DA468 22000624 */  addiu      $a2, $zero, 0x22
    /* CAC6C 800DA46C 6D63030C */  jal        func_800D8DB4
    /* CAC70 800DA470 20000724 */   addiu     $a3, $zero, 0x20
    /* CAC74 800DA474 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAC78 800DA478 1380043C */  lui        $a0, %hi(D_80136FD4)
    /* CAC7C 800DA47C D46F8424 */  addiu      $a0, $a0, %lo(D_80136FD4)
    /* CAC80 800DA480 60000524 */  addiu      $a1, $zero, 0x60
    /* CAC84 800DA484 22000624 */  addiu      $a2, $zero, 0x22
    /* CAC88 800DA488 6D63030C */  jal        func_800D8DB4
    /* CAC8C 800DA48C 20000724 */   addiu     $a3, $zero, 0x20
    /* CAC90 800DA490 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAC94 800DA494 1380043C */  lui        $a0, %hi(D_80137068)
    /* CAC98 800DA498 68708424 */  addiu      $a0, $a0, %lo(D_80137068)
    /* CAC9C 800DA49C 80000524 */  addiu      $a1, $zero, 0x80
    /* CACA0 800DA4A0 22000624 */  addiu      $a2, $zero, 0x22
    /* CACA4 800DA4A4 6D63030C */  jal        func_800D8DB4
    /* CACA8 800DA4A8 20000724 */   addiu     $a3, $zero, 0x20
    /* CACAC 800DA4AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* CACB0 800DA4B0 1380043C */  lui        $a0, %hi(D_801370FC)
    /* CACB4 800DA4B4 FC708424 */  addiu      $a0, $a0, %lo(D_801370FC)
    /* CACB8 800DA4B8 A0000524 */  addiu      $a1, $zero, 0xA0
    /* CACBC 800DA4BC 22000624 */  addiu      $a2, $zero, 0x22
    /* CACC0 800DA4C0 6D63030C */  jal        func_800D8DB4
    /* CACC4 800DA4C4 20000724 */   addiu     $a3, $zero, 0x20
    /* CACC8 800DA4C8 1000B1AF */  sw         $s1, 0x10($sp)
    /* CACCC 800DA4CC 1380043C */  lui        $a0, %hi(D_80137190)
    /* CACD0 800DA4D0 90718424 */  addiu      $a0, $a0, %lo(D_80137190)
    /* CACD4 800DA4D4 21280000 */  addu       $a1, $zero, $zero
    /* CACD8 800DA4D8 42000624 */  addiu      $a2, $zero, 0x42
    /* CACDC 800DA4DC 6D63030C */  jal        func_800D8DB4
    /* CACE0 800DA4E0 F6000724 */   addiu     $a3, $zero, 0xF6
    /* CACE4 800DA4E4 48000224 */  addiu      $v0, $zero, 0x48
    /* CACE8 800DA4E8 1000A2AF */  sw         $v0, 0x10($sp)
    /* CACEC 800DA4EC 1380043C */  lui        $a0, %hi(D_80137224)
    /* CACF0 800DA4F0 24728424 */  addiu      $a0, $a0, %lo(D_80137224)
    /* CACF4 800DA4F4 21280000 */  addu       $a1, $zero, $zero
    /* CACF8 800DA4F8 55000624 */  addiu      $a2, $zero, 0x55
    /* CACFC 800DA4FC 6D63030C */  jal        func_800D8DB4
    /* CAD00 800DA500 12000724 */   addiu     $a3, $zero, 0x12
    /* CAD04 800DA504 40001024 */  addiu      $s0, $zero, 0x40
    /* CAD08 800DA508 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAD0C 800DA50C 1380043C */  lui        $a0, %hi(D_801372B8)
    /* CAD10 800DA510 B8728424 */  addiu      $a0, $a0, %lo(D_801372B8)
    /* CAD14 800DA514 12000524 */  addiu      $a1, $zero, 0x12
    /* CAD18 800DA518 55000624 */  addiu      $a2, $zero, 0x55
    /* CAD1C 800DA51C 6D63030C */  jal        func_800D8DB4
    /* CAD20 800DA520 13000724 */   addiu     $a3, $zero, 0x13
    /* CAD24 800DA524 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAD28 800DA528 1380043C */  lui        $a0, %hi(D_8013734C)
    /* CAD2C 800DA52C 4C738424 */  addiu      $a0, $a0, %lo(D_8013734C)
    /* CAD30 800DA530 25000524 */  addiu      $a1, $zero, 0x25
    /* CAD34 800DA534 55000624 */  addiu      $a2, $zero, 0x55
    /* CAD38 800DA538 6D63030C */  jal        func_800D8DB4
    /* CAD3C 800DA53C 13000724 */   addiu     $a3, $zero, 0x13
    /* CAD40 800DA540 1000B1AF */  sw         $s1, 0x10($sp)
    /* CAD44 800DA544 1380043C */  lui        $a0, %hi(D_801373E0)
    /* CAD48 800DA548 E0738424 */  addiu      $a0, $a0, %lo(D_801373E0)
    /* CAD4C 800DA54C 38000524 */  addiu      $a1, $zero, 0x38
    /* CAD50 800DA550 55000624 */  addiu      $a2, $zero, 0x55
    /* CAD54 800DA554 6D63030C */  jal        func_800D8DB4
    /* CAD58 800DA558 80000724 */   addiu     $a3, $zero, 0x80
    /* CAD5C 800DA55C 1000B1AF */  sw         $s1, 0x10($sp)
    /* CAD60 800DA560 1380043C */  lui        $a0, %hi(D_80137474)
    /* CAD64 800DA564 74748424 */  addiu      $a0, $a0, %lo(D_80137474)
    /* CAD68 800DA568 38000524 */  addiu      $a1, $zero, 0x38
    /* CAD6C 800DA56C 68000624 */  addiu      $a2, $zero, 0x68
    /* CAD70 800DA570 6D63030C */  jal        func_800D8DB4
    /* CAD74 800DA574 A0000724 */   addiu     $a3, $zero, 0xA0
    /* CAD78 800DA578 21800000 */  addu       $s0, $zero, $zero
    /* CAD7C 800DA57C 1480123C */  lui        $s2, %hi(D_80138098)
    /* CAD80 800DA580 98805226 */  addiu      $s2, $s2, %lo(D_80138098)
    /* CAD84 800DA584 10001124 */  addiu      $s1, $zero, 0x10
    /* CAD88 800DA588 C0201000 */  sll        $a0, $s0, 3
  .L800DA58C:
    /* CAD8C 800DA58C 21209000 */  addu       $a0, $a0, $s0
    /* CAD90 800DA590 80200400 */  sll        $a0, $a0, 2
    /* CAD94 800DA594 21209000 */  addu       $a0, $a0, $s0
    /* CAD98 800DA598 80200400 */  sll        $a0, $a0, 2
    /* CAD9C 800DA59C 00291000 */  sll        $a1, $s0, 4
    /* CADA0 800DA5A0 1000B1AF */  sw         $s1, 0x10($sp)
    /* CADA4 800DA5A4 21209200 */  addu       $a0, $a0, $s2
    /* CADA8 800DA5A8 3800A524 */  addiu      $a1, $a1, 0x38
    /* CADAC 800DA5AC 7B000624 */  addiu      $a2, $zero, 0x7B
    /* CADB0 800DA5B0 6D63030C */  jal        func_800D8DB4
    /* CADB4 800DA5B4 10000724 */   addiu     $a3, $zero, 0x10
    /* CADB8 800DA5B8 01001026 */  addiu      $s0, $s0, 0x1
    /* CADBC 800DA5BC 0B00022A */  slti       $v0, $s0, 0xB
    /* CADC0 800DA5C0 F2FF4014 */  bnez       $v0, .L800DA58C
    /* CADC4 800DA5C4 C0201000 */   sll       $a0, $s0, 3
    /* CADC8 800DA5C8 1680043C */  lui        $a0, %hi(D_8015EE88)
    /* CADCC 800DA5CC 88EE8424 */  addiu      $a0, $a0, %lo(D_8015EE88)
    /* CADD0 800DA5D0 21280000 */  addu       $a1, $zero, $zero
    /* CADD4 800DA5D4 A9E0030C */  jal        func_800F82A4
    /* CADD8 800DA5D8 21300000 */   addu      $a2, $zero, $zero
    /* CADDC 800DA5DC 21100000 */  addu       $v0, $zero, $zero
  .L800DA5E0:
    /* CADE0 800DA5E0 2400BF8F */  lw         $ra, 0x24($sp)
    /* CADE4 800DA5E4 2000B28F */  lw         $s2, 0x20($sp)
    /* CADE8 800DA5E8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CADEC 800DA5EC 1800B08F */  lw         $s0, 0x18($sp)
    /* CADF0 800DA5F0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* CADF4 800DA5F4 0800E003 */  jr         $ra
    /* CADF8 800DA5F8 00000000 */   nop
endlabel func_800DA388
