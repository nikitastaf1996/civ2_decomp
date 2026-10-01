.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD590, 0xF8

glabel func_800DD590
    /* CDD90 800DD590 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CDD94 800DD594 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* CDD98 800DD598 1800B2AF */  sw         $s2, 0x18($sp)
    /* CDD9C 800DD59C 1400B1AF */  sw         $s1, 0x14($sp)
    /* CDDA0 800DD5A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* CDDA4 800DD5A4 21888000 */  addu       $s1, $a0, $zero
    /* CDDA8 800DD5A8 2190C000 */  addu       $s2, $a2, $zero
    /* CDDAC 800DD5AC 04004232 */  andi       $v0, $s2, 0x4
    /* CDDB0 800DD5B0 03004010 */  beqz       $v0, .L800DD5C0
    /* CDDB4 800DD5B4 2180A000 */   addu      $s0, $a1, $zero
    /* CDDB8 800DD5B8 6475030C */  jal        func_800DD590
    /* CDDBC 800DD5BC 08000624 */   addiu     $a2, $zero, 0x8
  .L800DD5C0:
    /* CDDC0 800DD5C0 00204232 */  andi       $v0, $s2, 0x2000
    /* CDDC4 800DD5C4 04004010 */  beqz       $v0, .L800DD5D8
    /* CDDC8 800DD5C8 21202002 */   addu      $a0, $s1, $zero
    /* CDDCC 800DD5CC 21280002 */  addu       $a1, $s0, $zero
    /* CDDD0 800DD5D0 6475030C */  jal        func_800DD590
    /* CDDD4 800DD5D4 00180624 */   addiu     $a2, $zero, 0x1800
  .L800DD5D8:
    /* CDDD8 800DD5D8 01004232 */  andi       $v0, $s2, 0x1
    /* CDDDC 800DD5DC 04004010 */  beqz       $v0, .L800DD5F0
    /* CDDE0 800DD5E0 21202002 */   addu      $a0, $s1, $zero
    /* CDDE4 800DD5E4 21280002 */  addu       $a1, $s0, $zero
    /* CDDE8 800DD5E8 6475030C */  jal        func_800DD590
    /* CDDEC 800DD5EC 00200624 */   addiu     $a2, $zero, 0x2000
  .L800DD5F0:
    /* CDDF0 800DD5F0 40101100 */  sll        $v0, $s1, 1
    /* CDDF4 800DD5F4 21105100 */  addu       $v0, $v0, $s1
    /* CDDF8 800DD5F8 80100200 */  sll        $v0, $v0, 2
    /* CDDFC 800DD5FC 23105100 */  subu       $v0, $v0, $s1
    /* CDE00 800DD600 00110200 */  sll        $v0, $v0, 4
    /* CDE04 800DD604 23105100 */  subu       $v0, $v0, $s1
    /* CDE08 800DD608 C0100200 */  sll        $v0, $v0, 3
    /* CDE0C 800DD60C 1180053C */  lui        $a1, %hi(D_801176B4)
    /* CDE10 800DD610 B476A524 */  addiu      $a1, $a1, %lo(D_801176B4)
    /* CDE14 800DD614 80181000 */  sll        $v1, $s0, 2
    /* CDE18 800DD618 21104500 */  addu       $v0, $v0, $a1
    /* CDE1C 800DD61C 21186200 */  addu       $v1, $v1, $v0
    /* CDE20 800DD620 27201200 */  nor        $a0, $zero, $s2
    /* CDE24 800DD624 0000628C */  lw         $v0, 0x0($v1)
    /* CDE28 800DD628 00000000 */  nop
    /* CDE2C 800DD62C 24108200 */  and        $v0, $a0, $v0
    /* CDE30 800DD630 000062AC */  sw         $v0, 0x0($v1)
    /* CDE34 800DD634 40101000 */  sll        $v0, $s0, 1
    /* CDE38 800DD638 21105000 */  addu       $v0, $v0, $s0
    /* CDE3C 800DD63C 80100200 */  sll        $v0, $v0, 2
    /* CDE40 800DD640 23105000 */  subu       $v0, $v0, $s0
    /* CDE44 800DD644 00110200 */  sll        $v0, $v0, 4
    /* CDE48 800DD648 23105000 */  subu       $v0, $v0, $s0
    /* CDE4C 800DD64C C0100200 */  sll        $v0, $v0, 3
    /* CDE50 800DD650 80181100 */  sll        $v1, $s1, 2
    /* CDE54 800DD654 21104500 */  addu       $v0, $v0, $a1
    /* CDE58 800DD658 21186200 */  addu       $v1, $v1, $v0
    /* CDE5C 800DD65C 0000628C */  lw         $v0, 0x0($v1)
    /* CDE60 800DD660 00000000 */  nop
    /* CDE64 800DD664 24208200 */  and        $a0, $a0, $v0
    /* CDE68 800DD668 000064AC */  sw         $a0, 0x0($v1)
    /* CDE6C 800DD66C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* CDE70 800DD670 1800B28F */  lw         $s2, 0x18($sp)
    /* CDE74 800DD674 1400B18F */  lw         $s1, 0x14($sp)
    /* CDE78 800DD678 1000B08F */  lw         $s0, 0x10($sp)
    /* CDE7C 800DD67C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CDE80 800DD680 0800E003 */  jr         $ra
    /* CDE84 800DD684 00000000 */   nop
endlabel func_800DD590
