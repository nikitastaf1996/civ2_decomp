.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1F54, 0x80

glabel func_800B1F54
    /* A2754 800B1F54 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A2758 800B1F58 1800BFAF */  sw         $ra, 0x18($sp)
    /* A275C 800B1F5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A2760 800B1F60 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2764 800B1F64 21808000 */  addu       $s0, $a0, $zero
    /* A2768 800B1F68 2188A000 */  addu       $s1, $a1, $zero
    /* A276C 800B1F6C 3000028E */  lw         $v0, 0x30($s0)
    /* A2770 800B1F70 00000000 */  nop
    /* A2774 800B1F74 00104234 */  ori        $v0, $v0, 0x1000
    /* A2778 800B1F78 300002AE */  sw         $v0, 0x30($s0)
    /* A277C 800B1F7C 440011AE */  sw         $s1, 0x44($s0)
    /* A2780 800B1F80 3000028E */  lw         $v0, 0x30($s0)
    /* A2784 800B1F84 0400033C */  lui        $v1, (0x40000 >> 16)
    /* A2788 800B1F88 24104300 */  and        $v0, $v0, $v1
    /* A278C 800B1F8C 05004010 */  beqz       $v0, .L800B1FA4
    /* A2790 800B1F90 40101100 */   sll       $v0, $s1, 1
    /* A2794 800B1F94 21105100 */  addu       $v0, $v0, $s1
    /* A2798 800B1F98 80100200 */  sll        $v0, $v0, 2
    /* A279C 800B1F9C EEC70208 */  j          .L800B1FB8
    /* A27A0 800B1FA0 02004224 */   addiu     $v0, $v0, 0x2
  .L800B1FA4:
    /* A27A4 800B1FA4 CAC7020C */  jal        func_800B1F28
    /* A27A8 800B1FA8 21200002 */   addu      $a0, $s0, $zero
    /* A27AC 800B1FAC 18002202 */  mult       $s1, $v0
    /* A27B0 800B1FB0 12300000 */  mflo       $a2
    /* A27B4 800B1FB4 0200C224 */  addiu      $v0, $a2, 0x2
  .L800B1FB8:
    /* A27B8 800B1FB8 400002AE */  sw         $v0, 0x40($s0)
    /* A27BC 800B1FBC 1800BF8F */  lw         $ra, 0x18($sp)
    /* A27C0 800B1FC0 1400B18F */  lw         $s1, 0x14($sp)
    /* A27C4 800B1FC4 1000B08F */  lw         $s0, 0x10($sp)
    /* A27C8 800B1FC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A27CC 800B1FCC 0800E003 */  jr         $ra
    /* A27D0 800B1FD0 00000000 */   nop
endlabel func_800B1F54
