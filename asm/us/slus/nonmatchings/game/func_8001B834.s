.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B834, 0x3C

glabel func_8001B834
    /* C034 8001B834 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C038 8001B838 1400BFAF */  sw         $ra, 0x14($sp)
    /* C03C 8001B83C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C040 8001B840 93E6000C */  jal        SpuClearReverbWorkArea
    /* C044 8001B844 21808000 */   addu      $s0, $a0, $zero
    /* C048 8001B848 00841000 */  sll        $s0, $s0, 16
    /* C04C 8001B84C 7703010C */  jal        SsUtSetReverbType
    /* C050 8001B850 03241000 */   sra       $a0, $s0, 16
    /* C054 8001B854 EF03010C */  jal        SsUtReverbOn
    /* C058 8001B858 00000000 */   nop
    /* C05C 8001B85C 1400BF8F */  lw         $ra, 0x14($sp)
    /* C060 8001B860 1000B08F */  lw         $s0, 0x10($sp)
    /* C064 8001B864 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C068 8001B868 0800E003 */  jr         $ra
    /* C06C 8001B86C 00000000 */   nop
endlabel func_8001B834
