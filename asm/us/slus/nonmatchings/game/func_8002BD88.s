.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BD88, 0x54

glabel func_8002BD88
    /* 1C588 8002BD88 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1C58C 8002BD8C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1C590 8002BD90 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C594 8002BD94 0580103C */  lui        $s0, %hi(D_8004C5E8)
    /* 1C598 8002BD98 E8C51026 */  addiu      $s0, $s0, %lo(D_8004C5E8)
    /* 1C59C 8002BD9C 4EAF000C */  jal        func_8002BD38
    /* 1C5A0 8002BDA0 FF008430 */   andi      $a0, $a0, 0xFF
    /* 1C5A4 8002BDA4 21184000 */  addu       $v1, $v0, $zero
    /* 1C5A8 8002BDA8 06006004 */  bltz       $v1, .L8002BDC4
    /* 1C5AC 8002BDAC 40100300 */   sll       $v0, $v1, 1
    /* 1C5B0 8002BDB0 21104300 */  addu       $v0, $v0, $v1
    /* 1C5B4 8002BDB4 80100200 */  sll        $v0, $v0, 2
    /* 1C5B8 8002BDB8 23104300 */  subu       $v0, $v0, $v1
    /* 1C5BC 8002BDBC 72AF0008 */  j          .L8002BDC8
    /* 1C5C0 8002BDC0 21105000 */   addu      $v0, $v0, $s0
  .L8002BDC4:
    /* 1C5C4 8002BDC4 21100000 */  addu       $v0, $zero, $zero
  .L8002BDC8:
    /* 1C5C8 8002BDC8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1C5CC 8002BDCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C5D0 8002BDD0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1C5D4 8002BDD4 0800E003 */  jr         $ra
    /* 1C5D8 8002BDD8 00000000 */   nop
endlabel func_8002BD88
