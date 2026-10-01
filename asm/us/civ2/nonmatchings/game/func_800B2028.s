.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2028, 0x48

glabel func_800B2028
    /* A2828 800B2028 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A282C 800B202C 1400BFAF */  sw         $ra, 0x14($sp)
    /* A2830 800B2030 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2834 800B2034 A800908C */  lw         $s0, 0xA8($a0)
    /* A2838 800B2038 00000000 */  nop
    /* A283C 800B203C 80801000 */  sll        $s0, $s0, 2
    /* A2840 800B2040 04001026 */  addiu      $s0, $s0, 0x4
    /* A2844 800B2044 AD87030C */  jal        func_800E1EB4
    /* A2848 800B2048 2120A000 */   addu      $a0, $a1, $zero
    /* A284C 800B204C 40180200 */  sll        $v1, $v0, 1
    /* A2850 800B2050 21186200 */  addu       $v1, $v1, $v0
    /* A2854 800B2054 40180300 */  sll        $v1, $v1, 1
    /* A2858 800B2058 21100302 */  addu       $v0, $s0, $v1
    /* A285C 800B205C 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2860 800B2060 1000B08F */  lw         $s0, 0x10($sp)
    /* A2864 800B2064 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2868 800B2068 0800E003 */  jr         $ra
    /* A286C 800B206C 00000000 */   nop
endlabel func_800B2028
