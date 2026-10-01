.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C9A0, 0x5C

glabel func_8004C9A0
    /* 3D1A0 8004C9A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D1A4 8004C9A4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3D1A8 8004C9A8 5C0180AF */  sw         $zero, %gp_rel(D_80158634)($gp)
    /* 3D1AC 8004C9AC 600180AF */  sw         $zero, %gp_rel(D_80158638)($gp)
    /* 3D1B0 8004C9B0 640180AF */  sw         $zero, %gp_rel(D_8015863C)($gp)
    /* 3D1B4 8004C9B4 540180AF */  sw         $zero, %gp_rel(D_8015862C)($gp)
    /* 3D1B8 8004C9B8 948D020C */  jal        func_800A3650
    /* 3D1BC 8004C9BC 00000000 */   nop
    /* 3D1C0 8004C9C0 1280023C */  lui        $v0, %hi(D_8011E748)
    /* 3D1C4 8004C9C4 48E7428C */  lw         $v0, %lo(D_8011E748)($v0)
    /* 3D1C8 8004C9C8 00000000 */  nop
    /* 3D1CC 8004C9CC 07004014 */  bnez       $v0, .L8004C9EC
    /* 3D1D0 8004C9D0 40010424 */   addiu     $a0, $zero, 0x140
    /* 3D1D4 8004C9D4 0E1F040C */  jal        func_80107C38
    /* 3D1D8 8004C9D8 F0000524 */   addiu     $a1, $zero, 0xF0
    /* 3D1DC 8004C9DC 1280013C */  lui        $at, %hi(D_8011E748)
    /* 3D1E0 8004C9E0 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* 3D1E4 8004C9E4 5674020C */  jal        func_8009D158
    /* 3D1E8 8004C9E8 00000000 */   nop
  .L8004C9EC:
    /* 3D1EC 8004C9EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3D1F0 8004C9F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3D1F4 8004C9F4 0800E003 */  jr         $ra
    /* 3D1F8 8004C9F8 00000000 */   nop
endlabel func_8004C9A0
