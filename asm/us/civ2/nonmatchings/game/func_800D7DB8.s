.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D7DB8, 0x134

glabel func_800D7DB8
    /* C85B8 800D7DB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C85BC 800D7DBC 1400BFAF */  sw         $ra, 0x14($sp)
    /* C85C0 800D7DC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* C85C4 800D7DC4 1180023C */  lui        $v0, %hi(D_8010BA40)
    /* C85C8 800D7DC8 40BA4294 */  lhu        $v0, %lo(D_8010BA40)($v0)
    /* C85CC 800D7DCC 1680033C */  lui        $v1, %hi(D_8015852C)
    /* C85D0 800D7DD0 2C856394 */  lhu        $v1, %lo(D_8015852C)($v1)
    /* C85D4 800D7DD4 00000000 */  nop
    /* C85D8 800D7DD8 23104300 */  subu       $v0, $v0, $v1
    /* C85DC 800D7DDC 21304000 */  addu       $a2, $v0, $zero
    /* C85E0 800D7DE0 00140200 */  sll        $v0, $v0, 16
    /* C85E4 800D7DE4 6300033C */  lui        $v1, (0x630000 >> 16)
    /* C85E8 800D7DE8 2A106200 */  slt        $v0, $v1, $v0
    /* C85EC 800D7DEC 03004010 */  beqz       $v0, .L800D7DFC
    /* C85F0 800D7DF0 00140600 */   sll       $v0, $a2, 16
    /* C85F4 800D7DF4 825F0308 */  j          .L800D7E08
    /* C85F8 800D7DF8 63000624 */   addiu     $a2, $zero, 0x63
  .L800D7DFC:
    /* C85FC 800D7DFC 0200401C */  bgtz       $v0, .L800D7E08
    /* C8600 800D7E00 00000000 */   nop
    /* C8604 800D7E04 01000624 */  addiu      $a2, $zero, 0x1
  .L800D7E08:
    /* C8608 800D7E08 1680023C */  lui        $v0, %hi(D_80158540)
    /* C860C 800D7E0C 4085428C */  lw         $v0, %lo(D_80158540)($v0)
    /* C8610 800D7E10 00000000 */  nop
    /* C8614 800D7E14 18008200 */  mult       $a0, $v0
    /* C8618 800D7E18 0100A324 */  addiu      $v1, $a1, 0x1
    /* C861C 800D7E1C 12380000 */  mflo       $a3
    /* C8620 800D7E20 2318E300 */  subu       $v1, $a3, $v1
    /* C8624 800D7E24 00140600 */  sll        $v0, $a2, 16
    /* C8628 800D7E28 03140200 */  sra        $v0, $v0, 16
    /* C862C 800D7E2C 1A006200 */  div        $zero, $v1, $v0
    /* C8630 800D7E30 02004014 */  bnez       $v0, .L800D7E3C
    /* C8634 800D7E34 00000000 */   nop
    /* C8638 800D7E38 0D000700 */  break      7
  .L800D7E3C:
    /* C863C 800D7E3C FFFF0124 */  addiu      $at, $zero, -0x1
    /* C8640 800D7E40 04004114 */  bne        $v0, $at, .L800D7E54
    /* C8644 800D7E44 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C8648 800D7E48 02006114 */  bne        $v1, $at, .L800D7E54
    /* C864C 800D7E4C 00000000 */   nop
    /* C8650 800D7E50 0D000600 */  break      6
  .L800D7E54:
    /* C8654 800D7E54 12180000 */  mflo       $v1
    /* C8658 800D7E58 00000000 */  nop
    /* C865C 800D7E5C 01006324 */  addiu      $v1, $v1, 0x1
    /* C8660 800D7E60 21206000 */  addu       $a0, $v1, $zero
    /* C8664 800D7E64 001C0300 */  sll        $v1, $v1, 16
    /* C8668 800D7E68 E703023C */  lui        $v0, (0x3E70000 >> 16)
    /* C866C 800D7E6C 2A184300 */  slt        $v1, $v0, $v1
    /* C8670 800D7E70 05006014 */  bnez       $v1, .L800D7E88
    /* C8674 800D7E74 E7030224 */   addiu     $v0, $zero, 0x3E7
    /* C8678 800D7E78 00140400 */  sll        $v0, $a0, 16
    /* C867C 800D7E7C 0200401C */  bgtz       $v0, .L800D7E88
    /* C8680 800D7E80 21108000 */   addu      $v0, $a0, $zero
    /* C8684 800D7E84 01000224 */  addiu      $v0, $zero, 0x1
  .L800D7E88:
    /* C8688 800D7E88 00140200 */  sll        $v0, $v0, 16
    /* C868C 800D7E8C 03840200 */  sra        $s0, $v0, 16
    /* C8690 800D7E90 6400022A */  slti       $v0, $s0, 0x64
    /* C8694 800D7E94 06004010 */  beqz       $v0, .L800D7EB0
    /* C8698 800D7E98 0A00022A */   slti      $v0, $s0, 0xA
    /* C869C 800D7E9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C86A0 800D7EA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C86A4 800D7EA4 CD1A030C */  jal        func_800C6B34
    /* C86A8 800D7EA8 00000000 */   nop
    /* C86AC 800D7EAC 0A00022A */  slti       $v0, $s0, 0xA
  .L800D7EB0:
    /* C86B0 800D7EB0 05004010 */  beqz       $v0, .L800D7EC8
    /* C86B4 800D7EB4 00000000 */   nop
    /* C86B8 800D7EB8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C86BC 800D7EBC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C86C0 800D7EC0 CD1A030C */  jal        func_800C6B34
    /* C86C4 800D7EC4 00000000 */   nop
  .L800D7EC8:
    /* C86C8 800D7EC8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C86CC 800D7ECC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C86D0 800D7ED0 9C1B030C */  jal        func_800C6E70
    /* C86D4 800D7ED4 21280002 */   addu      $a1, $s0, $zero
    /* C86D8 800D7ED8 1400BF8F */  lw         $ra, 0x14($sp)
    /* C86DC 800D7EDC 1000B08F */  lw         $s0, 0x10($sp)
    /* C86E0 800D7EE0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C86E4 800D7EE4 0800E003 */  jr         $ra
    /* C86E8 800D7EE8 00000000 */   nop
endlabel func_800D7DB8
