.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C85FC, 0x5C

glabel func_800C85FC
    /* B8DFC 800C85FC 05008014 */  bnez       $a0, .L800C8614
    /* B8E00 800C8600 01000224 */   addiu     $v0, $zero, 0x1
    /* B8E04 800C8604 1280023C */  lui        $v0, %hi(D_80121B42)
    /* B8E08 800C8608 421B4284 */  lh         $v0, %lo(D_80121B42)($v0)
    /* B8E0C 800C860C 94210308 */  j          .L800C8650
    /* B8E10 800C8610 00000000 */   nop
  .L800C8614:
    /* B8E14 800C8614 08008210 */  beq        $a0, $v0, .L800C8638
    /* B8E18 800C8618 00000000 */   nop
    /* B8E1C 800C861C 1280033C */  lui        $v1, %hi(D_80121B54)
    /* B8E20 800C8620 541B6324 */  addiu      $v1, $v1, %lo(D_80121B54)
    /* B8E24 800C8624 00006284 */  lh         $v0, 0x0($v1)
    /* B8E28 800C8628 06006484 */  lh         $a0, 0x6($v1)
    /* B8E2C 800C862C 0C006384 */  lh         $v1, 0xC($v1)
    /* B8E30 800C8630 92210308 */  j          .L800C8648
    /* B8E34 800C8634 21104400 */   addu      $v0, $v0, $a0
  .L800C8638:
    /* B8E38 800C8638 1280023C */  lui        $v0, %hi(D_80121B48)
    /* B8E3C 800C863C 481B4224 */  addiu      $v0, $v0, %lo(D_80121B48)
    /* B8E40 800C8640 00004384 */  lh         $v1, 0x0($v0)
    /* B8E44 800C8644 06004284 */  lh         $v0, 0x6($v0)
  .L800C8648:
    /* B8E48 800C8648 00000000 */  nop
    /* B8E4C 800C864C 21106200 */  addu       $v0, $v1, $v0
  .L800C8650:
    /* B8E50 800C8650 0800E003 */  jr         $ra
    /* B8E54 800C8654 00000000 */   nop
endlabel func_800C85FC
