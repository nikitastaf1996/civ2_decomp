.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B322C, 0x3C

glabel func_800B322C
    /* A3A2C 800B322C 7001828C */  lw         $v0, 0x170($a0)
    /* A3A30 800B3230 00000000 */  nop
    /* A3A34 800B3234 09004010 */  beqz       $v0, .L800B325C
    /* A3A38 800B3238 00000000 */   nop
    /* A3A3C 800B323C 07004010 */  beqz       $v0, .L800B325C
    /* A3A40 800B3240 21180000 */   addu      $v1, $zero, $zero
  .L800B3244:
    /* A3A44 800B3244 06006510 */  beq        $v1, $a1, .L800B3260
    /* A3A48 800B3248 00000000 */   nop
    /* A3A4C 800B324C 0C00428C */  lw         $v0, 0xC($v0)
    /* A3A50 800B3250 00000000 */  nop
    /* A3A54 800B3254 FBFF4014 */  bnez       $v0, .L800B3244
    /* A3A58 800B3258 01006324 */   addiu     $v1, $v1, 0x1
  .L800B325C:
    /* A3A5C 800B325C 21100000 */  addu       $v0, $zero, $zero
  .L800B3260:
    /* A3A60 800B3260 0800E003 */  jr         $ra
    /* A3A64 800B3264 00000000 */   nop
endlabel func_800B322C
