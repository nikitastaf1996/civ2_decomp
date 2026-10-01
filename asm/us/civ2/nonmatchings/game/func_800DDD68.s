.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DDD68, 0x284

glabel func_800DDD68
    /* CE568 800DDD68 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* CE56C 800DDD6C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* CE570 800DDD70 2800B4AF */  sw         $s4, 0x28($sp)
    /* CE574 800DDD74 2400B3AF */  sw         $s3, 0x24($sp)
    /* CE578 800DDD78 2000B2AF */  sw         $s2, 0x20($sp)
    /* CE57C 800DDD7C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CE580 800DDD80 1800B0AF */  sw         $s0, 0x18($sp)
    /* CE584 800DDD84 21888000 */  addu       $s1, $a0, $zero
    /* CE588 800DDD88 2190A000 */  addu       $s2, $a1, $zero
    /* CE58C 800DDD8C 6475030C */  jal        func_800DD590
    /* CE590 800DDD90 08000624 */   addiu     $a2, $zero, 0x8
    /* CE594 800DDD94 21202002 */  addu       $a0, $s1, $zero
    /* CE598 800DDD98 8176030C */  jal        func_800DDA04
    /* CE59C 800DDD9C 21284002 */   addu      $a1, $s2, $zero
    /* CE5A0 800DDDA0 21204002 */  addu       $a0, $s2, $zero
    /* CE5A4 800DDDA4 8176030C */  jal        func_800DDA04
    /* CE5A8 800DDDA8 21282002 */   addu      $a1, $s1, $zero
    /* CE5AC 800DDDAC 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* CE5B0 800DDDB0 B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* CE5B4 800DDDB4 0000048E */  lw         $a0, 0x0($s0)
    /* CE5B8 800DDDB8 986F020C */  jal        func_8009BE60
    /* CE5BC 800DDDBC 01000524 */   addiu     $a1, $zero, 0x1
    /* CE5C0 800DDDC0 0000108E */  lw         $s0, 0x0($s0)
    /* CE5C4 800DDDC4 00000000 */  nop
    /* CE5C8 800DDDC8 05003012 */  beq        $s1, $s0, .L800DDDE0
    /* CE5CC 800DDDCC 00000000 */   nop
    /* CE5D0 800DDDD0 25005016 */  bne        $s2, $s0, .L800DDE68
    /* CE5D4 800DDDD4 80181100 */   sll       $v1, $s1, 2
    /* CE5D8 800DDDD8 09003216 */  bne        $s1, $s2, .L800DDE00
    /* CE5DC 800DDDDC 00000000 */   nop
  .L800DDDE0:
    /* CE5E0 800DDDE0 5D54020C */  jal        func_80095174
    /* CE5E4 800DDDE4 21204002 */   addu      $a0, $s2, $zero
    /* CE5E8 800DDDE8 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* CE5EC 800DDDEC 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* CE5F0 800DDDF0 A587030C */  jal        func_800E1E94
    /* CE5F4 800DDDF4 21284000 */   addu      $a1, $v0, $zero
    /* CE5F8 800DDDF8 87770308 */  j          .L800DDE1C
    /* CE5FC 800DDDFC 21204002 */   addu      $a0, $s2, $zero
  .L800DDE00:
    /* CE600 800DDE00 5D54020C */  jal        func_80095174
    /* CE604 800DDE04 21202002 */   addu      $a0, $s1, $zero
    /* CE608 800DDE08 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* CE60C 800DDE0C 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* CE610 800DDE10 A587030C */  jal        func_800E1E94
    /* CE614 800DDE14 21284000 */   addu      $a1, $v0, $zero
    /* CE618 800DDE18 21202002 */  addu       $a0, $s1, $zero
  .L800DDE1C:
    /* CE61C 800DDE1C 8A54020C */  jal        func_80095228
    /* CE620 800DDE20 00000000 */   nop
    /* CE624 800DDE24 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* CE628 800DDE28 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* CE62C 800DDE2C A587030C */  jal        func_800E1E94
    /* CE630 800DDE30 21284000 */   addu      $a1, $v0, $zero
    /* CE634 800DDE34 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* CE638 800DDE38 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* CE63C 800DDE3C 1380073C */  lui        $a3, %hi(D_80135A70)
    /* CE640 800DDE40 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* CE644 800DDE44 03004010 */  beqz       $v0, .L800DDE54
    /* CE648 800DDE48 00000000 */   nop
    /* CE64C 800DDE4C 1380073C */  lui        $a3, %hi(D_80135B04)
    /* CE650 800DDE50 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L800DDE54:
    /* CE654 800DDE54 1000A0AF */  sw         $zero, 0x10($sp)
    /* CE658 800DDE58 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* CE65C 800DDE5C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* CE660 800DDE60 F0770308 */  j          .L800DDFC0
    /* CE664 800DDE64 7A5A0524 */   addiu     $a1, $zero, 0x5A7A
  .L800DDE68:
    /* CE668 800DDE68 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* CE66C 800DDE6C B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* CE670 800DDE70 0000048E */  lw         $a0, 0x0($s0)
    /* CE674 800DDE74 00000000 */  nop
    /* CE678 800DDE78 40100400 */  sll        $v0, $a0, 1
    /* CE67C 800DDE7C 21104400 */  addu       $v0, $v0, $a0
    /* CE680 800DDE80 80100200 */  sll        $v0, $v0, 2
    /* CE684 800DDE84 23104400 */  subu       $v0, $v0, $a0
    /* CE688 800DDE88 00110200 */  sll        $v0, $v0, 4
    /* CE68C 800DDE8C 23104400 */  subu       $v0, $v0, $a0
    /* CE690 800DDE90 C0100200 */  sll        $v0, $v0, 3
    /* CE694 800DDE94 1180143C */  lui        $s4, %hi(D_801176B4)
    /* CE698 800DDE98 B4769426 */  addiu      $s4, $s4, %lo(D_801176B4)
    /* CE69C 800DDE9C 21105400 */  addu       $v0, $v0, $s4
    /* CE6A0 800DDEA0 21186200 */  addu       $v1, $v1, $v0
    /* CE6A4 800DDEA4 0000628C */  lw         $v0, 0x0($v1)
    /* CE6A8 800DDEA8 00000000 */  nop
    /* CE6AC 800DDEAC 80004230 */  andi       $v0, $v0, 0x80
    /* CE6B0 800DDEB0 23004014 */  bnez       $v0, .L800DDF40
    /* CE6B4 800DDEB4 21980000 */   addu      $s3, $zero, $zero
    /* CE6B8 800DDEB8 C17B030C */  jal        func_800DEF04
    /* CE6BC 800DDEBC 18000524 */   addiu     $a1, $zero, 0x18
    /* CE6C0 800DDEC0 1F004014 */  bnez       $v0, .L800DDF40
    /* CE6C4 800DDEC4 00000000 */   nop
    /* CE6C8 800DDEC8 0000048E */  lw         $a0, 0x0($s0)
    /* CE6CC 800DDECC C17B030C */  jal        func_800DEF04
    /* CE6D0 800DDED0 09000524 */   addiu     $a1, $zero, 0x9
    /* CE6D4 800DDED4 1A004014 */  bnez       $v0, .L800DDF40
    /* CE6D8 800DDED8 80181200 */   sll       $v1, $s2, 2
    /* CE6DC 800DDEDC 0000048E */  lw         $a0, 0x0($s0)
    /* CE6E0 800DDEE0 00000000 */  nop
    /* CE6E4 800DDEE4 40100400 */  sll        $v0, $a0, 1
    /* CE6E8 800DDEE8 21104400 */  addu       $v0, $v0, $a0
    /* CE6EC 800DDEEC 80100200 */  sll        $v0, $v0, 2
    /* CE6F0 800DDEF0 23104400 */  subu       $v0, $v0, $a0
    /* CE6F4 800DDEF4 00110200 */  sll        $v0, $v0, 4
    /* CE6F8 800DDEF8 23104400 */  subu       $v0, $v0, $a0
    /* CE6FC 800DDEFC C0100200 */  sll        $v0, $v0, 3
    /* CE700 800DDF00 21105400 */  addu       $v0, $v0, $s4
    /* CE704 800DDF04 21186200 */  addu       $v1, $v1, $v0
    /* CE708 800DDF08 0000628C */  lw         $v0, 0x0($v1)
    /* CE70C 800DDF0C 00000000 */  nop
    /* CE710 800DDF10 80004230 */  andi       $v0, $v0, 0x80
    /* CE714 800DDF14 0A004014 */  bnez       $v0, .L800DDF40
    /* CE718 800DDF18 00000000 */   nop
    /* CE71C 800DDF1C C17B030C */  jal        func_800DEF04
    /* CE720 800DDF20 18000524 */   addiu     $a1, $zero, 0x18
    /* CE724 800DDF24 06004014 */  bnez       $v0, .L800DDF40
    /* CE728 800DDF28 00000000 */   nop
    /* CE72C 800DDF2C 0000048E */  lw         $a0, 0x0($s0)
    /* CE730 800DDF30 C17B030C */  jal        func_800DEF04
    /* CE734 800DDF34 09000524 */   addiu     $a1, $zero, 0x9
    /* CE738 800DDF38 02004010 */  beqz       $v0, .L800DDF44
    /* CE73C 800DDF3C 00000000 */   nop
  .L800DDF40:
    /* CE740 800DDF40 01001324 */  addiu      $s3, $zero, 0x1
  .L800DDF44:
    /* CE744 800DDF44 06006016 */  bnez       $s3, .L800DDF60
    /* CE748 800DDF48 00000000 */   nop
    /* CE74C 800DDF4C 1280023C */  lui        $v0, %hi(D_8011A271)
    /* CE750 800DDF50 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* CE754 800DDF54 00000000 */  nop
    /* CE758 800DDF58 1B004010 */  beqz       $v0, .L800DDFC8
    /* CE75C 800DDF5C 00000000 */   nop
  .L800DDF60:
    /* CE760 800DDF60 5D54020C */  jal        func_80095174
    /* CE764 800DDF64 21202002 */   addu      $a0, $s1, $zero
    /* CE768 800DDF68 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* CE76C 800DDF6C 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* CE770 800DDF70 A587030C */  jal        func_800E1E94
    /* CE774 800DDF74 21284000 */   addu      $a1, $v0, $zero
    /* CE778 800DDF78 5D54020C */  jal        func_80095174
    /* CE77C 800DDF7C 21204002 */   addu      $a0, $s2, $zero
    /* CE780 800DDF80 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* CE784 800DDF84 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* CE788 800DDF88 A587030C */  jal        func_800E1E94
    /* CE78C 800DDF8C 21284000 */   addu      $a1, $v0, $zero
    /* CE790 800DDF90 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* CE794 800DDF94 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* CE798 800DDF98 1380073C */  lui        $a3, %hi(D_80135A70)
    /* CE79C 800DDF9C 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* CE7A0 800DDFA0 03004010 */  beqz       $v0, .L800DDFB0
    /* CE7A4 800DDFA4 00000000 */   nop
    /* CE7A8 800DDFA8 1380073C */  lui        $a3, %hi(D_80135B04)
    /* CE7AC 800DDFAC 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L800DDFB0:
    /* CE7B0 800DDFB0 1000A0AF */  sw         $zero, 0x10($sp)
    /* CE7B4 800DDFB4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* CE7B8 800DDFB8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* CE7BC 800DDFBC 7B5B0524 */  addiu      $a1, $zero, 0x5B7B
  .L800DDFC0:
    /* CE7C0 800DDFC0 18E3020C */  jal        func_800B8C60
    /* CE7C4 800DDFC4 21300000 */   addu      $a2, $zero, $zero
  .L800DDFC8:
    /* CE7C8 800DDFC8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* CE7CC 800DDFCC 2800B48F */  lw         $s4, 0x28($sp)
    /* CE7D0 800DDFD0 2400B38F */  lw         $s3, 0x24($sp)
    /* CE7D4 800DDFD4 2000B28F */  lw         $s2, 0x20($sp)
    /* CE7D8 800DDFD8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CE7DC 800DDFDC 1800B08F */  lw         $s0, 0x18($sp)
    /* CE7E0 800DDFE0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* CE7E4 800DDFE4 0800E003 */  jr         $ra
    /* CE7E8 800DDFE8 00000000 */   nop
endlabel func_800DDD68
