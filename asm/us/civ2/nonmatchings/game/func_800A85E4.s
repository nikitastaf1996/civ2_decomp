.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A85E4, 0xAC

glabel func_800A85E4
    /* 98DE4 800A85E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98DE8 800A85E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98DEC 800A85EC 1280043C */  lui        $a0, %hi(D_8011F9F8)
    /* 98DF0 800A85F0 F8F98424 */  addiu      $a0, $a0, %lo(D_8011F9F8)
    /* 98DF4 800A85F4 6808828F */  lw         $v0, %gp_rel(D_80158D40)($gp)
    /* 98DF8 800A85F8 00000000 */  nop
    /* 98DFC 800A85FC 21184000 */  addu       $v1, $v0, $zero
    /* 98E00 800A8600 00004280 */  lb         $v0, 0x0($v0)
    /* 98E04 800A8604 00000000 */  nop
    /* 98E08 800A8608 16004010 */  beqz       $v0, .L800A8664
    /* 98E0C 800A860C 2C000524 */   addiu     $a1, $zero, 0x2C
    /* 98E10 800A8610 00006280 */  lb         $v0, 0x0($v1)
  .L800A8614:
    /* 98E14 800A8614 00000000 */  nop
    /* 98E18 800A8618 0B004510 */  beq        $v0, $a1, .L800A8648
    /* 98E1C 800A861C 01006224 */   addiu     $v0, $v1, 0x1
    /* 98E20 800A8620 680882AF */  sw         $v0, %gp_rel(D_80158D40)($gp)
    /* 98E24 800A8624 00006290 */  lbu        $v0, 0x0($v1)
    /* 98E28 800A8628 00000000 */  nop
    /* 98E2C 800A862C 000082A0 */  sb         $v0, 0x0($a0)
    /* 98E30 800A8630 6808838F */  lw         $v1, %gp_rel(D_80158D40)($gp)
    /* 98E34 800A8634 00000000 */  nop
    /* 98E38 800A8638 00006280 */  lb         $v0, 0x0($v1)
    /* 98E3C 800A863C 00000000 */  nop
    /* 98E40 800A8640 F4FF4014 */  bnez       $v0, .L800A8614
    /* 98E44 800A8644 01008424 */   addiu     $a0, $a0, 0x1
  .L800A8648:
    /* 98E48 800A8648 6808838F */  lw         $v1, %gp_rel(D_80158D40)($gp)
    /* 98E4C 800A864C 00000000 */  nop
    /* 98E50 800A8650 00006280 */  lb         $v0, 0x0($v1)
    /* 98E54 800A8654 00000000 */  nop
    /* 98E58 800A8658 02004010 */  beqz       $v0, .L800A8664
    /* 98E5C 800A865C 01006224 */   addiu     $v0, $v1, 0x1
    /* 98E60 800A8660 680882AF */  sw         $v0, %gp_rel(D_80158D40)($gp)
  .L800A8664:
    /* 98E64 800A8664 000080A0 */  sb         $zero, 0x0($a0)
    /* 98E68 800A8668 1280043C */  lui        $a0, %hi(D_8011F9F8)
    /* 98E6C 800A866C F8F98424 */  addiu      $a0, $a0, %lo(D_8011F9F8)
    /* 98E70 800A8670 4D52020C */  jal        func_80094934
    /* 98E74 800A8674 00000000 */   nop
    /* 98E78 800A8678 1280023C */  lui        $v0, %hi(D_8011F9F8)
    /* 98E7C 800A867C F8F94224 */  addiu      $v0, $v0, %lo(D_8011F9F8)
    /* 98E80 800A8680 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98E84 800A8684 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98E88 800A8688 0800E003 */  jr         $ra
    /* 98E8C 800A868C 00000000 */   nop
endlabel func_800A85E4
