.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD688, 0xFC

glabel func_800DD688
    /* CDE88 800DD688 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CDE8C 800DD68C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* CDE90 800DD690 1800B2AF */  sw         $s2, 0x18($sp)
    /* CDE94 800DD694 1400B1AF */  sw         $s1, 0x14($sp)
    /* CDE98 800DD698 1000B0AF */  sw         $s0, 0x10($sp)
    /* CDE9C 800DD69C 21888000 */  addu       $s1, $a0, $zero
    /* CDEA0 800DD6A0 2190C000 */  addu       $s2, $a2, $zero
    /* CDEA4 800DD6A4 08004232 */  andi       $v0, $s2, 0x8
    /* CDEA8 800DD6A8 03004010 */  beqz       $v0, .L800DD6B8
    /* CDEAC 800DD6AC 2180A000 */   addu      $s0, $a1, $zero
    /* CDEB0 800DD6B0 A275030C */  jal        func_800DD688
    /* CDEB4 800DD6B4 04000624 */   addiu     $a2, $zero, 0x4
  .L800DD6B8:
    /* CDEB8 800DD6B8 0E004232 */  andi       $v0, $s2, 0xE
    /* CDEBC 800DD6BC 04004010 */  beqz       $v0, .L800DD6D0
    /* CDEC0 800DD6C0 21202002 */   addu      $a0, $s1, $zero
    /* CDEC4 800DD6C4 21280002 */  addu       $a1, $s0, $zero
    /* CDEC8 800DD6C8 6475030C */  jal        func_800DD590
    /* CDECC 800DD6CC 602A0624 */   addiu     $a2, $zero, 0x2A60
  .L800DD6D0:
    /* CDED0 800DD6D0 00204232 */  andi       $v0, $s2, 0x2000
    /* CDED4 800DD6D4 06004010 */  beqz       $v0, .L800DD6F0
    /* CDED8 800DD6D8 21202002 */   addu      $a0, $s1, $zero
    /* CDEDC 800DD6DC 21280002 */  addu       $a1, $s0, $zero
    /* CDEE0 800DD6E0 6475030C */  jal        func_800DD590
    /* CDEE4 800DD6E4 0E000624 */   addiu     $a2, $zero, 0xE
    /* CDEE8 800DD6E8 2000023C */  lui        $v0, (0x200000 >> 16)
    /* CDEEC 800DD6EC 25904202 */  or         $s2, $s2, $v0
  .L800DD6F0:
    /* CDEF0 800DD6F0 40101100 */  sll        $v0, $s1, 1
    /* CDEF4 800DD6F4 21105100 */  addu       $v0, $v0, $s1
    /* CDEF8 800DD6F8 80100200 */  sll        $v0, $v0, 2
    /* CDEFC 800DD6FC 23105100 */  subu       $v0, $v0, $s1
    /* CDF00 800DD700 00110200 */  sll        $v0, $v0, 4
    /* CDF04 800DD704 23105100 */  subu       $v0, $v0, $s1
    /* CDF08 800DD708 C0100200 */  sll        $v0, $v0, 3
    /* CDF0C 800DD70C 1180043C */  lui        $a0, %hi(D_801176B4)
    /* CDF10 800DD710 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* CDF14 800DD714 80181000 */  sll        $v1, $s0, 2
    /* CDF18 800DD718 21104400 */  addu       $v0, $v0, $a0
    /* CDF1C 800DD71C 21186200 */  addu       $v1, $v1, $v0
    /* CDF20 800DD720 0000628C */  lw         $v0, 0x0($v1)
    /* CDF24 800DD724 00000000 */  nop
    /* CDF28 800DD728 25104202 */  or         $v0, $s2, $v0
    /* CDF2C 800DD72C 000062AC */  sw         $v0, 0x0($v1)
    /* CDF30 800DD730 40101000 */  sll        $v0, $s0, 1
    /* CDF34 800DD734 21105000 */  addu       $v0, $v0, $s0
    /* CDF38 800DD738 80100200 */  sll        $v0, $v0, 2
    /* CDF3C 800DD73C 23105000 */  subu       $v0, $v0, $s0
    /* CDF40 800DD740 00110200 */  sll        $v0, $v0, 4
    /* CDF44 800DD744 23105000 */  subu       $v0, $v0, $s0
    /* CDF48 800DD748 C0100200 */  sll        $v0, $v0, 3
    /* CDF4C 800DD74C 80181100 */  sll        $v1, $s1, 2
    /* CDF50 800DD750 21104400 */  addu       $v0, $v0, $a0
    /* CDF54 800DD754 21186200 */  addu       $v1, $v1, $v0
    /* CDF58 800DD758 0000628C */  lw         $v0, 0x0($v1)
    /* CDF5C 800DD75C 00000000 */  nop
    /* CDF60 800DD760 25104202 */  or         $v0, $s2, $v0
    /* CDF64 800DD764 000062AC */  sw         $v0, 0x0($v1)
    /* CDF68 800DD768 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* CDF6C 800DD76C 1800B28F */  lw         $s2, 0x18($sp)
    /* CDF70 800DD770 1400B18F */  lw         $s1, 0x14($sp)
    /* CDF74 800DD774 1000B08F */  lw         $s0, 0x10($sp)
    /* CDF78 800DD778 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CDF7C 800DD77C 0800E003 */  jr         $ra
    /* CDF80 800DD780 00000000 */   nop
endlabel func_800DD688
