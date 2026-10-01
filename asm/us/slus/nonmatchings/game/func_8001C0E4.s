.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C0E4, 0xF0

glabel func_8001C0E4
    /* C8E4 8001C0E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C8E8 8001C0E8 2000BFAF */  sw         $ra, 0x20($sp)
    /* C8EC 8001C0EC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C8F0 8001C0F0 1800B0AF */  sw         $s0, 0x18($sp)
    /* C8F4 8001C0F4 2180A000 */  addu       $s0, $a1, $zero
    /* C8F8 8001C0F8 0580053C */  lui        $a1, %hi(D_800564D0)
    /* C8FC 8001C0FC D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* C900 8001C100 0EBB000C */  jal        CdIntToPos
    /* C904 8001C104 21888000 */   addu      $s1, $a0, $zero
    /* C908 8001C108 21803002 */  addu       $s0, $s1, $s0
    /* C90C 8001C10C 0580053C */  lui        $a1, %hi(D_800564D4)
    /* C910 8001C110 D464A524 */  addiu      $a1, $a1, %lo(D_800564D4)
    /* C914 8001C114 0EBB000C */  jal        CdIntToPos
    /* C918 8001C118 F1FF0426 */   addiu     $a0, $s0, -0xF
    /* C91C 8001C11C 0580053C */  lui        $a1, %hi(D_800564D8)
    /* C920 8001C120 D864A524 */  addiu      $a1, $a1, %lo(D_800564D8)
    /* C924 8001C124 0EBB000C */  jal        CdIntToPos
    /* C928 8001C128 21202002 */   addu      $a0, $s1, $zero
    /* C92C 8001C12C 0280043C */  lui        $a0, %hi(func_8001C1D4)
    /* C930 8001C130 D4C18424 */  addiu      $a0, $a0, %lo(func_8001C1D4)
    /* C934 8001C134 F1B9000C */  jal        CdReadyCallback
    /* C938 8001C138 00000000 */   nop
    /* C93C 8001C13C 05000224 */  addiu      $v0, $zero, 0x5
    /* C940 8001C140 1000A2A3 */  sb         $v0, 0x10($sp)
    /* C944 8001C144 0E000424 */  addiu      $a0, $zero, 0xE
  .L8001C148:
    /* C948 8001C148 1000A527 */  addiu      $a1, $sp, 0x10
    /* C94C 8001C14C F6B9000C */  jal        CdControl
    /* C950 8001C150 21300000 */   addu      $a2, $zero, $zero
    /* C954 8001C154 FCFF4010 */  beqz       $v0, .L8001C148
    /* C958 8001C158 0E000424 */   addiu     $a0, $zero, 0xE
    /* C95C 8001C15C 02000424 */  addiu      $a0, $zero, 0x2
  .L8001C160:
    /* C960 8001C160 0580053C */  lui        $a1, %hi(D_800564D0)
    /* C964 8001C164 D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* C968 8001C168 F6B9000C */  jal        CdControl
    /* C96C 8001C16C 21300000 */   addu      $a2, $zero, $zero
    /* C970 8001C170 FBFF4010 */  beqz       $v0, .L8001C160
    /* C974 8001C174 02000424 */   addiu     $a0, $zero, 0x2
    /* C978 8001C178 21200000 */  addu       $a0, $zero, $zero
    /* C97C 8001C17C 21280000 */  addu       $a1, $zero, $zero
    /* C980 8001C180 7BF6000C */  jal        SsSetSerialAttr
    /* C984 8001C184 01000624 */   addiu     $a2, $zero, 0x1
    /* C988 8001C188 21200000 */  addu       $a0, $zero, $zero
    /* C98C 8001C18C 78000524 */  addiu      $a1, $zero, 0x78
    /* C990 8001C190 C7FD000C */  jal        SsSetSerialVol
    /* C994 8001C194 78000624 */   addiu     $a2, $zero, 0x78
    /* C998 8001C198 7F000424 */  addiu      $a0, $zero, 0x7F
    /* C99C 8001C19C 8BF7000C */  jal        SsSetMVol
    /* C9A0 8001C1A0 7F000524 */   addiu     $a1, $zero, 0x7F
    /* C9A4 8001C1A4 03000424 */  addiu      $a0, $zero, 0x3
  .L8001C1A8:
    /* C9A8 8001C1A8 21280000 */  addu       $a1, $zero, $zero
    /* C9AC 8001C1AC F6B9000C */  jal        CdControl
    /* C9B0 8001C1B0 21300000 */   addu      $a2, $zero, $zero
    /* C9B4 8001C1B4 FCFF4010 */  beqz       $v0, .L8001C1A8
    /* C9B8 8001C1B8 03000424 */   addiu     $a0, $zero, 0x3
    /* C9BC 8001C1BC 2000BF8F */  lw         $ra, 0x20($sp)
    /* C9C0 8001C1C0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* C9C4 8001C1C4 1800B08F */  lw         $s0, 0x18($sp)
    /* C9C8 8001C1C8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C9CC 8001C1CC 0800E003 */  jr         $ra
    /* C9D0 8001C1D0 00000000 */   nop
endlabel func_8001C0E4
