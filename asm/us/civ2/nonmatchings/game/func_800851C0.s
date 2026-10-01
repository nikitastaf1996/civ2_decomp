.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800851C0, 0xCC

glabel func_800851C0
    /* 759C0 800851C0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 759C4 800851C4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 759C8 800851C8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 759CC 800851CC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 759D0 800851D0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 759D4 800851D4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 759D8 800851D8 21888000 */  addu       $s1, $a0, $zero
    /* 759DC 800851DC 2180A000 */  addu       $s0, $a1, $zero
    /* 759E0 800851E0 2190C000 */  addu       $s2, $a2, $zero
    /* 759E4 800851E4 2198E000 */  addu       $s3, $a3, $zero
    /* 759E8 800851E8 00000586 */  lh         $a1, 0x0($s0)
    /* 759EC 800851EC 04000686 */  lh         $a2, 0x4($s0)
    /* 759F0 800851F0 02000786 */  lh         $a3, 0x2($s0)
    /* 759F4 800851F4 1000B2AF */  sw         $s2, 0x10($sp)
    /* 759F8 800851F8 8413020C */  jal        func_80084E10
    /* 759FC 800851FC FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 75A00 80085200 00000586 */  lh         $a1, 0x0($s0)
    /* 75A04 80085204 04000686 */  lh         $a2, 0x4($s0)
    /* 75A08 80085208 06000786 */  lh         $a3, 0x6($s0)
    /* 75A0C 8008520C 1000B3AF */  sw         $s3, 0x10($sp)
    /* 75A10 80085210 21202002 */  addu       $a0, $s1, $zero
    /* 75A14 80085214 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 75A18 80085218 8413020C */  jal        func_80084E10
    /* 75A1C 8008521C FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 75A20 80085220 00000586 */  lh         $a1, 0x0($s0)
    /* 75A24 80085224 02000686 */  lh         $a2, 0x2($s0)
    /* 75A28 80085228 06000786 */  lh         $a3, 0x6($s0)
    /* 75A2C 8008522C 1000B2AF */  sw         $s2, 0x10($sp)
    /* 75A30 80085230 21202002 */  addu       $a0, $s1, $zero
    /* 75A34 80085234 A313020C */  jal        func_80084E8C
    /* 75A38 80085238 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 75A3C 8008523C 04000586 */  lh         $a1, 0x4($s0)
    /* 75A40 80085240 02000686 */  lh         $a2, 0x2($s0)
    /* 75A44 80085244 06000786 */  lh         $a3, 0x6($s0)
    /* 75A48 80085248 1000B3AF */  sw         $s3, 0x10($sp)
    /* 75A4C 8008524C 21202002 */  addu       $a0, $s1, $zero
    /* 75A50 80085250 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 75A54 80085254 A313020C */  jal        func_80084E8C
    /* 75A58 80085258 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 75A5C 8008525C 21200002 */  addu       $a0, $s0, $zero
    /* 75A60 80085260 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 75A64 80085264 82D4030C */  jal        func_800F5208
    /* 75A68 80085268 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 75A6C 8008526C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 75A70 80085270 2400B38F */  lw         $s3, 0x24($sp)
    /* 75A74 80085274 2000B28F */  lw         $s2, 0x20($sp)
    /* 75A78 80085278 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 75A7C 8008527C 1800B08F */  lw         $s0, 0x18($sp)
    /* 75A80 80085280 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 75A84 80085284 0800E003 */  jr         $ra
    /* 75A88 80085288 00000000 */   nop
endlabel func_800851C0
