.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092A2C, 0x68

glabel func_80092A2C
    /* 8322C 80092A2C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 83230 80092A30 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 83234 80092A34 1800B0AF */  sw         $s0, 0x18($sp)
    /* 83238 80092A38 21808000 */  addu       $s0, $a0, $zero
    /* 8323C 80092A3C E4000426 */  addiu      $a0, $s0, 0xE4
    /* 83240 80092A40 A987030C */  jal        func_800E1EA4
    /* 83244 80092A44 83000624 */   addiu     $a2, $zero, 0x83
    /* 83248 80092A48 660100A2 */  sb         $zero, 0x166($s0)
    /* 8324C 80092A4C 7D48020C */  jal        func_800921F4
    /* 83250 80092A50 21200002 */   addu      $a0, $s0, $zero
    /* 83254 80092A54 1B02028A */  lwl        $v0, 0x21B($s0)
    /* 83258 80092A58 1802029A */  lwr        $v0, 0x218($s0)
    /* 8325C 80092A5C 1F02038A */  lwl        $v1, 0x21F($s0)
    /* 83260 80092A60 1C02039A */  lwr        $v1, 0x21C($s0)
    /* 83264 80092A64 1300A2AB */  swl        $v0, 0x13($sp)
    /* 83268 80092A68 1000A2BB */  swr        $v0, 0x10($sp)
    /* 8326C 80092A6C 1700A3AB */  swl        $v1, 0x17($sp)
    /* 83270 80092A70 1400A3BB */  swr        $v1, 0x14($sp)
    /* 83274 80092A74 22020296 */  lhu        $v0, 0x222($s0)
    /* 83278 80092A78 00000000 */  nop
    /* 8327C 80092A7C 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 83280 80092A80 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 83284 80092A84 1800B08F */  lw         $s0, 0x18($sp)
    /* 83288 80092A88 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8328C 80092A8C 0800E003 */  jr         $ra
    /* 83290 80092A90 00000000 */   nop
endlabel func_80092A2C
