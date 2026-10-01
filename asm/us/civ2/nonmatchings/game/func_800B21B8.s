.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B21B8, 0x44

glabel func_800B21B8
    /* A29B8 800B21B8 8001838C */  lw         $v1, 0x180($a0)
    /* A29BC 800B21BC 00000000 */  nop
    /* A29C0 800B21C0 0C006010 */  beqz       $v1, .L800B21F4
    /* A29C4 800B21C4 21300000 */   addu      $a2, $zero, $zero
  .L800B21C8:
    /* A29C8 800B21C8 0C00628C */  lw         $v0, 0xC($v1)
    /* A29CC 800B21CC 00000000 */  nop
    /* A29D0 800B21D0 02004514 */  bne        $v0, $a1, .L800B21DC
    /* A29D4 800B21D4 00000000 */   nop
    /* A29D8 800B21D8 21306000 */  addu       $a2, $v1, $zero
  .L800B21DC:
    /* A29DC 800B21DC 1800638C */  lw         $v1, 0x18($v1)
    /* A29E0 800B21E0 00000000 */  nop
    /* A29E4 800B21E4 03006010 */  beqz       $v1, .L800B21F4
    /* A29E8 800B21E8 00000000 */   nop
    /* A29EC 800B21EC F6FFC010 */  beqz       $a2, .L800B21C8
    /* A29F0 800B21F0 00000000 */   nop
  .L800B21F4:
    /* A29F4 800B21F4 0800E003 */  jr         $ra
    /* A29F8 800B21F8 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800B21B8
