.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092A94, 0x88

glabel func_80092A94
    /* 83294 80092A94 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 83298 80092A98 2400BFAF */  sw         $ra, 0x24($sp)
    /* 8329C 80092A9C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 832A0 80092AA0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 832A4 80092AA4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 832A8 80092AA8 21908000 */  addu       $s2, $a0, $zero
    /* 832AC 80092AAC 6801428E */  lw         $v0, 0x168($s2)
    /* 832B0 80092AB0 00000000 */  nop
    /* 832B4 80092AB4 12004018 */  blez       $v0, .L80092B00
    /* 832B8 80092AB8 21800000 */   addu      $s0, $zero, $zero
    /* 832BC 80092ABC C0101000 */  sll        $v0, $s0, 3
  .L80092AC0:
    /* 832C0 80092AC0 23105000 */  subu       $v0, $v0, $s0
    /* 832C4 80092AC4 80100200 */  sll        $v0, $v0, 2
    /* 832C8 80092AC8 21884202 */  addu       $s1, $s2, $v0
    /* 832CC 80092ACC 8401248E */  lw         $a0, 0x184($s1)
    /* 832D0 80092AD0 00000000 */  nop
    /* 832D4 80092AD4 04008010 */  beqz       $a0, .L80092AE8
    /* 832D8 80092AD8 00000000 */   nop
    /* 832DC 80092ADC 99D9030C */  jal        func_800F6664
    /* 832E0 80092AE0 03000524 */   addiu     $a1, $zero, 0x3
    /* 832E4 80092AE4 840120AE */  sw         $zero, 0x184($s1)
  .L80092AE8:
    /* 832E8 80092AE8 01001026 */  addiu      $s0, $s0, 0x1
    /* 832EC 80092AEC 6801428E */  lw         $v0, 0x168($s2)
    /* 832F0 80092AF0 00000000 */  nop
    /* 832F4 80092AF4 2A100202 */  slt        $v0, $s0, $v0
    /* 832F8 80092AF8 F1FF4014 */  bnez       $v0, .L80092AC0
    /* 832FC 80092AFC C0101000 */   sll       $v0, $s0, 3
  .L80092B00:
    /* 83300 80092B00 2400BF8F */  lw         $ra, 0x24($sp)
    /* 83304 80092B04 2000B28F */  lw         $s2, 0x20($sp)
    /* 83308 80092B08 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8330C 80092B0C 1800B08F */  lw         $s0, 0x18($sp)
    /* 83310 80092B10 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 83314 80092B14 0800E003 */  jr         $ra
    /* 83318 80092B18 00000000 */   nop
endlabel func_80092A94
