.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A86B8, 0x30

glabel func_800A86B8
    /* 98EB8 800A86B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98EBC 800A86BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98EC0 800A86C0 58A1020C */  jal        func_800A8560
    /* 98EC4 800A86C4 00000000 */   nop
    /* 98EC8 800A86C8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 98ECC 800A86CC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 98ED0 800A86D0 8D3A030C */  jal        func_800CEA34
    /* 98ED4 800A86D4 00000000 */   nop
    /* 98ED8 800A86D8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98EDC 800A86DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98EE0 800A86E0 0800E003 */  jr         $ra
    /* 98EE4 800A86E4 00000000 */   nop
endlabel func_800A86B8
