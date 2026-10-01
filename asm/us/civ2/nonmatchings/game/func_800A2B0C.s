.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2B0C, 0xAC

glabel func_800A2B0C
    /* 9330C 800A2B0C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 93310 800A2B10 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 93314 800A2B14 1800B2AF */  sw         $s2, 0x18($sp)
    /* 93318 800A2B18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9331C 800A2B1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 93320 800A2B20 21888000 */  addu       $s1, $a0, $zero
    /* 93324 800A2B24 2190A000 */  addu       $s2, $a1, $zero
    /* 93328 800A2B28 1189020C */  jal        func_800A2444
    /* 9332C 800A2B2C 2180C000 */   addu      $s0, $a2, $zero
    /* 93330 800A2B30 21204000 */  addu       $a0, $v0, $zero
    /* 93334 800A2B34 19008010 */  beqz       $a0, .L800A2B9C
    /* 93338 800A2B38 2B801000 */   sltu      $s0, $zero, $s0
    /* 9333C 800A2B3C 0800828C */  lw         $v0, 0x8($a0)
    /* 93340 800A2B40 00000000 */  nop
    /* 93344 800A2B44 82280200 */  srl        $a1, $v0, 2
    /* 93348 800A2B48 03000012 */  beqz       $s0, .L800A2B58
    /* 9334C 800A2B4C 0100A530 */   andi      $a1, $a1, 0x1
    /* 93350 800A2B50 D88A0208 */  j          .L800A2B60
    /* 93354 800A2B54 04004234 */   ori       $v0, $v0, 0x4
  .L800A2B58:
    /* 93358 800A2B58 FBFF0324 */  addiu      $v1, $zero, -0x5
    /* 9335C 800A2B5C 24104300 */  and        $v0, $v0, $v1
  .L800A2B60:
    /* 93360 800A2B60 080082AC */  sw         $v0, 0x8($a0)
    /* 93364 800A2B64 1400228E */  lw         $v0, 0x14($s1)
    /* 93368 800A2B68 00000000 */  nop
    /* 9336C 800A2B6C 00804230 */  andi       $v0, $v0, 0x8000
    /* 93370 800A2B70 0A004010 */  beqz       $v0, .L800A2B9C
    /* 93374 800A2B74 00000000 */   nop
    /* 93378 800A2B78 0800828C */  lw         $v0, 0x8($a0)
    /* 9337C 800A2B7C 00000000 */  nop
    /* 93380 800A2B80 02004230 */  andi       $v0, $v0, 0x2
    /* 93384 800A2B84 05004014 */  bnez       $v0, .L800A2B9C
    /* 93388 800A2B88 00000000 */   nop
    /* 9338C 800A2B8C 03000512 */  beq        $s0, $a1, .L800A2B9C
    /* 93390 800A2B90 21202002 */   addu      $a0, $s1, $zero
    /* 93394 800A2B94 3A8A020C */  jal        func_800A28E8
    /* 93398 800A2B98 21284002 */   addu      $a1, $s2, $zero
  .L800A2B9C:
    /* 9339C 800A2B9C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 933A0 800A2BA0 1800B28F */  lw         $s2, 0x18($sp)
    /* 933A4 800A2BA4 1400B18F */  lw         $s1, 0x14($sp)
    /* 933A8 800A2BA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 933AC 800A2BAC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 933B0 800A2BB0 0800E003 */  jr         $ra
    /* 933B4 800A2BB4 00000000 */   nop
endlabel func_800A2B0C
