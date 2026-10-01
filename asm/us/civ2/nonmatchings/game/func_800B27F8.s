.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B27F8, 0x54

glabel func_800B27F8
    /* A2FF8 800B27F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2FFC 800B27FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* A3000 800B2800 1000B0AF */  sw         $s0, 0x10($sp)
    /* A3004 800B2804 2180E000 */  addu       $s0, $a3, $zero
    /* A3008 800B2808 3000828C */  lw         $v0, 0x30($a0)
    /* A300C 800B280C 00000000 */  nop
    /* A3010 800B2810 05004234 */  ori        $v0, $v0, 0x5
    /* A3014 800B2814 A8C9020C */  jal        func_800B26A0
    /* A3018 800B2818 300082AC */   sw        $v0, 0x30($a0)
    /* A301C 800B281C 05000012 */  beqz       $s0, .L800B2834
    /* A3020 800B2820 21184000 */   addu      $v1, $v0, $zero
    /* A3024 800B2824 00006294 */  lhu        $v0, 0x0($v1)
    /* A3028 800B2828 00000000 */  nop
    /* A302C 800B282C 04004234 */  ori        $v0, $v0, 0x4
    /* A3030 800B2830 000062A4 */  sh         $v0, 0x0($v1)
  .L800B2834:
    /* A3034 800B2834 21106000 */  addu       $v0, $v1, $zero
    /* A3038 800B2838 1400BF8F */  lw         $ra, 0x14($sp)
    /* A303C 800B283C 1000B08F */  lw         $s0, 0x10($sp)
    /* A3040 800B2840 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3044 800B2844 0800E003 */  jr         $ra
    /* A3048 800B2848 00000000 */   nop
endlabel func_800B27F8
