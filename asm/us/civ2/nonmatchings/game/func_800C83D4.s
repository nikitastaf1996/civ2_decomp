.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C83D4, 0x11C

glabel func_800C83D4
    /* B8BD4 800C83D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B8BD8 800C83D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* B8BDC 800C83DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8BE0 800C83E0 21808000 */  addu       $s0, $a0, $zero
    /* B8BE4 800C83E4 40100500 */  sll        $v0, $a1, 1
    /* B8BE8 800C83E8 21104500 */  addu       $v0, $v0, $a1
    /* B8BEC 800C83EC 40100200 */  sll        $v0, $v0, 1
    /* B8BF0 800C83F0 1280013C */  lui        $at, %hi(D_80121B42)
    /* B8BF4 800C83F4 21082200 */  addu       $at, $at, $v0
    /* B8BF8 800C83F8 421B2484 */  lh         $a0, %lo(D_80121B42)($at)
    /* B8BFC 800C83FC FFFFA624 */  addiu      $a2, $a1, -0x1
    /* B8C00 800C8400 0200C22C */  sltiu      $v0, $a2, 0x2
    /* B8C04 800C8404 14004010 */  beqz       $v0, .L800C8458
    /* B8C08 800C8408 40101000 */   sll       $v0, $s0, 1
    /* B8C0C 800C840C 21105000 */  addu       $v0, $v0, $s0
    /* B8C10 800C8410 80100200 */  sll        $v0, $v0, 2
    /* B8C14 800C8414 23105000 */  subu       $v0, $v0, $s0
    /* B8C18 800C8418 00110200 */  sll        $v0, $v0, 4
    /* B8C1C 800C841C 23105000 */  subu       $v0, $v0, $s0
    /* B8C20 800C8420 C0100200 */  sll        $v0, $v0, 3
    /* B8C24 800C8424 1180013C */  lui        $at, %hi(D_80117A7C)
    /* B8C28 800C8428 21082200 */  addu       $at, $at, $v0
    /* B8C2C 800C842C 7C7A2384 */  lh         $v1, %lo(D_80117A7C)($at)
    /* B8C30 800C8430 40100600 */  sll        $v0, $a2, 1
    /* B8C34 800C8434 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* B8C38 800C8438 23186200 */  subu       $v1, $v1, $v0
    /* B8C3C 800C843C 02006104 */  bgez       $v1, .L800C8448
    /* B8C40 800C8440 21280000 */   addu      $a1, $zero, $zero
    /* B8C44 800C8444 03006324 */  addiu      $v1, $v1, 0x3
  .L800C8448:
    /* B8C48 800C8448 F53A030C */  jal        func_800CEBD4
    /* B8C4C 800C844C 83300300 */   sra       $a2, $v1, 2
    /* B8C50 800C8450 36210308 */  j          .L800C84D8
    /* B8C54 800C8454 21204000 */   addu      $a0, $v0, $zero
  .L800C8458:
    /* B8C58 800C8458 1F00A010 */  beqz       $a1, .L800C84D8
    /* B8C5C 800C845C 21105000 */   addu      $v0, $v0, $s0
    /* B8C60 800C8460 80100200 */  sll        $v0, $v0, 2
    /* B8C64 800C8464 23105000 */  subu       $v0, $v0, $s0
    /* B8C68 800C8468 00110200 */  sll        $v0, $v0, 4
    /* B8C6C 800C846C 23105000 */  subu       $v0, $v0, $s0
    /* B8C70 800C8470 C0100200 */  sll        $v0, $v0, 3
    /* B8C74 800C8474 1180013C */  lui        $at, %hi(D_80117A7C)
    /* B8C78 800C8478 21082200 */  addu       $at, $at, $v0
    /* B8C7C 800C847C 7C7A2384 */  lh         $v1, %lo(D_80117A7C)($at)
    /* B8C80 800C8480 80100500 */  sll        $v0, $a1, 2
    /* B8C84 800C8484 F3FF4224 */  addiu      $v0, $v0, -0xD
    /* B8C88 800C8488 23186200 */  subu       $v1, $v1, $v0
    /* B8C8C 800C848C 02006104 */  bgez       $v1, .L800C8498
    /* B8C90 800C8490 21280000 */   addu      $a1, $zero, $zero
    /* B8C94 800C8494 07006324 */  addiu      $v1, $v1, 0x7
  .L800C8498:
    /* B8C98 800C8498 F53A030C */  jal        func_800CEBD4
    /* B8C9C 800C849C C3300300 */   sra       $a2, $v1, 3
    /* B8CA0 800C84A0 21204000 */  addu       $a0, $v0, $zero
    /* B8CA4 800C84A4 1280023C */  lui        $v0, %hi(D_8011A275)
    /* B8CA8 800C84A8 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* B8CAC 800C84AC 00000000 */  nop
    /* B8CB0 800C84B0 07100202 */  srav       $v0, $v0, $s0
    /* B8CB4 800C84B4 01004230 */  andi       $v0, $v0, 0x1
    /* B8CB8 800C84B8 04004014 */  bnez       $v0, .L800C84CC
    /* B8CBC 800C84BC 21280000 */   addu      $a1, $zero, $zero
    /* B8CC0 800C84C0 F53A030C */  jal        func_800CEBD4
    /* B8CC4 800C84C4 01000624 */   addiu     $a2, $zero, 0x1
    /* B8CC8 800C84C8 21204000 */  addu       $a0, $v0, $zero
  .L800C84CC:
    /* B8CCC 800C84CC 03008104 */  bgez       $a0, .L800C84DC
    /* B8CD0 800C84D0 21108000 */   addu      $v0, $a0, $zero
    /* B8CD4 800C84D4 21200000 */  addu       $a0, $zero, $zero
  .L800C84D8:
    /* B8CD8 800C84D8 21108000 */  addu       $v0, $a0, $zero
  .L800C84DC:
    /* B8CDC 800C84DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* B8CE0 800C84E0 1000B08F */  lw         $s0, 0x10($sp)
    /* B8CE4 800C84E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B8CE8 800C84E8 0800E003 */  jr         $ra
    /* B8CEC 800C84EC 00000000 */   nop
endlabel func_800C83D4
