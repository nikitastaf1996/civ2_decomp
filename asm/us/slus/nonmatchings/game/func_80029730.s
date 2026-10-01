.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80029730, 0x54

glabel func_80029730
    /* 19F30 80029730 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 19F34 80029734 1000BFAF */  sw         $ra, 0x10($sp)
    /* 19F38 80029738 2E7C000C */  jal        func_8001F0B8
    /* 19F3C 8002973C 01000424 */   addiu     $a0, $zero, 0x1
    /* 19F40 80029740 07000224 */  addiu      $v0, $zero, 0x7
    /* 19F44 80029744 BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 19F48 80029748 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 19F4C 8002974C 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 19F50 80029750 02000224 */  addiu      $v0, $zero, 0x2
    /* 19F54 80029754 04006214 */  bne        $v1, $v0, .L80029768
    /* 19F58 80029758 12040424 */   addiu     $a0, $zero, 0x412
    /* 19F5C 8002975C 02000524 */  addiu      $a1, $zero, 0x2
    /* 19F60 80029760 A07A000C */  jal        func_8001EA80
    /* 19F64 80029764 08000624 */   addiu     $a2, $zero, 0x8
  .L80029768:
    /* 19F68 80029768 1EA5000C */  jal        func_80029478
    /* 19F6C 8002976C 00000000 */   nop
    /* 19F70 80029770 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 19F74 80029774 1000BF8F */  lw         $ra, 0x10($sp)
    /* 19F78 80029778 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 19F7C 8002977C 0800E003 */  jr         $ra
    /* 19F80 80029780 00000000 */   nop
endlabel func_80029730
