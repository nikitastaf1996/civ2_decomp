.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002AE74, 0x44

glabel func_8002AE74
    /* 1B674 8002AE74 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B678 8002AE78 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1B67C 8002AE7C 2E7C000C */  jal        func_8001F0B8
    /* 1B680 8002AE80 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B684 8002AE84 08000224 */  addiu      $v0, $zero, 0x8
    /* 1B688 8002AE88 BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 1B68C 8002AE8C 27040424 */  addiu      $a0, $zero, 0x427
    /* 1B690 8002AE90 02000524 */  addiu      $a1, $zero, 0x2
    /* 1B694 8002AE94 A07A000C */  jal        func_8001EA80
    /* 1B698 8002AE98 08000624 */   addiu     $a2, $zero, 0x8
    /* 1B69C 8002AE9C 5DAB000C */  jal        func_8002AD74
    /* 1B6A0 8002AEA0 00000000 */   nop
    /* 1B6A4 8002AEA4 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 1B6A8 8002AEA8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1B6AC 8002AEAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B6B0 8002AEB0 0800E003 */  jr         $ra
    /* 1B6B4 8002AEB4 00000000 */   nop
endlabel func_8002AE74
