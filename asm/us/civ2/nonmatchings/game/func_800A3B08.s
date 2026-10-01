.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3B08, 0x98

glabel func_800A3B08
    /* 94308 800A3B08 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9430C 800A3B0C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 94310 800A3B10 1800B2AF */  sw         $s2, 0x18($sp)
    /* 94314 800A3B14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 94318 800A3B18 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9431C 800A3B1C 21808000 */  addu       $s0, $a0, $zero
    /* 94320 800A3B20 8C001226 */  addiu      $s2, $s0, 0x8C
    /* 94324 800A3B24 B8001126 */  addiu      $s1, $s0, 0xB8
    /* 94328 800A3B28 EFEA030C */  jal        func_800FABBC
    /* 9432C 800A3B2C 21202002 */   addu      $a0, $s1, $zero
    /* 94330 800A3B30 BF12040C */  jal        func_80104AFC
    /* 94334 800A3B34 00000000 */   nop
    /* 94338 800A3B38 EFEA030C */  jal        func_800FABBC
    /* 9433C 800A3B3C 21200002 */   addu      $a0, $s0, $zero
    /* 94340 800A3B40 BF12040C */  jal        func_80104AFC
    /* 94344 800A3B44 00000000 */   nop
    /* 94348 800A3B48 7CEA030C */  jal        func_800FA9F0
    /* 9434C 800A3B4C 21200002 */   addu      $a0, $s0, $zero
    /* 94350 800A3B50 A5C4020C */  jal        func_800B1294
    /* 94354 800A3B54 21200000 */   addu      $a0, $zero, $zero
    /* 94358 800A3B58 7CEA030C */  jal        func_800FA9F0
    /* 9435C 800A3B5C 21202002 */   addu      $a0, $s1, $zero
    /* 94360 800A3B60 21204002 */  addu       $a0, $s2, $zero
    /* 94364 800A3B64 21280000 */  addu       $a1, $zero, $zero
    /* 94368 800A3B68 A9E0030C */  jal        func_800F82A4
    /* 9436C 800A3B6C 21300000 */   addu      $a2, $zero, $zero
    /* 94370 800A3B70 7CEA030C */  jal        func_800FA9F0
    /* 94374 800A3B74 21200002 */   addu      $a0, $s0, $zero
    /* 94378 800A3B78 21200000 */  addu       $a0, $zero, $zero
    /* 9437C 800A3B7C A8C4020C */  jal        func_800B12A0
    /* 94380 800A3B80 21280000 */   addu      $a1, $zero, $zero
    /* 94384 800A3B84 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 94388 800A3B88 1800B28F */  lw         $s2, 0x18($sp)
    /* 9438C 800A3B8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 94390 800A3B90 1000B08F */  lw         $s0, 0x10($sp)
    /* 94394 800A3B94 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 94398 800A3B98 0800E003 */  jr         $ra
    /* 9439C 800A3B9C 00000000 */   nop
endlabel func_800A3B08
