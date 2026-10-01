.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002830C, 0x88

glabel func_8002830C
    /* 18B0C 8002830C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 18B10 80028310 1800BFAF */  sw         $ra, 0x18($sp)
    /* 18B14 80028314 0580043C */  lui        $a0, %hi(D_80056534)
    /* 18B18 80028318 34658494 */  lhu        $a0, %lo(D_80056534)($a0)
    /* 18B1C 8002831C 919C000C */  jal        func_80027244
    /* 18B20 80028320 00000000 */   nop
    /* 18B24 80028324 0580043C */  lui        $a0, %hi(D_80056534)
    /* 18B28 80028328 34658494 */  lhu        $a0, %lo(D_80056534)($a0)
    /* 18B2C 8002832C DB9C000C */  jal        func_8002736C
    /* 18B30 80028330 00000000 */   nop
  .L80028334:
    /* 18B34 80028334 E976000C */  jal        func_8001DBA4
    /* 18B38 80028338 01000424 */   addiu     $a0, $zero, 0x1
    /* 18B3C 8002833C 01000424 */  addiu      $a0, $zero, 0x1
    /* 18B40 80028340 5BC5000C */  jal        CdReadSync
    /* 18B44 80028344 21280000 */   addu      $a1, $zero, $zero
    /* 18B48 80028348 FAFF401C */  bgtz       $v0, .L80028334
    /* 18B4C 8002834C F6000224 */   addiu     $v0, $zero, 0xF6
    /* 18B50 80028350 1000A2AF */  sw         $v0, 0x10($sp)
    /* 18B54 80028354 1580043C */  lui        $a0, %hi(D_8014C2B0)
    /* 18B58 80028358 B0C28424 */  addiu      $a0, $a0, %lo(D_8014C2B0)
    /* 18B5C 8002835C 80020524 */  addiu      $a1, $zero, 0x280
    /* 18B60 80028360 00010624 */  addiu      $a2, $zero, 0x100
    /* 18B64 80028364 396B000C */  jal        func_8001ACE4
    /* 18B68 80028368 21380000 */   addu      $a3, $zero, $zero
    /* 18B6C 8002836C 0580043C */  lui        $a0, %hi(D_80056534)
    /* 18B70 80028370 34658494 */  lhu        $a0, %lo(D_80056534)($a0)
    /* 18B74 80028374 6A9D000C */  jal        func_800275A8
    /* 18B78 80028378 00000000 */   nop
    /* 18B7C 8002837C 0CA0000C */  jal        func_80028030
    /* 18B80 80028380 00000000 */   nop
    /* 18B84 80028384 1800BF8F */  lw         $ra, 0x18($sp)
    /* 18B88 80028388 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 18B8C 8002838C 0800E003 */  jr         $ra
    /* 18B90 80028390 00000000 */   nop
endlabel func_8002830C
