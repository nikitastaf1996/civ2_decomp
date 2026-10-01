.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009D0CC, 0x8C

glabel func_8009D0CC
    /* 8D8CC 8009D0CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8D8D0 8009D0D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8D8D4 8009D0D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8D8D8 8009D0D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D8DC 8009D0DC 21800000 */  addu       $s0, $zero, $zero
    /* 8D8E0 8009D0E0 1280113C */  lui        $s1, %hi(D_8011E72C)
    /* 8D8E4 8009D0E4 2CE73126 */  addiu      $s1, $s1, %lo(D_8011E72C)
  .L8009D0E8:
    /* 8D8E8 8009D0E8 0B000012 */  beqz       $s0, .L8009D118
    /* 8D8EC 8009D0EC 40101000 */   sll       $v0, $s0, 1
    /* 8D8F0 8009D0F0 21105000 */  addu       $v0, $v0, $s0
    /* 8D8F4 8009D0F4 80100200 */  sll        $v0, $v0, 2
    /* 8D8F8 8009D0F8 23105000 */  subu       $v0, $v0, $s0
    /* 8D8FC 8009D0FC 80110200 */  sll        $v0, $v0, 6
    /* 8D900 8009D100 1280013C */  lui        $at, %hi(D_8011E956)
    /* 8D904 8009D104 21082200 */  addu       $at, $at, $v0
    /* 8D908 8009D108 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 8D90C 8009D10C 00000000 */  nop
    /* 8D910 8009D110 08004010 */  beqz       $v0, .L8009D134
    /* 8D914 8009D114 00000000 */   nop
  .L8009D118:
    /* 8D918 8009D118 40201000 */  sll        $a0, $s0, 1
    /* 8D91C 8009D11C 21209000 */  addu       $a0, $a0, $s0
    /* 8D920 8009D120 80200400 */  sll        $a0, $a0, 2
    /* 8D924 8009D124 23209000 */  subu       $a0, $a0, $s0
    /* 8D928 8009D128 80210400 */  sll        $a0, $a0, 6
    /* 8D92C 8009D12C DE73020C */  jal        func_8009CF78
    /* 8D930 8009D130 21209100 */   addu      $a0, $a0, $s1
  .L8009D134:
    /* 8D934 8009D134 01001026 */  addiu      $s0, $s0, 0x1
    /* 8D938 8009D138 EBFF001A */  blez       $s0, .L8009D0E8
    /* 8D93C 8009D13C 00000000 */   nop
    /* 8D940 8009D140 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8D944 8009D144 1400B18F */  lw         $s1, 0x14($sp)
    /* 8D948 8009D148 1000B08F */  lw         $s0, 0x10($sp)
    /* 8D94C 8009D14C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8D950 8009D150 0800E003 */  jr         $ra
    /* 8D954 8009D154 00000000 */   nop
endlabel func_8009D0CC
