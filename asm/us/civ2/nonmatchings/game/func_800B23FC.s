.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B23FC, 0x60

glabel func_800B23FC
    /* A2BFC 800B23FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2C00 800B2400 1400BFAF */  sw         $ra, 0x14($sp)
    /* A2C04 800B2404 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2C08 800B2408 21808000 */  addu       $s0, $a0, $zero
    /* A2C0C 800B240C 1C00028E */  lw         $v0, 0x1C($s0)
    /* A2C10 800B2410 00000000 */  nop
    /* A2C14 800B2414 07004014 */  bnez       $v0, .L800B2434
    /* A2C18 800B2418 00000000 */   nop
    /* A2C1C 800B241C 7FC8020C */  jal        func_800B21FC
    /* A2C20 800B2420 00000000 */   nop
    /* A2C24 800B2424 08004010 */  beqz       $v0, .L800B2448
    /* A2C28 800B2428 00000000 */   nop
    /* A2C2C 800B242C 12C90208 */  j          .L800B2448
    /* A2C30 800B2430 6C0102AE */   sw        $v0, 0x16C($s0)
  .L800B2434:
    /* A2C34 800B2434 5DC8020C */  jal        func_800B2174
    /* A2C38 800B2438 21200002 */   addu      $a0, $s0, $zero
    /* A2C3C 800B243C 02004010 */  beqz       $v0, .L800B2448
    /* A2C40 800B2440 00000000 */   nop
    /* A2C44 800B2444 680102AE */  sw         $v0, 0x168($s0)
  .L800B2448:
    /* A2C48 800B2448 1400BF8F */  lw         $ra, 0x14($sp)
    /* A2C4C 800B244C 1000B08F */  lw         $s0, 0x10($sp)
    /* A2C50 800B2450 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2C54 800B2454 0800E003 */  jr         $ra
    /* A2C58 800B2458 00000000 */   nop
endlabel func_800B23FC
