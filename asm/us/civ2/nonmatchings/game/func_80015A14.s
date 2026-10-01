.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80015A14, 0xA4

glabel func_80015A14
    /* 6214 80015A14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6218 80015A18 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 621C 80015A1C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6220 80015A20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6224 80015A24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6228 80015A28 21908000 */  addu       $s2, $a0, $zero
    /* 622C 80015A2C 2180A000 */  addu       $s0, $a1, $zero
    /* 6230 80015A30 2400828F */  lw         $v0, %gp_rel(D_801584FC)($gp)
    /* 6234 80015A34 00000000 */  nop
    /* 6238 80015A38 18004010 */  beqz       $v0, .L80015A9C
    /* 623C 80015A3C 2188C000 */   addu      $s1, $a2, $zero
    /* 6240 80015A40 2800828F */  lw         $v0, %gp_rel(D_80158500)($gp)
    /* 6244 80015A44 00000000 */  nop
    /* 6248 80015A48 14004010 */  beqz       $v0, .L80015A9C
    /* 624C 80015A4C 00000000 */   nop
    /* 6250 80015A50 3C00828F */  lw         $v0, %gp_rel(D_80158514)($gp)
    /* 6254 80015A54 00000000 */  nop
    /* 6258 80015A58 10004014 */  bnez       $v0, .L80015A9C
    /* 625C 80015A5C 21200002 */   addu      $a0, $s0, $zero
    /* 6260 80015A60 BD60020C */  jal        func_800982F4
    /* 6264 80015A64 21282002 */   addu      $a1, $s1, $zero
    /* 6268 80015A68 00004290 */  lbu        $v0, 0x0($v0)
    /* 626C 80015A6C 00000000 */  nop
    /* 6270 80015A70 80004230 */  andi       $v0, $v0, 0x80
    /* 6274 80015A74 05004010 */  beqz       $v0, .L80015A8C
    /* 6278 80015A78 21204002 */   addu      $a0, $s2, $zero
    /* 627C 80015A7C 8ACA010C */  jal        func_80072A28
    /* 6280 80015A80 07000524 */   addiu     $a1, $zero, 0x7
    /* 6284 80015A84 05004010 */  beqz       $v0, .L80015A9C
    /* 6288 80015A88 00000000 */   nop
  .L80015A8C:
    /* 628C 80015A8C 01000224 */  addiu      $v0, $zero, 0x1
    /* 6290 80015A90 3C0082AF */  sw         $v0, %gp_rel(D_80158514)($gp)
    /* 6294 80015A94 E40090AF */  sw         $s0, %gp_rel(D_801585BC)($gp)
    /* 6298 80015A98 E80091AF */  sw         $s1, %gp_rel(D_801585C0)($gp)
  .L80015A9C:
    /* 629C 80015A9C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 62A0 80015AA0 1800B28F */  lw         $s2, 0x18($sp)
    /* 62A4 80015AA4 1400B18F */  lw         $s1, 0x14($sp)
    /* 62A8 80015AA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 62AC 80015AAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 62B0 80015AB0 0800E003 */  jr         $ra
    /* 62B4 80015AB4 00000000 */   nop
endlabel func_80015A14
