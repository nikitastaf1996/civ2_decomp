.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80085CFC, 0x74

glabel func_80085CFC
    /* 764FC 80085CFC 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 76500 80085D00 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 76504 80085D04 00000000 */  nop
    /* 76508 80085D08 00804230 */  andi       $v0, $v0, 0x8000
    /* 7650C 80085D0C 0B004010 */  beqz       $v0, .L80085D3C
    /* 76510 80085D10 00000000 */   nop
    /* 76514 80085D14 F40F828F */  lw         $v0, %gp_rel(D_801594CC)($gp)
    /* 76518 80085D18 00000000 */  nop
    /* 7651C 80085D1C 2A108200 */  slt        $v0, $a0, $v0
    /* 76520 80085D20 11004014 */  bnez       $v0, .L80085D68
    /* 76524 80085D24 21100000 */   addu      $v0, $zero, $zero
    /* 76528 80085D28 FC0F828F */  lw         $v0, %gp_rel(D_801594D4)($gp)
    /* 7652C 80085D2C 00000000 */  nop
    /* 76530 80085D30 2A104400 */  slt        $v0, $v0, $a0
    /* 76534 80085D34 0C004014 */  bnez       $v0, .L80085D68
    /* 76538 80085D38 21100000 */   addu      $v0, $zero, $zero
  .L80085D3C:
    /* 7653C 80085D3C F80F828F */  lw         $v0, %gp_rel(D_801594D0)($gp)
    /* 76540 80085D40 00000000 */  nop
    /* 76544 80085D44 2A10A200 */  slt        $v0, $a1, $v0
    /* 76548 80085D48 07004014 */  bnez       $v0, .L80085D68
    /* 7654C 80085D4C 21100000 */   addu      $v0, $zero, $zero
    /* 76550 80085D50 0010828F */  lw         $v0, %gp_rel(D_801594D8)($gp)
    /* 76554 80085D54 00000000 */  nop
    /* 76558 80085D58 2A104500 */  slt        $v0, $v0, $a1
    /* 7655C 80085D5C 02004014 */  bnez       $v0, .L80085D68
    /* 76560 80085D60 21100000 */   addu      $v0, $zero, $zero
    /* 76564 80085D64 01000224 */  addiu      $v0, $zero, 0x1
  .L80085D68:
    /* 76568 80085D68 0800E003 */  jr         $ra
    /* 7656C 80085D6C 00000000 */   nop
endlabel func_80085CFC
