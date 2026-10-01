.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008FDC0, 0x1C4

glabel func_8008FDC0
    /* 805C0 8008FDC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 805C4 8008FDC4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 805C8 8008FDC8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 805CC 8008FDCC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 805D0 8008FDD0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 805D4 8008FDD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 805D8 8008FDD8 21888000 */  addu       $s1, $a0, $zero
    /* 805DC 8008FDDC 2198A000 */  addu       $s3, $a1, $zero
    /* 805E0 8008FDE0 540380AF */  sw         $zero, %gp_rel(D_8015882C)($gp)
    /* 805E4 8008FDE4 DC2E3026 */  addiu      $s0, $s1, 0x2EDC
    /* 805E8 8008FDE8 21200002 */  addu       $a0, $s0, $zero
    /* 805EC 8008FDEC 4CE1030C */  jal        func_800F8530
    /* 805F0 8008FDF0 02000524 */   addiu     $a1, $zero, 0x2
    /* 805F4 8008FDF4 8C2C2226 */  addiu      $v0, $s1, 0x2C8C
    /* 805F8 8008FDF8 0B004010 */  beqz       $v0, .L8008FE28
    /* 805FC 8008FDFC 00000000 */   nop
    /* 80600 8008FE00 0A005010 */  beq        $v0, $s0, .L8008FE2C
    /* 80604 8008FE04 3C2A2226 */   addiu     $v0, $s1, 0x2A3C
    /* 80608 8008FE08 8C2C3226 */  addiu      $s2, $s1, 0x2C8C
    /* 8060C 8008FE0C 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L8008FE10:
    /* 80610 8008FE10 21200002 */  addu       $a0, $s0, $zero
    /* 80614 8008FE14 12ED030C */  jal        func_800FB448
    /* 80618 8008FE18 02000524 */   addiu     $a1, $zero, 0x2
    /* 8061C 8008FE1C FCFF5016 */  bne        $s2, $s0, .L8008FE10
    /* 80620 8008FE20 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* 80624 8008FE24 94001026 */  addiu      $s0, $s0, 0x94
  .L8008FE28:
    /* 80628 8008FE28 3C2A2226 */  addiu      $v0, $s1, 0x2A3C
  .L8008FE2C:
    /* 8062C 8008FE2C 0C004010 */  beqz       $v0, .L8008FE60
    /* 80630 8008FE30 00000000 */   nop
    /* 80634 8008FE34 8C2C3026 */  addiu      $s0, $s1, 0x2C8C
    /* 80638 8008FE38 0A005010 */  beq        $v0, $s0, .L8008FE64
    /* 8063C 8008FE3C EC272226 */   addiu     $v0, $s1, 0x27EC
    /* 80640 8008FE40 3C2A3226 */  addiu      $s2, $s1, 0x2A3C
    /* 80644 8008FE44 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L8008FE48:
    /* 80648 8008FE48 21200002 */  addu       $a0, $s0, $zero
    /* 8064C 8008FE4C 12ED030C */  jal        func_800FB448
    /* 80650 8008FE50 02000524 */   addiu     $a1, $zero, 0x2
    /* 80654 8008FE54 FCFF5016 */  bne        $s2, $s0, .L8008FE48
    /* 80658 8008FE58 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* 8065C 8008FE5C 94001026 */  addiu      $s0, $s0, 0x94
  .L8008FE60:
    /* 80660 8008FE60 EC272226 */  addiu      $v0, $s1, 0x27EC
  .L8008FE64:
    /* 80664 8008FE64 0C004010 */  beqz       $v0, .L8008FE98
    /* 80668 8008FE68 00000000 */   nop
    /* 8066C 8008FE6C 3C2A3026 */  addiu      $s0, $s1, 0x2A3C
    /* 80670 8008FE70 0A005010 */  beq        $v0, $s0, .L8008FE9C
    /* 80674 8008FE74 9C252226 */   addiu     $v0, $s1, 0x259C
    /* 80678 8008FE78 EC273226 */  addiu      $s2, $s1, 0x27EC
    /* 8067C 8008FE7C 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L8008FE80:
    /* 80680 8008FE80 21200002 */  addu       $a0, $s0, $zero
    /* 80684 8008FE84 12ED030C */  jal        func_800FB448
    /* 80688 8008FE88 02000524 */   addiu     $a1, $zero, 0x2
    /* 8068C 8008FE8C FCFF5016 */  bne        $s2, $s0, .L8008FE80
    /* 80690 8008FE90 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* 80694 8008FE94 94001026 */  addiu      $s0, $s0, 0x94
  .L8008FE98:
    /* 80698 8008FE98 9C252226 */  addiu      $v0, $s1, 0x259C
  .L8008FE9C:
    /* 8069C 8008FE9C 0C004010 */  beqz       $v0, .L8008FED0
    /* 806A0 8008FEA0 00000000 */   nop
    /* 806A4 8008FEA4 EC273026 */  addiu      $s0, $s1, 0x27EC
    /* 806A8 8008FEA8 0A005010 */  beq        $v0, $s0, .L8008FED4
    /* 806AC 8008FEAC FC012226 */   addiu     $v0, $s1, 0x1FC
    /* 806B0 8008FEB0 9C253226 */  addiu      $s2, $s1, 0x259C
    /* 806B4 8008FEB4 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L8008FEB8:
    /* 806B8 8008FEB8 21200002 */  addu       $a0, $s0, $zero
    /* 806BC 8008FEBC 12ED030C */  jal        func_800FB448
    /* 806C0 8008FEC0 02000524 */   addiu     $a1, $zero, 0x2
    /* 806C4 8008FEC4 FCFF5016 */  bne        $s2, $s0, .L8008FEB8
    /* 806C8 8008FEC8 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* 806CC 8008FECC 94001026 */  addiu      $s0, $s0, 0x94
  .L8008FED0:
    /* 806D0 8008FED0 FC012226 */  addiu      $v0, $s1, 0x1FC
  .L8008FED4:
    /* 806D4 8008FED4 0A004010 */  beqz       $v0, .L8008FF00
    /* 806D8 8008FED8 AC243026 */   addiu     $s0, $s1, 0x24AC
    /* 806DC 8008FEDC 09005010 */  beq        $v0, $s0, .L8008FF04
    /* 806E0 8008FEE0 CC012426 */   addiu     $a0, $s1, 0x1CC
    /* 806E4 8008FEE4 FC013226 */  addiu      $s2, $s1, 0x1FC
    /* 806E8 8008FEE8 6CFF1026 */  addiu      $s0, $s0, -0x94
  .L8008FEEC:
    /* 806EC 8008FEEC 21200002 */  addu       $a0, $s0, $zero
    /* 806F0 8008FEF0 12ED030C */  jal        func_800FB448
    /* 806F4 8008FEF4 02000524 */   addiu     $a1, $zero, 0x2
    /* 806F8 8008FEF8 FCFF5016 */  bne        $s2, $s0, .L8008FEEC
    /* 806FC 8008FEFC 6CFF1026 */   addiu     $s0, $s0, -0x94
  .L8008FF00:
    /* 80700 8008FF00 CC012426 */  addiu      $a0, $s1, 0x1CC
  .L8008FF04:
    /* 80704 8008FF04 4CE1030C */  jal        func_800F8530
    /* 80708 8008FF08 02000524 */   addiu     $a1, $zero, 0x2
    /* 8070C 8008FF0C A0012426 */  addiu      $a0, $s1, 0x1A0
    /* 80710 8008FF10 4CE1030C */  jal        func_800F8530
    /* 80714 8008FF14 02000524 */   addiu     $a1, $zero, 0x2
    /* 80718 8008FF18 74012426 */  addiu      $a0, $s1, 0x174
    /* 8071C 8008FF1C 4CE1030C */  jal        func_800F8530
    /* 80720 8008FF20 02000524 */   addiu     $a1, $zero, 0x2
    /* 80724 8008FF24 48012426 */  addiu      $a0, $s1, 0x148
    /* 80728 8008FF28 4CE1030C */  jal        func_800F8530
    /* 8072C 8008FF2C 02000524 */   addiu     $a1, $zero, 0x2
    /* 80730 8008FF30 84003026 */  addiu      $s0, $s1, 0x84
    /* 80734 8008FF34 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 80738 8008FF38 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 8073C 8008FF3C AC0022AE */  sw         $v0, 0xAC($s1)
    /* 80740 8008FF40 B0002426 */  addiu      $a0, $s1, 0xB0
    /* 80744 8008FF44 F5E9030C */  jal        func_800FA7D4
    /* 80748 8008FF48 21280000 */   addu      $a1, $zero, $zero
    /* 8074C 8008FF4C 21200002 */  addu       $a0, $s0, $zero
    /* 80750 8008FF50 4CE1030C */  jal        func_800F8530
    /* 80754 8008FF54 02000524 */   addiu     $a1, $zero, 0x2
    /* 80758 8008FF58 21202002 */  addu       $a0, $s1, $zero
    /* 8075C 8008FF5C F5E9030C */  jal        func_800FA7D4
    /* 80760 8008FF60 21286002 */   addu      $a1, $s3, $zero
    /* 80764 8008FF64 2000BF8F */  lw         $ra, 0x20($sp)
    /* 80768 8008FF68 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8076C 8008FF6C 1800B28F */  lw         $s2, 0x18($sp)
    /* 80770 8008FF70 1400B18F */  lw         $s1, 0x14($sp)
    /* 80774 8008FF74 1000B08F */  lw         $s0, 0x10($sp)
    /* 80778 8008FF78 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8077C 8008FF7C 0800E003 */  jr         $ra
    /* 80780 8008FF80 00000000 */   nop
endlabel func_8008FDC0
