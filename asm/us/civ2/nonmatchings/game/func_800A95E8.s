.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A95E8, 0x88

glabel func_800A95E8
    /* 99DE8 800A95E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 99DEC 800A95EC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 99DF0 800A95F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 99DF4 800A95F4 22A4020C */  jal        func_800A9088
    /* 99DF8 800A95F8 21808000 */   addu      $s0, $a0, $zero
    /* 99DFC 800A95FC 00140200 */  sll        $v0, $v0, 16
    /* 99E00 800A9600 16004010 */  beqz       $v0, .L800A965C
    /* 99E04 800A9604 00000000 */   nop
    /* 99E08 800A9608 9EA5020C */  jal        func_800A9678
    /* 99E0C 800A960C 21200002 */   addu      $a0, $s0, $zero
    /* 99E10 800A9610 00140200 */  sll        $v0, $v0, 16
    /* 99E14 800A9614 11004010 */  beqz       $v0, .L800A965C
    /* 99E18 800A9618 00000000 */   nop
    /* 99E1C 800A961C 9CA5020C */  jal        func_800A9670
    /* 99E20 800A9620 21200002 */   addu      $a0, $s0, $zero
    /* 99E24 800A9624 040E00A6 */  sh         $zero, 0xE04($s0)
    /* 99E28 800A9628 F8EA030C */  jal        func_800FABE0
    /* 99E2C 800A962C 21200002 */   addu      $a0, $s0, $zero
    /* 99E30 800A9630 BC001026 */  addiu      $s0, $s0, 0xBC
    /* 99E34 800A9634 F8EA030C */  jal        func_800FABE0
    /* 99E38 800A9638 21200002 */   addu      $a0, $s0, $zero
    /* 99E3C 800A963C 05DD030C */  jal        func_800F7414
    /* 99E40 800A9640 21200002 */   addu      $a0, $s0, $zero
    /* 99E44 800A9644 A8E9030C */  jal        func_800FA6A0
    /* 99E48 800A9648 00000000 */   nop
    /* 99E4C 800A964C 14DE030C */  jal        func_800F7850
    /* 99E50 800A9650 21200002 */   addu      $a0, $s0, $zero
    /* 99E54 800A9654 98E9030C */  jal        func_800FA660
    /* 99E58 800A9658 00000000 */   nop
  .L800A965C:
    /* 99E5C 800A965C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 99E60 800A9660 1000B08F */  lw         $s0, 0x10($sp)
    /* 99E64 800A9664 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 99E68 800A9668 0800E003 */  jr         $ra
    /* 99E6C 800A966C 00000000 */   nop
endlabel func_800A95E8
