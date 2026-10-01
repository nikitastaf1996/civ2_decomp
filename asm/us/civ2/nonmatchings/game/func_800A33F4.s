.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A33F4, 0x98

glabel func_800A33F4
    /* 93BF4 800A33F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 93BF8 800A33F8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 93BFC 800A33FC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 93C00 800A3400 9C05828F */  lw         $v0, %gp_rel(D_80158A74)($gp)
    /* 93C04 800A3404 00000000 */  nop
    /* 93C08 800A3408 0B004010 */  beqz       $v0, .L800A3438
    /* 93C0C 800A340C 21808000 */   addu      $s0, $a0, $zero
    /* 93C10 800A3410 9805828F */  lw         $v0, %gp_rel(D_80158A70)($gp)
    /* 93C14 800A3414 00000000 */  nop
    /* 93C18 800A3418 08004224 */  addiu      $v0, $v0, 0x8
    /* 93C1C 800A341C 980582AF */  sw         $v0, %gp_rel(D_80158A70)($gp)
    /* 93C20 800A3420 F0004228 */  slti       $v0, $v0, 0xF0
    /* 93C24 800A3424 0C004014 */  bnez       $v0, .L800A3458
    /* 93C28 800A3428 00000000 */   nop
    /* 93C2C 800A342C 9C0580AF */  sw         $zero, %gp_rel(D_80158A74)($gp)
    /* 93C30 800A3430 168D0208 */  j          .L800A3458
    /* 93C34 800A3434 00000000 */   nop
  .L800A3438:
    /* 93C38 800A3438 9805828F */  lw         $v0, %gp_rel(D_80158A70)($gp)
    /* 93C3C 800A343C 00000000 */  nop
    /* 93C40 800A3440 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 93C44 800A3444 980582AF */  sw         $v0, %gp_rel(D_80158A70)($gp)
    /* 93C48 800A3448 21004228 */  slti       $v0, $v0, 0x21
    /* 93C4C 800A344C 02004010 */  beqz       $v0, .L800A3458
    /* 93C50 800A3450 01000224 */   addiu     $v0, $zero, 0x1
    /* 93C54 800A3454 9C0582AF */  sw         $v0, %gp_rel(D_80158A74)($gp)
  .L800A3458:
    /* 93C58 800A3458 98058487 */  lh         $a0, %gp_rel(D_80158A70)($gp)
    /* 93C5C 800A345C 88E9030C */  jal        func_800FA620
    /* 93C60 800A3460 00000000 */   nop
    /* 93C64 800A3464 040002A2 */  sb         $v0, 0x4($s0)
    /* 93C68 800A3468 050000A2 */  sb         $zero, 0x5($s0)
    /* 93C6C 800A346C 88E9030C */  jal        func_800FA620
    /* 93C70 800A3470 20000424 */   addiu     $a0, $zero, 0x20
    /* 93C74 800A3474 060002A2 */  sb         $v0, 0x6($s0)
    /* 93C78 800A3478 1400BF8F */  lw         $ra, 0x14($sp)
    /* 93C7C 800A347C 1000B08F */  lw         $s0, 0x10($sp)
    /* 93C80 800A3480 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 93C84 800A3484 0800E003 */  jr         $ra
    /* 93C88 800A3488 00000000 */   nop
endlabel func_800A33F4
