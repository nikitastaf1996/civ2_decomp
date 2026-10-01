.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B3268, 0x5C

glabel func_800B3268
    /* A3A68 800B3268 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A3A6C 800B326C 1400BFAF */  sw         $ra, 0x14($sp)
    /* A3A70 800B3270 1000B0AF */  sw         $s0, 0x10($sp)
    /* A3A74 800B3274 7ACC020C */  jal        func_800B31E8
    /* A3A78 800B3278 21808000 */   addu      $s0, $a0, $zero
    /* A3A7C 800B327C 4400038E */  lw         $v1, 0x44($s0)
    /* A3A80 800B3280 00000000 */  nop
    /* A3A84 800B3284 1A004300 */  div        $zero, $v0, $v1
    /* A3A88 800B3288 02006014 */  bnez       $v1, .L800B3294
    /* A3A8C 800B328C 00000000 */   nop
    /* A3A90 800B3290 0D000700 */  break      7
  .L800B3294:
    /* A3A94 800B3294 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A3A98 800B3298 04006114 */  bne        $v1, $at, .L800B32AC
    /* A3A9C 800B329C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A3AA0 800B32A0 02004114 */  bne        $v0, $at, .L800B32AC
    /* A3AA4 800B32A4 00000000 */   nop
    /* A3AA8 800B32A8 0D000600 */  break      6
  .L800B32AC:
    /* A3AAC 800B32AC 12100000 */  mflo       $v0
    /* A3AB0 800B32B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* A3AB4 800B32B4 1000B08F */  lw         $s0, 0x10($sp)
    /* A3AB8 800B32B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A3ABC 800B32BC 0800E003 */  jr         $ra
    /* A3AC0 800B32C0 00000000 */   nop
endlabel func_800B3268
