.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A1AA0, 0xD4

glabel func_800A1AA0
    /* 922A0 800A1AA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 922A4 800A1AA4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 922A8 800A1AA8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 922AC 800A1AAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 922B0 800A1AB0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 922B4 800A1AB4 01000224 */  addiu      $v0, $zero, 0x1
    /* 922B8 800A1AB8 1680013C */  lui        $at, %hi(D_801592E0)
    /* 922BC 800A1ABC E09222A4 */  sh         $v0, %lo(D_801592E0)($at)
    /* 922C0 800A1AC0 8C058487 */  lh         $a0, %gp_rel(D_80158A64)($gp)
    /* 922C4 800A1AC4 7DF3030C */  jal        func_800FCDF4
    /* 922C8 800A1AC8 21880000 */   addu      $s1, $zero, $zero
    /* 922CC 800A1ACC 90058487 */  lh         $a0, %gp_rel(D_80158A68)($gp)
    /* 922D0 800A1AD0 7DF3030C */  jal        func_800FCDF4
    /* 922D4 800A1AD4 00000000 */   nop
    /* 922D8 800A1AD8 1680013C */  lui        $at, %hi(D_801592E0)
    /* 922DC 800A1ADC E09220A4 */  sh         $zero, %lo(D_801592E0)($at)
    /* 922E0 800A1AE0 1280123C */  lui        $s2, %hi(D_8011E72C)
    /* 922E4 800A1AE4 2CE75226 */  addiu      $s2, $s2, %lo(D_8011E72C)
  .L800A1AE8:
    /* 922E8 800A1AE8 1B00201E */  bgtz       $s1, .L800A1B58
    /* 922EC 800A1AEC 00000000 */   nop
    /* 922F0 800A1AF0 0B002012 */  beqz       $s1, .L800A1B20
    /* 922F4 800A1AF4 40101100 */   sll       $v0, $s1, 1
    /* 922F8 800A1AF8 21105100 */  addu       $v0, $v0, $s1
    /* 922FC 800A1AFC 80100200 */  sll        $v0, $v0, 2
    /* 92300 800A1B00 23105100 */  subu       $v0, $v0, $s1
    /* 92304 800A1B04 80110200 */  sll        $v0, $v0, 6
    /* 92308 800A1B08 1280013C */  lui        $at, %hi(D_8011E956)
    /* 9230C 800A1B0C 21082200 */  addu       $at, $at, $v0
    /* 92310 800A1B10 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 92314 800A1B14 00000000 */  nop
    /* 92318 800A1B18 0D004010 */  beqz       $v0, .L800A1B50
    /* 9231C 800A1B1C 00000000 */   nop
  .L800A1B20:
    /* 92320 800A1B20 40801100 */  sll        $s0, $s1, 1
    /* 92324 800A1B24 21801102 */  addu       $s0, $s0, $s1
    /* 92328 800A1B28 80801000 */  sll        $s0, $s0, 2
    /* 9232C 800A1B2C 23801102 */  subu       $s0, $s0, $s1
    /* 92330 800A1B30 80811000 */  sll        $s0, $s0, 6
    /* 92334 800A1B34 21801202 */  addu       $s0, $s0, $s2
    /* 92338 800A1B38 7CEA030C */  jal        func_800FA9F0
    /* 9233C 800A1B3C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 92340 800A1B40 21200002 */  addu       $a0, $s0, $zero
    /* 92344 800A1B44 21280000 */  addu       $a1, $zero, $zero
    /* 92348 800A1B48 A9E0030C */  jal        func_800F82A4
    /* 9234C 800A1B4C 21300000 */   addu      $a2, $zero, $zero
  .L800A1B50:
    /* 92350 800A1B50 BA860208 */  j          .L800A1AE8
    /* 92354 800A1B54 01003126 */   addiu     $s1, $s1, 0x1
  .L800A1B58:
    /* 92358 800A1B58 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9235C 800A1B5C 1800B28F */  lw         $s2, 0x18($sp)
    /* 92360 800A1B60 1400B18F */  lw         $s1, 0x14($sp)
    /* 92364 800A1B64 1000B08F */  lw         $s0, 0x10($sp)
    /* 92368 800A1B68 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9236C 800A1B6C 0800E003 */  jr         $ra
    /* 92370 800A1B70 00000000 */   nop
endlabel func_800A1AA0
