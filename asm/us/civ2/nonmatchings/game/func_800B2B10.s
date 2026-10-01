.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2B10, 0x8C

glabel func_800B2B10
    /* A3310 800B2B10 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A3314 800B2B14 2800BFAF */  sw         $ra, 0x28($sp)
    /* A3318 800B2B18 2400B1AF */  sw         $s1, 0x24($sp)
    /* A331C 800B2B1C 2000B0AF */  sw         $s0, 0x20($sp)
    /* A3320 800B2B20 2188A000 */  addu       $s1, $a1, $zero
    /* A3324 800B2B24 1900A0A3 */  sb         $zero, 0x19($sp)
    /* A3328 800B2B28 D000838C */  lw         $v1, 0xD0($a0)
    /* A332C 800B2B2C 00000000 */  nop
    /* A3330 800B2B30 2318E300 */  subu       $v1, $a3, $v1
    /* A3334 800B2B34 3800828C */  lw         $v0, 0x38($a0)
    /* A3338 800B2B38 00000000 */  nop
    /* A333C 800B2B3C F4FF4224 */  addiu      $v0, $v0, -0xC
    /* A3340 800B2B40 2A186200 */  slt        $v1, $v1, $v0
    /* A3344 800B2B44 09006010 */  beqz       $v1, .L800B2B6C
    /* A3348 800B2B48 2180C000 */   addu      $s0, $a2, $zero
    /* A334C 800B2B4C 00341000 */  sll        $a2, $s0, 16
    /* A3350 800B2B50 003C0700 */  sll        $a3, $a3, 16
    /* A3354 800B2B54 15000224 */  addiu      $v0, $zero, 0x15
    /* A3358 800B2B58 1000A2AF */  sw         $v0, 0x10($sp)
    /* A335C 800B2B5C 0000848C */  lw         $a0, 0x0($a0)
    /* A3360 800B2B60 03340600 */  sra        $a2, $a2, 16
    /* A3364 800B2B64 59E7030C */  jal        func_800F9D64
    /* A3368 800B2B68 033C0700 */   sra       $a3, $a3, 16
  .L800B2B6C:
    /* A336C 800B2B6C AD87030C */  jal        func_800E1EB4
    /* A3370 800B2B70 21202002 */   addu      $a0, $s1, $zero
    /* A3374 800B2B74 40180200 */  sll        $v1, $v0, 1
    /* A3378 800B2B78 21186200 */  addu       $v1, $v1, $v0
    /* A337C 800B2B7C 40180300 */  sll        $v1, $v1, 1
    /* A3380 800B2B80 21100302 */  addu       $v0, $s0, $v1
    /* A3384 800B2B84 2800BF8F */  lw         $ra, 0x28($sp)
    /* A3388 800B2B88 2400B18F */  lw         $s1, 0x24($sp)
    /* A338C 800B2B8C 2000B08F */  lw         $s0, 0x20($sp)
    /* A3390 800B2B90 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A3394 800B2B94 0800E003 */  jr         $ra
    /* A3398 800B2B98 00000000 */   nop
endlabel func_800B2B10
