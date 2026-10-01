.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077D8C, 0x78

glabel func_80077D8C
    /* 6858C 80077D8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 68590 80077D90 1800BFAF */  sw         $ra, 0x18($sp)
    /* 68594 80077D94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 68598 80077D98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6859C 80077D9C 21808000 */  addu       $s0, $a0, $zero
    /* 685A0 80077DA0 4BDF010C */  jal        func_80077D2C
    /* 685A4 80077DA4 21880000 */   addu      $s1, $zero, $zero
    /* 685A8 80077DA8 0F004010 */  beqz       $v0, .L80077DE8
    /* 685AC 80077DAC 40101000 */   sll       $v0, $s0, 1
    /* 685B0 80077DB0 21105000 */  addu       $v0, $v0, $s0
    /* 685B4 80077DB4 80100200 */  sll        $v0, $v0, 2
    /* 685B8 80077DB8 23105000 */  subu       $v0, $v0, $s0
    /* 685BC 80077DBC 00110200 */  sll        $v0, $v0, 4
    /* 685C0 80077DC0 23105000 */  subu       $v0, $v0, $s0
    /* 685C4 80077DC4 C0100200 */  sll        $v0, $v0, 3
    /* 685C8 80077DC8 1280033C */  lui        $v1, %hi(D_8011A264)
    /* 685CC 80077DCC 64A26384 */  lh         $v1, %lo(D_8011A264)($v1)
    /* 685D0 80077DD0 1180013C */  lui        $at, %hi(D_80117A76)
    /* 685D4 80077DD4 21082200 */  addu       $at, $at, $v0
    /* 685D8 80077DD8 767A2284 */  lh         $v0, %lo(D_80117A76)($at)
    /* 685DC 80077DDC 00000000 */  nop
    /* 685E0 80077DE0 2A186200 */  slt        $v1, $v1, $v0
    /* 685E4 80077DE4 01007138 */  xori       $s1, $v1, 0x1
  .L80077DE8:
    /* 685E8 80077DE8 21102002 */  addu       $v0, $s1, $zero
    /* 685EC 80077DEC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 685F0 80077DF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 685F4 80077DF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 685F8 80077DF8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 685FC 80077DFC 0800E003 */  jr         $ra
    /* 68600 80077E00 00000000 */   nop
endlabel func_80077D8C
