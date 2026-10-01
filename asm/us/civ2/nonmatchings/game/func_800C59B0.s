.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C59B0, 0x3C

glabel func_800C59B0
    /* B61B0 800C59B0 21200000 */  addu       $a0, $zero, $zero
    /* B61B4 800C59B4 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* B61B8 800C59B8 21180000 */  addu       $v1, $zero, $zero
  .L800C59BC:
    /* B61BC 800C59BC 1280013C */  lui        $at, %hi(D_801211D8)
    /* B61C0 800C59C0 21082300 */  addu       $at, $at, $v1
    /* B61C4 800C59C4 D81125A4 */  sh         $a1, %lo(D_801211D8)($at)
    /* B61C8 800C59C8 1280013C */  lui        $at, %hi(D_801211EA)
    /* B61CC 800C59CC 21082300 */  addu       $at, $at, $v1
    /* B61D0 800C59D0 EA1125A4 */  sh         $a1, %lo(D_801211EA)($at)
    /* B61D4 800C59D4 01008424 */  addiu      $a0, $a0, 0x1
    /* B61D8 800C59D8 04008228 */  slti       $v0, $a0, 0x4
    /* B61DC 800C59DC F7FF4014 */  bnez       $v0, .L800C59BC
    /* B61E0 800C59E0 48006324 */   addiu     $v1, $v1, 0x48
    /* B61E4 800C59E4 0800E003 */  jr         $ra
    /* B61E8 800C59E8 00000000 */   nop
endlabel func_800C59B0
