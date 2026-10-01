.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80024628, 0xA4

glabel func_80024628
    /* 14E28 80024628 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 14E2C 8002462C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 14E30 80024630 2E7C000C */  jal        func_8001F0B8
    /* 14E34 80024634 01000424 */   addiu     $a0, $zero, 0x1
    /* 14E38 80024638 03000224 */  addiu      $v0, $zero, 0x3
    /* 14E3C 8002463C BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 14E40 80024640 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 14E44 80024644 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 14E48 80024648 02000224 */  addiu      $v0, $zero, 0x2
    /* 14E4C 8002464C 18006214 */  bne        $v1, $v0, .L800246B0
    /* 14E50 80024650 37000424 */   addiu     $a0, $zero, 0x37
    /* 14E54 80024654 02000524 */  addiu      $a1, $zero, 0x2
    /* 14E58 80024658 A07A000C */  jal        func_8001EA80
    /* 14E5C 8002465C 08000624 */   addiu     $a2, $zero, 0x8
    /* 14E60 80024660 39000424 */  addiu      $a0, $zero, 0x39
    /* 14E64 80024664 05000524 */  addiu      $a1, $zero, 0x5
    /* 14E68 80024668 A07A000C */  jal        func_8001EA80
    /* 14E6C 8002466C 08000624 */   addiu     $a2, $zero, 0x8
    /* 14E70 80024670 3A000424 */  addiu      $a0, $zero, 0x3A
    /* 14E74 80024674 05000524 */  addiu      $a1, $zero, 0x5
    /* 14E78 80024678 A07A000C */  jal        func_8001EA80
    /* 14E7C 8002467C 08000624 */   addiu     $a2, $zero, 0x8
    /* 14E80 80024680 3E000424 */  addiu      $a0, $zero, 0x3E
    /* 14E84 80024684 03000524 */  addiu      $a1, $zero, 0x3
    /* 14E88 80024688 A07A000C */  jal        func_8001EA80
    /* 14E8C 8002468C 08000624 */   addiu     $a2, $zero, 0x8
    /* 14E90 80024690 41000424 */  addiu      $a0, $zero, 0x41
    /* 14E94 80024694 03000524 */  addiu      $a1, $zero, 0x3
    /* 14E98 80024698 A07A000C */  jal        func_8001EA80
    /* 14E9C 8002469C 08000624 */   addiu     $a2, $zero, 0x8
    /* 14EA0 800246A0 44000424 */  addiu      $a0, $zero, 0x44
    /* 14EA4 800246A4 04000524 */  addiu      $a1, $zero, 0x4
    /* 14EA8 800246A8 A07A000C */  jal        func_8001EA80
    /* 14EAC 800246AC 08000624 */   addiu     $a2, $zero, 0x8
  .L800246B0:
    /* 14EB0 800246B0 EF90000C */  jal        func_800243BC
    /* 14EB4 800246B4 00000000 */   nop
    /* 14EB8 800246B8 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 14EBC 800246BC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 14EC0 800246C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 14EC4 800246C4 0800E003 */  jr         $ra
    /* 14EC8 800246C8 00000000 */   nop
endlabel func_80024628
