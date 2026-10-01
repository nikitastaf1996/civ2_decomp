.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EF70, 0x70

glabel func_8007EF70
    /* 6F770 8007EF70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6F774 8007EF74 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6F778 8007EF78 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6F77C 8007EF7C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6F780 8007EF80 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6F784 8007EF84 21800000 */  addu       $s0, $zero, $zero
    /* 6F788 8007EF88 1180123C */  lui        $s2, %hi(D_8010C094)
    /* 6F78C 8007EF8C 94C05226 */  addiu      $s2, $s2, %lo(D_8010C094)
    /* 6F790 8007EF90 80101000 */  sll        $v0, $s0, 2
  .L8007EF94:
    /* 6F794 8007EF94 21885200 */  addu       $s1, $v0, $s2
    /* 6F798 8007EF98 0000248E */  lw         $a0, 0x0($s1)
    /* 6F79C 8007EF9C 00000000 */  nop
    /* 6F7A0 8007EFA0 04008010 */  beqz       $a0, .L8007EFB4
    /* 6F7A4 8007EFA4 00000000 */   nop
    /* 6F7A8 8007EFA8 E511040C */  jal        func_80104794
    /* 6F7AC 8007EFAC 00000000 */   nop
    /* 6F7B0 8007EFB0 000020AE */  sw         $zero, 0x0($s1)
  .L8007EFB4:
    /* 6F7B4 8007EFB4 01001026 */  addiu      $s0, $s0, 0x1
    /* 6F7B8 8007EFB8 0800022A */  slti       $v0, $s0, 0x8
    /* 6F7BC 8007EFBC F5FF4014 */  bnez       $v0, .L8007EF94
    /* 6F7C0 8007EFC0 80101000 */   sll       $v0, $s0, 2
    /* 6F7C4 8007EFC4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6F7C8 8007EFC8 1800B28F */  lw         $s2, 0x18($sp)
    /* 6F7CC 8007EFCC 1400B18F */  lw         $s1, 0x14($sp)
    /* 6F7D0 8007EFD0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6F7D4 8007EFD4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6F7D8 8007EFD8 0800E003 */  jr         $ra
    /* 6F7DC 8007EFDC 00000000 */   nop
endlabel func_8007EF70
