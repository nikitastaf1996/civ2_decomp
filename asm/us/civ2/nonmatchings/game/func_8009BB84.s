.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BB84, 0xA8

glabel func_8009BB84
    /* 8C384 8009BB84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8C388 8009BB88 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8C38C 8009BB8C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8C390 8009BB90 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8C394 8009BB94 21808000 */  addu       $s0, $a0, $zero
    /* 8C398 8009BB98 1680023C */  lui        $v0, %hi(D_80158870)
    /* 8C39C 8009BB9C 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 8C3A0 8009BBA0 00000000 */  nop
    /* 8C3A4 8009BBA4 1B004010 */  beqz       $v0, .L8009BC14
    /* 8C3A8 8009BBA8 2188A000 */   addu      $s1, $a1, $zero
    /* 8C3AC 8009BBAC 7264020C */  jal        func_800991C8
    /* 8C3B0 8009BBB0 00000000 */   nop
    /* 8C3B4 8009BBB4 1C00048E */  lw         $a0, 0x1C($s0)
    /* 8C3B8 8009BBB8 3307040C */  jal        func_80101CCC
    /* 8C3BC 8009BBBC 21280000 */   addu      $a1, $zero, $zero
    /* 8C3C0 8009BBC0 1C00048E */  lw         $a0, 0x1C($s0)
    /* 8C3C4 8009BBC4 00000000 */  nop
    /* 8C3C8 8009BBC8 0C008424 */  addiu      $a0, $a0, 0xC
    /* 8C3CC 8009BBCC 21280000 */  addu       $a1, $zero, $zero
    /* 8C3D0 8009BBD0 21300000 */  addu       $a2, $zero, $zero
    /* 8C3D4 8009BBD4 8D8D030C */  jal        ClearImage
    /* 8C3D8 8009BBD8 21380000 */   addu      $a3, $zero, $zero
    /* 8C3DC 8009BBDC 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 8C3E0 8009BBE0 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 8C3E4 8009BBE4 00000000 */  nop
    /* 8C3E8 8009BBE8 02004014 */  bnez       $v0, .L8009BBF4
    /* 8C3EC 8009BBEC FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 8C3F0 8009BBF0 21282002 */  addu       $a1, $s1, $zero
  .L8009BBF4:
    /* 8C3F4 8009BBF4 FA6D020C */  jal        func_8009B7E8
    /* 8C3F8 8009BBF8 21200002 */   addu      $a0, $s0, $zero
    /* 8C3FC 8009BBFC F404828F */  lw         $v0, %gp_rel(D_801589CC)($gp)
    /* 8C400 8009BC00 00000000 */  nop
    /* 8C404 8009BC04 03004014 */  bnez       $v0, .L8009BC14
    /* 8C408 8009BC08 00000000 */   nop
    /* 8C40C 8009BC0C 1A12040C */  jal        func_80104868
    /* 8C410 8009BC10 00000000 */   nop
  .L8009BC14:
    /* 8C414 8009BC14 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8C418 8009BC18 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C41C 8009BC1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C420 8009BC20 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8C424 8009BC24 0800E003 */  jr         $ra
    /* 8C428 8009BC28 00000000 */   nop
endlabel func_8009BB84
