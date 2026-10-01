.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2174, 0x44

glabel func_800B2174
    /* A2974 800B2174 7001838C */  lw         $v1, 0x170($a0)
    /* A2978 800B2178 00000000 */  nop
    /* A297C 800B217C 0C006010 */  beqz       $v1, .L800B21B0
    /* A2980 800B2180 21300000 */   addu      $a2, $zero, $zero
  .L800B2184:
    /* A2984 800B2184 0400628C */  lw         $v0, 0x4($v1)
    /* A2988 800B2188 00000000 */  nop
    /* A298C 800B218C 02004514 */  bne        $v0, $a1, .L800B2198
    /* A2990 800B2190 00000000 */   nop
    /* A2994 800B2194 21306000 */  addu       $a2, $v1, $zero
  .L800B2198:
    /* A2998 800B2198 0C00638C */  lw         $v1, 0xC($v1)
    /* A299C 800B219C 00000000 */  nop
    /* A29A0 800B21A0 03006010 */  beqz       $v1, .L800B21B0
    /* A29A4 800B21A4 00000000 */   nop
    /* A29A8 800B21A8 F6FFC010 */  beqz       $a2, .L800B2184
    /* A29AC 800B21AC 00000000 */   nop
  .L800B21B0:
    /* A29B0 800B21B0 0800E003 */  jr         $ra
    /* A29B4 800B21B4 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800B2174
