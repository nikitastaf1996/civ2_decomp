.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014200, 0xA4

glabel func_80014200
    /* 4A00 80014200 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4A04 80014204 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4A08 80014208 21888000 */  addu       $s1, $a0, $zero
    /* 4A0C 8001420C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4A10 80014210 2190A000 */  addu       $s2, $a1, $zero
    /* 4A14 80014214 4101222E */  sltiu      $v0, $s1, 0x141
    /* 4A18 80014218 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4A1C 8001421C 1A004010 */  beqz       $v0, .L80014288
    /* 4A20 80014220 1800B0AF */   sw        $s0, 0x18($sp)
    /* 4A24 80014224 F100422E */  sltiu      $v0, $s2, 0xF1
    /* 4A28 80014228 17004010 */  beqz       $v0, .L80014288
    /* 4A2C 8001422C 21200000 */   addu      $a0, $zero, $zero
    /* 4A30 80014230 01001024 */  addiu      $s0, $zero, 0x1
    /* 4A34 80014234 400F86A7 */  sh         $a2, %gp_rel(D_80159418)($gp)
    /* 4A38 80014238 1000B1A7 */  sh         $s1, 0x10($sp)
    /* 4A3C 8001423C 1200B2A7 */  sh         $s2, 0x12($sp)
    /* 4A40 80014240 1400B0A7 */  sh         $s0, 0x14($sp)
    /* 4A44 80014244 2C8D030C */  jal        DrawSync
    /* 4A48 80014248 1600B0A7 */   sh        $s0, 0x16($sp)
    /* 4A4C 8001424C 1680053C */  lui        $a1, %hi(D_80159418)
    /* 4A50 80014250 1894A524 */  addiu      $a1, $a1, %lo(D_80159418)
    /* 4A54 80014254 D78D030C */  jal        LoadImage
    /* 4A58 80014258 1000A427 */   addiu     $a0, $sp, 0x10
    /* 4A5C 8001425C 21200000 */  addu       $a0, $zero, $zero
    /* 4A60 80014260 F0004226 */  addiu      $v0, $s2, 0xF0
    /* 4A64 80014264 1000B1A7 */  sh         $s1, 0x10($sp)
    /* 4A68 80014268 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 4A6C 8001426C 1400B0A7 */  sh         $s0, 0x14($sp)
    /* 4A70 80014270 2C8D030C */  jal        DrawSync
    /* 4A74 80014274 1600B0A7 */   sh        $s0, 0x16($sp)
    /* 4A78 80014278 1680053C */  lui        $a1, %hi(D_80159418)
    /* 4A7C 8001427C 1894A524 */  addiu      $a1, $a1, %lo(D_80159418)
    /* 4A80 80014280 D78D030C */  jal        LoadImage
    /* 4A84 80014284 1000A427 */   addiu     $a0, $sp, 0x10
  .L80014288:
    /* 4A88 80014288 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4A8C 8001428C 2000B28F */  lw         $s2, 0x20($sp)
    /* 4A90 80014290 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4A94 80014294 1800B08F */  lw         $s0, 0x18($sp)
    /* 4A98 80014298 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4A9C 8001429C 0800E003 */  jr         $ra
    /* 4AA0 800142A0 00000000 */   nop
endlabel func_80014200
