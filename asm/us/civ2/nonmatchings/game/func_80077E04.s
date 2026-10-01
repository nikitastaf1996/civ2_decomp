.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077E04, 0xA0

glabel func_80077E04
    /* 68604 80077E04 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 68608 80077E08 2400BFAF */  sw         $ra, 0x24($sp)
    /* 6860C 80077E0C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 68610 80077E10 8A54020C */  jal        func_80095228
    /* 68614 80077E14 21808000 */   addu      $s0, $a0, $zero
    /* 68618 80077E18 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 6861C 80077E1C F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 68620 80077E20 A587030C */  jal        func_800E1E94
    /* 68624 80077E24 21284000 */   addu      $a1, $v0, $zero
    /* 68628 80077E28 4BDF010C */  jal        func_80077D2C
    /* 6862C 80077E2C 21200002 */   addu      $a0, $s0, $zero
    /* 68630 80077E30 08004010 */  beqz       $v0, .L80077E54
    /* 68634 80077E34 0100053C */   lui       $a1, (0x10129 >> 16)
    /* 68638 80077E38 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6863C 80077E3C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 68640 80077E40 1800A0AF */  sw         $zero, 0x18($sp)
    /* 68644 80077E44 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 68648 80077E48 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 6864C 80077E4C 9FDF0108 */  j          .L80077E7C
    /* 68650 80077E50 2901A534 */   ori       $a1, $a1, (0x10129 & 0xFFFF)
  .L80077E54:
    /* 68654 80077E54 57DF010C */  jal        func_80077D5C
    /* 68658 80077E58 21200002 */   addu      $a0, $s0, $zero
    /* 6865C 80077E5C 0A004010 */  beqz       $v0, .L80077E88
    /* 68660 80077E60 0100053C */   lui       $a1, (0x10188 >> 16)
    /* 68664 80077E64 1000A0AF */  sw         $zero, 0x10($sp)
    /* 68668 80077E68 1400A0AF */  sw         $zero, 0x14($sp)
    /* 6866C 80077E6C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 68670 80077E70 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 68674 80077E74 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 68678 80077E78 8801A534 */  ori        $a1, $a1, (0x10188 & 0xFFFF)
  .L80077E7C:
    /* 6867C 80077E7C 21300000 */  addu       $a2, $zero, $zero
    /* 68680 80077E80 B4E2020C */  jal        func_800B8AD0
    /* 68684 80077E84 21380000 */   addu      $a3, $zero, $zero
  .L80077E88:
    /* 68688 80077E88 24DF010C */  jal        func_80077C90
    /* 6868C 80077E8C 21200002 */   addu      $a0, $s0, $zero
    /* 68690 80077E90 2400BF8F */  lw         $ra, 0x24($sp)
    /* 68694 80077E94 2000B08F */  lw         $s0, 0x20($sp)
    /* 68698 80077E98 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6869C 80077E9C 0800E003 */  jr         $ra
    /* 686A0 80077EA0 00000000 */   nop
endlabel func_80077E04
