.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800161DC, 0x74

glabel func_800161DC
    /* 69DC 800161DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 69E0 800161E0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 69E4 800161E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 69E8 800161E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 69EC 800161EC 21880000 */  addu       $s1, $zero, $zero
    /* 69F0 800161F0 21800000 */  addu       $s0, $zero, $zero
  .L800161F4:
    /* 69F4 800161F4 1400022A */  slti       $v0, $s0, 0x14
    /* 69F8 800161F8 0F004010 */  beqz       $v0, .L80016238
    /* 69FC 800161FC 21102002 */   addu      $v0, $s1, $zero
    /* 6A00 80016200 1180013C */  lui        $at, %hi(D_8010BA20)
    /* 6A04 80016204 21083000 */  addu       $at, $at, $s0
    /* 6A08 80016208 20BA2390 */  lbu        $v1, %lo(D_8010BA20)($at)
    /* 6A0C 8001620C 00000000 */  nop
    /* 6A10 80016210 20006230 */  andi       $v0, $v1, 0x20
    /* 6A14 80016214 06006010 */  beqz       $v1, .L80016230
    /* 6A18 80016218 25882202 */   or        $s1, $s1, $v0
    /* 6A1C 8001621C 1680043C */  lui        $a0, %hi(D_80158860)
    /* 6A20 80016220 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* 6A24 80016224 21280002 */  addu       $a1, $s0, $zero
    /* 6A28 80016228 B952000C */  jal        func_80014AE4
    /* 6A2C 8001622C 21300000 */   addu      $a2, $zero, $zero
  .L80016230:
    /* 6A30 80016230 7D580008 */  j          .L800161F4
    /* 6A34 80016234 01001026 */   addiu     $s0, $s0, 0x1
  .L80016238:
    /* 6A38 80016238 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6A3C 8001623C 1400B18F */  lw         $s1, 0x14($sp)
    /* 6A40 80016240 1000B08F */  lw         $s0, 0x10($sp)
    /* 6A44 80016244 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6A48 80016248 0800E003 */  jr         $ra
    /* 6A4C 8001624C 00000000 */   nop
endlabel func_800161DC
