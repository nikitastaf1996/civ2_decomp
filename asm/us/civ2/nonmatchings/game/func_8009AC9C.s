.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009AC9C, 0x15C

glabel func_8009AC9C
    /* 8B49C 8009AC9C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8B4A0 8009ACA0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8B4A4 8009ACA4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8B4A8 8009ACA8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8B4AC 8009ACAC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8B4B0 8009ACB0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8B4B4 8009ACB4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8B4B8 8009ACB8 21888000 */  addu       $s1, $a0, $zero
    /* 8B4BC 8009ACBC 2180A000 */  addu       $s0, $a1, $zero
    /* 8B4C0 8009ACC0 2198C000 */  addu       $s3, $a2, $zero
    /* 8B4C4 8009ACC4 1680023C */  lui        $v0, %hi(D_80158EE0)
    /* 8B4C8 8009ACC8 E08E428C */  lw         $v0, %lo(D_80158EE0)($v0)
    /* 8B4CC 8009ACCC 00000000 */  nop
    /* 8B4D0 8009ACD0 07004004 */  bltz       $v0, .L8009ACF0
    /* 8B4D4 8009ACD4 2190E000 */   addu      $s2, $a3, $zero
    /* 8B4D8 8009ACD8 06000216 */  bne        $s0, $v0, .L8009ACF4
    /* 8B4DC 8009ACDC 40101000 */   sll       $v0, $s0, 1
    /* 8B4E0 8009ACE0 D26A020C */  jal        func_8009AB48
    /* 8B4E4 8009ACE4 00000000 */   nop
    /* 8B4E8 8009ACE8 756B0208 */  j          .L8009ADD4
    /* 8B4EC 8009ACEC 00000000 */   nop
  .L8009ACF0:
    /* 8B4F0 8009ACF0 40101000 */  sll        $v0, $s0, 1
  .L8009ACF4:
    /* 8B4F4 8009ACF4 21105000 */  addu       $v0, $v0, $s0
    /* 8B4F8 8009ACF8 80100200 */  sll        $v0, $v0, 2
    /* 8B4FC 8009ACFC 21105000 */  addu       $v0, $v0, $s0
    /* 8B500 8009AD00 40300200 */  sll        $a2, $v0, 1
    /* 8B504 8009AD04 1280143C */  lui        $s4, %hi(D_8011A268)
    /* 8B508 8009AD08 68A29426 */  addiu      $s4, $s4, %lo(D_8011A268)
    /* 8B50C 8009AD0C 00008486 */  lh         $a0, 0x0($s4)
    /* 8B510 8009AD10 00000000 */  nop
    /* 8B514 8009AD14 40100400 */  sll        $v0, $a0, 1
    /* 8B518 8009AD18 21104400 */  addu       $v0, $v0, $a0
    /* 8B51C 8009AD1C 80100200 */  sll        $v0, $v0, 2
    /* 8B520 8009AD20 21104400 */  addu       $v0, $v0, $a0
    /* 8B524 8009AD24 40280200 */  sll        $a1, $v0, 1
    /* 8B528 8009AD28 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 8B52C 8009AD2C 21082600 */  addu       $at, $at, $a2
    /* 8B530 8009AD30 B4D62384 */  lh         $v1, %lo(D_8010D6B4)($at)
    /* 8B534 8009AD34 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 8B538 8009AD38 21082500 */  addu       $at, $at, $a1
    /* 8B53C 8009AD3C B4D62284 */  lh         $v0, %lo(D_8010D6B4)($at)
    /* 8B540 8009AD40 00000000 */  nop
    /* 8B544 8009AD44 1D006214 */  bne        $v1, $v0, .L8009ADBC
    /* 8B548 8009AD48 00000000 */   nop
    /* 8B54C 8009AD4C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 8B550 8009AD50 21082600 */  addu       $at, $at, $a2
    /* 8B554 8009AD54 B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* 8B558 8009AD58 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 8B55C 8009AD5C 21082500 */  addu       $at, $at, $a1
    /* 8B560 8009AD60 B6D62284 */  lh         $v0, %lo(D_8010D6B6)($at)
    /* 8B564 8009AD64 00000000 */  nop
    /* 8B568 8009AD68 14006214 */  bne        $v1, $v0, .L8009ADBC
    /* 8B56C 8009AD6C 00000000 */   nop
    /* 8B570 8009AD70 0D008292 */  lbu        $v0, 0xD($s4)
    /* 8B574 8009AD74 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 8B578 8009AD78 21082500 */  addu       $at, $at, $a1
    /* 8B57C 8009AD7C BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 8B580 8009AD80 00000000 */  nop
    /* 8B584 8009AD84 07106200 */  srav       $v0, $v0, $v1
    /* 8B588 8009AD88 01004230 */  andi       $v0, $v0, 0x1
    /* 8B58C 8009AD8C 0B004010 */  beqz       $v0, .L8009ADBC
    /* 8B590 8009AD90 00000000 */   nop
    /* 8B594 8009AD94 ABF9010C */  jal        func_8007E6AC
    /* 8B598 8009AD98 00000000 */   nop
    /* 8B59C 8009AD9C 07004010 */  beqz       $v0, .L8009ADBC
    /* 8B5A0 8009ADA0 21202002 */   addu      $a0, $s1, $zero
    /* 8B5A4 8009ADA4 00008586 */  lh         $a1, 0x0($s4)
    /* 8B5A8 8009ADA8 21306002 */  addu       $a2, $s3, $zero
    /* 8B5AC 8009ADAC D26A020C */  jal        func_8009AB48
    /* 8B5B0 8009ADB0 21384002 */   addu      $a3, $s2, $zero
    /* 8B5B4 8009ADB4 756B0208 */  j          .L8009ADD4
    /* 8B5B8 8009ADB8 00000000 */   nop
  .L8009ADBC:
    /* 8B5BC 8009ADBC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8B5C0 8009ADC0 21202002 */  addu       $a0, $s1, $zero
    /* 8B5C4 8009ADC4 21280002 */  addu       $a1, $s0, $zero
    /* 8B5C8 8009ADC8 04000624 */  addiu      $a2, $zero, 0x4
    /* 8B5CC 8009ADCC C46A020C */  jal        func_8009AB10
    /* 8B5D0 8009ADD0 21386002 */   addu      $a3, $s3, $zero
  .L8009ADD4:
    /* 8B5D4 8009ADD4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 8B5D8 8009ADD8 2800B48F */  lw         $s4, 0x28($sp)
    /* 8B5DC 8009ADDC 2400B38F */  lw         $s3, 0x24($sp)
    /* 8B5E0 8009ADE0 2000B28F */  lw         $s2, 0x20($sp)
    /* 8B5E4 8009ADE4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8B5E8 8009ADE8 1800B08F */  lw         $s0, 0x18($sp)
    /* 8B5EC 8009ADEC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8B5F0 8009ADF0 0800E003 */  jr         $ra
    /* 8B5F4 8009ADF4 00000000 */   nop
endlabel func_8009AC9C
