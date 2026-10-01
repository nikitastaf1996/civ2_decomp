.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A83A4, 0x4C

glabel func_800A83A4
    /* 98BA4 800A83A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98BA8 800A83A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98BAC 800A83AC 5808848F */  lw         $a0, %gp_rel(D_80158D30)($gp)
    /* 98BB0 800A83B0 00000000 */  nop
    /* 98BB4 800A83B4 08008010 */  beqz       $a0, .L800A83D8
    /* 98BB8 800A83B8 00010224 */   addiu     $v0, $zero, 0x100
    /* 98BBC 800A83BC 38008384 */  lh         $v1, 0x38($a0)
    /* 98BC0 800A83C0 00000000 */  nop
    /* 98BC4 800A83C4 03006210 */  beq        $v1, $v0, .L800A83D4
    /* 98BC8 800A83C8 00000000 */   nop
    /* 98BCC 800A83CC D8F5030C */  jal        func_800FD760
    /* 98BD0 800A83D0 00000000 */   nop
  .L800A83D4:
    /* 98BD4 800A83D4 580880AF */  sw         $zero, %gp_rel(D_80158D30)($gp)
  .L800A83D8:
    /* 98BD8 800A83D8 1280013C */  lui        $at, %hi(D_8011FA48)
    /* 98BDC 800A83DC 48FA20A0 */  sb         $zero, %lo(D_8011FA48)($at)
    /* 98BE0 800A83E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98BE4 800A83E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98BE8 800A83E8 0800E003 */  jr         $ra
    /* 98BEC 800A83EC 00000000 */   nop
endlabel func_800A83A4
