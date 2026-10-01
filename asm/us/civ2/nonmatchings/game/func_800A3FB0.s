.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3FB0, 0x8C

glabel func_800A3FB0
    /* 947B0 800A3FB0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 947B4 800A3FB4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 947B8 800A3FB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 947BC 800A3FBC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 947C0 800A3FC0 CC05828F */  lw         $v0, %gp_rel(D_80158AA4)($gp)
    /* 947C4 800A3FC4 00000000 */  nop
    /* 947C8 800A3FC8 5E004228 */  slti       $v0, $v0, 0x5E
    /* 947CC 800A3FCC 15004010 */  beqz       $v0, .L800A4024
    /* 947D0 800A3FD0 21800000 */   addu      $s0, $zero, $zero
    /* 947D4 800A3FD4 00190400 */  sll        $v1, $a0, 4
    /* 947D8 800A3FD8 1180023C */  lui        $v0, %hi(D_8010C2AA)
    /* 947DC 800A3FDC AAC24224 */  addiu      $v0, $v0, %lo(D_8010C2AA)
    /* 947E0 800A3FE0 21886200 */  addu       $s1, $v1, $v0
    /* 947E4 800A3FE4 21183002 */  addu       $v1, $s1, $s0
  .L800A3FE8:
    /* 947E8 800A3FE8 00006280 */  lb         $v0, 0x0($v1)
    /* 947EC 800A3FEC 00000000 */  nop
    /* 947F0 800A3FF0 08004018 */  blez       $v0, .L800A4014
    /* 947F4 800A3FF4 00000000 */   nop
    /* 947F8 800A3FF8 CC05828F */  lw         $v0, %gp_rel(D_80158AA4)($gp)
    /* 947FC 800A3FFC 00000000 */  nop
    /* 94800 800A4000 01004224 */  addiu      $v0, $v0, 0x1
    /* 94804 800A4004 CC0582AF */  sw         $v0, %gp_rel(D_80158AA4)($gp)
    /* 94808 800A4008 00006480 */  lb         $a0, 0x0($v1)
    /* 9480C 800A400C EC8F020C */  jal        func_800A3FB0
    /* 94810 800A4010 00000000 */   nop
  .L800A4014:
    /* 94814 800A4014 01001026 */  addiu      $s0, $s0, 0x1
    /* 94818 800A4018 0200022A */  slti       $v0, $s0, 0x2
    /* 9481C 800A401C F2FF4014 */  bnez       $v0, .L800A3FE8
    /* 94820 800A4020 21183002 */   addu      $v1, $s1, $s0
  .L800A4024:
    /* 94824 800A4024 1800BF8F */  lw         $ra, 0x18($sp)
    /* 94828 800A4028 1400B18F */  lw         $s1, 0x14($sp)
    /* 9482C 800A402C 1000B08F */  lw         $s0, 0x10($sp)
    /* 94830 800A4030 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 94834 800A4034 0800E003 */  jr         $ra
    /* 94838 800A4038 00000000 */   nop
endlabel func_800A3FB0
