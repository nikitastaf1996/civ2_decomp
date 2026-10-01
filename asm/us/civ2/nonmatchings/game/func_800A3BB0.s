.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3BB0, 0x10C

glabel func_800A3BB0
    /* 943B0 800A3BB0 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 943B4 800A3BB4 A800BFAF */  sw         $ra, 0xA8($sp)
    /* 943B8 800A3BB8 A400B1AF */  sw         $s1, 0xA4($sp)
    /* 943BC 800A3BBC A000B0AF */  sw         $s0, 0xA0($sp)
    /* 943C0 800A3BC0 21808000 */  addu       $s0, $a0, $zero
    /* 943C4 800A3BC4 88000786 */  lh         $a3, 0x88($s0)
    /* 943C8 800A3BC8 00000000 */  nop
    /* 943CC 800A3BCC C0FEE724 */  addiu      $a3, $a3, -0x140
    /* 943D0 800A3BD0 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* 943D4 800A3BD4 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 943D8 800A3BD8 1800E300 */  mult       $a3, $v1
    /* 943DC 800A3BDC C33F0700 */  sra        $a3, $a3, 31
    /* 943E0 800A3BE0 10400000 */  mfhi       $t0
    /* 943E4 800A3BE4 23380701 */  subu       $a3, $t0, $a3
    /* 943E8 800A3BE8 8A000286 */  lh         $v0, 0x8A($s0)
    /* 943EC 800A3BEC 00000000 */  nop
    /* 943F0 800A3BF0 10FF4224 */  addiu      $v0, $v0, -0xF0
    /* 943F4 800A3BF4 18004300 */  mult       $v0, $v1
    /* 943F8 800A3BF8 C3170200 */  sra        $v0, $v0, 31
    /* 943FC 800A3BFC 10400000 */  mfhi       $t0
    /* 94400 800A3C00 23100201 */  subu       $v0, $t0, $v0
    /* 94404 800A3C04 8C001126 */  addiu      $s1, $s0, 0x8C
    /* 94408 800A3C08 003C0700 */  sll        $a3, $a3, 16
    /* 9440C 800A3C0C 00140200 */  sll        $v0, $v0, 16
    /* 94410 800A3C10 03140200 */  sra        $v0, $v0, 16
    /* 94414 800A3C14 1000A2AF */  sw         $v0, 0x10($sp)
    /* 94418 800A3C18 40010224 */  addiu      $v0, $zero, 0x140
    /* 9441C 800A3C1C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 94420 800A3C20 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 94424 800A3C24 1800A2AF */  sw         $v0, 0x18($sp)
    /* 94428 800A3C28 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 9442C 800A3C2C 21202002 */  addu       $a0, $s1, $zero
    /* 94430 800A3C30 1680053C */  lui        $a1, %hi(D_80158AA0)
    /* 94434 800A3C34 A08AA524 */  addiu      $a1, $a1, %lo(D_80158AA0)
    /* 94438 800A3C38 00080624 */  addiu      $a2, $zero, 0x800
    /* 9443C 800A3C3C B3DE030C */  jal        func_800F7ACC
    /* 94440 800A3C40 033C0700 */   sra       $a3, $a3, 16
    /* 94444 800A3C44 1D060392 */  lbu        $v1, 0x61D($s0)
    /* 94448 800A3C48 00000000 */  nop
    /* 9444C 800A3C4C 40100300 */  sll        $v0, $v1, 1
    /* 94450 800A3C50 21104300 */  addu       $v0, $v0, $v1
    /* 94454 800A3C54 80100200 */  sll        $v0, $v0, 2
    /* 94458 800A3C58 23104300 */  subu       $v0, $v0, $v1
    /* 9445C 800A3C5C 00110200 */  sll        $v0, $v0, 4
    /* 94460 800A3C60 23104300 */  subu       $v0, $v0, $v1
    /* 94464 800A3C64 C0100200 */  sll        $v0, $v0, 3
    /* 94468 800A3C68 1180013C */  lui        $at, %hi(D_801176A7)
    /* 9446C 800A3C6C 21082200 */  addu       $at, $at, $v0
    /* 94470 800A3C70 A7762590 */  lbu        $a1, %lo(D_801176A7)($at)
    /* 94474 800A3C74 21202002 */  addu       $a0, $s1, $zero
    /* 94478 800A3C78 C800A524 */  addiu      $a1, $a1, 0xC8
    /* 9447C 800A3C7C 0A000624 */  addiu      $a2, $zero, 0xA
    /* 94480 800A3C80 44E3030C */  jal        func_800F8D10
    /* 94484 800A3C84 EC000724 */   addiu     $a3, $zero, 0xEC
    /* 94488 800A3C88 06004010 */  beqz       $v0, .L800A3CA4
    /* 9448C 800A3C8C 21100000 */   addu      $v0, $zero, $zero
    /* 94490 800A3C90 0A80053C */  lui        $a1, %hi(func_800A36C4)
    /* 94494 800A3C94 C436A524 */  addiu      $a1, $a1, %lo(func_800A36C4)
    /* 94498 800A3C98 82DF030C */  jal        func_800F7E08
    /* 9449C 800A3C9C 21202002 */   addu      $a0, $s1, $zero
    /* 944A0 800A3CA0 01000224 */  addiu      $v0, $zero, 0x1
  .L800A3CA4:
    /* 944A4 800A3CA4 A800BF8F */  lw         $ra, 0xA8($sp)
    /* 944A8 800A3CA8 A400B18F */  lw         $s1, 0xA4($sp)
    /* 944AC 800A3CAC A000B08F */  lw         $s0, 0xA0($sp)
    /* 944B0 800A3CB0 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* 944B4 800A3CB4 0800E003 */  jr         $ra
    /* 944B8 800A3CB8 00000000 */   nop
endlabel func_800A3BB0
