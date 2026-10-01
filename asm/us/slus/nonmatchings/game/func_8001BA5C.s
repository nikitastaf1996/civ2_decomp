.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001BA5C, 0x78

glabel func_8001BA5C
    /* C25C 8001BA5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C260 8001BA60 1800BFAF */  sw         $ra, 0x18($sp)
    /* C264 8001BA64 1400B1AF */  sw         $s1, 0x14($sp)
    /* C268 8001BA68 1000B0AF */  sw         $s0, 0x10($sp)
    /* C26C 8001BA6C 008C0600 */  sll        $s1, $a2, 16
    /* C270 8001BA70 038C1100 */  sra        $s1, $s1, 16
    /* C274 8001BA74 80831100 */  sll        $s0, $s1, 14
    /* C278 8001BA78 1780023C */  lui        $v0, %hi(D_801777F0)
    /* C27C 8001BA7C F0774224 */  addiu      $v0, $v0, %lo(D_801777F0)
    /* C280 8001BA80 21800202 */  addu       $s0, $s0, $v0
    /* C284 8001BA84 01000624 */  addiu      $a2, $zero, 0x1
    /* C288 8001BA88 BF67000C */  jal        func_80019EFC
    /* C28C 8001BA8C 21380002 */   addu      $a3, $s0, $zero
    /* C290 8001BA90 21200002 */  addu       $a0, $s0, $zero
    /* C294 8001BA94 1316010C */  jal        SsVabOpenHead
    /* C298 8001BA98 21282002 */   addu      $a1, $s1, $zero
    /* C29C 8001BA9C 21804000 */  addu       $s0, $v0, $zero
    /* C2A0 8001BAA0 00141000 */  sll        $v0, $s0, 16
    /* C2A4 8001BAA4 05004104 */  bgez       $v0, .L8001BABC
    /* C2A8 8001BAA8 03140200 */   sra       $v0, $v0, 16
    /* C2AC 8001BAAC E766000C */  jal        func_80019B9C
    /* C2B0 8001BAB0 21200000 */   addu      $a0, $zero, $zero
    /* C2B4 8001BAB4 00141000 */  sll        $v0, $s0, 16
    /* C2B8 8001BAB8 03140200 */  sra        $v0, $v0, 16
  .L8001BABC:
    /* C2BC 8001BABC 1800BF8F */  lw         $ra, 0x18($sp)
    /* C2C0 8001BAC0 1400B18F */  lw         $s1, 0x14($sp)
    /* C2C4 8001BAC4 1000B08F */  lw         $s0, 0x10($sp)
    /* C2C8 8001BAC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C2CC 8001BACC 0800E003 */  jr         $ra
    /* C2D0 8001BAD0 00000000 */   nop
endlabel func_8001BA5C
