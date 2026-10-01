.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800237A8, 0x7C

glabel func_800237A8
    /* 13FA8 800237A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 13FAC 800237AC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 13FB0 800237B0 2E7C000C */  jal        func_8001F0B8
    /* 13FB4 800237B4 01000424 */   addiu     $a0, $zero, 0x1
    /* 13FB8 800237B8 02000224 */  addiu      $v0, $zero, 0x2
    /* 13FBC 800237BC BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 13FC0 800237C0 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 13FC4 800237C4 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 13FC8 800237C8 02000224 */  addiu      $v0, $zero, 0x2
    /* 13FCC 800237CC 04006214 */  bne        $v1, $v0, .L800237E0
    /* 13FD0 800237D0 1A000424 */   addiu     $a0, $zero, 0x1A
    /* 13FD4 800237D4 02000524 */  addiu      $a1, $zero, 0x2
    /* 13FD8 800237D8 A07A000C */  jal        func_8001EA80
    /* 13FDC 800237DC 08000624 */   addiu     $a2, $zero, 0x8
  .L800237E0:
    /* 13FE0 800237E0 5C88000C */  jal        func_80022170
    /* 13FE4 800237E4 00000000 */   nop
    /* 13FE8 800237E8 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 13FEC 800237EC 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 13FF0 800237F0 02000224 */  addiu      $v0, $zero, 0x2
    /* 13FF4 800237F4 04006214 */  bne        $v1, $v0, .L80023808
    /* 13FF8 800237F8 1C000424 */   addiu     $a0, $zero, 0x1C
    /* 13FFC 800237FC 01000524 */  addiu      $a1, $zero, 0x1
    /* 14000 80023800 A07A000C */  jal        func_8001EA80
    /* 14004 80023804 08000624 */   addiu     $a2, $zero, 0x8
  .L80023808:
    /* 14008 80023808 3E8D000C */  jal        func_800234F8
    /* 1400C 8002380C 00000000 */   nop
    /* 14010 80023810 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 14014 80023814 1000BF8F */  lw         $ra, 0x10($sp)
    /* 14018 80023818 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1401C 8002381C 0800E003 */  jr         $ra
    /* 14020 80023820 00000000 */   nop
endlabel func_800237A8
