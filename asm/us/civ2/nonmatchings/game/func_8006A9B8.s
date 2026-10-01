.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006A9B8, 0x54

glabel func_8006A9B8
    /* 5B1B8 8006A9B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 5B1BC 8006A9BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 5B1C0 8006A9C0 21388000 */  addu       $a3, $a0, $zero
    /* 5B1C4 8006A9C4 1280033C */  lui        $v1, %hi(D_8011E95A)
    /* 5B1C8 8006A9C8 5AE96324 */  addiu      $v1, $v1, %lo(D_8011E95A)
    /* 5B1CC 8006A9CC 00006284 */  lh         $v0, 0x0($v1)
    /* 5B1D0 8006A9D0 00000000 */  nop
    /* 5B1D4 8006A9D4 05004714 */  bne        $v0, $a3, .L8006A9EC
    /* 5B1D8 8006A9D8 2130A000 */   addu      $a2, $a1, $zero
    /* 5B1DC 8006A9DC 02006284 */  lh         $v0, 0x2($v1)
    /* 5B1E0 8006A9E0 00000000 */  nop
    /* 5B1E4 8006A9E4 05004610 */  beq        $v0, $a2, .L8006A9FC
    /* 5B1E8 8006A9E8 00000000 */   nop
  .L8006A9EC:
    /* 5B1EC 8006A9EC 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 5B1F0 8006A9F0 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 5B1F4 8006A9F4 BC7B020C */  jal        func_8009EEF0
    /* 5B1F8 8006A9F8 2128E000 */   addu      $a1, $a3, $zero
  .L8006A9FC:
    /* 5B1FC 8006A9FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5B200 8006AA00 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5B204 8006AA04 0800E003 */  jr         $ra
    /* 5B208 8006AA08 00000000 */   nop
endlabel func_8006A9B8
