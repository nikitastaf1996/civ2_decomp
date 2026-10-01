.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8608, 0x70

glabel func_800D8608
    /* C8E08 800D8608 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C8E0C 800D860C 1000BFAF */  sw         $ra, 0x10($sp)
    /* C8E10 800D8610 1280043C */  lui        $a0, %hi(D_80122AA4)
    /* C8E14 800D8614 A42A848C */  lw         $a0, %lo(D_80122AA4)($a0)
    /* C8E18 800D8618 0C25020C */  jal        func_80089430
    /* C8E1C 800D861C 00000000 */   nop
    /* C8E20 800D8620 1680073C */  lui        $a3, %hi(D_80158864)
    /* C8E24 800D8624 6488E78C */  lw         $a3, %lo(D_80158864)($a3)
    /* C8E28 800D8628 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* C8E2C 800D862C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* C8E30 800D8630 BA250524 */  addiu      $a1, $zero, 0x25BA
    /* C8E34 800D8634 0F000624 */  addiu      $a2, $zero, 0xF
    /* C8E38 800D8638 42E3020C */  jal        func_800B8D08
    /* C8E3C 800D863C 2200E724 */   addiu     $a3, $a3, 0x22
    /* C8E40 800D8640 09004014 */  bnez       $v0, .L800D8668
    /* C8E44 800D8644 00000000 */   nop
    /* C8E48 800D8648 1680043C */  lui        $a0, %hi(D_80158864)
    /* C8E4C 800D864C 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* C8E50 800D8650 1280053C */  lui        $a1, %hi(D_8011FCF8)
    /* C8E54 800D8654 F8FCA524 */  addiu      $a1, $a1, %lo(D_8011FCF8)
    /* C8E58 800D8658 A587030C */  jal        func_800E1E94
    /* C8E5C 800D865C 22008424 */   addiu     $a0, $a0, 0x22
    /* C8E60 800D8660 1E3C030C */  jal        func_800CF078
    /* C8E64 800D8664 21200000 */   addu      $a0, $zero, $zero
  .L800D8668:
    /* C8E68 800D8668 1000BF8F */  lw         $ra, 0x10($sp)
    /* C8E6C 800D866C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C8E70 800D8670 0800E003 */  jr         $ra
    /* C8E74 800D8674 00000000 */   nop
endlabel func_800D8608
