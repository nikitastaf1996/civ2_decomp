.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B12C0, 0x90

glabel func_800B12C0
    /* A1AC0 800B12C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A1AC4 800B12C4 2000BFAF */  sw         $ra, 0x20($sp)
    /* A1AC8 800B12C8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A1ACC 800B12CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* A1AD0 800B12D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* A1AD4 800B12D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1AD8 800B12D8 1680043C */  lui        $a0, %hi(D_80158F4C)
    /* A1ADC 800B12DC 4C8F8424 */  addiu      $a0, $a0, %lo(D_80158F4C)
    /* A1AE0 800B12E0 FCA0020C */  jal        func_800A83F0
    /* A1AE4 800B12E4 60000524 */   addiu     $a1, $zero, 0x60
    /* A1AE8 800B12E8 11004014 */  bnez       $v0, .L800B1330
    /* A1AEC 800B12EC 21880000 */   addu      $s1, $zero, $zero
    /* A1AF0 800B12F0 1280133C */  lui        $s3, %hi(D_80120C8C)
    /* A1AF4 800B12F4 8C0C7326 */  addiu      $s3, $s3, %lo(D_80120C8C)
    /* A1AF8 800B12F8 1280123C */  lui        $s2, %hi(D_801208E0)
    /* A1AFC 800B12FC E0085226 */  addiu      $s2, $s2, %lo(D_801208E0)
  .L800B1300:
    /* A1B00 800B1300 AEA1020C */  jal        func_800A86B8
    /* A1B04 800B1304 80801100 */   sll       $s0, $s1, 2
    /* A1B08 800B1308 21181302 */  addu       $v1, $s0, $s3
    /* A1B0C 800B130C 000062AC */  sw         $v0, 0x0($v1)
    /* A1B10 800B1310 A63A030C */  jal        func_800CEA98
    /* A1B14 800B1314 21204000 */   addu      $a0, $v0, $zero
    /* A1B18 800B1318 21801202 */  addu       $s0, $s0, $s2
    /* A1B1C 800B131C 000002AE */  sw         $v0, 0x0($s0)
    /* A1B20 800B1320 01003126 */  addiu      $s1, $s1, 0x1
    /* A1B24 800B1324 0300222A */  slti       $v0, $s1, 0x3
    /* A1B28 800B1328 F5FF4014 */  bnez       $v0, .L800B1300
    /* A1B2C 800B132C 00000000 */   nop
  .L800B1330:
    /* A1B30 800B1330 2000BF8F */  lw         $ra, 0x20($sp)
    /* A1B34 800B1334 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A1B38 800B1338 1800B28F */  lw         $s2, 0x18($sp)
    /* A1B3C 800B133C 1400B18F */  lw         $s1, 0x14($sp)
    /* A1B40 800B1340 1000B08F */  lw         $s0, 0x10($sp)
    /* A1B44 800B1344 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A1B48 800B1348 0800E003 */  jr         $ra
    /* A1B4C 800B134C 00000000 */   nop
endlabel func_800B12C0
