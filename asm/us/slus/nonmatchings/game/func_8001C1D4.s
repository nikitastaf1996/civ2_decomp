.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C1D4, 0x104

glabel func_8001C1D4
    /* C9D4 8001C1D4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C9D8 8001C1D8 2000BFAF */  sw         $ra, 0x20($sp)
    /* C9DC 8001C1DC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C9E0 8001C1E0 FF008330 */  andi       $v1, $a0, 0xFF
    /* C9E4 8001C1E4 01000224 */  addiu      $v0, $zero, 0x1
    /* C9E8 8001C1E8 28006214 */  bne        $v1, $v0, .L8001C28C
    /* C9EC 8001C1EC 1800B0AF */   sw        $s0, 0x18($sp)
    /* C9F0 8001C1F0 0400A290 */  lbu        $v0, 0x4($a1)
    /* C9F4 8001C1F4 00000000 */  nop
    /* C9F8 8001C1F8 80004230 */  andi       $v0, $v0, 0x80
    /* C9FC 8001C1FC 30004014 */  bnez       $v0, .L8001C2C0
    /* CA00 8001C200 00000000 */   nop
    /* CA04 8001C204 0000A290 */  lbu        $v0, 0x0($a1)
    /* CA08 8001C208 00000000 */  nop
    /* CA0C 8001C20C 580B82A3 */  sb         $v0, %gp_rel(D_80055268)($gp)
    /* CA10 8001C210 0580113C */  lui        $s1, %hi(D_800564D8)
    /* CA14 8001C214 D8643126 */  addiu      $s1, $s1, %lo(D_800564D8)
    /* CA18 8001C218 0300A290 */  lbu        $v0, 0x3($a1)
    /* CA1C 8001C21C 00000000 */  nop
    /* CA20 8001C220 AC0B82A3 */  sb         $v0, %gp_rel(D_800552BC)($gp)
    /* CA24 8001C224 0400A290 */  lbu        $v0, 0x4($a1)
    /* CA28 8001C228 00000000 */  nop
    /* CA2C 8001C22C AD0B82A3 */  sb         $v0, %gp_rel(D_800552BD)($gp)
    /* CA30 8001C230 0500A290 */  lbu        $v0, 0x5($a1)
    /* CA34 8001C234 00000000 */  nop
    /* CA38 8001C238 AE0B82A3 */  sb         $v0, %gp_rel(D_800552BE)($gp)
    /* CA3C 8001C23C 4FBB000C */  jal        CdPosToInt
    /* CA40 8001C240 21202002 */   addu      $a0, $s1, $zero
    /* CA44 8001C244 0580043C */  lui        $a0, %hi(D_800564D4)
    /* CA48 8001C248 D4648424 */  addiu      $a0, $a0, %lo(D_800564D4)
    /* CA4C 8001C24C 4FBB000C */  jal        CdPosToInt
    /* CA50 8001C250 21804000 */   addu      $s0, $v0, $zero
    /* CA54 8001C254 2A800202 */  slt        $s0, $s0, $v0
    /* CA58 8001C258 15000012 */  beqz       $s0, .L8001C2B0
    /* CA5C 8001C25C 03000424 */   addiu     $a0, $zero, 0x3
    /* CA60 8001C260 4FBB000C */  jal        CdPosToInt
    /* CA64 8001C264 21202002 */   addu      $a0, $s1, $zero
    /* CA68 8001C268 0580043C */  lui        $a0, %hi(D_800564D0)
    /* CA6C 8001C26C D0648424 */  addiu      $a0, $a0, %lo(D_800564D0)
    /* CA70 8001C270 4FBB000C */  jal        CdPosToInt
    /* CA74 8001C274 21804000 */   addu      $s0, $v0, $zero
    /* CA78 8001C278 2A800202 */  slt        $s0, $s0, $v0
    /* CA7C 8001C27C 10000012 */  beqz       $s0, .L8001C2C0
    /* CA80 8001C280 03000424 */   addiu     $a0, $zero, 0x3
    /* CA84 8001C284 AC700008 */  j          .L8001C2B0
    /* CA88 8001C288 00000000 */   nop
  .L8001C28C:
    /* CA8C 8001C28C 05000224 */  addiu      $v0, $zero, 0x5
    /* CA90 8001C290 0B006214 */  bne        $v1, $v0, .L8001C2C0
    /* CA94 8001C294 05000224 */   addiu     $v0, $zero, 0x5
    /* CA98 8001C298 1000A2A3 */  sb         $v0, 0x10($sp)
    /* CA9C 8001C29C 0E000424 */  addiu      $a0, $zero, 0xE
    /* CAA0 8001C2A0 1000A527 */  addiu      $a1, $sp, 0x10
    /* CAA4 8001C2A4 F6B9000C */  jal        CdControl
    /* CAA8 8001C2A8 21300000 */   addu      $a2, $zero, $zero
    /* CAAC 8001C2AC 03000424 */  addiu      $a0, $zero, 0x3
  .L8001C2B0:
    /* CAB0 8001C2B0 0580053C */  lui        $a1, %hi(D_800564D0)
    /* CAB4 8001C2B4 D064A524 */  addiu      $a1, $a1, %lo(D_800564D0)
    /* CAB8 8001C2B8 F6B9000C */  jal        CdControl
    /* CABC 8001C2BC 21300000 */   addu      $a2, $zero, $zero
  .L8001C2C0:
    /* CAC0 8001C2C0 2000BF8F */  lw         $ra, 0x20($sp)
    /* CAC4 8001C2C4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CAC8 8001C2C8 1800B08F */  lw         $s0, 0x18($sp)
    /* CACC 8001C2CC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* CAD0 8001C2D0 0800E003 */  jr         $ra
    /* CAD4 8001C2D4 00000000 */   nop
endlabel func_8001C1D4
