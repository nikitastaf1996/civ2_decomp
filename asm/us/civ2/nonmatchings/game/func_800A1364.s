.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A1364, 0x60

glabel func_800A1364
    /* 91B64 800A1364 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 91B68 800A1368 1000BFAF */  sw         $ra, 0x10($sp)
    /* 91B6C 800A136C 1680023C */  lui        $v0, %hi(D_80158872)
    /* 91B70 800A1370 72884290 */  lbu        $v0, %lo(D_80158872)($v0)
    /* 91B74 800A1374 00000000 */  nop
    /* 91B78 800A1378 0E004010 */  beqz       $v0, .L800A13B4
    /* 91B7C 800A137C 00000000 */   nop
    /* 91B80 800A1380 1680023C */  lui        $v0, %hi(D_80158870)
    /* 91B84 800A1384 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 91B88 800A1388 00000000 */  nop
    /* 91B8C 800A138C 09004010 */  beqz       $v0, .L800A13B4
    /* 91B90 800A1390 00000000 */   nop
    /* 91B94 800A1394 1680023C */  lui        $v0, %hi(D_80158875)
    /* 91B98 800A1398 75884290 */  lbu        $v0, %lo(D_80158875)($v0)
    /* 91B9C 800A139C 00000000 */  nop
    /* 91BA0 800A13A0 0100422C */  sltiu      $v0, $v0, 0x1
    /* 91BA4 800A13A4 1680013C */  lui        $at, %hi(D_80158875)
    /* 91BA8 800A13A8 758822A0 */  sb         $v0, %lo(D_80158875)($at)
    /* 91BAC 800A13AC BEBE000C */  jal        func_8002FAF8
    /* 91BB0 800A13B0 01000424 */   addiu     $a0, $zero, 0x1
  .L800A13B4:
    /* 91BB4 800A13B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 91BB8 800A13B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 91BBC 800A13BC 0800E003 */  jr         $ra
    /* 91BC0 800A13C0 00000000 */   nop
endlabel func_800A1364
