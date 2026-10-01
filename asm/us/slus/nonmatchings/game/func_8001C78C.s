.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C78C, 0x9C

glabel func_8001C78C
    /* CF8C 8001C78C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CF90 8001C790 1000BFAF */  sw         $ra, 0x10($sp)
    /* CF94 8001C794 AFEC000C */  jal        SsInit
    /* CF98 8001C798 00000000 */   nop
    /* CF9C 8001C79C 0D80043C */  lui        $a0, %hi(D_800CC2C0)
    /* CFA0 8001C7A0 C0C28424 */  addiu      $a0, $a0, %lo(D_800CC2C0)
    /* CFA4 8001C7A4 08000524 */  addiu      $a1, $zero, 0x8
    /* CFA8 8001C7A8 0BFE000C */  jal        SsSetTableSize
    /* CFAC 8001C7AC 01000624 */   addiu     $a2, $zero, 0x1
    /* CFB0 8001C7B0 93FE000C */  jal        SsSetTickMode
    /* CFB4 8001C7B4 05000424 */   addiu     $a0, $zero, 0x5
    /* CFB8 8001C7B8 21200000 */  addu       $a0, $zero, $zero
    /* CFBC 8001C7BC 1780083C */  lui        $t0, %hi(D_80172F18)
    /* CFC0 8001C7C0 182F0825 */  addiu      $t0, $t0, %lo(D_80172F18)
    /* CFC4 8001C7C4 FF000724 */  addiu      $a3, $zero, 0xFF
    /* CFC8 8001C7C8 1480063C */  lui        $a2, %hi(D_80139D08)
    /* CFCC 8001C7CC 089DC624 */  addiu      $a2, $a2, %lo(D_80139D08)
    /* CFD0 8001C7D0 1480053C */  lui        $a1, %hi(D_80139D30)
    /* CFD4 8001C7D4 309DA524 */  addiu      $a1, $a1, %lo(D_80139D30)
  .L8001C7D8:
    /* CFD8 8001C7D8 001C0400 */  sll        $v1, $a0, 16
    /* CFDC 8001C7DC 031C0300 */  sra        $v1, $v1, 16
    /* CFE0 8001C7E0 40100300 */  sll        $v0, $v1, 1
    /* CFE4 8001C7E4 21104800 */  addu       $v0, $v0, $t0
    /* CFE8 8001C7E8 000047A4 */  sh         $a3, 0x0($v0)
    /* CFEC 8001C7EC 80180300 */  sll        $v1, $v1, 2
    /* CFF0 8001C7F0 21106600 */  addu       $v0, $v1, $a2
    /* CFF4 8001C7F4 000040AC */  sw         $zero, 0x0($v0)
    /* CFF8 8001C7F8 21186500 */  addu       $v1, $v1, $a1
    /* CFFC 8001C7FC 01008224 */  addiu      $v0, $a0, 0x1
    /* D000 8001C800 21204000 */  addu       $a0, $v0, $zero
    /* D004 8001C804 00140200 */  sll        $v0, $v0, 16
    /* D008 8001C808 03140200 */  sra        $v0, $v0, 16
    /* D00C 8001C80C 08004228 */  slti       $v0, $v0, 0x8
    /* D010 8001C810 F1FF4014 */  bnez       $v0, .L8001C7D8
    /* D014 8001C814 000060AC */   sw        $zero, 0x0($v1)
    /* D018 8001C818 1000BF8F */  lw         $ra, 0x10($sp)
    /* D01C 8001C81C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D020 8001C820 0800E003 */  jr         $ra
    /* D024 8001C824 00000000 */   nop
endlabel func_8001C78C
