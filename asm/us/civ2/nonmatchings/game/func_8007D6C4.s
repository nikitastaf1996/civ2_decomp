.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D6C4, 0x8C

glabel func_8007D6C4
    /* 6DEC4 8007D6C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6DEC8 8007D6C8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6DECC 8007D6CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DED0 8007D6D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DED4 8007D6D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DED8 8007D6D8 21908000 */  addu       $s2, $a0, $zero
    /* 6DEDC 8007D6DC 01001024 */  addiu      $s0, $zero, 0x1
    /* 6DEE0 8007D6E0 40101200 */  sll        $v0, $s2, 1
    /* 6DEE4 8007D6E4 21105200 */  addu       $v0, $v0, $s2
    /* 6DEE8 8007D6E8 80100200 */  sll        $v0, $v0, 2
    /* 6DEEC 8007D6EC 21105200 */  addu       $v0, $v0, $s2
    /* 6DEF0 8007D6F0 40880200 */  sll        $s1, $v0, 1
  .L8007D6F4:
    /* 6DEF4 8007D6F4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6DEF8 8007D6F8 21083100 */  addu       $at, $at, $s1
    /* 6DEFC 8007D6FC B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 6DF00 8007D700 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6DF04 8007D704 21083100 */  addu       $at, $at, $s1
    /* 6DF08 8007D708 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 6DF0C 8007D70C 19F5010C */  jal        func_8007D464
    /* 6DF10 8007D710 21300002 */   addu      $a2, $s0, $zero
    /* 6DF14 8007D714 03004010 */  beqz       $v0, .L8007D724
    /* 6DF18 8007D718 21204002 */   addu      $a0, $s2, $zero
    /* 6DF1C 8007D71C B7F3010C */  jal        func_8007CEDC
    /* 6DF20 8007D720 21280002 */   addu      $a1, $s0, $zero
  .L8007D724:
    /* 6DF24 8007D724 01001026 */  addiu      $s0, $s0, 0x1
    /* 6DF28 8007D728 0800022A */  slti       $v0, $s0, 0x8
    /* 6DF2C 8007D72C F1FF4014 */  bnez       $v0, .L8007D6F4
    /* 6DF30 8007D730 00000000 */   nop
    /* 6DF34 8007D734 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6DF38 8007D738 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DF3C 8007D73C 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DF40 8007D740 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DF44 8007D744 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6DF48 8007D748 0800E003 */  jr         $ra
    /* 6DF4C 8007D74C 00000000 */   nop
endlabel func_8007D6C4
