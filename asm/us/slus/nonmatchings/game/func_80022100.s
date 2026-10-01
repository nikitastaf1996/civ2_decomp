.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80022100, 0x70

glabel func_80022100
    /* 12900 80022100 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 12904 80022104 1000BFAF */  sw         $ra, 0x10($sp)
    /* 12908 80022108 2E7C000C */  jal        func_8001F0B8
    /* 1290C 8002210C 21200000 */   addu      $a0, $zero, $zero
    /* 12910 80022110 01000224 */  addiu      $v0, $zero, 0x1
    /* 12914 80022114 0580013C */  lui        $at, %hi(D_80056534)
    /* 12918 80022118 346522A4 */  sh         $v0, %lo(D_80056534)($at)
    /* 1291C 8002211C 01000224 */  addiu      $v0, $zero, 0x1
    /* 12920 80022120 BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 12924 80022124 C482000C */  jal        func_80020B10
    /* 12928 80022128 00000000 */   nop
    /* 1292C 8002212C 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 12930 80022130 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 12934 80022134 02000224 */  addiu      $v0, $zero, 0x2
    /* 12938 80022138 04006214 */  bne        $v1, $v0, .L8002214C
    /* 1293C 8002213C 07000424 */   addiu     $a0, $zero, 0x7
    /* 12940 80022140 04000524 */  addiu      $a1, $zero, 0x4
    /* 12944 80022144 A07A000C */  jal        func_8001EA80
    /* 12948 80022148 08000624 */   addiu     $a2, $zero, 0x8
  .L8002214C:
    /* 1294C 8002214C 8187000C */  jal        func_80021E04
    /* 12950 80022150 00000000 */   nop
    /* 12954 80022154 1E7E000C */  jal        func_8001F878
    /* 12958 80022158 21200000 */   addu      $a0, $zero, $zero
    /* 1295C 8002215C BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 12960 80022160 1000BF8F */  lw         $ra, 0x10($sp)
    /* 12964 80022164 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 12968 80022168 0800E003 */  jr         $ra
    /* 1296C 8002216C 00000000 */   nop
endlabel func_80022100
