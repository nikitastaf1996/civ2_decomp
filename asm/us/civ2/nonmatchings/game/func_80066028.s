.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80066028, 0x4C

glabel func_80066028
    /* 56828 80066028 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5682C 8006602C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 56830 80066030 1000A0AF */  sw         $zero, 0x10($sp)
    /* 56834 80066034 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 56838 80066038 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 5683C 8006603C 0100053C */  lui        $a1, (0x11962 >> 16)
    /* 56840 80066040 6219A534 */  ori        $a1, $a1, (0x11962 & 0xFFFF)
    /* 56844 80066044 1380073C */  lui        $a3, %hi(D_80135B98)
    /* 56848 80066048 985BE724 */  addiu      $a3, $a3, %lo(D_80135B98)
    /* 5684C 8006604C 18E3020C */  jal        func_800B8C60
    /* 56850 80066050 21300000 */   addu      $a2, $zero, $zero
    /* 56854 80066054 03004010 */  beqz       $v0, .L80066064
    /* 56858 80066058 00000000 */   nop
    /* 5685C 8006605C FC97010C */  jal        func_80065FF0
    /* 56860 80066060 00000000 */   nop
  .L80066064:
    /* 56864 80066064 1800BF8F */  lw         $ra, 0x18($sp)
    /* 56868 80066068 21100000 */  addu       $v0, $zero, $zero
    /* 5686C 8006606C 0800E003 */  jr         $ra
    /* 56870 80066070 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_80066028
