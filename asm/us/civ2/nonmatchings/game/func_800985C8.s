.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800985C8, 0x5C

glabel func_800985C8
    /* 88DC8 800985C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88DCC 800985CC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 88DD0 800985D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88DD4 800985D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88DD8 800985D8 2188C000 */  addu       $s1, $a2, $zero
    /* 88DDC 800985DC BD60020C */  jal        func_800982F4
    /* 88DE0 800985E0 2180E000 */   addu      $s0, $a3, $zero
    /* 88DE4 800985E4 04000012 */  beqz       $s0, .L800985F8
    /* 88DE8 800985E8 21204000 */   addu      $a0, $v0, $zero
    /* 88DEC 800985EC 01008290 */  lbu        $v0, 0x1($a0)
    /* 88DF0 800985F0 82610208 */  j          .L80098608
    /* 88DF4 800985F4 25105100 */   or        $v0, $v0, $s1
  .L800985F8:
    /* 88DF8 800985F8 27181100 */  nor        $v1, $zero, $s1
    /* 88DFC 800985FC 01008290 */  lbu        $v0, 0x1($a0)
    /* 88E00 80098600 00000000 */  nop
    /* 88E04 80098604 24104300 */  and        $v0, $v0, $v1
  .L80098608:
    /* 88E08 80098608 010082A0 */  sb         $v0, 0x1($a0)
    /* 88E0C 8009860C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 88E10 80098610 1400B18F */  lw         $s1, 0x14($sp)
    /* 88E14 80098614 1000B08F */  lw         $s0, 0x10($sp)
    /* 88E18 80098618 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 88E1C 8009861C 0800E003 */  jr         $ra
    /* 88E20 80098620 00000000 */   nop
endlabel func_800985C8
