.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B6A0, 0x5C

glabel func_8007B6A0
    /* 6BEA0 8007B6A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6BEA4 8007B6A4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6BEA8 8007B6A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6BEAC 8007B6AC F2EC010C */  jal        func_8007B3C8
    /* 6BEB0 8007B6B0 21808000 */   addu      $s0, $a0, $zero
    /* 6BEB4 8007B6B4 40181000 */  sll        $v1, $s0, 1
    /* 6BEB8 8007B6B8 21187000 */  addu       $v1, $v1, $s0
    /* 6BEBC 8007B6BC 80180300 */  sll        $v1, $v1, 2
    /* 6BEC0 8007B6C0 21187000 */  addu       $v1, $v1, $s0
    /* 6BEC4 8007B6C4 40180300 */  sll        $v1, $v1, 1
    /* 6BEC8 8007B6C8 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 6BECC 8007B6CC 21082300 */  addu       $at, $at, $v1
    /* 6BED0 8007B6D0 BCD62390 */  lbu        $v1, %lo(D_8010D6BC)($at)
    /* 6BED4 8007B6D4 00000000 */  nop
    /* 6BED8 8007B6D8 23184300 */  subu       $v1, $v0, $v1
    /* 6BEDC 8007B6DC 2A100300 */  slt        $v0, $zero, $v1
    /* 6BEE0 8007B6E0 23100200 */  negu       $v0, $v0
    /* 6BEE4 8007B6E4 24104300 */  and        $v0, $v0, $v1
    /* 6BEE8 8007B6E8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6BEEC 8007B6EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6BEF0 8007B6F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6BEF4 8007B6F4 0800E003 */  jr         $ra
    /* 6BEF8 8007B6F8 00000000 */   nop
endlabel func_8007B6A0
