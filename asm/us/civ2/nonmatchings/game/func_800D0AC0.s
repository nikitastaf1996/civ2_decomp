.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D0AC0, 0x68

glabel func_800D0AC0
    /* C12C0 800D0AC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C12C4 800D0AC4 1000BFAF */  sw         $ra, 0x10($sp)
    /* C12C8 800D0AC8 B40E828C */  lw         $v0, 0xEB4($a0)
    /* C12CC 800D0ACC 00000000 */  nop
    /* C12D0 800D0AD0 11004014 */  bnez       $v0, .L800D0B18
    /* C12D4 800D0AD4 00000000 */   nop
    /* C12D8 800D0AD8 B00E828C */  lw         $v0, 0xEB0($a0)
    /* C12DC 800D0ADC 00000000 */  nop
    /* C12E0 800D0AE0 0D004014 */  bnez       $v0, .L800D0B18
    /* C12E4 800D0AE4 00000000 */   nop
    /* C12E8 800D0AE8 B80E828C */  lw         $v0, 0xEB8($a0)
    /* C12EC 800D0AEC 00000000 */  nop
    /* C12F0 800D0AF0 09004014 */  bnez       $v0, .L800D0B18
    /* C12F4 800D0AF4 00000000 */   nop
    /* C12F8 800D0AF8 AC0E848C */  lw         $a0, 0xEAC($a0)
    /* C12FC 800D0AFC 00000000 */  nop
    /* C1300 800D0B00 05008004 */  bltz       $a0, .L800D0B18
    /* C1304 800D0B04 00000000 */   nop
    /* C1308 800D0B08 0C25020C */  jal        func_80089430
    /* C130C 800D0B0C 00000000 */   nop
    /* C1310 800D0B10 0C63000C */  jal        func_80018C30
    /* C1314 800D0B14 01000424 */   addiu     $a0, $zero, 0x1
  .L800D0B18:
    /* C1318 800D0B18 1000BF8F */  lw         $ra, 0x10($sp)
    /* C131C 800D0B1C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C1320 800D0B20 0800E003 */  jr         $ra
    /* C1324 800D0B24 00000000 */   nop
endlabel func_800D0AC0
