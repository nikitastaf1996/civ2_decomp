.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A23EC, 0x58

glabel func_800A23EC
    /* 92BEC 800A23EC FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 92BF0 800A23F0 1800838C */  lw         $v1, 0x18($a0)
    /* 92BF4 800A23F4 00000000 */  nop
    /* 92BF8 800A23F8 10006010 */  beqz       $v1, .L800A243C
    /* 92BFC 800A23FC 01000624 */   addiu     $a2, $zero, 0x1
  .L800A2400:
    /* 92C00 800A2400 0800628C */  lw         $v0, 0x8($v1)
    /* 92C04 800A2404 00000000 */  nop
    /* 92C08 800A2408 02004230 */  andi       $v0, $v0, 0x2
    /* 92C0C 800A240C 07004014 */  bnez       $v0, .L800A242C
    /* 92C10 800A2410 00000000 */   nop
    /* 92C14 800A2414 0400C514 */  bne        $a2, $a1, .L800A2428
    /* 92C18 800A2418 00000000 */   nop
    /* 92C1C 800A241C 0400678C */  lw         $a3, 0x4($v1)
    /* 92C20 800A2420 0F890208 */  j          .L800A243C
    /* 92C24 800A2424 00000000 */   nop
  .L800A2428:
    /* 92C28 800A2428 0100C624 */  addiu      $a2, $a2, 0x1
  .L800A242C:
    /* 92C2C 800A242C 1000638C */  lw         $v1, 0x10($v1)
    /* 92C30 800A2430 00000000 */  nop
    /* 92C34 800A2434 F2FF6014 */  bnez       $v1, .L800A2400
    /* 92C38 800A2438 00000000 */   nop
  .L800A243C:
    /* 92C3C 800A243C 0800E003 */  jr         $ra
    /* 92C40 800A2440 2110E000 */   addu      $v0, $a3, $zero
endlabel func_800A23EC
