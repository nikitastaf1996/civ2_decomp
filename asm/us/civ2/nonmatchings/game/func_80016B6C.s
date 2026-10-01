.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80016B6C, 0x90

glabel func_80016B6C
    /* 736C 80016B6C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7370 80016B70 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7374 80016B74 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7378 80016B78 B000828F */  lw         $v0, %gp_rel(D_80158588)($gp)
    /* 737C 80016B7C 00000000 */  nop
    /* 7380 80016B80 B40082AF */  sw         $v0, %gp_rel(D_8015858C)($gp)
    /* 7384 80016B84 0D004018 */  blez       $v0, .L80016BBC
    /* 7388 80016B88 21800000 */   addu      $s0, $zero, $zero
  .L80016B8C:
    /* 738C 80016B8C C351000C */  jal        func_8001470C
    /* 7390 80016B90 21200002 */   addu      $a0, $s0, $zero
    /* 7394 80016B94 03004014 */  bnez       $v0, .L80016BA4
    /* 7398 80016B98 21200002 */   addu      $a0, $s0, $zero
    /* 739C 80016B9C B251000C */  jal        func_800146C8
    /* 73A0 80016BA0 01000524 */   addiu     $a1, $zero, 0x1
  .L80016BA4:
    /* 73A4 80016BA4 01001026 */  addiu      $s0, $s0, 0x1
    /* 73A8 80016BA8 B400828F */  lw         $v0, %gp_rel(D_8015858C)($gp)
    /* 73AC 80016BAC 00000000 */  nop
    /* 73B0 80016BB0 2A100202 */  slt        $v0, $s0, $v0
    /* 73B4 80016BB4 F5FF4014 */  bnez       $v0, .L80016B8C
    /* 73B8 80016BB8 00000000 */   nop
  .L80016BBC:
    /* 73BC 80016BBC B400908F */  lw         $s0, %gp_rel(D_8015858C)($gp)
    /* 73C0 80016BC0 00000000 */  nop
    /* 73C4 80016BC4 1000022A */  slti       $v0, $s0, 0x10
    /* 73C8 80016BC8 07004010 */  beqz       $v0, .L80016BE8
    /* 73CC 80016BCC 21200002 */   addu      $a0, $s0, $zero
  .L80016BD0:
    /* 73D0 80016BD0 B251000C */  jal        func_800146C8
    /* 73D4 80016BD4 21280000 */   addu      $a1, $zero, $zero
    /* 73D8 80016BD8 01001026 */  addiu      $s0, $s0, 0x1
    /* 73DC 80016BDC 1000022A */  slti       $v0, $s0, 0x10
    /* 73E0 80016BE0 FBFF4014 */  bnez       $v0, .L80016BD0
    /* 73E4 80016BE4 21200002 */   addu      $a0, $s0, $zero
  .L80016BE8:
    /* 73E8 80016BE8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 73EC 80016BEC 1800B08F */  lw         $s0, 0x18($sp)
    /* 73F0 80016BF0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 73F4 80016BF4 0800E003 */  jr         $ra
    /* 73F8 80016BF8 00000000 */   nop
endlabel func_80016B6C
