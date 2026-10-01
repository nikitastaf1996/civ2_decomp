.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B31E8, 0x44

glabel func_800B31E8
    /* A39E8 800B31E8 7001828C */  lw         $v0, 0x170($a0)
    /* A39EC 800B31EC 00000000 */  nop
    /* A39F0 800B31F0 0B004010 */  beqz       $v0, .L800B3220
    /* A39F4 800B31F4 00000000 */   nop
    /* A39F8 800B31F8 7001848C */  lw         $a0, 0x170($a0)
    /* A39FC 800B31FC 00000000 */  nop
    /* A3A00 800B3200 07008010 */  beqz       $a0, .L800B3220
    /* A3A04 800B3204 21100000 */   addu      $v0, $zero, $zero
  .L800B3208:
    /* A3A08 800B3208 06008510 */  beq        $a0, $a1, .L800B3224
    /* A3A0C 800B320C 00000000 */   nop
    /* A3A10 800B3210 0C00848C */  lw         $a0, 0xC($a0)
    /* A3A14 800B3214 00000000 */  nop
    /* A3A18 800B3218 FBFF8014 */  bnez       $a0, .L800B3208
    /* A3A1C 800B321C 01004224 */   addiu     $v0, $v0, 0x1
  .L800B3220:
    /* A3A20 800B3220 21100000 */  addu       $v0, $zero, $zero
  .L800B3224:
    /* A3A24 800B3224 0800E003 */  jr         $ra
    /* A3A28 800B3228 00000000 */   nop
endlabel func_800B31E8
