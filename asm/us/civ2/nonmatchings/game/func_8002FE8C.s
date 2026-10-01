.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FE8C, 0x3C

glabel func_8002FE8C
    /* 2068C 8002FE8C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 20690 8002FE90 1000BFAF */  sw         $ra, 0x10($sp)
    /* 20694 8002FE94 1680043C */  lui        $a0, %hi(D_801589F4)
    /* 20698 8002FE98 F489848C */  lw         $a0, %lo(D_801589F4)($a0)
    /* 2069C 8002FE9C 00000000 */  nop
    /* 206A0 8002FEA0 05008010 */  beqz       $a0, .L8002FEB8
    /* 206A4 8002FEA4 00000000 */   nop
    /* 206A8 8002FEA8 E511040C */  jal        func_80104794
    /* 206AC 8002FEAC 00000000 */   nop
    /* 206B0 8002FEB0 1680013C */  lui        $at, %hi(D_801589F4)
    /* 206B4 8002FEB4 F48920AC */  sw         $zero, %lo(D_801589F4)($at)
  .L8002FEB8:
    /* 206B8 8002FEB8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 206BC 8002FEBC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 206C0 8002FEC0 0800E003 */  jr         $ra
    /* 206C4 8002FEC4 00000000 */   nop
endlabel func_8002FE8C
