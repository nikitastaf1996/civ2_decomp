.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B250, 0x9C

glabel func_8001B250
    /* BA50 8001B250 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BA54 8001B254 1000BFAF */  sw         $ra, 0x10($sp)
    /* BA58 8001B258 0580023C */  lui        $v0, %hi(D_8005651C)
    /* BA5C 8001B25C 1C65428C */  lw         $v0, %lo(D_8005651C)($v0)
    /* BA60 8001B260 00000000 */  nop
    /* BA64 8001B264 01004224 */  addiu      $v0, $v0, 0x1
    /* BA68 8001B268 0580013C */  lui        $at, %hi(D_8005651C)
    /* BA6C 8001B26C 1C6522AC */  sw         $v0, %lo(D_8005651C)($at)
    /* BA70 8001B270 496C000C */  jal        func_8001B124
    /* BA74 8001B274 21200000 */   addu      $a0, $zero, $zero
    /* BA78 8001B278 980B82AF */  sw         $v0, %gp_rel(D_800552A8)($gp)
    /* BA7C 8001B27C 496C000C */  jal        func_8001B124
    /* BA80 8001B280 01000424 */   addiu     $a0, $zero, 0x1
    /* BA84 8001B284 00140200 */  sll        $v0, $v0, 16
    /* BA88 8001B288 980B838F */  lw         $v1, %gp_rel(D_800552A8)($gp)
    /* BA8C 8001B28C 00000000 */  nop
    /* BA90 8001B290 25104300 */  or         $v0, $v0, $v1
    /* BA94 8001B294 980B82AF */  sw         $v0, %gp_rel(D_800552A8)($gp)
    /* BA98 8001B298 A00B848F */  lw         $a0, %gp_rel(D_800552B0)($gp)
    /* BA9C 8001B29C 00000000 */  nop
    /* BAA0 8001B2A0 24208200 */  and        $a0, $a0, $v0
    /* BAA4 8001B2A4 26208200 */  xor        $a0, $a0, $v0
    /* BAA8 8001B2A8 9C0B84AF */  sw         $a0, %gp_rel(D_800552AC)($gp)
    /* BAAC 8001B2AC A00B82AF */  sw         $v0, %gp_rel(D_800552B0)($gp)
    /* BAB0 8001B2B0 21184400 */  addu       $v1, $v0, $a0
    /* BAB4 8001B2B4 0580053C */  lui        $a1, %hi(D_8005652C)
    /* BAB8 8001B2B8 2C65A58C */  lw         $a1, %lo(D_8005652C)($a1)
    /* BABC 8001B2BC 00000000 */  nop
    /* BAC0 8001B2C0 21186500 */  addu       $v1, $v1, $a1
    /* BAC4 8001B2C4 0580013C */  lui        $at, %hi(D_8005652C)
    /* BAC8 8001B2C8 2C6523AC */  sw         $v1, %lo(D_8005652C)($at)
    /* BACC 8001B2CC 0580013C */  lui        $at, %hi(D_80056510)
    /* BAD0 8001B2D0 106522AC */  sw         $v0, %lo(D_80056510)($at)
    /* BAD4 8001B2D4 0580013C */  lui        $at, %hi(D_80056504)
    /* BAD8 8001B2D8 046524AC */  sw         $a0, %lo(D_80056504)($at)
    /* BADC 8001B2DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* BAE0 8001B2E0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* BAE4 8001B2E4 0800E003 */  jr         $ra
    /* BAE8 8001B2E8 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001B250
