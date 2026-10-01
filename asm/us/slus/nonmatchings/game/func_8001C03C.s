.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C03C, 0xA8

glabel func_8001C03C
    /* C83C 8001C03C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C840 8001C040 1800BFAF */  sw         $ra, 0x18($sp)
    /* C844 8001C044 0580053C */  lui        $a1, %hi(D_800564D0)
    /* C848 8001C048 D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* C84C 8001C04C 0EBB000C */  jal        CdIntToPos
    /* C850 8001C050 00000000 */   nop
    /* C854 8001C054 01000224 */  addiu      $v0, $zero, 0x1
    /* C858 8001C058 1000A2A3 */  sb         $v0, 0x10($sp)
    /* C85C 8001C05C 0E000424 */  addiu      $a0, $zero, 0xE
  .L8001C060:
    /* C860 8001C060 1000A527 */  addiu      $a1, $sp, 0x10
    /* C864 8001C064 F6B9000C */  jal        CdControl
    /* C868 8001C068 21300000 */   addu      $a2, $zero, $zero
    /* C86C 8001C06C FCFF4010 */  beqz       $v0, .L8001C060
    /* C870 8001C070 0E000424 */   addiu     $a0, $zero, 0xE
    /* C874 8001C074 02000424 */  addiu      $a0, $zero, 0x2
  .L8001C078:
    /* C878 8001C078 0580053C */  lui        $a1, %hi(D_800564D0)
    /* C87C 8001C07C D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* C880 8001C080 F6B9000C */  jal        CdControl
    /* C884 8001C084 21300000 */   addu      $a2, $zero, $zero
    /* C888 8001C088 FBFF4010 */  beqz       $v0, .L8001C078
    /* C88C 8001C08C 02000424 */   addiu     $a0, $zero, 0x2
    /* C890 8001C090 21200000 */  addu       $a0, $zero, $zero
    /* C894 8001C094 21280000 */  addu       $a1, $zero, $zero
    /* C898 8001C098 7BF6000C */  jal        SsSetSerialAttr
    /* C89C 8001C09C 01000624 */   addiu     $a2, $zero, 0x1
    /* C8A0 8001C0A0 21200000 */  addu       $a0, $zero, $zero
    /* C8A4 8001C0A4 78000524 */  addiu      $a1, $zero, 0x78
    /* C8A8 8001C0A8 C7FD000C */  jal        SsSetSerialVol
    /* C8AC 8001C0AC 78000624 */   addiu     $a2, $zero, 0x78
    /* C8B0 8001C0B0 7F000424 */  addiu      $a0, $zero, 0x7F
    /* C8B4 8001C0B4 8BF7000C */  jal        SsSetMVol
    /* C8B8 8001C0B8 7F000524 */   addiu     $a1, $zero, 0x7F
    /* C8BC 8001C0BC 03000424 */  addiu      $a0, $zero, 0x3
  .L8001C0C0:
    /* C8C0 8001C0C0 21280000 */  addu       $a1, $zero, $zero
    /* C8C4 8001C0C4 F6B9000C */  jal        CdControl
    /* C8C8 8001C0C8 21300000 */   addu      $a2, $zero, $zero
    /* C8CC 8001C0CC FCFF4010 */  beqz       $v0, .L8001C0C0
    /* C8D0 8001C0D0 03000424 */   addiu     $a0, $zero, 0x3
    /* C8D4 8001C0D4 1800BF8F */  lw         $ra, 0x18($sp)
    /* C8D8 8001C0D8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C8DC 8001C0DC 0800E003 */  jr         $ra
    /* C8E0 8001C0E0 00000000 */   nop
endlabel func_8001C03C
