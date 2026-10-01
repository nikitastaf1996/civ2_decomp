.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800ADAC0, 0x5C

glabel func_800ADAC0
    /* 9E2C0 800ADAC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9E2C4 800ADAC4 63008228 */  slti       $v0, $a0, 0x63
    /* 9E2C8 800ADAC8 07004010 */  beqz       $v0, .L800ADAE8
    /* 9E2CC 800ADACC 2000BFAF */   sw        $ra, 0x20($sp)
    /* 9E2D0 800ADAD0 80100400 */  sll        $v0, $a0, 2
    /* 9E2D4 800ADAD4 1280013C */  lui        $at, %hi(D_8012045C)
    /* 9E2D8 800ADAD8 21082200 */  addu       $at, $at, $v0
    /* 9E2DC 800ADADC 5C04258C */  lw         $a1, %lo(D_8012045C)($at)
    /* 9E2E0 800ADAE0 BBB60208 */  j          .L800ADAEC
    /* 9E2E4 800ADAE4 00000000 */   nop
  .L800ADAE8:
    /* 9E2E8 800ADAE8 72280524 */  addiu      $a1, $zero, 0x2872
  .L800ADAEC:
    /* 9E2EC 800ADAEC A008848F */  lw         $a0, %gp_rel(D_80158D78)($gp)
    /* 9E2F0 800ADAF0 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E2F4 800ADAF4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9E2F8 800ADAF8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9E2FC 800ADAFC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9E300 800ADB00 21300000 */  addu       $a2, $zero, $zero
    /* 9E304 800ADB04 B4E2020C */  jal        func_800B8AD0
    /* 9E308 800ADB08 21380000 */   addu      $a3, $zero, $zero
    /* 9E30C 800ADB0C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9E310 800ADB10 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9E314 800ADB14 0800E003 */  jr         $ra
    /* 9E318 800ADB18 00000000 */   nop
endlabel func_800ADAC0
