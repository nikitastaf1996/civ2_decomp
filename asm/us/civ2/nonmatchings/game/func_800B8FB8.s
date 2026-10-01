.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8FB8, 0x58

glabel func_800B8FB8
    /* A97B8 800B8FB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A97BC 800B8FBC 1800BFAF */  sw         $ra, 0x18($sp)
    /* A97C0 800B8FC0 2120A000 */  addu       $a0, $a1, $zero
    /* A97C4 800B8FC4 3000A28F */  lw         $v0, 0x30($sp)
    /* A97C8 800B8FC8 3400A38F */  lw         $v1, 0x34($sp)
    /* A97CC 800B8FCC 02004724 */  addiu      $a3, $v0, 0x2
    /* A97D0 800B8FD0 1000A3AF */  sw         $v1, 0x10($sp)
    /* A97D4 800B8FD4 1680023C */  lui        $v0, %hi(D_801588A4)
    /* A97D8 800B8FD8 A488428C */  lw         $v0, %lo(D_801588A4)($v0)
    /* A97DC 800B8FDC 00000000 */  nop
    /* A97E0 800B8FE0 04004010 */  beqz       $v0, .L800B8FF4
    /* A97E4 800B8FE4 2128C000 */   addu      $a1, $a2, $zero
    /* A97E8 800B8FE8 08000224 */  addiu      $v0, $zero, 0x8
    /* A97EC 800B8FEC FEE30208 */  j          .L800B8FF8
    /* A97F0 800B8FF0 1400A2AF */   sw        $v0, 0x14($sp)
  .L800B8FF4:
    /* A97F4 800B8FF4 1400A0AF */  sw         $zero, 0x14($sp)
  .L800B8FF8:
    /* A97F8 800B8FF8 17C0020C */  jal        func_800B005C
    /* A97FC 800B8FFC 21300000 */   addu      $a2, $zero, $zero
    /* A9800 800B9000 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9804 800B9004 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A9808 800B9008 0800E003 */  jr         $ra
    /* A980C 800B900C 00000000 */   nop
endlabel func_800B8FB8
