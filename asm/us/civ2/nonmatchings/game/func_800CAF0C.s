.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAF0C, 0x28

glabel func_800CAF0C
    /* BB70C 800CAF0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BB710 800CAF10 0100A530 */  andi       $a1, $a1, 0x1
    /* BB714 800CAF14 0300A010 */  beqz       $a1, .L800CAF24
    /* BB718 800CAF18 1000BFAF */   sw        $ra, 0x10($sp)
    /* BB71C 800CAF1C 3582030C */  jal        __builtin_delete
    /* BB720 800CAF20 00000000 */   nop
  .L800CAF24:
    /* BB724 800CAF24 1000BF8F */  lw         $ra, 0x10($sp)
    /* BB728 800CAF28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BB72C 800CAF2C 0800E003 */  jr         $ra
    /* BB730 800CAF30 00000000 */   nop
endlabel func_800CAF0C
