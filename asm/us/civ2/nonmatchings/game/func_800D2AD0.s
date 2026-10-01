.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D2AD0, 0x340

glabel func_800D2AD0
    /* C32D0 800D2AD0 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* C32D4 800D2AD4 8000BFAF */  sw         $ra, 0x80($sp)
    /* C32D8 800D2AD8 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* C32DC 800D2ADC 7800B6AF */  sw         $s6, 0x78($sp)
    /* C32E0 800D2AE0 7400B5AF */  sw         $s5, 0x74($sp)
    /* C32E4 800D2AE4 7000B4AF */  sw         $s4, 0x70($sp)
    /* C32E8 800D2AE8 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* C32EC 800D2AEC 6800B2AF */  sw         $s2, 0x68($sp)
    /* C32F0 800D2AF0 6400B1AF */  sw         $s1, 0x64($sp)
    /* C32F4 800D2AF4 6000B0AF */  sw         $s0, 0x60($sp)
    /* C32F8 800D2AF8 21B8A000 */  addu       $s7, $a1, $zero
    /* C32FC 800D2AFC 1280053C */  lui        $a1, %hi(D_80122C54)
    /* C3300 800D2B00 542CA524 */  addiu      $a1, $a1, %lo(D_80122C54)
    /* C3304 800D2B04 0000A28C */  lw         $v0, 0x0($a1)
    /* C3308 800D2B08 00000000 */  nop
    /* C330C 800D2B0C 0C004010 */  beqz       $v0, .L800D2B40
    /* C3310 800D2B10 21A88000 */   addu      $s5, $a0, $zero
    /* C3314 800D2B14 0A00E012 */  beqz       $s7, .L800D2B40
    /* C3318 800D2B18 48000224 */   addiu     $v0, $zero, 0x48
    /* C331C 800D2B1C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C3320 800D2B20 3000A427 */  addiu      $a0, $sp, 0x30
    /* C3324 800D2B24 E4FFA524 */  addiu      $a1, $a1, -0x1C
    /* C3328 800D2B28 1280063C */  lui        $a2, %hi(D_80121BF8)
    /* C332C 800D2B2C F81BC624 */  addiu      $a2, $a2, %lo(D_80121BF8)
    /* C3330 800D2B30 89EE030C */  jal        func_800FBA24
    /* C3334 800D2B34 BC000724 */   addiu     $a3, $zero, 0xBC
    /* C3338 800D2B38 784B0308 */  j          .L800D2DE0
    /* C333C 800D2B3C 00000000 */   nop
  .L800D2B40:
    /* C3340 800D2B40 3800B327 */  addiu      $s3, $sp, 0x38
    /* C3344 800D2B44 B59E030C */  jal        SetPolyG4
    /* C3348 800D2B48 21206002 */   addu      $a0, $s3, $zero
    /* C334C 800D2B4C 3C00A0A3 */  sb         $zero, 0x3C($sp)
    /* C3350 800D2B50 40000224 */  addiu      $v0, $zero, 0x40
    /* C3354 800D2B54 3D00A2A3 */  sb         $v0, 0x3D($sp)
    /* C3358 800D2B58 3E00A0A3 */  sb         $zero, 0x3E($sp)
    /* C335C 800D2B5C 4400A0A3 */  sb         $zero, 0x44($sp)
    /* C3360 800D2B60 4500A2A3 */  sb         $v0, 0x45($sp)
    /* C3364 800D2B64 4600A0A3 */  sb         $zero, 0x46($sp)
    /* C3368 800D2B68 4C00A0A3 */  sb         $zero, 0x4C($sp)
    /* C336C 800D2B6C F0000224 */  addiu      $v0, $zero, 0xF0
    /* C3370 800D2B70 4D00A2A3 */  sb         $v0, 0x4D($sp)
    /* C3374 800D2B74 4E00A0A3 */  sb         $zero, 0x4E($sp)
    /* C3378 800D2B78 5400A0A3 */  sb         $zero, 0x54($sp)
    /* C337C 800D2B7C 5500A2A3 */  sb         $v0, 0x55($sp)
    /* C3380 800D2B80 5600A0A3 */  sb         $zero, 0x56($sp)
    /* C3384 800D2B84 BC001224 */  addiu      $s2, $zero, 0xBC
    /* C3388 800D2B88 4000B2A7 */  sh         $s2, 0x40($sp)
    /* C338C 800D2B8C 48001124 */  addiu      $s1, $zero, 0x48
    /* C3390 800D2B90 4200B1A7 */  sh         $s1, 0x42($sp)
    /* C3394 800D2B94 28010224 */  addiu      $v0, $zero, 0x128
    /* C3398 800D2B98 4800A2A7 */  sh         $v0, 0x48($sp)
    /* C339C 800D2B9C 4A00B1A7 */  sh         $s1, 0x4A($sp)
    /* C33A0 800D2BA0 5000B2A7 */  sh         $s2, 0x50($sp)
    /* C33A4 800D2BA4 98001024 */  addiu      $s0, $zero, 0x98
    /* C33A8 800D2BA8 5200B0A7 */  sh         $s0, 0x52($sp)
    /* C33AC 800D2BAC 5800A2A7 */  sh         $v0, 0x58($sp)
    /* C33B0 800D2BB0 5A00B0A7 */  sh         $s0, 0x5A($sp)
    /* C33B4 800D2BB4 928E030C */  jal        DrawPrim
    /* C33B8 800D2BB8 21206002 */   addu      $a0, $s3, $zero
    /* C33BC 800D2BBC 2C8D030C */  jal        DrawSync
    /* C33C0 800D2BC0 21200000 */   addu      $a0, $zero, $zero
    /* C33C4 800D2BC4 2800B2A7 */  sh         $s2, 0x28($sp)
    /* C33C8 800D2BC8 2A00B1A7 */  sh         $s1, 0x2A($sp)
    /* C33CC 800D2BCC 2C010224 */  addiu      $v0, $zero, 0x12C
    /* C33D0 800D2BD0 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* C33D4 800D2BD4 2E00B0A7 */  sh         $s0, 0x2E($sp)
    /* C33D8 800D2BD8 1680023C */  lui        $v0, %hi(D_80158864)
    /* C33DC 800D2BDC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C33E0 800D2BE0 00000000 */  nop
    /* C33E4 800D2BE4 09004480 */  lb         $a0, 0x9($v0)
    /* C33E8 800D2BE8 1000A0AF */  sw         $zero, 0x10($sp)
    /* C33EC 800D2BEC 01008424 */  addiu      $a0, $a0, 0x1
    /* C33F0 800D2BF0 0B000524 */  addiu      $a1, $zero, 0xB
    /* C33F4 800D2BF4 70000624 */  addiu      $a2, $zero, 0x70
    /* C33F8 800D2BF8 2A1A030C */  jal        func_800C68A8
    /* C33FC 800D2BFC 21380000 */   addu      $a3, $zero, $zero
    /* C3400 800D2C00 2E00A687 */  lh         $a2, 0x2E($sp)
    /* C3404 800D2C04 2A00A287 */  lh         $v0, 0x2A($sp)
    /* C3408 800D2C08 00000000 */  nop
    /* C340C 800D2C0C 2330C200 */  subu       $a2, $a2, $v0
    /* C3410 800D2C10 00340600 */  sll        $a2, $a2, 16
    /* C3414 800D2C14 1000A0AF */  sw         $zero, 0x10($sp)
    /* C3418 800D2C18 1680043C */  lui        $a0, %hi(D_8015853C)
    /* C341C 800D2C1C 3C85848C */  lw         $a0, %lo(D_8015853C)($a0)
    /* C3420 800D2C20 0E000524 */  addiu      $a1, $zero, 0xE
    /* C3424 800D2C24 03340600 */  sra        $a2, $a2, 16
    /* C3428 800D2C28 2A1A030C */  jal        func_800C68A8
    /* C342C 800D2C2C 21380000 */   addu      $a3, $zero, $zero
    /* C3430 800D2C30 21A04000 */  addu       $s4, $v0, $zero
    /* C3434 800D2C34 21980000 */  addu       $s3, $zero, $zero
    /* C3438 800D2C38 1680023C */  lui        $v0, %hi(D_80158864)
    /* C343C 800D2C3C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3440 800D2C40 00000000 */  nop
    /* C3444 800D2C44 1C005184 */  lh         $s1, 0x1C($v0)
    /* C3448 800D2C48 2800B687 */  lh         $s6, 0x28($sp)
    /* C344C 800D2C4C 2A00B287 */  lh         $s2, 0x2A($sp)
    /* C3450 800D2C50 E40EA48E */  lw         $a0, 0xEE4($s5)
    /* C3454 800D2C54 00000000 */  nop
    /* C3458 800D2C58 80240400 */  sll        $a0, $a0, 18
    /* C345C 800D2C5C 03240400 */  sra        $a0, $a0, 16
    /* C3460 800D2C60 D0EC030C */  jal        func_800FB340
    /* C3464 800D2C64 08000524 */   addiu     $a1, $zero, 0x8
  .L800D2C68:
    /* C3468 800D2C68 2E00201A */  blez       $s1, .L800D2D24
    /* C346C 800D2C6C 01000424 */   addiu     $a0, $zero, 0x1
    /* C3470 800D2C70 1680023C */  lui        $v0, %hi(D_8015853C)
    /* C3474 800D2C74 3C85428C */  lw         $v0, %lo(D_8015853C)($v0)
    /* C3478 800D2C78 00000000 */  nop
    /* C347C 800D2C7C 2A106202 */  slt        $v0, $s3, $v0
    /* C3480 800D2C80 28004010 */  beqz       $v0, .L800D2D24
    /* C3484 800D2C84 00000000 */   nop
    /* C3488 800D2C88 1680023C */  lui        $v0, %hi(D_80158864)
    /* C348C 800D2C8C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3490 800D2C90 00000000 */  nop
    /* C3494 800D2C94 09004280 */  lb         $v0, 0x9($v0)
    /* C3498 800D2C98 00000000 */  nop
    /* C349C 800D2C9C 01004324 */  addiu      $v1, $v0, 0x1
    /* C34A0 800D2CA0 2A107100 */  slt        $v0, $v1, $s1
    /* C34A4 800D2CA4 02004010 */  beqz       $v0, .L800D2CB0
    /* C34A8 800D2CA8 21802002 */   addu      $s0, $s1, $zero
    /* C34AC 800D2CAC 21806000 */  addu       $s0, $v1, $zero
  .L800D2CB0:
    /* C34B0 800D2CB0 2C00A387 */  lh         $v1, 0x2C($sp)
    /* C34B4 800D2CB4 2800A287 */  lh         $v0, 0x28($sp)
    /* C34B8 800D2CB8 00000000 */  nop
    /* C34BC 800D2CBC 23186200 */  subu       $v1, $v1, $v0
    /* C34C0 800D2CC0 001C0300 */  sll        $v1, $v1, 16
    /* C34C4 800D2CC4 031C0300 */  sra        $v1, $v1, 16
    /* C34C8 800D2CC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* C34CC 800D2CCC 1680023C */  lui        $v0, %hi(D_80158864)
    /* C34D0 800D2CD0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C34D4 800D2CD4 00000000 */  nop
    /* C34D8 800D2CD8 09004280 */  lb         $v0, 0x9($v0)
    /* C34DC 800D2CDC 00000000 */  nop
    /* C34E0 800D2CE0 01004224 */  addiu      $v0, $v0, 0x1
    /* C34E4 800D2CE4 1400A2AF */  sw         $v0, 0x14($sp)
    /* C34E8 800D2CE8 0B000224 */  addiu      $v0, $zero, 0xB
    /* C34EC 800D2CEC 1800A2AF */  sw         $v0, 0x18($sp)
    /* C34F0 800D2CF0 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* C34F4 800D2CF4 01000224 */  addiu      $v0, $zero, 0x1
    /* C34F8 800D2CF8 2000A2AF */  sw         $v0, 0x20($sp)
    /* C34FC 800D2CFC 2120A002 */  addu       $a0, $s5, $zero
    /* C3500 800D2D00 1380053C */  lui        $a1, %hi(D_8013044C)
    /* C3504 800D2D04 4C04A524 */  addiu      $a1, $a1, %lo(D_8013044C)
    /* C3508 800D2D08 2130C002 */  addu       $a2, $s6, $zero
    /* C350C 800D2D0C 651A030C */  jal        func_800C6994
    /* C3510 800D2D10 21384002 */   addu      $a3, $s2, $zero
    /* C3514 800D2D14 23883002 */  subu       $s1, $s1, $s0
    /* C3518 800D2D18 01007326 */  addiu      $s3, $s3, 0x1
    /* C351C 800D2D1C 1A4B0308 */  j          .L800D2C68
    /* C3520 800D2D20 21905402 */   addu      $s2, $s2, $s4
  .L800D2D24:
    /* C3524 800D2D24 D0EC030C */  jal        func_800FB340
    /* C3528 800D2D28 01000524 */   addiu     $a1, $zero, 0x1
    /* C352C 800D2D2C 21800000 */  addu       $s0, $zero, $zero
    /* C3530 800D2D30 1680043C */  lui        $a0, %hi(D_80158860)
    /* C3534 800D2D34 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C3538 800D2D38 C826020C */  jal        func_80089B20
    /* C353C 800D2D3C 03000524 */   addiu     $a1, $zero, 0x3
    /* C3540 800D2D40 09004014 */  bnez       $v0, .L800D2D68
    /* C3544 800D2D44 00000000 */   nop
    /* C3548 800D2D48 1680023C */  lui        $v0, %hi(D_80158864)
    /* C354C 800D2D4C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3550 800D2D50 00000000 */  nop
    /* C3554 800D2D54 08004480 */  lb         $a0, 0x8($v0)
    /* C3558 800D2D58 C17B030C */  jal        func_800DEF04
    /* C355C 800D2D5C 21280000 */   addu      $a1, $zero, $zero
    /* C3560 800D2D60 02004010 */  beqz       $v0, .L800D2D6C
    /* C3564 800D2D64 00000000 */   nop
  .L800D2D68:
    /* C3568 800D2D68 01001024 */  addiu      $s0, $zero, 0x1
  .L800D2D6C:
    /* C356C 800D2D6C 11000012 */  beqz       $s0, .L800D2DB4
    /* C3570 800D2D70 00000000 */   nop
    /* C3574 800D2D74 2A00B287 */  lh         $s2, 0x2A($sp)
    /* C3578 800D2D78 1680023C */  lui        $v0, %hi(D_8015853C)
    /* C357C 800D2D7C 3C85428C */  lw         $v0, %lo(D_8015853C)($v0)
    /* C3580 800D2D80 00000000 */  nop
    /* C3584 800D2D84 43100200 */  sra        $v0, $v0, 1
    /* C3588 800D2D88 18008202 */  mult       $s4, $v0
    /* C358C 800D2D8C 2800A587 */  lh         $a1, 0x28($sp)
    /* C3590 800D2D90 2C00A687 */  lh         $a2, 0x2C($sp)
    /* C3594 800D2D94 2A000224 */  addiu      $v0, $zero, 0x2A
    /* C3598 800D2D98 1000A2AF */  sw         $v0, 0x10($sp)
    /* C359C 800D2D9C 1680043C */  lui        $a0, %hi(D_801587F8)
    /* C35A0 800D2DA0 F887848C */  lw         $a0, %lo(D_801587F8)($a0)
    /* C35A4 800D2DA4 FCFFC624 */  addiu      $a2, $a2, -0x4
    /* C35A8 800D2DA8 12400000 */  mflo       $t0
    /* C35AC 800D2DAC 8413020C */  jal        func_80084E10
    /* C35B0 800D2DB0 21384802 */   addu      $a3, $s2, $t0
  .L800D2DB4:
    /* C35B4 800D2DB4 0A00E012 */  beqz       $s7, .L800D2DE0
    /* C35B8 800D2DB8 50000224 */   addiu     $v0, $zero, 0x50
    /* C35BC 800D2DBC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C35C0 800D2DC0 1400A0AF */  sw         $zero, 0x14($sp)
    /* C35C4 800D2DC4 1800A0AF */  sw         $zero, 0x18($sp)
    /* C35C8 800D2DC8 1280043C */  lui        $a0, %hi(D_80122C38)
    /* C35CC 800D2DCC 382C8424 */  addiu      $a0, $a0, %lo(D_80122C38)
    /* C35D0 800D2DD0 BC000524 */  addiu      $a1, $zero, 0xBC
    /* C35D4 800D2DD4 48000624 */  addiu      $a2, $zero, 0x48
    /* C35D8 800D2DD8 90ED030C */  jal        func_800FB640
    /* C35DC 800D2DDC 70000724 */   addiu     $a3, $zero, 0x70
  .L800D2DE0:
    /* C35E0 800D2DE0 8000BF8F */  lw         $ra, 0x80($sp)
    /* C35E4 800D2DE4 7C00B78F */  lw         $s7, 0x7C($sp)
    /* C35E8 800D2DE8 7800B68F */  lw         $s6, 0x78($sp)
    /* C35EC 800D2DEC 7400B58F */  lw         $s5, 0x74($sp)
    /* C35F0 800D2DF0 7000B48F */  lw         $s4, 0x70($sp)
    /* C35F4 800D2DF4 6C00B38F */  lw         $s3, 0x6C($sp)
    /* C35F8 800D2DF8 6800B28F */  lw         $s2, 0x68($sp)
    /* C35FC 800D2DFC 6400B18F */  lw         $s1, 0x64($sp)
    /* C3600 800D2E00 6000B08F */  lw         $s0, 0x60($sp)
    /* C3604 800D2E04 8800BD27 */  addiu      $sp, $sp, 0x88
    /* C3608 800D2E08 0800E003 */  jr         $ra
    /* C360C 800D2E0C 00000000 */   nop
endlabel func_800D2AD0
