.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800145EC, 0x4C

glabel func_800145EC
    /* 4DEC 800145EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4DF0 800145F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4DF4 800145F4 1680023C */  lui        $v0, %hi(D_80158864)
    /* 4DF8 800145F8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 4DFC 800145FC 00000000 */  nop
    /* 4E00 80014600 3D004480 */  lb         $a0, 0x3D($v0)
    /* 4E04 80014604 7251000C */  jal        func_800145C8
    /* 4E08 80014608 00000000 */   nop
    /* 4E0C 8001460C C40082AF */  sw         $v0, %gp_rel(D_8015859C)($gp)
    /* 4E10 80014610 1680023C */  lui        $v0, %hi(D_80158864)
    /* 4E14 80014614 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 4E18 80014618 00000000 */  nop
    /* 4E1C 8001461C 1E004284 */  lh         $v0, 0x1E($v0)
    /* 4E20 80014620 00000000 */  nop
    /* 4E24 80014624 C80082AF */  sw         $v0, %gp_rel(D_801585A0)($gp)
    /* 4E28 80014628 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E2C 8001462C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E30 80014630 0800E003 */  jr         $ra
    /* 4E34 80014634 00000000 */   nop
endlabel func_800145EC
