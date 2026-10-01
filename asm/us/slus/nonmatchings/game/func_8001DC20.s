.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DC20, 0xB4

glabel func_8001DC20
    /* E420 8001DC20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* E424 8001DC24 1800BFAF */  sw         $ra, 0x18($sp)
    /* E428 8001DC28 45000624 */  addiu      $a2, $zero, 0x45
    /* E42C 8001DC2C 21200000 */  addu       $a0, $zero, $zero
    /* E430 8001DC30 0080053C */  lui        $a1, (0x80000000 >> 16)
    /* E434 8001DC34 00140400 */  sll        $v0, $a0, 16
  .L8001DC38:
    /* E438 8001DC38 03140200 */  sra        $v0, $v0, 16
    /* E43C 8001DC3C 2110C200 */  addu       $v0, $a2, $v0
    /* E440 8001DC40 C0180200 */  sll        $v1, $v0, 3
    /* E444 8001DC44 21186200 */  addu       $v1, $v1, $v0
    /* E448 8001DC48 80180300 */  sll        $v1, $v1, 2
    /* E44C 8001DC4C 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* E450 8001DC50 21082300 */  addu       $at, $at, $v1
    /* E454 8001DC54 E0A0228C */  lw         $v0, %lo(D_8012A0E0)($at)
    /* E458 8001DC58 00000000 */  nop
    /* E45C 8001DC5C 25104500 */  or         $v0, $v0, $a1
    /* E460 8001DC60 1380013C */  lui        $at, %hi(D_8012A0E0)
    /* E464 8001DC64 21082300 */  addu       $at, $at, $v1
    /* E468 8001DC68 E0A022AC */  sw         $v0, %lo(D_8012A0E0)($at)
    /* E46C 8001DC6C 01008224 */  addiu      $v0, $a0, 0x1
    /* E470 8001DC70 21204000 */  addu       $a0, $v0, $zero
    /* E474 8001DC74 00140200 */  sll        $v0, $v0, 16
    /* E478 8001DC78 03140200 */  sra        $v0, $v0, 16
    /* E47C 8001DC7C 20004228 */  slti       $v0, $v0, 0x20
    /* E480 8001DC80 EDFF4014 */  bnez       $v0, .L8001DC38
    /* E484 8001DC84 00140400 */   sll       $v0, $a0, 16
    /* E488 8001DC88 80030224 */  addiu      $v0, $zero, 0x380
    /* E48C 8001DC8C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* E490 8001DC90 00010224 */  addiu      $v0, $zero, 0x100
    /* E494 8001DC94 1200A2A7 */  sh         $v0, 0x12($sp)
    /* E498 8001DC98 FF000224 */  addiu      $v0, $zero, 0xFF
    /* E49C 8001DC9C 1400A2A7 */  sh         $v0, 0x14($sp)
    /* E4A0 8001DCA0 7F000224 */  addiu      $v0, $zero, 0x7F
    /* E4A4 8001DCA4 1600A2A7 */  sh         $v0, 0x16($sp)
    /* E4A8 8001DCA8 1000A427 */  addiu      $a0, $sp, 0x10
    /* E4AC 8001DCAC 21280000 */  addu       $a1, $zero, $zero
    /* E4B0 8001DCB0 21300000 */  addu       $a2, $zero, $zero
    /* E4B4 8001DCB4 9BCF000C */  jal        ClearImage
    /* E4B8 8001DCB8 21380000 */   addu      $a3, $zero, $zero
    /* E4BC 8001DCBC 3ACF000C */  jal        DrawSync
    /* E4C0 8001DCC0 21200000 */   addu      $a0, $zero, $zero
    /* E4C4 8001DCC4 1800BF8F */  lw         $ra, 0x18($sp)
    /* E4C8 8001DCC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* E4CC 8001DCCC 0800E003 */  jr         $ra
    /* E4D0 8001DCD0 00000000 */   nop
endlabel func_8001DC20
