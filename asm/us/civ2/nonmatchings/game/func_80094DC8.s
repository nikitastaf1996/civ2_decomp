.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094DC8, 0xF4

glabel func_80094DC8
    /* 855C8 80094DC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 855CC 80094DCC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 855D0 80094DD0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 855D4 80094DD4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 855D8 80094DD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 855DC 80094DDC 21908000 */  addu       $s2, $a0, $zero
    /* 855E0 80094DE0 2130A000 */  addu       $a2, $a1, $zero
    /* 855E4 80094DE4 00240400 */  sll        $a0, $a0, 16
    /* 855E8 80094DE8 03840400 */  sra        $s0, $a0, 16
    /* 855EC 80094DEC 002C0500 */  sll        $a1, $a1, 16
    /* 855F0 80094DF0 032C0500 */  sra        $a1, $a1, 16
    /* 855F4 80094DF4 05000516 */  bne        $s0, $a1, .L80094E0C
    /* 855F8 80094DF8 001C1200 */   sll       $v1, $s2, 16
    /* 855FC 80094DFC 3E53020C */  jal        func_80094CF8
    /* 85600 80094E00 00000000 */   nop
    /* 85604 80094E04 A8530208 */  j          .L80094EA0
    /* 85608 80094E08 21100002 */   addu      $v0, $s0, $zero
  .L80094E0C:
    /* 8560C 80094E0C 031C0300 */  sra        $v1, $v1, 16
    /* 85610 80094E10 00140600 */  sll        $v0, $a2, 16
    /* 85614 80094E14 03140200 */  sra        $v0, $v0, 16
    /* 85618 80094E18 2A104300 */  slt        $v0, $v0, $v1
    /* 8561C 80094E1C 03004010 */  beqz       $v0, .L80094E2C
    /* 85620 80094E20 2110C000 */   addu      $v0, $a2, $zero
    /* 85624 80094E24 21304002 */  addu       $a2, $s2, $zero
    /* 85628 80094E28 21904000 */  addu       $s2, $v0, $zero
  .L80094E2C:
    /* 8562C 80094E2C 00240600 */  sll        $a0, $a2, 16
    /* 85630 80094E30 03240400 */  sra        $a0, $a0, 16
    /* 85634 80094E34 00941200 */  sll        $s2, $s2, 16
    /* 85638 80094E38 03941200 */  sra        $s2, $s2, 16
    /* 8563C 80094E3C 69A1030C */  jal        __floatsidf
    /* 85640 80094E40 23209200 */   subu      $a0, $a0, $s2
    /* 85644 80094E44 21204000 */  addu       $a0, $v0, $zero
    /* 85648 80094E48 21E7063C */  lui        $a2, (0xE7210BE9 >> 16)
    /* 8564C 80094E4C E90BC634 */  ori        $a2, $a2, (0xE7210BE9 & 0xFFFF)
    /* 85650 80094E50 EF3F073C */  lui        $a3, (0x3FEFFFFD >> 16)
    /* 85654 80094E54 FDFFE734 */  ori        $a3, $a3, (0x3FEFFFFD & 0xFFFF)
    /* 85658 80094E58 D59E030C */  jal        __adddf3
    /* 8565C 80094E5C 21286000 */   addu      $a1, $v1, $zero
    /* 85660 80094E60 21804000 */  addu       $s0, $v0, $zero
    /* 85664 80094E64 3E53020C */  jal        func_80094CF8
    /* 85668 80094E68 21886000 */   addu      $s1, $v1, $zero
    /* 8566C 80094E6C D1A0030C */  jal        __extendsfdf2
    /* 85670 80094E70 21204000 */   addu      $a0, $v0, $zero
    /* 85674 80094E74 21200002 */  addu       $a0, $s0, $zero
    /* 85678 80094E78 21282002 */  addu       $a1, $s1, $zero
    /* 8567C 80094E7C 21304000 */  addu       $a2, $v0, $zero
    /* 85680 80094E80 25A2030C */  jal        __muldf3
    /* 85684 80094E84 21386000 */   addu      $a3, $v1, $zero
    /* 85688 80094E88 21204000 */  addu       $a0, $v0, $zero
    /* 8568C 80094E8C 29A1030C */  jal        __fixdfsi
    /* 85690 80094E90 21286000 */   addu      $a1, $v1, $zero
    /* 85694 80094E94 00140200 */  sll        $v0, $v0, 16
    /* 85698 80094E98 03140200 */  sra        $v0, $v0, 16
    /* 8569C 80094E9C 21104202 */  addu       $v0, $s2, $v0
  .L80094EA0:
    /* 856A0 80094EA0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 856A4 80094EA4 1800B28F */  lw         $s2, 0x18($sp)
    /* 856A8 80094EA8 1400B18F */  lw         $s1, 0x14($sp)
    /* 856AC 80094EAC 1000B08F */  lw         $s0, 0x10($sp)
    /* 856B0 80094EB0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 856B4 80094EB4 0800E003 */  jr         $ra
    /* 856B8 80094EB8 00000000 */   nop
endlabel func_80094DC8
