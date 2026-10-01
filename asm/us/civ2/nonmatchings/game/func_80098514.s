.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098514, 0x2C

glabel func_80098514
    /* 88D14 80098514 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88D18 80098518 1400BFAF */  sw         $ra, 0x14($sp)
    /* 88D1C 8009851C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88D20 80098520 BD60020C */  jal        func_800982F4
    /* 88D24 80098524 2180C000 */   addu      $s0, $a2, $zero
    /* 88D28 80098528 030050A0 */  sb         $s0, 0x3($v0)
    /* 88D2C 8009852C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 88D30 80098530 1000B08F */  lw         $s0, 0x10($sp)
    /* 88D34 80098534 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88D38 80098538 0800E003 */  jr         $ra
    /* 88D3C 8009853C 00000000 */   nop
endlabel func_80098514
