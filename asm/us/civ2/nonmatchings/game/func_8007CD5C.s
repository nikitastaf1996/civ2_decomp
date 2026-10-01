.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CD5C, 0xA4

glabel func_8007CD5C
    /* 6D55C 8007CD5C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6D560 8007CD60 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6D564 8007CD64 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6D568 8007CD68 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6D56C 8007CD6C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6D570 8007CD70 21988000 */  addu       $s3, $a0, $zero
    /* 6D574 8007CD74 18006006 */  bltz       $s3, .L8007CDD8
    /* 6D578 8007CD78 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6D57C 8007CD7C 40801300 */  sll        $s0, $s3, 1
    /* 6D580 8007CD80 21801302 */  addu       $s0, $s0, $s3
    /* 6D584 8007CD84 80801000 */  sll        $s0, $s0, 2
    /* 6D588 8007CD88 21801302 */  addu       $s0, $s0, $s3
    /* 6D58C 8007CD8C 40801000 */  sll        $s0, $s0, 1
    /* 6D590 8007CD90 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6D594 8007CD94 21083000 */  addu       $at, $at, $s0
    /* 6D598 8007CD98 B4D63184 */  lh         $s1, %lo(D_8010D6B4)($at)
    /* 6D59C 8007CD9C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6D5A0 8007CDA0 21083000 */  addu       $at, $at, $s0
    /* 6D5A4 8007CDA4 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 6D5A8 8007CDA8 21282002 */  addu       $a1, $s1, $zero
    /* 6D5AC 8007CDAC 36EF010C */  jal        func_8007BCD8
    /* 6D5B0 8007CDB0 21304002 */   addu      $a2, $s2, $zero
    /* 6D5B4 8007CDB4 21206002 */  addu       $a0, $s3, $zero
    /* 6D5B8 8007CDB8 FDB9000C */  jal        func_8002E7F4
    /* 6D5BC 8007CDBC 21280000 */   addu      $a1, $zero, $zero
    /* 6D5C0 8007CDC0 21202002 */  addu       $a0, $s1, $zero
    /* 6D5C4 8007CDC4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6D5C8 8007CDC8 21083000 */  addu       $at, $at, $s0
    /* 6D5CC 8007CDCC BBD62680 */  lb         $a2, %lo(D_8010D6BB)($at)
    /* 6D5D0 8007CDD0 6D7C020C */  jal        func_8009F1B4
    /* 6D5D4 8007CDD4 21284002 */   addu      $a1, $s2, $zero
  .L8007CDD8:
    /* 6D5D8 8007CDD8 1280013C */  lui        $at, %hi(D_8011A268)
    /* 6D5DC 8007CDDC 68A233A4 */  sh         $s3, %lo(D_8011A268)($at)
    /* 6D5E0 8007CDE0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6D5E4 8007CDE4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6D5E8 8007CDE8 1800B28F */  lw         $s2, 0x18($sp)
    /* 6D5EC 8007CDEC 1400B18F */  lw         $s1, 0x14($sp)
    /* 6D5F0 8007CDF0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D5F4 8007CDF4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6D5F8 8007CDF8 0800E003 */  jr         $ra
    /* 6D5FC 8007CDFC 00000000 */   nop
endlabel func_8007CD5C
