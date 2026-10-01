.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005B750, 0xA4

glabel func_8005B750
    /* 4BF50 8005B750 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4BF54 8005B754 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4BF58 8005B758 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4BF5C 8005B75C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4BF60 8005B760 00000000 */  nop
    /* 4BF64 8005B764 07108200 */  srav       $v0, $v0, $a0
    /* 4BF68 8005B768 01004230 */  andi       $v0, $v0, 0x1
    /* 4BF6C 8005B76C 11004010 */  beqz       $v0, .L8005B7B4
    /* 4BF70 8005B770 40100400 */   sll       $v0, $a0, 1
    /* 4BF74 8005B774 21104400 */  addu       $v0, $v0, $a0
    /* 4BF78 8005B778 80100200 */  sll        $v0, $v0, 2
    /* 4BF7C 8005B77C 23104400 */  subu       $v0, $v0, $a0
    /* 4BF80 8005B780 00110200 */  sll        $v0, $v0, 4
    /* 4BF84 8005B784 23104400 */  subu       $v0, $v0, $a0
    /* 4BF88 8005B788 C0100200 */  sll        $v0, $v0, 3
    /* 4BF8C 8005B78C 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 4BF90 8005B790 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 4BF94 8005B794 80180500 */  sll        $v1, $a1, 2
    /* 4BF98 8005B798 21104400 */  addu       $v0, $v0, $a0
    /* 4BF9C 8005B79C 21186200 */  addu       $v1, $v1, $v0
    /* 4BFA0 8005B7A0 0000628C */  lw         $v0, 0x0($v1)
    /* 4BFA4 8005B7A4 00000000 */  nop
    /* 4BFA8 8005B7A8 0E004230 */  andi       $v0, $v0, 0xE
    /* 4BFAC 8005B7AC 03004014 */  bnez       $v0, .L8005B7BC
    /* 4BFB0 8005B7B0 B2CF0534 */   ori       $a1, $zero, 0xCFB2
  .L8005B7B4:
    /* 4BFB4 8005B7B4 F96D0108 */  j          .L8005B7E4
    /* 4BFB8 8005B7B8 21100000 */   addu      $v0, $zero, $zero
  .L8005B7BC:
    /* 4BFBC 8005B7BC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4BFC0 8005B7C0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4BFC4 8005B7C4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4BFC8 8005B7C8 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4BFCC 8005B7CC F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4BFD0 8005B7D0 21300000 */  addu       $a2, $zero, $zero
    /* 4BFD4 8005B7D4 B4E2020C */  jal        func_800B8AD0
    /* 4BFD8 8005B7D8 21380000 */   addu      $a3, $zero, $zero
    /* 4BFDC 8005B7DC 01004238 */  xori       $v0, $v0, 0x1
    /* 4BFE0 8005B7E0 2B100200 */  sltu       $v0, $zero, $v0
  .L8005B7E4:
    /* 4BFE4 8005B7E4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4BFE8 8005B7E8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4BFEC 8005B7EC 0800E003 */  jr         $ra
    /* 4BFF0 8005B7F0 00000000 */   nop
endlabel func_8005B750
