.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4B7C, 0x70

glabel func_800B4B7C
    /* A537C 800B4B7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A5380 800B4B80 1800BFAF */  sw         $ra, 0x18($sp)
    /* A5384 800B4B84 1400B1AF */  sw         $s1, 0x14($sp)
    /* A5388 800B4B88 1000B0AF */  sw         $s0, 0x10($sp)
    /* A538C 800B4B8C 21800000 */  addu       $s0, $zero, $zero
  .L800B4B90:
    /* A5390 800B4B90 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A5394 800B4B94 80881000 */  sll        $s1, $s0, 2
    /* A5398 800B4B98 21102202 */  addu       $v0, $s1, $v0
    /* A539C 800B4B9C D401448C */  lw         $a0, 0x1D4($v0)
    /* A53A0 800B4BA0 00000000 */  nop
    /* A53A4 800B4BA4 07008010 */  beqz       $a0, .L800B4BC4
    /* A53A8 800B4BA8 00000000 */   nop
    /* A53AC 800B4BAC E511040C */  jal        func_80104794
    /* A53B0 800B4BB0 00000000 */   nop
    /* A53B4 800B4BB4 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A53B8 800B4BB8 00000000 */  nop
    /* A53BC 800B4BBC 21102202 */  addu       $v0, $s1, $v0
    /* A53C0 800B4BC0 D40140AC */  sw         $zero, 0x1D4($v0)
  .L800B4BC4:
    /* A53C4 800B4BC4 01001026 */  addiu      $s0, $s0, 0x1
    /* A53C8 800B4BC8 0A00022A */  slti       $v0, $s0, 0xA
    /* A53CC 800B4BCC F0FF4014 */  bnez       $v0, .L800B4B90
    /* A53D0 800B4BD0 00000000 */   nop
    /* A53D4 800B4BD4 1800BF8F */  lw         $ra, 0x18($sp)
    /* A53D8 800B4BD8 1400B18F */  lw         $s1, 0x14($sp)
    /* A53DC 800B4BDC 1000B08F */  lw         $s0, 0x10($sp)
    /* A53E0 800B4BE0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A53E4 800B4BE4 0800E003 */  jr         $ra
    /* A53E8 800B4BE8 00000000 */   nop
endlabel func_800B4B7C
