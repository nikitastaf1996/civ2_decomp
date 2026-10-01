.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008F9D4, 0xDC

glabel func_8008F9D4
    /* 801D4 8008F9D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 801D8 8008F9D8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 801DC 8008F9DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 801E0 8008F9E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 801E4 8008F9E4 21888000 */  addu       $s1, $a0, $zero
    /* 801E8 8008F9E8 1280043C */  lui        $a0, %hi(D_8011E748)
    /* 801EC 8008F9EC 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* 801F0 8008F9F0 331F040C */  jal        func_80107CCC
    /* 801F4 8008F9F4 00000000 */   nop
    /* 801F8 8008F9F8 1280013C */  lui        $at, %hi(D_8011E748)
    /* 801FC 8008F9FC 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* 80200 8008FA00 A569030C */  jal        func_800DA694
    /* 80204 8008FA04 00000000 */   nop
    /* 80208 8008FA08 AE5E020C */  jal        func_80097AB8
    /* 8020C 8008FA0C 00000000 */   nop
    /* 80210 8008FA10 80000224 */  addiu      $v0, $zero, 0x80
    /* 80214 8008FA14 1680013C */  lui        $at, %hi(D_801592E4)
    /* 80218 8008FA18 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 8021C 8008FA1C 3E82030C */  jal        __builtin_new
    /* 80220 8008FA20 80300424 */   addiu     $a0, $zero, 0x3080
    /* 80224 8008FA24 B73E020C */  jal        func_8008FADC
    /* 80228 8008FA28 21204000 */   addu      $a0, $v0, $zero
    /* 8022C 8008FA2C 21804000 */  addu       $s0, $v0, $zero
    /* 80230 8008FA30 0B000012 */  beqz       $s0, .L8008FA60
    /* 80234 8008FA34 21200002 */   addu      $a0, $s0, $zero
    /* 80238 8008FA38 E13F020C */  jal        func_8008FF84
    /* 8023C 8008FA3C 21282002 */   addu      $a1, $s1, $zero
    /* 80240 8008FA40 03004010 */  beqz       $v0, .L8008FA50
    /* 80244 8008FA44 00000000 */   nop
    /* 80248 8008FA48 9B40020C */  jal        func_8009026C
    /* 8024C 8008FA4C 21200002 */   addu      $a0, $s0, $zero
  .L8008FA50:
    /* 80250 8008FA50 03000012 */  beqz       $s0, .L8008FA60
    /* 80254 8008FA54 21200002 */   addu      $a0, $s0, $zero
    /* 80258 8008FA58 703F020C */  jal        func_8008FDC0
    /* 8025C 8008FA5C 03000524 */   addiu     $a1, $zero, 0x3
  .L8008FA60:
    /* 80260 8008FA60 CE68030C */  jal        func_800DA338
    /* 80264 8008FA64 00000000 */   nop
    /* 80268 8008FA68 895E020C */  jal        func_80097A24
    /* 8026C 8008FA6C 00000000 */   nop
    /* 80270 8008FA70 40010424 */  addiu      $a0, $zero, 0x140
    /* 80274 8008FA74 0E1F040C */  jal        func_80107C38
    /* 80278 8008FA78 F0000524 */   addiu     $a1, $zero, 0xF0
    /* 8027C 8008FA7C 1280013C */  lui        $at, %hi(D_8011E748)
    /* 80280 8008FA80 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* 80284 8008FA84 80000224 */  addiu      $v0, $zero, 0x80
    /* 80288 8008FA88 1680013C */  lui        $at, %hi(D_801592E4)
    /* 8028C 8008FA8C E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 80290 8008FA90 5674020C */  jal        func_8009D158
    /* 80294 8008FA94 00000000 */   nop
    /* 80298 8008FA98 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8029C 8008FA9C 1400B18F */  lw         $s1, 0x14($sp)
    /* 802A0 8008FAA0 1000B08F */  lw         $s0, 0x10($sp)
    /* 802A4 8008FAA4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 802A8 8008FAA8 0800E003 */  jr         $ra
    /* 802AC 8008FAAC 00000000 */   nop
endlabel func_8008F9D4
