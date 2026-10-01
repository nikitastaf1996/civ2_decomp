.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEAA8, 0x84

glabel func_800CEAA8
    /* BF2A8 800CEAA8 00008290 */  lbu        $v0, 0x0($a0)
    /* BF2AC 800CEAAC 00000000 */  nop
    /* BF2B0 800CEAB0 1A004010 */  beqz       $v0, .L800CEB1C
    /* BF2B4 800CEAB4 00000000 */   nop
  .L800CEAB8:
    /* BF2B8 800CEAB8 0000A290 */  lbu        $v0, 0x0($a1)
    /* BF2BC 800CEABC 00000000 */  nop
    /* BF2C0 800CEAC0 16004010 */  beqz       $v0, .L800CEB1C
    /* BF2C4 800CEAC4 00000000 */   nop
    /* BF2C8 800CEAC8 00008390 */  lbu        $v1, 0x0($a0)
    /* BF2CC 800CEACC 0000A690 */  lbu        $a2, 0x0($a1)
    /* BF2D0 800CEAD0 9FFF6224 */  addiu      $v0, $v1, -0x61
    /* BF2D4 800CEAD4 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* BF2D8 800CEAD8 02004010 */  beqz       $v0, .L800CEAE4
    /* BF2DC 800CEADC 9FFFC224 */   addiu     $v0, $a2, -0x61
    /* BF2E0 800CEAE0 E0FF6324 */  addiu      $v1, $v1, -0x20
  .L800CEAE4:
    /* BF2E4 800CEAE4 FF004230 */  andi       $v0, $v0, 0xFF
    /* BF2E8 800CEAE8 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* BF2EC 800CEAEC 02004010 */  beqz       $v0, .L800CEAF8
    /* BF2F0 800CEAF0 00000000 */   nop
    /* BF2F4 800CEAF4 E0FFC624 */  addiu      $a2, $a2, -0x20
  .L800CEAF8:
    /* BF2F8 800CEAF8 FF006330 */  andi       $v1, $v1, 0xFF
    /* BF2FC 800CEAFC FF00C230 */  andi       $v0, $a2, 0xFF
    /* BF300 800CEB00 06006214 */  bne        $v1, $v0, .L800CEB1C
    /* BF304 800CEB04 00000000 */   nop
    /* BF308 800CEB08 01008424 */  addiu      $a0, $a0, 0x1
    /* BF30C 800CEB0C 00008290 */  lbu        $v0, 0x0($a0)
    /* BF310 800CEB10 00000000 */  nop
    /* BF314 800CEB14 E8FF4014 */  bnez       $v0, .L800CEAB8
    /* BF318 800CEB18 0100A524 */   addiu     $a1, $a1, 0x1
  .L800CEB1C:
    /* BF31C 800CEB1C 00008390 */  lbu        $v1, 0x0($a0)
    /* BF320 800CEB20 0000A290 */  lbu        $v0, 0x0($a1)
    /* BF324 800CEB24 0800E003 */  jr         $ra
    /* BF328 800CEB28 23106200 */   subu      $v0, $v1, $v0
endlabel func_800CEAA8
