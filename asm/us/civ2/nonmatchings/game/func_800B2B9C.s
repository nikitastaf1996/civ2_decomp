.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2B9C, 0x124

glabel func_800B2B9C
    /* A339C 800B2B9C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A33A0 800B2BA0 2800BFAF */  sw         $ra, 0x28($sp)
    /* A33A4 800B2BA4 2400B3AF */  sw         $s3, 0x24($sp)
    /* A33A8 800B2BA8 2000B2AF */  sw         $s2, 0x20($sp)
    /* A33AC 800B2BAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A33B0 800B2BB0 1800B0AF */  sw         $s0, 0x18($sp)
    /* A33B4 800B2BB4 21808000 */  addu       $s0, $a0, $zero
    /* A33B8 800B2BB8 2190A000 */  addu       $s2, $a1, $zero
    /* A33BC 800B2BBC 04020386 */  lh         $v1, 0x204($s0)
    /* A33C0 800B2BC0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A33C4 800B2BC4 0C006214 */  bne        $v1, $v0, .L800B2BF8
    /* A33C8 800B2BC8 2198E000 */   addu      $s3, $a3, $zero
    /* A33CC 800B2BCC 3400028E */  lw         $v0, 0x34($s0)
    /* A33D0 800B2BD0 00000000 */  nop
    /* A33D4 800B2BD4 C21F0200 */  srl        $v1, $v0, 31
    /* A33D8 800B2BD8 21104300 */  addu       $v0, $v0, $v1
    /* A33DC 800B2BDC 43880200 */  sra        $s1, $v0, 1
    /* A33E0 800B2BE0 AD87030C */  jal        func_800E1EB4
    /* A33E4 800B2BE4 21204002 */   addu      $a0, $s2, $zero
    /* A33E8 800B2BE8 40180200 */  sll        $v1, $v0, 1
    /* A33EC 800B2BEC 21186200 */  addu       $v1, $v1, $v0
    /* A33F0 800B2BF0 01CB0208 */  j          .L800B2C04
    /* A33F4 800B2BF4 23882302 */   subu      $s1, $s1, $v1
  .L800B2BF8:
    /* A33F8 800B2BF8 DC00028E */  lw         $v0, 0xDC($s0)
    /* A33FC 800B2BFC 00000000 */  nop
    /* A3400 800B2C00 2188C200 */  addu       $s1, $a2, $v0
  .L800B2C04:
    /* A3404 800B2C04 14020296 */  lhu        $v0, 0x214($s0)
    /* A3408 800B2C08 00000000 */  nop
    /* A340C 800B2C0C 23386202 */  subu       $a3, $s3, $v0
    /* A3410 800B2C10 001C0700 */  sll        $v1, $a3, 16
    /* A3414 800B2C14 031C0300 */  sra        $v1, $v1, 16
    /* A3418 800B2C18 D000028E */  lw         $v0, 0xD0($s0)
    /* A341C 800B2C1C 00000000 */  nop
    /* A3420 800B2C20 2A206200 */  slt        $a0, $v1, $v0
    /* A3424 800B2C24 01008438 */  xori       $a0, $a0, 0x1
    /* A3428 800B2C28 23186200 */  subu       $v1, $v1, $v0
    /* A342C 800B2C2C 3800028E */  lw         $v0, 0x38($s0)
    /* A3430 800B2C30 00000000 */  nop
    /* A3434 800B2C34 F4FF4224 */  addiu      $v0, $v0, -0xC
    /* A3438 800B2C38 2A104300 */  slt        $v0, $v0, $v1
    /* A343C 800B2C3C 01004238 */  xori       $v0, $v0, 0x1
    /* A3440 800B2C40 24208200 */  and        $a0, $a0, $v0
    /* A3444 800B2C44 16008010 */  beqz       $a0, .L800B2CA0
    /* A3448 800B2C48 2128E000 */   addu      $a1, $a3, $zero
    /* A344C 800B2C4C 1000B1A7 */  sh         $s1, 0x10($sp)
    /* A3450 800B2C50 1200A5A7 */  sh         $a1, 0x12($sp)
    /* A3454 800B2C54 40012226 */  addiu      $v0, $s1, 0x140
    /* A3458 800B2C58 1400A2A7 */  sh         $v0, 0x14($sp)
    /* A345C 800B2C5C 0C00E224 */  addiu      $v0, $a3, 0xC
    /* A3460 800B2C60 1600A2A7 */  sh         $v0, 0x16($sp)
    /* A3464 800B2C64 D001028E */  lw         $v0, 0x1D0($s0)
    /* A3468 800B2C68 00000000 */  nop
    /* A346C 800B2C6C 07004014 */  bnez       $v0, .L800B2C8C
    /* A3470 800B2C70 10000724 */   addiu     $a3, $zero, 0x10
    /* A3474 800B2C74 21204002 */  addu       $a0, $s2, $zero
    /* A3478 800B2C78 1000A527 */  addiu      $a1, $sp, 0x10
    /* A347C 800B2C7C DC0F040C */  jal        func_80103F70
    /* A3480 800B2C80 10000624 */   addiu     $a2, $zero, 0x10
    /* A3484 800B2C84 28CB0208 */  j          .L800B2CA0
    /* A3488 800B2C88 D00102AE */   sw        $v0, 0x1D0($s0)
  .L800B2C8C:
    /* A348C 800B2C8C D001048E */  lw         $a0, 0x1D0($s0)
    /* A3490 800B2C90 21284002 */  addu       $a1, $s2, $zero
    /* A3494 800B2C94 1000A627 */  addiu      $a2, $sp, 0x10
    /* A3498 800B2C98 5511040C */  jal        func_80104554
    /* A349C 800B2C9C FFFFE730 */   andi      $a3, $a3, 0xFFFF
  .L800B2CA0:
    /* A34A0 800B2CA0 2800BF8F */  lw         $ra, 0x28($sp)
    /* A34A4 800B2CA4 2400B38F */  lw         $s3, 0x24($sp)
    /* A34A8 800B2CA8 2000B28F */  lw         $s2, 0x20($sp)
    /* A34AC 800B2CAC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A34B0 800B2CB0 1800B08F */  lw         $s0, 0x18($sp)
    /* A34B4 800B2CB4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A34B8 800B2CB8 0800E003 */  jr         $ra
    /* A34BC 800B2CBC 00000000 */   nop
endlabel func_800B2B9C
