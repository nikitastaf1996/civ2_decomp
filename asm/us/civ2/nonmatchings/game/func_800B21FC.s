.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B21FC, 0x44

glabel func_800B21FC
    /* A29FC 800B21FC 7C01838C */  lw         $v1, 0x17C($a0)
    /* A2A00 800B2200 00000000 */  nop
    /* A2A04 800B2204 0C006010 */  beqz       $v1, .L800B2238
    /* A2A08 800B2208 21300000 */   addu      $a2, $zero, $zero
  .L800B220C:
    /* A2A0C 800B220C 0000628C */  lw         $v0, 0x0($v1)
    /* A2A10 800B2210 00000000 */  nop
    /* A2A14 800B2214 02004514 */  bne        $v0, $a1, .L800B2220
    /* A2A18 800B2218 00000000 */   nop
    /* A2A1C 800B221C 21306000 */  addu       $a2, $v1, $zero
  .L800B2220:
    /* A2A20 800B2220 1000638C */  lw         $v1, 0x10($v1)
    /* A2A24 800B2224 00000000 */  nop
    /* A2A28 800B2228 03006010 */  beqz       $v1, .L800B2238
    /* A2A2C 800B222C 00000000 */   nop
    /* A2A30 800B2230 F6FFC010 */  beqz       $a2, .L800B220C
    /* A2A34 800B2234 00000000 */   nop
  .L800B2238:
    /* A2A38 800B2238 0800E003 */  jr         $ra
    /* A2A3C 800B223C 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800B21FC
