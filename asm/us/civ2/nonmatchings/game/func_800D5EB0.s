.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D5EB0, 0xBC

glabel func_800D5EB0
    /* C66B0 800D5EB0 1000A88F */  lw         $t0, 0x10($sp)
    /* C66B4 800D5EB4 1400AA8F */  lw         $t2, 0x14($sp)
    /* C66B8 800D5EB8 E40E898C */  lw         $t1, 0xEE4($a0)
    /* C66BC 800D5EBC 00000000 */  nop
    /* C66C0 800D5EC0 1800C900 */  mult       $a2, $t1
    /* C66C4 800D5EC4 12580000 */  mflo       $t3
    /* C66C8 800D5EC8 01006625 */  addiu      $a2, $t3, 0x1
    /* C66CC 800D5ECC C2170600 */  srl        $v0, $a2, 31
    /* C66D0 800D5ED0 2130C200 */  addu       $a2, $a2, $v0
    /* C66D4 800D5ED4 43300600 */  sra        $a2, $a2, 1
    /* C66D8 800D5ED8 1800E900 */  mult       $a3, $t1
    /* C66DC 800D5EDC 12580000 */  mflo       $t3
    /* C66E0 800D5EE0 01006325 */  addiu      $v1, $t3, 0x1
    /* C66E4 800D5EE4 C2170300 */  srl        $v0, $v1, 31
    /* C66E8 800D5EE8 21186200 */  addu       $v1, $v1, $v0
    /* C66EC 800D5EEC 43180300 */  sra        $v1, $v1, 1
    /* C66F0 800D5EF0 18000901 */  mult       $t0, $t1
    /* C66F4 800D5EF4 12580000 */  mflo       $t3
    /* C66F8 800D5EF8 01006825 */  addiu      $t0, $t3, 0x1
    /* C66FC 800D5EFC C2170800 */  srl        $v0, $t0, 31
    /* C6700 800D5F00 21400201 */  addu       $t0, $t0, $v0
    /* C6704 800D5F04 43400800 */  sra        $t0, $t0, 1
    /* C6708 800D5F08 18004901 */  mult       $t2, $t1
    /* C670C 800D5F0C 12580000 */  mflo       $t3
    /* C6710 800D5F10 01006725 */  addiu      $a3, $t3, 0x1
    /* C6714 800D5F14 C2170700 */  srl        $v0, $a3, 31
    /* C6718 800D5F18 2138E200 */  addu       $a3, $a3, $v0
    /* C671C 800D5F1C 43380700 */  sra        $a3, $a3, 1
    /* C6720 800D5F20 D40E828C */  lw         $v0, 0xED4($a0)
    /* C6724 800D5F24 00000000 */  nop
    /* C6728 800D5F28 2130C200 */  addu       $a2, $a2, $v0
    /* C672C 800D5F2C D400828C */  lw         $v0, 0xD4($a0)
    /* C6730 800D5F30 00000000 */  nop
    /* C6734 800D5F34 2130C200 */  addu       $a2, $a2, $v0
    /* C6738 800D5F38 D80E828C */  lw         $v0, 0xED8($a0)
    /* C673C 800D5F3C 00000000 */  nop
    /* C6740 800D5F40 21186200 */  addu       $v1, $v1, $v0
    /* C6744 800D5F44 D800828C */  lw         $v0, 0xD8($a0)
    /* C6748 800D5F48 00000000 */  nop
    /* C674C 800D5F4C 21186200 */  addu       $v1, $v1, $v0
    /* C6750 800D5F50 0000A6A4 */  sh         $a2, 0x0($a1)
    /* C6754 800D5F54 0200A3A4 */  sh         $v1, 0x2($a1)
    /* C6758 800D5F58 2130C800 */  addu       $a2, $a2, $t0
    /* C675C 800D5F5C 0400A6A4 */  sh         $a2, 0x4($a1)
    /* C6760 800D5F60 21186700 */  addu       $v1, $v1, $a3
    /* C6764 800D5F64 0800E003 */  jr         $ra
    /* C6768 800D5F68 0600A3A4 */   sh        $v1, 0x6($a1)
endlabel func_800D5EB0
