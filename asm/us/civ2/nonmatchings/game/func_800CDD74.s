.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CDD74, 0x140

glabel func_800CDD74
    /* BE574 800CDD74 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* BE578 800CDD78 6800BFAF */  sw         $ra, 0x68($sp)
    /* BE57C 800CDD7C 6400B3AF */  sw         $s3, 0x64($sp)
    /* BE580 800CDD80 6000B2AF */  sw         $s2, 0x60($sp)
    /* BE584 800CDD84 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* BE588 800CDD88 5800B0AF */  sw         $s0, 0x58($sp)
    /* BE58C 800CDD8C 21988000 */  addu       $s3, $a0, $zero
    /* BE590 800CDD90 9AE0030C */  jal        func_800F8268
    /* BE594 800CDD94 2000A427 */   addiu     $a0, $sp, 0x20
    /* BE598 800CDD98 54E9030C */  jal        func_800FA550
    /* BE59C 800CDD9C 8B000424 */   addiu     $a0, $zero, 0x8B
    /* BE5A0 800CDDA0 2000A427 */  addiu      $a0, $sp, 0x20
    /* BE5A4 800CDDA4 F1010524 */  addiu      $a1, $zero, 0x1F1
    /* BE5A8 800CDDA8 0A000624 */  addiu      $a2, $zero, 0xA
    /* BE5AC 800CDDAC 44E3030C */  jal        func_800F8D10
    /* BE5B0 800CDDB0 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BE5B4 800CDDB4 34004010 */  beqz       $v0, .L800CDE88
    /* BE5B8 800CDDB8 1A001024 */   addiu     $s0, $zero, 0x1A
    /* BE5BC 800CDDBC 1000A0AF */  sw         $zero, 0x10($sp)
    /* BE5C0 800CDDC0 1400B0AF */  sw         $s0, 0x14($sp)
    /* BE5C4 800CDDC4 12001224 */  addiu      $s2, $zero, 0x12
    /* BE5C8 800CDDC8 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE5CC 800CDDCC 84056426 */  addiu      $a0, $s3, 0x584
    /* BE5D0 800CDDD0 2000A527 */  addiu      $a1, $sp, 0x20
    /* BE5D4 800CDDD4 09000624 */  addiu      $a2, $zero, 0x9
    /* BE5D8 800CDDD8 67ED030C */  jal        func_800FB59C
    /* BE5DC 800CDDDC 21380000 */   addu      $a3, $zero, $zero
    /* BE5E0 800CDDE0 1000A0AF */  sw         $zero, 0x10($sp)
    /* BE5E4 800CDDE4 1400B0AF */  sw         $s0, 0x14($sp)
    /* BE5E8 800CDDE8 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE5EC 800CDDEC AC066426 */  addiu      $a0, $s3, 0x6AC
    /* BE5F0 800CDDF0 2000A527 */  addiu      $a1, $sp, 0x20
    /* BE5F4 800CDDF4 09000624 */  addiu      $a2, $zero, 0x9
    /* BE5F8 800CDDF8 67ED030C */  jal        func_800FB59C
    /* BE5FC 800CDDFC 1A000724 */   addiu     $a3, $zero, 0x1A
    /* BE600 800CDE00 1000A0AF */  sw         $zero, 0x10($sp)
    /* BE604 800CDE04 1400B0AF */  sw         $s0, 0x14($sp)
    /* BE608 800CDE08 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE60C 800CDE0C 18066426 */  addiu      $a0, $s3, 0x618
    /* BE610 800CDE10 2000A527 */  addiu      $a1, $sp, 0x20
    /* BE614 800CDE14 09000624 */  addiu      $a2, $zero, 0x9
    /* BE618 800CDE18 67ED030C */  jal        func_800FB59C
    /* BE61C 800CDE1C 34000724 */   addiu     $a3, $zero, 0x34
    /* BE620 800CDE20 13001124 */  addiu      $s1, $zero, 0x13
    /* BE624 800CDE24 1000B1AF */  sw         $s1, 0x10($sp)
    /* BE628 800CDE28 22001024 */  addiu      $s0, $zero, 0x22
    /* BE62C 800CDE2C 1400B0AF */  sw         $s0, 0x14($sp)
    /* BE630 800CDE30 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE634 800CDE34 40076426 */  addiu      $a0, $s3, 0x740
    /* BE638 800CDE38 2000A527 */  addiu      $a1, $sp, 0x20
    /* BE63C 800CDE3C 09000624 */  addiu      $a2, $zero, 0x9
    /* BE640 800CDE40 67ED030C */  jal        func_800FB59C
    /* BE644 800CDE44 21380000 */   addu      $a3, $zero, $zero
    /* BE648 800CDE48 1000B1AF */  sw         $s1, 0x10($sp)
    /* BE64C 800CDE4C 1400B0AF */  sw         $s0, 0x14($sp)
    /* BE650 800CDE50 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE654 800CDE54 68086426 */  addiu      $a0, $s3, 0x868
    /* BE658 800CDE58 2000A527 */  addiu      $a1, $sp, 0x20
    /* BE65C 800CDE5C 09000624 */  addiu      $a2, $zero, 0x9
    /* BE660 800CDE60 67ED030C */  jal        func_800FB59C
    /* BE664 800CDE64 22000724 */   addiu     $a3, $zero, 0x22
    /* BE668 800CDE68 1000B1AF */  sw         $s1, 0x10($sp)
    /* BE66C 800CDE6C 1400B0AF */  sw         $s0, 0x14($sp)
    /* BE670 800CDE70 1800B2AF */  sw         $s2, 0x18($sp)
    /* BE674 800CDE74 D4076426 */  addiu      $a0, $s3, 0x7D4
    /* BE678 800CDE78 2000A527 */  addiu      $a1, $sp, 0x20
    /* BE67C 800CDE7C 09000624 */  addiu      $a2, $zero, 0x9
    /* BE680 800CDE80 67ED030C */  jal        func_800FB59C
    /* BE684 800CDE84 44000724 */   addiu     $a3, $zero, 0x44
  .L800CDE88:
    /* BE688 800CDE88 2000A427 */  addiu      $a0, $sp, 0x20
    /* BE68C 800CDE8C 4CE1030C */  jal        func_800F8530
    /* BE690 800CDE90 02000524 */   addiu     $a1, $zero, 0x2
    /* BE694 800CDE94 6800BF8F */  lw         $ra, 0x68($sp)
    /* BE698 800CDE98 6400B38F */  lw         $s3, 0x64($sp)
    /* BE69C 800CDE9C 6000B28F */  lw         $s2, 0x60($sp)
    /* BE6A0 800CDEA0 5C00B18F */  lw         $s1, 0x5C($sp)
    /* BE6A4 800CDEA4 5800B08F */  lw         $s0, 0x58($sp)
    /* BE6A8 800CDEA8 7000BD27 */  addiu      $sp, $sp, 0x70
    /* BE6AC 800CDEAC 0800E003 */  jr         $ra
    /* BE6B0 800CDEB0 00000000 */   nop
endlabel func_800CDD74
