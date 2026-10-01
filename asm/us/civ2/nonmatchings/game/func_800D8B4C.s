.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8B4C, 0x94

glabel func_800D8B4C
    /* C934C 800D8B4C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C9350 800D8B50 1800BFAF */  sw         $ra, 0x18($sp)
    /* C9354 800D8B54 1400B1AF */  sw         $s1, 0x14($sp)
    /* C9358 800D8B58 1280023C */  lui        $v0, %hi(D_80122C38)
    /* C935C 800D8B5C 382C4224 */  addiu      $v0, $v0, %lo(D_80122C38)
    /* C9360 800D8B60 0D004010 */  beqz       $v0, .L800D8B98
    /* C9364 800D8B64 1000B0AF */   sw        $s0, 0x10($sp)
    /* C9368 800D8B68 50025024 */  addiu      $s0, $v0, 0x250
    /* C936C 800D8B6C 0A000212 */  beq        $s0, $v0, .L800D8B98
    /* C9370 800D8B70 00000000 */   nop
    /* C9374 800D8B74 1280113C */  lui        $s1, %hi(D_80122C38)
    /* C9378 800D8B78 382C3126 */  addiu      $s1, $s1, %lo(D_80122C38)
    /* C937C 800D8B7C 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L800D8B80:
    /* C9380 800D8B80 21200002 */  addu       $a0, $s0, $zero
    /* C9384 800D8B84 12ED030C */  jal        func_800FB448
    /* C9388 800D8B88 02000524 */   addiu     $a1, $zero, 0x2
    /* C938C 800D8B8C FCFF1116 */  bne        $s0, $s1, .L800D8B80
    /* C9390 800D8B90 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* C9394 800D8B94 94001026 */  addiu      $s0, $s0, 0x94
  .L800D8B98:
    /* C9398 800D8B98 1280043C */  lui        $a0, %hi(D_80122C0C)
    /* C939C 800D8B9C 0C2C8424 */  addiu      $a0, $a0, %lo(D_80122C0C)
    /* C93A0 800D8BA0 4CE1030C */  jal        func_800F8530
    /* C93A4 800D8BA4 02000524 */   addiu     $a1, $zero, 0x2
    /* C93A8 800D8BA8 1280043C */  lui        $a0, %hi(D_80122BE0)
    /* C93AC 800D8BAC E02B8424 */  addiu      $a0, $a0, %lo(D_80122BE0)
    /* C93B0 800D8BB0 4CE1030C */  jal        func_800F8530
    /* C93B4 800D8BB4 02000524 */   addiu     $a1, $zero, 0x2
    /* C93B8 800D8BB8 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C93BC 800D8BBC F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C93C0 800D8BC0 6142030C */  jal        func_800D0984
    /* C93C4 800D8BC4 02000524 */   addiu     $a1, $zero, 0x2
    /* C93C8 800D8BC8 1800BF8F */  lw         $ra, 0x18($sp)
    /* C93CC 800D8BCC 1400B18F */  lw         $s1, 0x14($sp)
    /* C93D0 800D8BD0 1000B08F */  lw         $s0, 0x10($sp)
    /* C93D4 800D8BD4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C93D8 800D8BD8 0800E003 */  jr         $ra
    /* C93DC 800D8BDC 00000000 */   nop
endlabel func_800D8B4C
