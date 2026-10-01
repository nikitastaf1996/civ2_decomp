.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1350, 0x40

glabel func_800B1350
    /* A1B50 800B1350 1000A28F */  lw         $v0, 0x10($sp)
    /* A1B54 800B1354 1400A38F */  lw         $v1, 0x14($sp)
    /* A1B58 800B1358 1800A88F */  lw         $t0, 0x18($sp)
    /* A1B5C 800B135C 1C00A98F */  lw         $t1, 0x1C($sp)
    /* A1B60 800B1360 2000AA8F */  lw         $t2, 0x20($sp)
    /* A1B64 800B1364 280A84A3 */  sb         $a0, %gp_rel(D_80158F00)($gp)
    /* A1B68 800B1368 270A85A3 */  sb         $a1, %gp_rel(D_80158EFF)($gp)
    /* A1B6C 800B136C 260A86A3 */  sb         $a2, %gp_rel(D_80158EFE)($gp)
    /* A1B70 800B1370 290A87A3 */  sb         $a3, %gp_rel(D_80158F01)($gp)
    /* A1B74 800B1374 2A0A82A3 */  sb         $v0, %gp_rel(D_80158F02)($gp)
    /* A1B78 800B1378 2B0A83A3 */  sb         $v1, %gp_rel(D_80158F03)($gp)
    /* A1B7C 800B137C 2C0A88A3 */  sb         $t0, %gp_rel(D_80158F04)($gp)
    /* A1B80 800B1380 2D0A89A3 */  sb         $t1, %gp_rel(D_80158F05)($gp)
    /* A1B84 800B1384 2E0A8AA3 */  sb         $t2, %gp_rel(D_80158F06)($gp)
    /* A1B88 800B1388 0800E003 */  jr         $ra
    /* A1B8C 800B138C 00000000 */   nop
endlabel func_800B1350
