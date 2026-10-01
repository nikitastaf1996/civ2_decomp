.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C2364, 0x1750

glabel func_800C2364
    /* B2B64 800C2364 F8FDBD27 */  addiu      $sp, $sp, -0x208
    /* B2B68 800C2368 01000424 */  addiu      $a0, $zero, 0x1
    /* B2B6C 800C236C 0402BFAF */  sw         $ra, 0x204($sp)
    /* B2B70 800C2370 0002BEAF */  sw         $fp, 0x200($sp)
    /* B2B74 800C2374 FC01B7AF */  sw         $s7, 0x1FC($sp)
    /* B2B78 800C2378 F801B6AF */  sw         $s6, 0x1F8($sp)
    /* B2B7C 800C237C F401B5AF */  sw         $s5, 0x1F4($sp)
    /* B2B80 800C2380 F001B4AF */  sw         $s4, 0x1F0($sp)
    /* B2B84 800C2384 EC01B3AF */  sw         $s3, 0x1EC($sp)
    /* B2B88 800C2388 E801B2AF */  sw         $s2, 0x1E8($sp)
    /* B2B8C 800C238C E401B1AF */  sw         $s1, 0x1E4($sp)
    /* B2B90 800C2390 7907040C */  jal        func_80101DE4
    /* B2B94 800C2394 E001B0AF */   sw        $s0, 0x1E0($sp)
    /* B2B98 800C2398 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* B2B9C 800C239C BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* B2BA0 800C23A0 00000000 */  nop
    /* B2BA4 800C23A4 0400448C */  lw         $a0, 0x4($v0)
    /* B2BA8 800C23A8 D707040C */  jal        func_80101F5C
    /* B2BAC 800C23AC 00000000 */   nop
    /* B2BB0 800C23B0 7801B027 */  addiu      $s0, $sp, 0x178
    /* B2BB4 800C23B4 21200002 */  addu       $a0, $s0, $zero
    /* B2BB8 800C23B8 21280000 */  addu       $a1, $zero, $zero
    /* B2BBC 800C23BC 40010224 */  addiu      $v0, $zero, 0x140
    /* B2BC0 800C23C0 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B2BC4 800C23C4 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B2BC8 800C23C8 7801A0A7 */  sh         $zero, 0x178($sp)
    /* B2BCC 800C23CC 7A01A0A7 */  sh         $zero, 0x17A($sp)
    /* B2BD0 800C23D0 A314020C */  jal        func_8008528C
    /* B2BD4 800C23D4 7E01A2A7 */   sh        $v0, 0x17E($sp)
    /* B2BD8 800C23D8 1280053C */  lui        $a1, %hi(D_80120DB0)
    /* B2BDC 800C23DC B00DA524 */  addiu      $a1, $a1, %lo(D_80120DB0)
    /* B2BE0 800C23E0 FC01A424 */  addiu      $a0, $a1, 0x1FC
    /* B2BE4 800C23E4 D001A627 */  addiu      $a2, $sp, 0x1D0
    /* B2BE8 800C23E8 21380002 */  addu       $a3, $s0, $zero
    /* B2BEC 800C23EC 06000324 */  addiu      $v1, $zero, 0x6
    /* B2BF0 800C23F0 3A010824 */  addiu      $t0, $zero, 0x13A
    /* B2BF4 800C23F4 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B2BF8 800C23F8 D601A2A7 */  sh         $v0, 0x1D6($sp)
    /* B2BFC 800C23FC 10000224 */  addiu      $v0, $zero, 0x10
    /* B2C00 800C2400 7A01A2A7 */  sh         $v0, 0x17A($sp)
    /* B2C04 800C2404 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B2C08 800C2408 D001A3A7 */  sh         $v1, 0x1D0($sp)
    /* B2C0C 800C240C D201A0A7 */  sh         $zero, 0x1D2($sp)
    /* B2C10 800C2410 D401A8A7 */  sh         $t0, 0x1D4($sp)
    /* B2C14 800C2414 7801A3A7 */  sh         $v1, 0x178($sp)
    /* B2C18 800C2418 7C01A8A7 */  sh         $t0, 0x17C($sp)
    /* B2C1C 800C241C 1FE4030C */  jal        func_800F907C
    /* B2C20 800C2420 7E01A2A7 */   sh        $v0, 0x17E($sp)
    /* B2C24 800C2424 1280023C */  lui        $v0, %hi(D_8012110C)
    /* B2C28 800C2428 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* B2C2C 800C242C 00000000 */  nop
    /* B2C30 800C2430 8F054014 */  bnez       $v0, .L800C3A70
    /* B2C34 800C2434 21880000 */   addu      $s1, $zero, $zero
    /* B2C38 800C2438 1280163C */  lui        $s6, %hi(D_801210C4)
    /* B2C3C 800C243C C410D68E */  lw         $s6, %lo(D_801210C4)($s6)
    /* B2C40 800C2440 01000424 */  addiu      $a0, $zero, 0x1
    /* B2C44 800C2444 1800A327 */  addiu      $v1, $sp, 0x18
  .L800C2448:
    /* B2C48 800C2448 600060AC */  sw         $zero, 0x60($v1)
    /* B2C4C 800C244C 400060AC */  sw         $zero, 0x40($v1)
    /* B2C50 800C2450 200060AC */  sw         $zero, 0x20($v1)
    /* B2C54 800C2454 E00060AC */  sw         $zero, 0xE0($v1)
    /* B2C58 800C2458 C00060AC */  sw         $zero, 0xC0($v1)
    /* B2C5C 800C245C A00060AC */  sw         $zero, 0xA0($v1)
    /* B2C60 800C2460 800060AC */  sw         $zero, 0x80($v1)
    /* B2C64 800C2464 200160AC */  sw         $zero, 0x120($v1)
    /* B2C68 800C2468 000160AC */  sw         $zero, 0x100($v1)
    /* B2C6C 800C246C 000064AC */  sw         $a0, 0x0($v1)
    /* B2C70 800C2470 01003126 */  addiu      $s1, $s1, 0x1
    /* B2C74 800C2474 0800222A */  slti       $v0, $s1, 0x8
    /* B2C78 800C2478 F3FF4014 */  bnez       $v0, .L800C2448
    /* B2C7C 800C247C 04006324 */   addiu     $v1, $v1, 0x4
    /* B2C80 800C2480 1680033C */  lui        $v1, %hi(D_801589B0)
    /* B2C84 800C2484 B089638C */  lw         $v1, %lo(D_801589B0)($v1)
    /* B2C88 800C2488 21200000 */  addu       $a0, $zero, $zero
    /* B2C8C 800C248C 1280063C */  lui        $a2, %hi(D_8011C30C)
    /* B2C90 800C2490 0CC3C624 */  addiu      $a2, $a2, %lo(D_8011C30C)
    /* B2C94 800C2494 0000C284 */  lh         $v0, 0x0($a2)
    /* B2C98 800C2498 00000000 */  nop
    /* B2C9C 800C249C 10004018 */  blez       $v0, .L800C24E0
    /* B2CA0 800C24A0 05006524 */   addiu     $a1, $v1, 0x5
    /* B2CA4 800C24A4 1800A727 */  addiu      $a3, $sp, 0x18
  .L800C24A8:
    /* B2CA8 800C24A8 0000A290 */  lbu        $v0, 0x0($a1)
    /* B2CAC 800C24AC 00000000 */  nop
    /* B2CB0 800C24B0 02890200 */  srl        $s1, $v0, 4
    /* B2CB4 800C24B4 80181100 */  sll        $v1, $s1, 2
    /* B2CB8 800C24B8 21186700 */  addu       $v1, $v1, $a3
    /* B2CBC 800C24BC C000628C */  lw         $v0, 0xC0($v1)
    /* B2CC0 800C24C0 00000000 */  nop
    /* B2CC4 800C24C4 01004224 */  addiu      $v0, $v0, 0x1
    /* B2CC8 800C24C8 C00062AC */  sw         $v0, 0xC0($v1)
    /* B2CCC 800C24CC 0000C284 */  lh         $v0, 0x0($a2)
    /* B2CD0 800C24D0 01008424 */  addiu      $a0, $a0, 0x1
    /* B2CD4 800C24D4 2A108200 */  slt        $v0, $a0, $v0
    /* B2CD8 800C24D8 F3FF4014 */  bnez       $v0, .L800C24A8
    /* B2CDC 800C24DC 0600A524 */   addiu     $a1, $a1, 0x6
  .L800C24E0:
    /* B2CE0 800C24E0 21980000 */  addu       $s3, $zero, $zero
    /* B2CE4 800C24E4 1800B427 */  addiu      $s4, $sp, 0x18
    /* B2CE8 800C24E8 1180173C */  lui        $s7, %hi(D_8010BA3C)
    /* B2CEC 800C24EC 3CBAF726 */  addiu      $s7, $s7, %lo(D_8010BA3C)
    /* B2CF0 800C24F0 1180123C */  lui        $s2, %hi(D_80113ED9)
    /* B2CF4 800C24F4 D93E5226 */  addiu      $s2, $s2, %lo(D_80113ED9)
    /* B2CF8 800C24F8 21A80000 */  addu       $s5, $zero, $zero
  .L800C24FC:
    /* B2CFC 800C24FC 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B2D00 800C2500 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B2D04 800C2504 00000000 */  nop
    /* B2D08 800C2508 2A106202 */  slt        $v0, $s3, $v0
    /* B2D0C 800C250C A0004010 */  beqz       $v0, .L800C2790
    /* B2D10 800C2510 00000000 */   nop
    /* B2D14 800C2514 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B2D18 800C2518 21083500 */  addu       $at, $at, $s5
    /* B2D1C 800C251C D83E3180 */  lb         $s1, %lo(D_80113ED8)($at)
    /* B2D20 800C2520 0C25020C */  jal        func_80089430
    /* B2D24 800C2524 21206002 */   addu      $a0, $s3, $zero
    /* B2D28 800C2528 0C63000C */  jal        func_80018C30
    /* B2D2C 800C252C 01000424 */   addiu     $a0, $zero, 0x1
    /* B2D30 800C2530 00004382 */  lb         $v1, 0x0($s2)
    /* B2D34 800C2534 80101100 */  sll        $v0, $s1, 2
    /* B2D38 800C2538 21305400 */  addu       $a2, $v0, $s4
    /* B2D3C 800C253C 0000C28C */  lw         $v0, 0x0($a2)
    /* B2D40 800C2540 1680053C */  lui        $a1, %hi(D_80158564)
    /* B2D44 800C2544 6485A58C */  lw         $a1, %lo(D_80158564)($a1)
    /* B2D48 800C2548 21104300 */  addu       $v0, $v0, $v1
    /* B2D4C 800C254C 1680033C */  lui        $v1, %hi(D_80158550)
    /* B2D50 800C2550 5085638C */  lw         $v1, %lo(D_80158550)($v1)
    /* B2D54 800C2554 0000C2AC */  sw         $v0, 0x0($a2)
    /* B2D58 800C2558 1680023C */  lui        $v0, %hi(D_8015854C)
    /* B2D5C 800C255C 4C85428C */  lw         $v0, %lo(D_8015854C)($v0)
    /* B2D60 800C2560 40180300 */  sll        $v1, $v1, 1
    /* B2D64 800C2564 21186200 */  addu       $v1, $v1, $v0
    /* B2D68 800C2568 A000C28C */  lw         $v0, 0xA0($a2)
    /* B2D6C 800C256C 00004482 */  lb         $a0, 0x0($s2)
    /* B2D70 800C2570 21104300 */  addu       $v0, $v0, $v1
    /* B2D74 800C2574 1680033C */  lui        $v1, %hi(D_80158568)
    /* B2D78 800C2578 6885638C */  lw         $v1, %lo(D_80158568)($v1)
    /* B2D7C 800C257C 21208500 */  addu       $a0, $a0, $a1
    /* B2D80 800C2580 A000C2AC */  sw         $v0, 0xA0($a2)
    /* B2D84 800C2584 2000C28C */  lw         $v0, 0x20($a2)
    /* B2D88 800C2588 23208300 */  subu       $a0, $a0, $v1
    /* B2D8C 800C258C 21104400 */  addu       $v0, $v0, $a0
    /* B2D90 800C2590 2000C2AC */  sw         $v0, 0x20($a2)
    /* B2D94 800C2594 00004482 */  lb         $a0, 0x0($s2)
    /* B2D98 800C2598 0000E28E */  lw         $v0, 0x0($s7)
    /* B2D9C 800C259C E000C38C */  lw         $v1, 0xE0($a2)
    /* B2DA0 800C25A0 40200400 */  sll        $a0, $a0, 1
    /* B2DA4 800C25A4 23104400 */  subu       $v0, $v0, $a0
    /* B2DA8 800C25A8 21186200 */  addu       $v1, $v1, $v0
    /* B2DAC 800C25AC E000C3AC */  sw         $v1, 0xE0($a2)
    /* B2DB0 800C25B0 0000E38E */  lw         $v1, 0x0($s7)
    /* B2DB4 800C25B4 0400E28E */  lw         $v0, 0x4($s7)
    /* B2DB8 800C25B8 0800E48E */  lw         $a0, 0x8($s7)
    /* B2DBC 800C25BC 21186200 */  addu       $v1, $v1, $v0
    /* B2DC0 800C25C0 2001C28C */  lw         $v0, 0x120($a2)
    /* B2DC4 800C25C4 21186400 */  addu       $v1, $v1, $a0
    /* B2DC8 800C25C8 21104300 */  addu       $v0, $v0, $v1
    /* B2DCC 800C25CC 2001C2AC */  sw         $v0, 0x120($a2)
    /* B2DD0 800C25D0 0001C28C */  lw         $v0, 0x100($a2)
    /* B2DD4 800C25D4 0400E38E */  lw         $v1, 0x4($s7)
    /* B2DD8 800C25D8 00000000 */  nop
    /* B2DDC 800C25DC 21104300 */  addu       $v0, $v0, $v1
    /* B2DE0 800C25E0 1680033C */  lui        $v1, %hi(D_80158544)
    /* B2DE4 800C25E4 4485638C */  lw         $v1, %lo(D_80158544)($v1)
    /* B2DE8 800C25E8 0001C2AC */  sw         $v0, 0x100($a2)
    /* B2DEC 800C25EC 01000224 */  addiu      $v0, $zero, 0x1
    /* B2DF0 800C25F0 2A104300 */  slt        $v0, $v0, $v1
    /* B2DF4 800C25F4 02004010 */  beqz       $v0, .L800C2600
    /* B2DF8 800C25F8 01000424 */   addiu     $a0, $zero, 0x1
    /* B2DFC 800C25FC 21206000 */  addu       $a0, $v1, $zero
  .L800C2600:
    /* B2E00 800C2600 0400E38E */  lw         $v1, 0x4($s7)
    /* B2E04 800C2604 00000000 */  nop
    /* B2E08 800C2608 1A006400 */  div        $zero, $v1, $a0
    /* B2E0C 800C260C 02008014 */  bnez       $a0, .L800C2618
    /* B2E10 800C2610 00000000 */   nop
    /* B2E14 800C2614 0D000700 */  break      7
  .L800C2618:
    /* B2E18 800C2618 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B2E1C 800C261C 04008114 */  bne        $a0, $at, .L800C2630
    /* B2E20 800C2620 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B2E24 800C2624 02006114 */  bne        $v1, $at, .L800C2630
    /* B2E28 800C2628 00000000 */   nop
    /* B2E2C 800C262C 0D000600 */  break      6
  .L800C2630:
    /* B2E30 800C2630 12180000 */  mflo       $v1
    /* B2E34 800C2634 1680013C */  lui        $at, %hi(D_80158544)
    /* B2E38 800C2638 448524AC */  sw         $a0, %lo(D_80158544)($at)
    /* B2E3C 800C263C 1180013C */  lui        $at, %hi(D_80113ED9)
    /* B2E40 800C2640 21083500 */  addu       $at, $at, $s5
    /* B2E44 800C2644 D93E2480 */  lb         $a0, %lo(D_80113ED9)($at)
    /* B2E48 800C2648 1680023C */  lui        $v0, %hi(D_801585B0)
    /* B2E4C 800C264C B085428C */  lw         $v0, %lo(D_801585B0)($v0)
    /* B2E50 800C2650 00000000 */  nop
    /* B2E54 800C2654 18004400 */  mult       $v0, $a0
    /* B2E58 800C2658 12100000 */  mflo       $v0
    /* B2E5C 800C265C 02004104 */  bgez       $v0, .L800C2668
    /* B2E60 800C2660 ECFF6324 */   addiu     $v1, $v1, -0x14
    /* B2E64 800C2664 03004224 */  addiu      $v0, $v0, 0x3
  .L800C2668:
    /* B2E68 800C2668 83100200 */  sra        $v0, $v0, 2
    /* B2E6C 800C266C 21186200 */  addu       $v1, $v1, $v0
    /* B2E70 800C2670 05006018 */  blez       $v1, .L800C2688
    /* B2E74 800C2674 21800000 */   addu      $s0, $zero, $zero
    /* B2E78 800C2678 4000C28C */  lw         $v0, 0x40($a2)
    /* B2E7C 800C267C 00000000 */  nop
    /* B2E80 800C2680 21104300 */  addu       $v0, $v0, $v1
    /* B2E84 800C2684 4000C2AC */  sw         $v0, 0x40($a2)
  .L800C2688:
    /* B2E88 800C2688 21206002 */  addu       $a0, $s3, $zero
    /* B2E8C 800C268C C826020C */  jal        func_80089B20
    /* B2E90 800C2690 03000524 */   addiu     $a1, $zero, 0x3
    /* B2E94 800C2694 05004014 */  bnez       $v0, .L800C26AC
    /* B2E98 800C2698 21202002 */   addu      $a0, $s1, $zero
    /* B2E9C 800C269C C17B030C */  jal        func_800DEF04
    /* B2EA0 800C26A0 21280000 */   addu      $a1, $zero, $zero
    /* B2EA4 800C26A4 02004010 */  beqz       $v0, .L800C26B0
    /* B2EA8 800C26A8 00000000 */   nop
  .L800C26AC:
    /* B2EAC 800C26AC 01001024 */  addiu      $s0, $zero, 0x1
  .L800C26B0:
    /* B2EB0 800C26B0 07000012 */  beqz       $s0, .L800C26D0
    /* B2EB4 800C26B4 80101100 */   sll       $v0, $s1, 2
    /* B2EB8 800C26B8 21105400 */  addu       $v0, $v0, $s4
    /* B2EBC 800C26BC 00004482 */  lb         $a0, 0x0($s2)
    /* B2EC0 800C26C0 6000438C */  lw         $v1, 0x60($v0)
    /* B2EC4 800C26C4 00000000 */  nop
    /* B2EC8 800C26C8 21186400 */  addu       $v1, $v1, $a0
    /* B2ECC 800C26CC 600043AC */  sw         $v1, 0x60($v0)
  .L800C26D0:
    /* B2ED0 800C26D0 21206002 */  addu       $a0, $s3, $zero
    /* B2ED4 800C26D4 C826020C */  jal        func_80089B20
    /* B2ED8 800C26D8 09000524 */   addiu     $a1, $zero, 0x9
    /* B2EDC 800C26DC 07004010 */  beqz       $v0, .L800C26FC
    /* B2EE0 800C26E0 80101100 */   sll       $v0, $s1, 2
    /* B2EE4 800C26E4 21105400 */  addu       $v0, $v0, $s4
    /* B2EE8 800C26E8 00004482 */  lb         $a0, 0x0($s2)
    /* B2EEC 800C26EC 6000438C */  lw         $v1, 0x60($v0)
    /* B2EF0 800C26F0 00000000 */  nop
    /* B2EF4 800C26F4 21186400 */  addu       $v1, $v1, $a0
    /* B2EF8 800C26F8 600043AC */  sw         $v1, 0x60($v0)
  .L800C26FC:
    /* B2EFC 800C26FC 21206002 */  addu       $a0, $s3, $zero
    /* B2F00 800C2700 C826020C */  jal        func_80089B20
    /* B2F04 800C2704 17000524 */   addiu     $a1, $zero, 0x17
    /* B2F08 800C2708 07004010 */  beqz       $v0, .L800C2728
    /* B2F0C 800C270C 80101100 */   sll       $v0, $s1, 2
    /* B2F10 800C2710 21105400 */  addu       $v0, $v0, $s4
    /* B2F14 800C2714 00004482 */  lb         $a0, 0x0($s2)
    /* B2F18 800C2718 6000438C */  lw         $v1, 0x60($v0)
    /* B2F1C 800C271C 00000000 */  nop
    /* B2F20 800C2720 21186400 */  addu       $v1, $v1, $a0
    /* B2F24 800C2724 600043AC */  sw         $v1, 0x60($v0)
  .L800C2728:
    /* B2F28 800C2728 21206002 */  addu       $a0, $s3, $zero
    /* B2F2C 800C272C C826020C */  jal        func_80089B20
    /* B2F30 800C2730 06000524 */   addiu     $a1, $zero, 0x6
    /* B2F34 800C2734 07004010 */  beqz       $v0, .L800C2754
    /* B2F38 800C2738 80101100 */   sll       $v0, $s1, 2
    /* B2F3C 800C273C 21105400 */  addu       $v0, $v0, $s4
    /* B2F40 800C2740 00004482 */  lb         $a0, 0x0($s2)
    /* B2F44 800C2744 8000438C */  lw         $v1, 0x80($v0)
    /* B2F48 800C2748 00000000 */  nop
    /* B2F4C 800C274C 21186400 */  addu       $v1, $v1, $a0
    /* B2F50 800C2750 800043AC */  sw         $v1, 0x80($v0)
  .L800C2754:
    /* B2F54 800C2754 21206002 */  addu       $a0, $s3, $zero
    /* B2F58 800C2758 C826020C */  jal        func_80089B20
    /* B2F5C 800C275C 0C000524 */   addiu     $a1, $zero, 0xC
    /* B2F60 800C2760 07004010 */  beqz       $v0, .L800C2780
    /* B2F64 800C2764 80101100 */   sll       $v0, $s1, 2
    /* B2F68 800C2768 21105400 */  addu       $v0, $v0, $s4
    /* B2F6C 800C276C 00004482 */  lb         $a0, 0x0($s2)
    /* B2F70 800C2770 8000438C */  lw         $v1, 0x80($v0)
    /* B2F74 800C2774 00000000 */  nop
    /* B2F78 800C2778 21186400 */  addu       $v1, $v1, $a0
    /* B2F7C 800C277C 800043AC */  sw         $v1, 0x80($v0)
  .L800C2780:
    /* B2F80 800C2780 58005226 */  addiu      $s2, $s2, 0x58
    /* B2F84 800C2784 5800B526 */  addiu      $s5, $s5, 0x58
    /* B2F88 800C2788 3F090308 */  j          .L800C24FC
    /* B2F8C 800C278C 01007326 */   addiu     $s3, $s3, 0x1
  .L800C2790:
    /* B2F90 800C2790 1280133C */  lui        $s3, %hi(D_80120D84)
    /* B2F94 800C2794 840D7326 */  addiu      $s3, $s3, %lo(D_80120D84)
    /* B2F98 800C2798 DC49020C */  jal        func_80092770
    /* B2F9C 800C279C 21206002 */   addu      $a0, $s3, $zero
    /* B2FA0 800C27A0 8803628E */  lw         $v0, 0x388($s3)
    /* B2FA4 800C27A4 00000000 */  nop
    /* B2FA8 800C27A8 25004014 */  bnez       $v0, .L800C2840
    /* B2FAC 800C27AC 28001224 */   addiu     $s2, $zero, 0x28
    /* B2FB0 800C27B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2FB4 800C27B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2FB8 800C27B8 CB1A030C */  jal        func_800C6B2C
    /* B2FBC 800C27BC 00000000 */   nop
    /* B2FC0 800C27C0 8A54020C */  jal        func_80095228
    /* B2FC4 800C27C4 2120C002 */   addu      $a0, $s6, $zero
    /* B2FC8 800C27C8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2FCC 800C27CC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2FD0 800C27D0 9987030C */  jal        func_800E1E64
    /* B2FD4 800C27D4 21284000 */   addu      $a1, $v0, $zero
    /* B2FD8 800C27D8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2FDC 800C27DC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2FE0 800C27E0 CD1A030C */  jal        func_800C6B34
    /* B2FE4 800C27E4 00000000 */   nop
    /* B2FE8 800C27E8 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B2FEC 800C27EC 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B2FF0 800C27F0 00000000 */  nop
    /* B2FF4 800C27F4 5805448C */  lw         $a0, 0x558($v0)
    /* B2FF8 800C27F8 A63A030C */  jal        func_800CEA98
    /* B2FFC 800C27FC 00000000 */   nop
    /* B3000 800C2800 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3004 800C2804 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3008 800C2808 9987030C */  jal        func_800E1E64
    /* B300C 800C280C 21284000 */   addu      $a1, $v0, $zero
    /* B3010 800C2810 7801B127 */  addiu      $s1, $sp, 0x178
    /* B3014 800C2814 21202002 */  addu       $a0, $s1, $zero
    /* B3018 800C2818 1280103C */  lui        $s0, %hi(D_80121340)
    /* B301C 800C281C 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B3020 800C2820 21280002 */  addu       $a1, $s0, $zero
    /* B3024 800C2824 7FE6020C */  jal        func_800B99FC
    /* B3028 800C2828 10000624 */   addiu     $a2, $zero, 0x10
    /* B302C 800C282C 21200002 */  addu       $a0, $s0, $zero
    /* B3030 800C2830 21282002 */  addu       $a1, $s1, $zero
    /* B3034 800C2834 DC0F040C */  jal        func_80103F70
    /* B3038 800C2838 10000624 */   addiu     $a2, $zero, 0x10
    /* B303C 800C283C 880362AE */  sw         $v0, 0x388($s3)
  .L800C2840:
    /* B3040 800C2840 78001524 */  addiu      $s5, $zero, 0x78
    /* B3044 800C2844 08011E24 */  addiu      $fp, $zero, 0x108
    /* B3048 800C2848 18001724 */  addiu      $s7, $zero, 0x18
    /* B304C 800C284C 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B3050 800C2850 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B3054 800C2854 78000224 */  addiu      $v0, $zero, 0x78
    /* B3058 800C2858 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B305C 800C285C 34000224 */  addiu      $v0, $zero, 0x34
    /* B3060 800C2860 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B3064 800C2864 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3068 800C2868 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B306C 800C286C D405648C */  lw         $a0, 0x5D4($v1)
    /* B3070 800C2870 A63A030C */  jal        func_800CEA98
    /* B3074 800C2874 01001124 */   addiu     $s1, $zero, 0x1
    /* B3078 800C2878 21284000 */  addu       $a1, $v0, $zero
    /* B307C 800C287C 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3080 800C2880 8803648E */  lw         $a0, 0x388($s3)
    /* B3084 800C2884 5511040C */  jal        func_80104554
    /* B3088 800C2888 10000724 */   addiu     $a3, $zero, 0x10
  .L800C288C:
    /* B308C 800C288C 0800222A */  slti       $v0, $s1, 0x8
    /* B3090 800C2890 38004010 */  beqz       $v0, .L800C2974
    /* B3094 800C2894 80101100 */   sll       $v0, $s1, 2
    /* B3098 800C2898 1800A327 */  addiu      $v1, $sp, 0x18
    /* B309C 800C289C 21804300 */  addu       $s0, $v0, $v1
    /* B30A0 800C28A0 0000028E */  lw         $v0, 0x0($s0)
    /* B30A4 800C28A4 00000000 */  nop
    /* B30A8 800C28A8 0200401C */  bgtz       $v0, .L800C28B4
    /* B30AC 800C28AC 21204000 */   addu      $a0, $v0, $zero
    /* B30B0 800C28B0 01000424 */  addiu      $a0, $zero, 0x1
  .L800C28B4:
    /* B30B4 800C28B4 2000038E */  lw         $v1, 0x20($s0)
    /* B30B8 800C28B8 00000000 */  nop
    /* B30BC 800C28BC 40100300 */  sll        $v0, $v1, 1
    /* B30C0 800C28C0 21104300 */  addu       $v0, $v0, $v1
    /* B30C4 800C28C4 C0100200 */  sll        $v0, $v0, 3
    /* B30C8 800C28C8 21104300 */  addu       $v0, $v0, $v1
    /* B30CC 800C28CC 40100200 */  sll        $v0, $v0, 1
    /* B30D0 800C28D0 1A004400 */  div        $zero, $v0, $a0
    /* B30D4 800C28D4 02008014 */  bnez       $a0, .L800C28E0
    /* B30D8 800C28D8 00000000 */   nop
    /* B30DC 800C28DC 0D000700 */  break      7
  .L800C28E0:
    /* B30E0 800C28E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B30E4 800C28E4 04008114 */  bne        $a0, $at, .L800C28F8
    /* B30E8 800C28E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B30EC 800C28EC 02004114 */  bne        $v0, $at, .L800C28F8
    /* B30F0 800C28F0 00000000 */   nop
    /* B30F4 800C28F4 0D000600 */  break      6
  .L800C28F8:
    /* B30F8 800C28F8 12100000 */  mflo       $v0
    /* B30FC 800C28FC 1B003616 */  bne        $s1, $s6, .L800C296C
    /* B3100 800C2900 400102AE */   sw        $v0, 0x140($s0)
    /* B3104 800C2904 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3108 800C2908 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B310C 800C290C CB1A030C */  jal        func_800C6B2C
    /* B3110 800C2910 00000000 */   nop
    /* B3114 800C2914 4001058E */  lw         $a1, 0x140($s0)
    /* B3118 800C2918 1280043C */  lui        $a0, %hi(D_80121340)
    /* B311C 800C291C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3120 800C2920 D31B030C */  jal        func_800C6F4C
    /* B3124 800C2924 00000000 */   nop
    /* B3128 800C2928 1280043C */  lui        $a0, %hi(D_80121340)
    /* B312C 800C292C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3130 800C2930 0B1B030C */  jal        func_800C6C2C
    /* B3134 800C2934 00000000 */   nop
    /* B3138 800C2938 1280053C */  lui        $a1, %hi(D_80121340)
    /* B313C 800C293C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3140 800C2940 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3144 800C2944 10000724 */  addiu      $a3, $zero, 0x10
    /* B3148 800C2948 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B314C 800C294C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3150 800C2950 30010224 */  addiu      $v0, $zero, 0x130
    /* B3154 800C2954 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3158 800C2958 0C004226 */  addiu      $v0, $s2, 0xC
    /* B315C 800C295C 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3160 800C2960 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3164 800C2964 5511040C */  jal        func_80104554
    /* B3168 800C2968 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C296C:
    /* B316C 800C296C 230A0308 */  j          .L800C288C
    /* B3170 800C2970 01003126 */   addiu     $s1, $s1, 0x1
  .L800C2974:
    /* B3174 800C2974 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3178 800C2978 2128C002 */  addu       $a1, $s6, $zero
    /* B317C 800C297C 21304002 */  addu       $a2, $s2, $zero
    /* B3180 800C2980 1680073C */  lui        $a3, %hi(D_80159024)
    /* B3184 800C2984 2490E724 */  addiu      $a3, $a3, %lo(D_80159024)
    /* B3188 800C2988 1000BEAF */  sw         $fp, 0x10($sp)
    /* B318C 800C298C 9008030C */  jal        func_800C2240
    /* B3190 800C2990 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3194 800C2994 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3198 800C2998 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B319C 800C299C 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B31A0 800C29A0 78000224 */  addiu      $v0, $zero, 0x78
    /* B31A4 800C29A4 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B31A8 800C29A8 0C004226 */  addiu      $v0, $s2, 0xC
    /* B31AC 800C29AC 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B31B0 800C29B0 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B31B4 800C29B4 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B31B8 800C29B8 D805648C */  lw         $a0, 0x5D8($v1)
    /* B31BC 800C29BC A63A030C */  jal        func_800CEA98
    /* B31C0 800C29C0 01001124 */   addiu     $s1, $zero, 0x1
    /* B31C4 800C29C4 21284000 */  addu       $a1, $v0, $zero
    /* B31C8 800C29C8 7801A627 */  addiu      $a2, $sp, 0x178
    /* B31CC 800C29CC 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B31D0 800C29D0 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B31D4 800C29D4 5511040C */  jal        func_80104554
    /* B31D8 800C29D8 10000724 */   addiu     $a3, $zero, 0x10
  .L800C29DC:
    /* B31DC 800C29DC 0800222A */  slti       $v0, $s1, 0x8
    /* B31E0 800C29E0 20004010 */  beqz       $v0, .L800C2A64
    /* B31E4 800C29E4 5801A427 */   addiu     $a0, $sp, 0x158
    /* B31E8 800C29E8 5F25020C */  jal        func_8008957C
    /* B31EC 800C29EC 21202002 */   addu      $a0, $s1, $zero
    /* B31F0 800C29F0 80181100 */  sll        $v1, $s1, 2
    /* B31F4 800C29F4 1800A427 */  addiu      $a0, $sp, 0x18
    /* B31F8 800C29F8 21186400 */  addu       $v1, $v1, $a0
    /* B31FC 800C29FC 17003616 */  bne        $s1, $s6, .L800C2A5C
    /* B3200 800C2A00 400162AC */   sw        $v0, 0x140($v1)
    /* B3204 800C2A04 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3208 800C2A08 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B320C 800C2A0C CB1A030C */  jal        func_800C6B2C
    /* B3210 800C2A10 00000000 */   nop
    /* B3214 800C2A14 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3218 800C2A18 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B321C 800C2A1C 2128C002 */  addu       $a1, $s6, $zero
    /* B3220 800C2A20 9225020C */  jal        func_80089648
    /* B3224 800C2A24 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* B3228 800C2A28 1280053C */  lui        $a1, %hi(D_80121340)
    /* B322C 800C2A2C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3230 800C2A30 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3234 800C2A34 10000724 */  addiu      $a3, $zero, 0x10
    /* B3238 800C2A38 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B323C 800C2A3C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3240 800C2A40 30010224 */  addiu      $v0, $zero, 0x130
    /* B3244 800C2A44 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3248 800C2A48 0C004226 */  addiu      $v0, $s2, 0xC
    /* B324C 800C2A4C 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3250 800C2A50 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3254 800C2A54 5511040C */  jal        func_80104554
    /* B3258 800C2A58 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C2A5C:
    /* B325C 800C2A5C 770A0308 */  j          .L800C29DC
    /* B3260 800C2A60 01003126 */   addiu     $s1, $s1, 0x1
  .L800C2A64:
    /* B3264 800C2A64 2128C002 */  addu       $a1, $s6, $zero
    /* B3268 800C2A68 21304002 */  addu       $a2, $s2, $zero
    /* B326C 800C2A6C 1680073C */  lui        $a3, %hi(D_80159028)
    /* B3270 800C2A70 2890E724 */  addiu      $a3, $a3, %lo(D_80159028)
    /* B3274 800C2A74 1000BEAF */  sw         $fp, 0x10($sp)
    /* B3278 800C2A78 9008030C */  jal        func_800C2240
    /* B327C 800C2A7C 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3280 800C2A80 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3284 800C2A84 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B3288 800C2A88 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B328C 800C2A8C 78000224 */  addiu      $v0, $zero, 0x78
    /* B3290 800C2A90 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3294 800C2A94 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3298 800C2A98 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B329C 800C2A9C 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B32A0 800C2AA0 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B32A4 800C2AA4 DC05648C */  lw         $a0, 0x5DC($v1)
    /* B32A8 800C2AA8 A63A030C */  jal        func_800CEA98
    /* B32AC 800C2AAC 01001124 */   addiu     $s1, $zero, 0x1
    /* B32B0 800C2AB0 21284000 */  addu       $a1, $v0, $zero
    /* B32B4 800C2AB4 7801A627 */  addiu      $a2, $sp, 0x178
    /* B32B8 800C2AB8 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B32BC 800C2ABC 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B32C0 800C2AC0 5511040C */  jal        func_80104554
    /* B32C4 800C2AC4 10000724 */   addiu     $a3, $zero, 0x10
  .L800C2AC8:
    /* B32C8 800C2AC8 0800222A */  slti       $v0, $s1, 0x8
    /* B32CC 800C2ACC 30004010 */  beqz       $v0, .L800C2B90
    /* B32D0 800C2AD0 80101100 */   sll       $v0, $s1, 2
    /* B32D4 800C2AD4 1800A327 */  addiu      $v1, $sp, 0x18
    /* B32D8 800C2AD8 21804300 */  addu       $s0, $v0, $v1
    /* B32DC 800C2ADC A000028E */  lw         $v0, 0xA0($s0)
    /* B32E0 800C2AE0 29003616 */  bne        $s1, $s6, .L800C2B88
    /* B32E4 800C2AE4 400102AE */   sw        $v0, 0x140($s0)
    /* B32E8 800C2AE8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B32EC 800C2AEC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B32F0 800C2AF0 CB1A030C */  jal        func_800C6B2C
    /* B32F4 800C2AF4 00000000 */   nop
    /* B32F8 800C2AF8 4001058E */  lw         $a1, 0x140($s0)
    /* B32FC 800C2AFC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3300 800C2B00 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3304 800C2B04 D31B030C */  jal        func_800C6F4C
    /* B3308 800C2B08 00000000 */   nop
    /* B330C 800C2B0C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3310 800C2B10 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3314 800C2B14 CD1A030C */  jal        func_800C6B34
    /* B3318 800C2B18 00000000 */   nop
    /* B331C 800C2B1C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3320 800C2B20 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3324 800C2B24 731B030C */  jal        func_800C6DCC
    /* B3328 800C2B28 88010524 */   addiu     $a1, $zero, 0x188
    /* B332C 800C2B2C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3330 800C2B30 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3334 800C2B34 CD1A030C */  jal        func_800C6B34
    /* B3338 800C2B38 00000000 */   nop
    /* B333C 800C2B3C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3340 800C2B40 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3344 800C2B44 1680053C */  lui        $a1, %hi(D_80159030)
    /* B3348 800C2B48 3090A524 */  addiu      $a1, $a1, %lo(D_80159030)
    /* B334C 800C2B4C 9987030C */  jal        func_800E1E64
    /* B3350 800C2B50 00000000 */   nop
    /* B3354 800C2B54 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3358 800C2B58 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B335C 800C2B5C 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3360 800C2B60 10000724 */  addiu      $a3, $zero, 0x10
    /* B3364 800C2B64 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3368 800C2B68 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B336C 800C2B6C 30010224 */  addiu      $v0, $zero, 0x130
    /* B3370 800C2B70 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3374 800C2B74 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3378 800C2B78 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B337C 800C2B7C 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3380 800C2B80 5511040C */  jal        func_80104554
    /* B3384 800C2B84 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C2B88:
    /* B3388 800C2B88 B20A0308 */  j          .L800C2AC8
    /* B338C 800C2B8C 01003126 */   addiu     $s1, $s1, 0x1
  .L800C2B90:
    /* B3390 800C2B90 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3394 800C2B94 2128C002 */  addu       $a1, $s6, $zero
    /* B3398 800C2B98 21304002 */  addu       $a2, $s2, $zero
    /* B339C 800C2B9C 1680073C */  lui        $a3, %hi(D_80159038)
    /* B33A0 800C2BA0 3890E724 */  addiu      $a3, $a3, %lo(D_80159038)
    /* B33A4 800C2BA4 1000BEAF */  sw         $fp, 0x10($sp)
    /* B33A8 800C2BA8 9008030C */  jal        func_800C2240
    /* B33AC 800C2BAC 1400A0AF */   sw        $zero, 0x14($sp)
    /* B33B0 800C2BB0 0C005226 */  addiu      $s2, $s2, 0xC
    /* B33B4 800C2BB4 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B33B8 800C2BB8 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B33BC 800C2BBC 78000224 */  addiu      $v0, $zero, 0x78
    /* B33C0 800C2BC0 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B33C4 800C2BC4 0C004226 */  addiu      $v0, $s2, 0xC
    /* B33C8 800C2BC8 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B33CC 800C2BCC 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B33D0 800C2BD0 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B33D4 800C2BD4 E005648C */  lw         $a0, 0x5E0($v1)
    /* B33D8 800C2BD8 A63A030C */  jal        func_800CEA98
    /* B33DC 800C2BDC 01001124 */   addiu     $s1, $zero, 0x1
    /* B33E0 800C2BE0 21284000 */  addu       $a1, $v0, $zero
    /* B33E4 800C2BE4 7801A627 */  addiu      $a2, $sp, 0x178
    /* B33E8 800C2BE8 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B33EC 800C2BEC 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B33F0 800C2BF0 5511040C */  jal        func_80104554
    /* B33F4 800C2BF4 10000724 */   addiu     $a3, $zero, 0x10
  .L800C2BF8:
    /* B33F8 800C2BF8 0800222A */  slti       $v0, $s1, 0x8
    /* B33FC 800C2BFC 26004010 */  beqz       $v0, .L800C2C98
    /* B3400 800C2C00 80101100 */   sll       $v0, $s1, 2
    /* B3404 800C2C04 1800A327 */  addiu      $v1, $sp, 0x18
    /* B3408 800C2C08 21804300 */  addu       $s0, $v0, $v1
    /* B340C 800C2C0C 0001028E */  lw         $v0, 0x100($s0)
    /* B3410 800C2C10 1F003616 */  bne        $s1, $s6, .L800C2C90
    /* B3414 800C2C14 400102AE */   sw        $v0, 0x140($s0)
    /* B3418 800C2C18 1280043C */  lui        $a0, %hi(D_80121340)
    /* B341C 800C2C1C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3420 800C2C20 CB1A030C */  jal        func_800C6B2C
    /* B3424 800C2C24 00000000 */   nop
    /* B3428 800C2C28 4001058E */  lw         $a1, 0x140($s0)
    /* B342C 800C2C2C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3430 800C2C30 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3434 800C2C34 D31B030C */  jal        func_800C6F4C
    /* B3438 800C2C38 00000000 */   nop
    /* B343C 800C2C3C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3440 800C2C40 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3444 800C2C44 CD1A030C */  jal        func_800C6B34
    /* B3448 800C2C48 00000000 */   nop
    /* B344C 800C2C4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3450 800C2C50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3454 800C2C54 731B030C */  jal        func_800C6DCC
    /* B3458 800C2C58 82010524 */   addiu     $a1, $zero, 0x182
    /* B345C 800C2C5C 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3460 800C2C60 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3464 800C2C64 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3468 800C2C68 10000724 */  addiu      $a3, $zero, 0x10
    /* B346C 800C2C6C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3470 800C2C70 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3474 800C2C74 30010224 */  addiu      $v0, $zero, 0x130
    /* B3478 800C2C78 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B347C 800C2C7C 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3480 800C2C80 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3484 800C2C84 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3488 800C2C88 5511040C */  jal        func_80104554
    /* B348C 800C2C8C 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C2C90:
    /* B3490 800C2C90 FE0A0308 */  j          .L800C2BF8
    /* B3494 800C2C94 01003126 */   addiu     $s1, $s1, 0x1
  .L800C2C98:
    /* B3498 800C2C98 8001B027 */  addiu      $s0, $sp, 0x180
    /* B349C 800C2C9C CB1A030C */  jal        func_800C6B2C
    /* B34A0 800C2CA0 21200002 */   addu      $a0, $s0, $zero
    /* B34A4 800C2CA4 21200002 */  addu       $a0, $s0, $zero
    /* B34A8 800C2CA8 731B030C */  jal        func_800C6DCC
    /* B34AC 800C2CAC 82010524 */   addiu     $a1, $zero, 0x182
    /* B34B0 800C2CB0 5801A427 */  addiu      $a0, $sp, 0x158
    /* B34B4 800C2CB4 2128C002 */  addu       $a1, $s6, $zero
    /* B34B8 800C2CB8 21304002 */  addu       $a2, $s2, $zero
    /* B34BC 800C2CBC 21380002 */  addu       $a3, $s0, $zero
    /* B34C0 800C2CC0 1000BEAF */  sw         $fp, 0x10($sp)
    /* B34C4 800C2CC4 9008030C */  jal        func_800C2240
    /* B34C8 800C2CC8 1400A0AF */   sw        $zero, 0x14($sp)
    /* B34CC 800C2CCC 0C005226 */  addiu      $s2, $s2, 0xC
    /* B34D0 800C2CD0 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B34D4 800C2CD4 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B34D8 800C2CD8 78000224 */  addiu      $v0, $zero, 0x78
    /* B34DC 800C2CDC 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B34E0 800C2CE0 0C004226 */  addiu      $v0, $s2, 0xC
    /* B34E4 800C2CE4 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B34E8 800C2CE8 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B34EC 800C2CEC 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B34F0 800C2CF0 E405648C */  lw         $a0, 0x5E4($v1)
    /* B34F4 800C2CF4 A63A030C */  jal        func_800CEA98
    /* B34F8 800C2CF8 01001124 */   addiu     $s1, $zero, 0x1
    /* B34FC 800C2CFC 21284000 */  addu       $a1, $v0, $zero
    /* B3500 800C2D00 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3504 800C2D04 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3508 800C2D08 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B350C 800C2D0C 5511040C */  jal        func_80104554
    /* B3510 800C2D10 10000724 */   addiu     $a3, $zero, 0x10
  .L800C2D14:
    /* B3514 800C2D14 0800222A */  slti       $v0, $s1, 0x8
    /* B3518 800C2D18 28004010 */  beqz       $v0, .L800C2DBC
    /* B351C 800C2D1C 80101100 */   sll       $v0, $s1, 2
    /* B3520 800C2D20 1800A327 */  addiu      $v1, $sp, 0x18
    /* B3524 800C2D24 21804300 */  addu       $s0, $v0, $v1
    /* B3528 800C2D28 C000028E */  lw         $v0, 0xC0($s0)
    /* B352C 800C2D2C 21003616 */  bne        $s1, $s6, .L800C2DB4
    /* B3530 800C2D30 400102AE */   sw        $v0, 0x140($s0)
    /* B3534 800C2D34 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3538 800C2D38 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B353C 800C2D3C CB1A030C */  jal        func_800C6B2C
    /* B3540 800C2D40 00000000 */   nop
    /* B3544 800C2D44 4001058E */  lw         $a1, 0x140($s0)
    /* B3548 800C2D48 1280043C */  lui        $a0, %hi(D_80121340)
    /* B354C 800C2D4C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3550 800C2D50 E31B030C */  jal        func_800C6F8C
    /* B3554 800C2D54 00000000 */   nop
    /* B3558 800C2D58 1280043C */  lui        $a0, %hi(D_80121340)
    /* B355C 800C2D5C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3560 800C2D60 1680053C */  lui        $a1, %hi(D_8015903C)
    /* B3564 800C2D64 3C90A524 */  addiu      $a1, $a1, %lo(D_8015903C)
    /* B3568 800C2D68 9987030C */  jal        func_800E1E64
    /* B356C 800C2D6C 00000000 */   nop
    /* B3570 800C2D70 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3574 800C2D74 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3578 800C2D78 731B030C */  jal        func_800C6DCC
    /* B357C 800C2D7C 83010524 */   addiu     $a1, $zero, 0x183
    /* B3580 800C2D80 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3584 800C2D84 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3588 800C2D88 7801A627 */  addiu      $a2, $sp, 0x178
    /* B358C 800C2D8C 10000724 */  addiu      $a3, $zero, 0x10
    /* B3590 800C2D90 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3594 800C2D94 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3598 800C2D98 30010224 */  addiu      $v0, $zero, 0x130
    /* B359C 800C2D9C 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B35A0 800C2DA0 0C004226 */  addiu      $v0, $s2, 0xC
    /* B35A4 800C2DA4 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B35A8 800C2DA8 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B35AC 800C2DAC 5511040C */  jal        func_80104554
    /* B35B0 800C2DB0 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C2DB4:
    /* B35B4 800C2DB4 450B0308 */  j          .L800C2D14
    /* B35B8 800C2DB8 01003126 */   addiu     $s1, $s1, 0x1
  .L800C2DBC:
    /* B35BC 800C2DBC 5801A427 */  addiu      $a0, $sp, 0x158
    /* B35C0 800C2DC0 2128C002 */  addu       $a1, $s6, $zero
    /* B35C4 800C2DC4 21304002 */  addu       $a2, $s2, $zero
    /* B35C8 800C2DC8 1680073C */  lui        $a3, %hi(D_80159044)
    /* B35CC 800C2DCC 4490E724 */  addiu      $a3, $a3, %lo(D_80159044)
    /* B35D0 800C2DD0 1000BEAF */  sw         $fp, 0x10($sp)
    /* B35D4 800C2DD4 9008030C */  jal        func_800C2240
    /* B35D8 800C2DD8 1400A0AF */   sw        $zero, 0x14($sp)
    /* B35DC 800C2DDC 0C005226 */  addiu      $s2, $s2, 0xC
    /* B35E0 800C2DE0 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B35E4 800C2DE4 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B35E8 800C2DE8 78000224 */  addiu      $v0, $zero, 0x78
    /* B35EC 800C2DEC 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B35F0 800C2DF0 0C004226 */  addiu      $v0, $s2, 0xC
    /* B35F4 800C2DF4 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B35F8 800C2DF8 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B35FC 800C2DFC 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B3600 800C2E00 E805648C */  lw         $a0, 0x5E8($v1)
    /* B3604 800C2E04 A63A030C */  jal        func_800CEA98
    /* B3608 800C2E08 01001124 */   addiu     $s1, $zero, 0x1
    /* B360C 800C2E0C 21284000 */  addu       $a1, $v0, $zero
    /* B3610 800C2E10 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3614 800C2E14 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3618 800C2E18 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B361C 800C2E1C 5511040C */  jal        func_80104554
    /* B3620 800C2E20 10000724 */   addiu     $a3, $zero, 0x10
  .L800C2E24:
    /* B3624 800C2E24 0800222A */  slti       $v0, $s1, 0x8
    /* B3628 800C2E28 56004010 */  beqz       $v0, .L800C2F84
    /* B362C 800C2E2C 80181100 */   sll       $v1, $s1, 2
    /* B3630 800C2E30 1800A227 */  addiu      $v0, $sp, 0x18
    /* B3634 800C2E34 21806200 */  addu       $s0, $v1, $v0
    /* B3638 800C2E38 0000048E */  lw         $a0, 0x0($s0)
    /* B363C 800C2E3C 8000028E */  lw         $v0, 0x80($s0)
    /* B3640 800C2E40 40180400 */  sll        $v1, $a0, 1
    /* B3644 800C2E44 21104300 */  addu       $v0, $v0, $v1
    /* B3648 800C2E48 40100200 */  sll        $v0, $v0, 1
    /* B364C 800C2E4C 1A004400 */  div        $zero, $v0, $a0
    /* B3650 800C2E50 02008014 */  bnez       $a0, .L800C2E5C
    /* B3654 800C2E54 00000000 */   nop
    /* B3658 800C2E58 0D000700 */  break      7
  .L800C2E5C:
    /* B365C 800C2E5C FFFF0124 */  addiu      $at, $zero, -0x1
    /* B3660 800C2E60 04008114 */  bne        $a0, $at, .L800C2E74
    /* B3664 800C2E64 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B3668 800C2E68 02004114 */  bne        $v0, $at, .L800C2E74
    /* B366C 800C2E6C 00000000 */   nop
    /* B3670 800C2E70 0D000600 */  break      6
  .L800C2E74:
    /* B3674 800C2E74 12100000 */  mflo       $v0
    /* B3678 800C2E78 01000524 */  addiu      $a1, $zero, 0x1
    /* B367C 800C2E7C 21202002 */  addu       $a0, $s1, $zero
    /* B3680 800C2E80 8ACA010C */  jal        func_80072A28
    /* B3684 800C2E84 400102AE */   sw        $v0, 0x140($s0)
    /* B3688 800C2E88 05004010 */  beqz       $v0, .L800C2EA0
    /* B368C 800C2E8C 21202002 */   addu      $a0, $s1, $zero
    /* B3690 800C2E90 4001028E */  lw         $v0, 0x140($s0)
    /* B3694 800C2E94 00000000 */  nop
    /* B3698 800C2E98 40100200 */  sll        $v0, $v0, 1
    /* B369C 800C2E9C 400102AE */  sw         $v0, 0x140($s0)
  .L800C2EA0:
    /* B36A0 800C2EA0 8ACA010C */  jal        func_80072A28
    /* B36A4 800C2EA4 58000524 */   addiu     $a1, $zero, 0x58
    /* B36A8 800C2EA8 05004010 */  beqz       $v0, .L800C2EC0
    /* B36AC 800C2EAC 21202002 */   addu      $a0, $s1, $zero
    /* B36B0 800C2EB0 4001028E */  lw         $v0, 0x140($s0)
    /* B36B4 800C2EB4 00000000 */  nop
    /* B36B8 800C2EB8 40100200 */  sll        $v0, $v0, 1
    /* B36BC 800C2EBC 400102AE */  sw         $v0, 0x140($s0)
  .L800C2EC0:
    /* B36C0 800C2EC0 8ACA010C */  jal        func_80072A28
    /* B36C4 800C2EC4 2B000524 */   addiu     $a1, $zero, 0x2B
    /* B36C8 800C2EC8 05004010 */  beqz       $v0, .L800C2EE0
    /* B36CC 800C2ECC 21202002 */   addu      $a0, $s1, $zero
    /* B36D0 800C2ED0 4001028E */  lw         $v0, 0x140($s0)
    /* B36D4 800C2ED4 00000000 */  nop
    /* B36D8 800C2ED8 40100200 */  sll        $v0, $v0, 1
    /* B36DC 800C2EDC 400102AE */  sw         $v0, 0x140($s0)
  .L800C2EE0:
    /* B36E0 800C2EE0 8ACA010C */  jal        func_80072A28
    /* B36E4 800C2EE4 55000524 */   addiu     $a1, $zero, 0x55
    /* B36E8 800C2EE8 05004010 */  beqz       $v0, .L800C2F00
    /* B36EC 800C2EEC 21280000 */   addu      $a1, $zero, $zero
    /* B36F0 800C2EF0 4001028E */  lw         $v0, 0x140($s0)
    /* B36F4 800C2EF4 00000000 */  nop
    /* B36F8 800C2EF8 40100200 */  sll        $v0, $v0, 1
    /* B36FC 800C2EFC 400102AE */  sw         $v0, 0x140($s0)
  .L800C2F00:
    /* B3700 800C2F00 4001048E */  lw         $a0, 0x140($s0)
    /* B3704 800C2F04 F53A030C */  jal        func_800CEBD4
    /* B3708 800C2F08 64000624 */   addiu     $a2, $zero, 0x64
    /* B370C 800C2F0C 1B003616 */  bne        $s1, $s6, .L800C2F7C
    /* B3710 800C2F10 400102AE */   sw        $v0, 0x140($s0)
    /* B3714 800C2F14 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3718 800C2F18 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B371C 800C2F1C CB1A030C */  jal        func_800C6B2C
    /* B3720 800C2F20 00000000 */   nop
    /* B3724 800C2F24 4001058E */  lw         $a1, 0x140($s0)
    /* B3728 800C2F28 1280043C */  lui        $a0, %hi(D_80121340)
    /* B372C 800C2F2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3730 800C2F30 D31B030C */  jal        func_800C6F4C
    /* B3734 800C2F34 00000000 */   nop
    /* B3738 800C2F38 1280043C */  lui        $a0, %hi(D_80121340)
    /* B373C 800C2F3C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3740 800C2F40 0B1B030C */  jal        func_800C6C2C
    /* B3744 800C2F44 00000000 */   nop
    /* B3748 800C2F48 1280053C */  lui        $a1, %hi(D_80121340)
    /* B374C 800C2F4C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3750 800C2F50 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3754 800C2F54 10000724 */  addiu      $a3, $zero, 0x10
    /* B3758 800C2F58 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B375C 800C2F5C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3760 800C2F60 30010224 */  addiu      $v0, $zero, 0x130
    /* B3764 800C2F64 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3768 800C2F68 0C004226 */  addiu      $v0, $s2, 0xC
    /* B376C 800C2F6C 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3770 800C2F70 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3774 800C2F74 5511040C */  jal        func_80104554
    /* B3778 800C2F78 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C2F7C:
    /* B377C 800C2F7C 890B0308 */  j          .L800C2E24
    /* B3780 800C2F80 01003126 */   addiu     $s1, $s1, 0x1
  .L800C2F84:
    /* B3784 800C2F84 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3788 800C2F88 2128C002 */  addu       $a1, $s6, $zero
    /* B378C 800C2F8C 21304002 */  addu       $a2, $s2, $zero
    /* B3790 800C2F90 1680073C */  lui        $a3, %hi(D_80159024)
    /* B3794 800C2F94 2490E724 */  addiu      $a3, $a3, %lo(D_80159024)
    /* B3798 800C2F98 1000BEAF */  sw         $fp, 0x10($sp)
    /* B379C 800C2F9C 9008030C */  jal        func_800C2240
    /* B37A0 800C2FA0 1400A0AF */   sw        $zero, 0x14($sp)
    /* B37A4 800C2FA4 0C005226 */  addiu      $s2, $s2, 0xC
    /* B37A8 800C2FA8 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B37AC 800C2FAC 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B37B0 800C2FB0 78000224 */  addiu      $v0, $zero, 0x78
    /* B37B4 800C2FB4 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B37B8 800C2FB8 0C004226 */  addiu      $v0, $s2, 0xC
    /* B37BC 800C2FBC 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B37C0 800C2FC0 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B37C4 800C2FC4 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B37C8 800C2FC8 EC05648C */  lw         $a0, 0x5EC($v1)
    /* B37CC 800C2FCC A63A030C */  jal        func_800CEA98
    /* B37D0 800C2FD0 01001124 */   addiu     $s1, $zero, 0x1
    /* B37D4 800C2FD4 21284000 */  addu       $a1, $v0, $zero
    /* B37D8 800C2FD8 7801A627 */  addiu      $a2, $sp, 0x178
    /* B37DC 800C2FDC 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B37E0 800C2FE0 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B37E4 800C2FE4 5511040C */  jal        func_80104554
    /* B37E8 800C2FE8 10000724 */   addiu     $a3, $zero, 0x10
  .L800C2FEC:
    /* B37EC 800C2FEC 0800222A */  slti       $v0, $s1, 0x8
    /* B37F0 800C2FF0 58004010 */  beqz       $v0, .L800C3154
    /* B37F4 800C2FF4 80181100 */   sll       $v1, $s1, 2
    /* B37F8 800C2FF8 1800A227 */  addiu      $v0, $sp, 0x18
    /* B37FC 800C2FFC 21806200 */  addu       $s0, $v1, $v0
    /* B3800 800C3000 0000038E */  lw         $v1, 0x0($s0)
    /* B3804 800C3004 6000048E */  lw         $a0, 0x60($s0)
    /* B3808 800C3008 40100300 */  sll        $v0, $v1, 1
    /* B380C 800C300C 21104300 */  addu       $v0, $v0, $v1
    /* B3810 800C3010 C0100200 */  sll        $v0, $v0, 3
    /* B3814 800C3014 21104300 */  addu       $v0, $v0, $v1
    /* B3818 800C3018 40100200 */  sll        $v0, $v0, 1
    /* B381C 800C301C 21186400 */  addu       $v1, $v1, $a0
    /* B3820 800C3020 1A004300 */  div        $zero, $v0, $v1
    /* B3824 800C3024 02006014 */  bnez       $v1, .L800C3030
    /* B3828 800C3028 00000000 */   nop
    /* B382C 800C302C 0D000700 */  break      7
  .L800C3030:
    /* B3830 800C3030 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B3834 800C3034 04006114 */  bne        $v1, $at, .L800C3048
    /* B3838 800C3038 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B383C 800C303C 02004114 */  bne        $v0, $at, .L800C3048
    /* B3840 800C3040 00000000 */   nop
    /* B3844 800C3044 0D000600 */  break      6
  .L800C3048:
    /* B3848 800C3048 12100000 */  mflo       $v0
    /* B384C 800C304C 32000524 */  addiu      $a1, $zero, 0x32
    /* B3850 800C3050 21202002 */  addu       $a0, $s1, $zero
    /* B3854 800C3054 8ACA010C */  jal        func_80072A28
    /* B3858 800C3058 400102AE */   sw        $v0, 0x140($s0)
    /* B385C 800C305C 07004010 */  beqz       $v0, .L800C307C
    /* B3860 800C3060 21202002 */   addu      $a0, $s1, $zero
    /* B3864 800C3064 4001028E */  lw         $v0, 0x140($s0)
    /* B3868 800C3068 00000000 */  nop
    /* B386C 800C306C C21F0200 */  srl        $v1, $v0, 31
    /* B3870 800C3070 21104300 */  addu       $v0, $v0, $v1
    /* B3874 800C3074 43100200 */  sra        $v0, $v0, 1
    /* B3878 800C3078 400102AE */  sw         $v0, 0x140($s0)
  .L800C307C:
    /* B387C 800C307C C17B030C */  jal        func_800DEF04
    /* B3880 800C3080 1B000524 */   addiu     $a1, $zero, 0x1B
    /* B3884 800C3084 07004010 */  beqz       $v0, .L800C30A4
    /* B3888 800C3088 00000000 */   nop
    /* B388C 800C308C 4001028E */  lw         $v0, 0x140($s0)
    /* B3890 800C3090 00000000 */  nop
    /* B3894 800C3094 C21F0200 */  srl        $v1, $v0, 31
    /* B3898 800C3098 21104300 */  addu       $v0, $v0, $v1
    /* B389C 800C309C 43100200 */  sra        $v0, $v0, 1
    /* B38A0 800C30A0 400102AE */  sw         $v0, 0x140($s0)
  .L800C30A4:
    /* B38A4 800C30A4 4001038E */  lw         $v1, 0x140($s0)
    /* B38A8 800C30A8 08070224 */  addiu      $v0, $zero, 0x708
    /* B38AC 800C30AC 14006324 */  addiu      $v1, $v1, 0x14
    /* B38B0 800C30B0 1A004300 */  div        $zero, $v0, $v1
    /* B38B4 800C30B4 02006014 */  bnez       $v1, .L800C30C0
    /* B38B8 800C30B8 00000000 */   nop
    /* B38BC 800C30BC 0D000700 */  break      7
  .L800C30C0:
    /* B38C0 800C30C0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B38C4 800C30C4 04006114 */  bne        $v1, $at, .L800C30D8
    /* B38C8 800C30C8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B38CC 800C30CC 02004114 */  bne        $v0, $at, .L800C30D8
    /* B38D0 800C30D0 00000000 */   nop
    /* B38D4 800C30D4 0D000600 */  break      6
  .L800C30D8:
    /* B38D8 800C30D8 12100000 */  mflo       $v0
    /* B38DC 800C30DC 1B003616 */  bne        $s1, $s6, .L800C314C
    /* B38E0 800C30E0 600002AE */   sw        $v0, 0x60($s0)
    /* B38E4 800C30E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B38E8 800C30E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B38EC 800C30EC CB1A030C */  jal        func_800C6B2C
    /* B38F0 800C30F0 00000000 */   nop
    /* B38F4 800C30F4 4001058E */  lw         $a1, 0x140($s0)
    /* B38F8 800C30F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B38FC 800C30FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3900 800C3100 D31B030C */  jal        func_800C6F4C
    /* B3904 800C3104 00000000 */   nop
    /* B3908 800C3108 1280043C */  lui        $a0, %hi(D_80121340)
    /* B390C 800C310C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3910 800C3110 0B1B030C */  jal        func_800C6C2C
    /* B3914 800C3114 00000000 */   nop
    /* B3918 800C3118 1280053C */  lui        $a1, %hi(D_80121340)
    /* B391C 800C311C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3920 800C3120 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3924 800C3124 10000724 */  addiu      $a3, $zero, 0x10
    /* B3928 800C3128 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B392C 800C312C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3930 800C3130 30010224 */  addiu      $v0, $zero, 0x130
    /* B3934 800C3134 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3938 800C3138 0C004226 */  addiu      $v0, $s2, 0xC
    /* B393C 800C313C 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3940 800C3140 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3944 800C3144 5511040C */  jal        func_80104554
    /* B3948 800C3148 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C314C:
    /* B394C 800C314C FB0B0308 */  j          .L800C2FEC
    /* B3950 800C3150 01003126 */   addiu     $s1, $s1, 0x1
  .L800C3154:
    /* B3954 800C3154 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3958 800C3158 2128C002 */  addu       $a1, $s6, $zero
    /* B395C 800C315C 23301200 */  negu       $a2, $s2
    /* B3960 800C3160 1680073C */  lui        $a3, %hi(D_80159024)
    /* B3964 800C3164 2490E724 */  addiu      $a3, $a3, %lo(D_80159024)
    /* B3968 800C3168 1000BEAF */  sw         $fp, 0x10($sp)
    /* B396C 800C316C 9008030C */  jal        func_800C2240
    /* B3970 800C3170 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3974 800C3174 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3978 800C3178 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B397C 800C317C 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B3980 800C3180 78000224 */  addiu      $v0, $zero, 0x78
    /* B3984 800C3184 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3988 800C3188 0C004226 */  addiu      $v0, $s2, 0xC
    /* B398C 800C318C 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B3990 800C3190 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3994 800C3194 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B3998 800C3198 F005648C */  lw         $a0, 0x5F0($v1)
    /* B399C 800C319C A63A030C */  jal        func_800CEA98
    /* B39A0 800C31A0 01001124 */   addiu     $s1, $zero, 0x1
    /* B39A4 800C31A4 21284000 */  addu       $a1, $v0, $zero
    /* B39A8 800C31A8 7801A627 */  addiu      $a2, $sp, 0x178
    /* B39AC 800C31AC 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B39B0 800C31B0 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B39B4 800C31B4 5511040C */  jal        func_80104554
    /* B39B8 800C31B8 10000724 */   addiu     $a3, $zero, 0x10
  .L800C31BC:
    /* B39BC 800C31BC 0800222A */  slti       $v0, $s1, 0x8
    /* B39C0 800C31C0 3C004010 */  beqz       $v0, .L800C32B4
    /* B39C4 800C31C4 80181100 */   sll       $v1, $s1, 2
    /* B39C8 800C31C8 1800A227 */  addiu      $v0, $sp, 0x18
    /* B39CC 800C31CC 21806200 */  addu       $s0, $v1, $v0
    /* B39D0 800C31D0 4000038E */  lw         $v1, 0x40($s0)
    /* B39D4 800C31D4 00000000 */  nop
    /* B39D8 800C31D8 80100300 */  sll        $v0, $v1, 2
    /* B39DC 800C31DC 21104300 */  addu       $v0, $v0, $v1
    /* B39E0 800C31E0 0000038E */  lw         $v1, 0x0($s0)
    /* B39E4 800C31E4 40100200 */  sll        $v0, $v0, 1
    /* B39E8 800C31E8 1A004300 */  div        $zero, $v0, $v1
    /* B39EC 800C31EC 02006014 */  bnez       $v1, .L800C31F8
    /* B39F0 800C31F0 00000000 */   nop
    /* B39F4 800C31F4 0D000700 */  break      7
  .L800C31F8:
    /* B39F8 800C31F8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B39FC 800C31FC 04006114 */  bne        $v1, $at, .L800C3210
    /* B3A00 800C3200 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B3A04 800C3204 02004114 */  bne        $v0, $at, .L800C3210
    /* B3A08 800C3208 00000000 */   nop
    /* B3A0C 800C320C 0D000600 */  break      6
  .L800C3210:
    /* B3A10 800C3210 12100000 */  mflo       $v0
    /* B3A14 800C3214 4000048E */  lw         $a0, 0x40($s0)
    /* B3A18 800C3218 6000038E */  lw         $v1, 0x60($s0)
    /* B3A1C 800C321C 400104AE */  sw         $a0, 0x140($s0)
    /* B3A20 800C3220 23186200 */  subu       $v1, $v1, $v0
    /* B3A24 800C3224 21003616 */  bne        $s1, $s6, .L800C32AC
    /* B3A28 800C3228 600003AE */   sw        $v1, 0x60($s0)
    /* B3A2C 800C322C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3A30 800C3230 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3A34 800C3234 CB1A030C */  jal        func_800C6B2C
    /* B3A38 800C3238 00000000 */   nop
    /* B3A3C 800C323C 4001058E */  lw         $a1, 0x140($s0)
    /* B3A40 800C3240 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3A44 800C3244 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3A48 800C3248 D31B030C */  jal        func_800C6F4C
    /* B3A4C 800C324C 00000000 */   nop
    /* B3A50 800C3250 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3A54 800C3254 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3A58 800C3258 1680053C */  lui        $a1, %hi(D_8015904C)
    /* B3A5C 800C325C 4C90A524 */  addiu      $a1, $a1, %lo(D_8015904C)
    /* B3A60 800C3260 9987030C */  jal        func_800E1E64
    /* B3A64 800C3264 00000000 */   nop
    /* B3A68 800C3268 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3A6C 800C326C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3A70 800C3270 731B030C */  jal        func_800C6DCC
    /* B3A74 800C3274 84010524 */   addiu     $a1, $zero, 0x184
    /* B3A78 800C3278 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3A7C 800C327C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3A80 800C3280 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3A84 800C3284 10000724 */  addiu      $a3, $zero, 0x10
    /* B3A88 800C3288 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3A8C 800C328C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3A90 800C3290 30010224 */  addiu      $v0, $zero, 0x130
    /* B3A94 800C3294 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3A98 800C3298 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3A9C 800C329C 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3AA0 800C32A0 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3AA4 800C32A4 5511040C */  jal        func_80104554
    /* B3AA8 800C32A8 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C32AC:
    /* B3AAC 800C32AC 6F0C0308 */  j          .L800C31BC
    /* B3AB0 800C32B0 01003126 */   addiu     $s1, $s1, 0x1
  .L800C32B4:
    /* B3AB4 800C32B4 8001B027 */  addiu      $s0, $sp, 0x180
    /* B3AB8 800C32B8 CB1A030C */  jal        func_800C6B2C
    /* B3ABC 800C32BC 21200002 */   addu      $a0, $s0, $zero
    /* B3AC0 800C32C0 1680053C */  lui        $a1, %hi(D_8015904C)
    /* B3AC4 800C32C4 4C90A524 */  addiu      $a1, $a1, %lo(D_8015904C)
    /* B3AC8 800C32C8 9987030C */  jal        func_800E1E64
    /* B3ACC 800C32CC 21200002 */   addu      $a0, $s0, $zero
    /* B3AD0 800C32D0 21200002 */  addu       $a0, $s0, $zero
    /* B3AD4 800C32D4 731B030C */  jal        func_800C6DCC
    /* B3AD8 800C32D8 84010524 */   addiu     $a1, $zero, 0x184
    /* B3ADC 800C32DC 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3AE0 800C32E0 2128C002 */  addu       $a1, $s6, $zero
    /* B3AE4 800C32E4 23301200 */  negu       $a2, $s2
    /* B3AE8 800C32E8 21380002 */  addu       $a3, $s0, $zero
    /* B3AEC 800C32EC 1000BEAF */  sw         $fp, 0x10($sp)
    /* B3AF0 800C32F0 9008030C */  jal        func_800C2240
    /* B3AF4 800C32F4 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3AF8 800C32F8 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3AFC 800C32FC 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B3B00 800C3300 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B3B04 800C3304 78000224 */  addiu      $v0, $zero, 0x78
    /* B3B08 800C3308 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3B0C 800C330C 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3B10 800C3310 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B3B14 800C3314 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3B18 800C3318 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B3B1C 800C331C F405648C */  lw         $a0, 0x5F4($v1)
    /* B3B20 800C3320 A63A030C */  jal        func_800CEA98
    /* B3B24 800C3324 01001124 */   addiu     $s1, $zero, 0x1
    /* B3B28 800C3328 21284000 */  addu       $a1, $v0, $zero
    /* B3B2C 800C332C 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3B30 800C3330 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3B34 800C3334 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3B38 800C3338 5511040C */  jal        func_80104554
    /* B3B3C 800C333C 10000724 */   addiu     $a3, $zero, 0x10
  .L800C3340:
    /* B3B40 800C3340 0800222A */  slti       $v0, $s1, 0x8
    /* B3B44 800C3344 29004010 */  beqz       $v0, .L800C33EC
    /* B3B48 800C3348 14000524 */   addiu     $a1, $zero, 0x14
    /* B3B4C 800C334C 80181100 */  sll        $v1, $s1, 2
    /* B3B50 800C3350 1800A227 */  addiu      $v0, $sp, 0x18
    /* B3B54 800C3354 21806200 */  addu       $s0, $v1, $v0
    /* B3B58 800C3358 6000048E */  lw         $a0, 0x60($s0)
    /* B3B5C 800C335C F53A030C */  jal        func_800CEBD4
    /* B3B60 800C3360 63000624 */   addiu     $a2, $zero, 0x63
    /* B3B64 800C3364 1F003616 */  bne        $s1, $s6, .L800C33E4
    /* B3B68 800C3368 400102AE */   sw        $v0, 0x140($s0)
    /* B3B6C 800C336C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3B70 800C3370 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3B74 800C3374 CB1A030C */  jal        func_800C6B2C
    /* B3B78 800C3378 00000000 */   nop
    /* B3B7C 800C337C 4001058E */  lw         $a1, 0x140($s0)
    /* B3B80 800C3380 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3B84 800C3384 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3B88 800C3388 D31B030C */  jal        func_800C6F4C
    /* B3B8C 800C338C 00000000 */   nop
    /* B3B90 800C3390 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3B94 800C3394 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3B98 800C3398 CD1A030C */  jal        func_800C6B34
    /* B3B9C 800C339C 00000000 */   nop
    /* B3BA0 800C33A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3BA4 800C33A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3BA8 800C33A8 731B030C */  jal        func_800C6DCC
    /* B3BAC 800C33AC 85010524 */   addiu     $a1, $zero, 0x185
    /* B3BB0 800C33B0 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3BB4 800C33B4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3BB8 800C33B8 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3BBC 800C33BC 10000724 */  addiu      $a3, $zero, 0x10
    /* B3BC0 800C33C0 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3BC4 800C33C4 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3BC8 800C33C8 30010224 */  addiu      $v0, $zero, 0x130
    /* B3BCC 800C33CC 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3BD0 800C33D0 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3BD4 800C33D4 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3BD8 800C33D8 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3BDC 800C33DC 5511040C */  jal        func_80104554
    /* B3BE0 800C33E0 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C33E4:
    /* B3BE4 800C33E4 D00C0308 */  j          .L800C3340
    /* B3BE8 800C33E8 01003126 */   addiu     $s1, $s1, 0x1
  .L800C33EC:
    /* B3BEC 800C33EC 8001B027 */  addiu      $s0, $sp, 0x180
    /* B3BF0 800C33F0 CB1A030C */  jal        func_800C6B2C
    /* B3BF4 800C33F4 21200002 */   addu      $a0, $s0, $zero
    /* B3BF8 800C33F8 21200002 */  addu       $a0, $s0, $zero
    /* B3BFC 800C33FC 731B030C */  jal        func_800C6DCC
    /* B3C00 800C3400 86010524 */   addiu     $a1, $zero, 0x186
    /* B3C04 800C3404 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3C08 800C3408 2128C002 */  addu       $a1, $s6, $zero
    /* B3C0C 800C340C 21304002 */  addu       $a2, $s2, $zero
    /* B3C10 800C3410 21380002 */  addu       $a3, $s0, $zero
    /* B3C14 800C3414 1000BEAF */  sw         $fp, 0x10($sp)
    /* B3C18 800C3418 9008030C */  jal        func_800C2240
    /* B3C1C 800C341C 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3C20 800C3420 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3C24 800C3424 01001124 */  addiu      $s1, $zero, 0x1
    /* B3C28 800C3428 6666133C */  lui        $s3, (0x66666667 >> 16)
    /* B3C2C 800C342C 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B3C30 800C3430 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B3C34 800C3434 78000224 */  addiu      $v0, $zero, 0x78
    /* B3C38 800C3438 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3C3C 800C343C 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3C40 800C3440 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B3C44 800C3444 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3C48 800C3448 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B3C4C 800C344C F805648C */  lw         $a0, 0x5F8($v1)
    /* B3C50 800C3450 A63A030C */  jal        func_800CEA98
    /* B3C54 800C3454 67667336 */   ori       $s3, $s3, (0x66666667 & 0xFFFF)
    /* B3C58 800C3458 21284000 */  addu       $a1, $v0, $zero
    /* B3C5C 800C345C 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3C60 800C3460 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3C64 800C3464 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3C68 800C3468 5511040C */  jal        func_80104554
    /* B3C6C 800C346C 10000724 */   addiu     $a3, $zero, 0x10
  .L800C3470:
    /* B3C70 800C3470 0800222A */  slti       $v0, $s1, 0x8
    /* B3C74 800C3474 59004010 */  beqz       $v0, .L800C35DC
    /* B3C78 800C3478 80181100 */   sll       $v1, $s1, 2
    /* B3C7C 800C347C 1800A227 */  addiu      $v0, $sp, 0x18
    /* B3C80 800C3480 21806200 */  addu       $s0, $v1, $v0
    /* B3C84 800C3484 E000038E */  lw         $v1, 0xE0($s0)
    /* B3C88 800C3488 00000000 */  nop
    /* B3C8C 800C348C 80100300 */  sll        $v0, $v1, 2
    /* B3C90 800C3490 21104300 */  addu       $v0, $v0, $v1
    /* B3C94 800C3494 0000038E */  lw         $v1, 0x0($s0)
    /* B3C98 800C3498 C0100200 */  sll        $v0, $v0, 3
    /* B3C9C 800C349C 1A004300 */  div        $zero, $v0, $v1
    /* B3CA0 800C34A0 02006014 */  bnez       $v1, .L800C34AC
    /* B3CA4 800C34A4 00000000 */   nop
    /* B3CA8 800C34A8 0D000700 */  break      7
  .L800C34AC:
    /* B3CAC 800C34AC FFFF0124 */  addiu      $at, $zero, -0x1
    /* B3CB0 800C34B0 04006114 */  bne        $v1, $at, .L800C34C4
    /* B3CB4 800C34B4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B3CB8 800C34B8 02004114 */  bne        $v0, $at, .L800C34C4
    /* B3CBC 800C34BC 00000000 */   nop
    /* B3CC0 800C34C0 0D000600 */  break      6
  .L800C34C4:
    /* B3CC4 800C34C4 12100000 */  mflo       $v0
    /* B3CC8 800C34C8 00000000 */  nop
    /* B3CCC 800C34CC 14004224 */  addiu      $v0, $v0, 0x14
    /* B3CD0 800C34D0 38003616 */  bne        $s1, $s6, .L800C35B4
    /* B3CD4 800C34D4 400102AE */   sw        $v0, 0x140($s0)
    /* B3CD8 800C34D8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3CDC 800C34DC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3CE0 800C34E0 CB1A030C */  jal        func_800C6B2C
    /* B3CE4 800C34E4 00000000 */   nop
    /* B3CE8 800C34E8 4001058E */  lw         $a1, 0x140($s0)
    /* B3CEC 800C34EC 00000000 */  nop
    /* B3CF0 800C34F0 1800B300 */  mult       $a1, $s3
    /* B3CF4 800C34F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3CF8 800C34F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3CFC 800C34FC C32F0500 */  sra        $a1, $a1, 31
    /* B3D00 800C3500 10480000 */  mfhi       $t1
    /* B3D04 800C3504 83100900 */  sra        $v0, $t1, 2
    /* B3D08 800C3508 D31B030C */  jal        func_800C6F4C
    /* B3D0C 800C350C 23284500 */   subu      $a1, $v0, $a1
    /* B3D10 800C3510 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3D14 800C3514 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3D18 800C3518 1680053C */  lui        $a1, %hi(D_80159050)
    /* B3D1C 800C351C 5090A524 */  addiu      $a1, $a1, %lo(D_80159050)
    /* B3D20 800C3520 9987030C */  jal        func_800E1E64
    /* B3D24 800C3524 00000000 */   nop
    /* B3D28 800C3528 4001068E */  lw         $a2, 0x140($s0)
    /* B3D2C 800C352C 00000000 */  nop
    /* B3D30 800C3530 1800D300 */  mult       $a2, $s3
    /* B3D34 800C3534 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3D38 800C3538 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3D3C 800C353C C3170600 */  sra        $v0, $a2, 31
    /* B3D40 800C3540 10480000 */  mfhi       $t1
    /* B3D44 800C3544 83180900 */  sra        $v1, $t1, 2
    /* B3D48 800C3548 23186200 */  subu       $v1, $v1, $v0
    /* B3D4C 800C354C 80280300 */  sll        $a1, $v1, 2
    /* B3D50 800C3550 2128A300 */  addu       $a1, $a1, $v1
    /* B3D54 800C3554 40280500 */  sll        $a1, $a1, 1
    /* B3D58 800C3558 D31B030C */  jal        func_800C6F4C
    /* B3D5C 800C355C 2328C500 */   subu      $a1, $a2, $a1
    /* B3D60 800C3560 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3D64 800C3564 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3D68 800C3568 CD1A030C */  jal        func_800C6B34
    /* B3D6C 800C356C 00000000 */   nop
    /* B3D70 800C3570 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3D74 800C3574 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3D78 800C3578 731B030C */  jal        func_800C6DCC
    /* B3D7C 800C357C 87010524 */   addiu     $a1, $zero, 0x187
    /* B3D80 800C3580 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3D84 800C3584 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3D88 800C3588 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3D8C 800C358C 10000724 */  addiu      $a3, $zero, 0x10
    /* B3D90 800C3590 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3D94 800C3594 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3D98 800C3598 30010224 */  addiu      $v0, $zero, 0x130
    /* B3D9C 800C359C 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3DA0 800C35A0 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3DA4 800C35A4 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3DA8 800C35A8 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3DAC 800C35AC 5511040C */  jal        func_80104554
    /* B3DB0 800C35B0 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C35B4:
    /* B3DB4 800C35B4 4001038E */  lw         $v1, 0x140($s0)
    /* B3DB8 800C35B8 00000000 */  nop
    /* B3DBC 800C35BC 18007300 */  mult       $v1, $s3
    /* B3DC0 800C35C0 01003126 */  addiu      $s1, $s1, 0x1
    /* B3DC4 800C35C4 C31F0300 */  sra        $v1, $v1, 31
    /* B3DC8 800C35C8 10480000 */  mfhi       $t1
    /* B3DCC 800C35CC 83100900 */  sra        $v0, $t1, 2
    /* B3DD0 800C35D0 23104300 */  subu       $v0, $v0, $v1
    /* B3DD4 800C35D4 1C0D0308 */  j          .L800C3470
    /* B3DD8 800C35D8 400102AE */   sw        $v0, 0x140($s0)
  .L800C35DC:
    /* B3DDC 800C35DC 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3DE0 800C35E0 2128C002 */  addu       $a1, $s6, $zero
    /* B3DE4 800C35E4 21304002 */  addu       $a2, $s2, $zero
    /* B3DE8 800C35E8 1680073C */  lui        $a3, %hi(D_80159054)
    /* B3DEC 800C35EC 5490E724 */  addiu      $a3, $a3, %lo(D_80159054)
    /* B3DF0 800C35F0 1000BEAF */  sw         $fp, 0x10($sp)
    /* B3DF4 800C35F4 9008030C */  jal        func_800C2240
    /* B3DF8 800C35F8 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3DFC 800C35FC 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3E00 800C3600 01001124 */  addiu      $s1, $zero, 0x1
    /* B3E04 800C3604 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B3E08 800C3608 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B3E0C 800C360C 78000224 */  addiu      $v0, $zero, 0x78
    /* B3E10 800C3610 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3E14 800C3614 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3E18 800C3618 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B3E1C 800C361C 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3E20 800C3620 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B3E24 800C3624 FC05648C */  lw         $a0, 0x5FC($v1)
    /* B3E28 800C3628 A63A030C */  jal        func_800CEA98
    /* B3E2C 800C362C 78051324 */   addiu     $s3, $zero, 0x578
    /* B3E30 800C3630 21284000 */  addu       $a1, $v0, $zero
    /* B3E34 800C3634 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3E38 800C3638 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3E3C 800C363C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3E40 800C3640 5511040C */  jal        func_80104554
    /* B3E44 800C3644 10000724 */   addiu     $a3, $zero, 0x10
  .L800C3648:
    /* B3E48 800C3648 0800222A */  slti       $v0, $s1, 0x8
    /* B3E4C 800C364C 38004010 */  beqz       $v0, .L800C3730
    /* B3E50 800C3650 80201100 */   sll       $a0, $s1, 2
    /* B3E54 800C3654 1800A227 */  addiu      $v0, $sp, 0x18
    /* B3E58 800C3658 1180013C */  lui        $at, %hi(D_801176F8)
    /* B3E5C 800C365C 21083300 */  addu       $at, $at, $s3
    /* B3E60 800C3660 F8762384 */  lh         $v1, %lo(D_801176F8)($at)
    /* B3E64 800C3664 21808200 */  addu       $s0, $a0, $v0
    /* B3E68 800C3668 80100300 */  sll        $v0, $v1, 2
    /* B3E6C 800C366C 21104300 */  addu       $v0, $v0, $v1
    /* B3E70 800C3670 0000038E */  lw         $v1, 0x0($s0)
    /* B3E74 800C3674 40100200 */  sll        $v0, $v0, 1
    /* B3E78 800C3678 1A004300 */  div        $zero, $v0, $v1
    /* B3E7C 800C367C 02006014 */  bnez       $v1, .L800C3688
    /* B3E80 800C3680 00000000 */   nop
    /* B3E84 800C3684 0D000700 */  break      7
  .L800C3688:
    /* B3E88 800C3688 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B3E8C 800C368C 04006114 */  bne        $v1, $at, .L800C36A0
    /* B3E90 800C3690 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B3E94 800C3694 02004114 */  bne        $v0, $at, .L800C36A0
    /* B3E98 800C3698 00000000 */   nop
    /* B3E9C 800C369C 0D000600 */  break      6
  .L800C36A0:
    /* B3EA0 800C36A0 12100000 */  mflo       $v0
    /* B3EA4 800C36A4 1F003616 */  bne        $s1, $s6, .L800C3724
    /* B3EA8 800C36A8 400102AE */   sw        $v0, 0x140($s0)
    /* B3EAC 800C36AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3EB0 800C36B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3EB4 800C36B4 CB1A030C */  jal        func_800C6B2C
    /* B3EB8 800C36B8 00000000 */   nop
    /* B3EBC 800C36BC 4001058E */  lw         $a1, 0x140($s0)
    /* B3EC0 800C36C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3EC4 800C36C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3EC8 800C36C8 D31B030C */  jal        func_800C6F4C
    /* B3ECC 800C36CC 00000000 */   nop
    /* B3ED0 800C36D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3ED4 800C36D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3ED8 800C36D8 CD1A030C */  jal        func_800C6B34
    /* B3EDC 800C36DC 00000000 */   nop
    /* B3EE0 800C36E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B3EE4 800C36E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B3EE8 800C36E8 731B030C */  jal        func_800C6DCC
    /* B3EEC 800C36EC 85010524 */   addiu     $a1, $zero, 0x185
    /* B3EF0 800C36F0 1280053C */  lui        $a1, %hi(D_80121340)
    /* B3EF4 800C36F4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B3EF8 800C36F8 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3EFC 800C36FC 10000724 */  addiu      $a3, $zero, 0x10
    /* B3F00 800C3700 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3F04 800C3704 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3F08 800C3708 30010224 */  addiu      $v0, $zero, 0x130
    /* B3F0C 800C370C 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3F10 800C3710 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3F14 800C3714 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B3F18 800C3718 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3F1C 800C371C 5511040C */  jal        func_80104554
    /* B3F20 800C3720 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C3724:
    /* B3F24 800C3724 78057326 */  addiu      $s3, $s3, 0x578
    /* B3F28 800C3728 920D0308 */  j          .L800C3648
    /* B3F2C 800C372C 01003126 */   addiu     $s1, $s1, 0x1
  .L800C3730:
    /* B3F30 800C3730 5801A427 */  addiu      $a0, $sp, 0x158
    /* B3F34 800C3734 2128C002 */  addu       $a1, $s6, $zero
    /* B3F38 800C3738 21304002 */  addu       $a2, $s2, $zero
    /* B3F3C 800C373C 8001A727 */  addiu      $a3, $sp, 0x180
    /* B3F40 800C3740 1000BEAF */  sw         $fp, 0x10($sp)
    /* B3F44 800C3744 9008030C */  jal        func_800C2240
    /* B3F48 800C3748 1400A0AF */   sw        $zero, 0x14($sp)
    /* B3F4C 800C374C 0C005226 */  addiu      $s2, $s2, 0xC
    /* B3F50 800C3750 01001124 */  addiu      $s1, $zero, 0x1
    /* B3F54 800C3754 78051324 */  addiu      $s3, $zero, 0x578
    /* B3F58 800C3758 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B3F5C 800C375C 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B3F60 800C3760 78000224 */  addiu      $v0, $zero, 0x78
    /* B3F64 800C3764 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B3F68 800C3768 0C004226 */  addiu      $v0, $s2, 0xC
    /* B3F6C 800C376C 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B3F70 800C3770 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B3F74 800C3774 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B3F78 800C3778 0006648C */  lw         $a0, 0x600($v1)
    /* B3F7C 800C377C A63A030C */  jal        func_800CEA98
    /* B3F80 800C3780 1C00B027 */   addiu     $s0, $sp, 0x1C
    /* B3F84 800C3784 21284000 */  addu       $a1, $v0, $zero
    /* B3F88 800C3788 7801A627 */  addiu      $a2, $sp, 0x178
    /* B3F8C 800C378C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B3F90 800C3790 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B3F94 800C3794 5511040C */  jal        func_80104554
    /* B3F98 800C3798 10000724 */   addiu     $a3, $zero, 0x10
    /* B3F9C 800C379C 1800A327 */  addiu      $v1, $sp, 0x18
    /* B3FA0 800C37A0 80101600 */  sll        $v0, $s6, 2
    /* B3FA4 800C37A4 21A04300 */  addu       $s4, $v0, $v1
  .L800C37A8:
    /* B3FA8 800C37A8 0800222A */  slti       $v0, $s1, 0x8
    /* B3FAC 800C37AC 5E004010 */  beqz       $v0, .L800C3928
    /* B3FB0 800C37B0 30750224 */   addiu     $v0, $zero, 0x7530
    /* B3FB4 800C37B4 1180013C */  lui        $at, %hi(D_801176A2)
    /* B3FB8 800C37B8 21083300 */  addu       $at, $at, $s3
    /* B3FBC 800C37BC A2762490 */  lbu        $a0, %lo(D_801176A2)($at)
    /* B3FC0 800C37C0 00000000 */  nop
    /* B3FC4 800C37C4 01008324 */  addiu      $v1, $a0, 0x1
    /* B3FC8 800C37C8 1A004300 */  div        $zero, $v0, $v1
    /* B3FCC 800C37CC 02006014 */  bnez       $v1, .L800C37D8
    /* B3FD0 800C37D0 00000000 */   nop
    /* B3FD4 800C37D4 0D000700 */  break      7
  .L800C37D8:
    /* B3FD8 800C37D8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B3FDC 800C37DC 04006114 */  bne        $v1, $at, .L800C37F0
    /* B3FE0 800C37E0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B3FE4 800C37E4 02004114 */  bne        $v0, $at, .L800C37F0
    /* B3FE8 800C37E8 00000000 */   nop
    /* B3FEC 800C37EC 0D000600 */  break      6
  .L800C37F0:
    /* B3FF0 800C37F0 12100000 */  mflo       $v0
    /* B3FF4 800C37F4 A000038E */  lw         $v1, 0xA0($s0)
    /* B3FF8 800C37F8 00000000 */  nop
    /* B3FFC 800C37FC 2A106200 */  slt        $v0, $v1, $v0
    /* B4000 800C3800 11004010 */  beqz       $v0, .L800C3848
    /* B4004 800C3804 18006400 */   mult      $v1, $a0
    /* B4008 800C3808 12180000 */  mflo       $v1
    /* B400C 800C380C 0000028E */  lw         $v0, 0x0($s0)
    /* B4010 800C3810 00000000 */  nop
    /* B4014 800C3814 1A006200 */  div        $zero, $v1, $v0
    /* B4018 800C3818 02004014 */  bnez       $v0, .L800C3824
    /* B401C 800C381C 00000000 */   nop
    /* B4020 800C3820 0D000700 */  break      7
  .L800C3824:
    /* B4024 800C3824 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B4028 800C3828 04004114 */  bne        $v0, $at, .L800C383C
    /* B402C 800C382C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B4030 800C3830 02006114 */  bne        $v1, $at, .L800C383C
    /* B4034 800C3834 00000000 */   nop
    /* B4038 800C3838 0D000600 */  break      6
  .L800C383C:
    /* B403C 800C383C 12100000 */  mflo       $v0
    /* B4040 800C3840 240E0308 */  j          .L800C3890
    /* B4044 800C3844 400102AE */   sw        $v0, 0x140($s0)
  .L800C3848:
    /* B4048 800C3848 0000028E */  lw         $v0, 0x0($s0)
    /* B404C 800C384C 00000000 */  nop
    /* B4050 800C3850 1A006200 */  div        $zero, $v1, $v0
    /* B4054 800C3854 02004014 */  bnez       $v0, .L800C3860
    /* B4058 800C3858 00000000 */   nop
    /* B405C 800C385C 0D000700 */  break      7
  .L800C3860:
    /* B4060 800C3860 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B4064 800C3864 04004114 */  bne        $v0, $at, .L800C3878
    /* B4068 800C3868 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B406C 800C386C 02006114 */  bne        $v1, $at, .L800C3878
    /* B4070 800C3870 00000000 */   nop
    /* B4074 800C3874 0D000600 */  break      6
  .L800C3878:
    /* B4078 800C3878 12100000 */  mflo       $v0
    /* B407C 800C387C 00000000 */  nop
    /* B4080 800C3880 00000000 */  nop
    /* B4084 800C3884 18004400 */  mult       $v0, $a0
    /* B4088 800C3888 12480000 */  mflo       $t1
    /* B408C 800C388C 400109AE */  sw         $t1, 0x140($s0)
  .L800C3890:
    /* B4090 800C3890 21003616 */  bne        $s1, $s6, .L800C3918
    /* B4094 800C3894 00000000 */   nop
    /* B4098 800C3898 1280043C */  lui        $a0, %hi(D_80121340)
    /* B409C 800C389C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B40A0 800C38A0 CB1A030C */  jal        func_800C6B2C
    /* B40A4 800C38A4 00000000 */   nop
    /* B40A8 800C38A8 4001858E */  lw         $a1, 0x140($s4)
    /* B40AC 800C38AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B40B0 800C38B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B40B4 800C38B4 D31B030C */  jal        func_800C6F4C
    /* B40B8 800C38B8 00000000 */   nop
    /* B40BC 800C38BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B40C0 800C38C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B40C4 800C38C4 1680053C */  lui        $a1, %hi(D_80159058)
    /* B40C8 800C38C8 5890A524 */  addiu      $a1, $a1, %lo(D_80159058)
    /* B40CC 800C38CC 9987030C */  jal        func_800E1E64
    /* B40D0 800C38D0 00000000 */   nop
    /* B40D4 800C38D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B40D8 800C38D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B40DC 800C38DC 731B030C */  jal        func_800C6DCC
    /* B40E0 800C38E0 89010524 */   addiu     $a1, $zero, 0x189
    /* B40E4 800C38E4 1280053C */  lui        $a1, %hi(D_80121340)
    /* B40E8 800C38E8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B40EC 800C38EC 7801A627 */  addiu      $a2, $sp, 0x178
    /* B40F0 800C38F0 10000724 */  addiu      $a3, $zero, 0x10
    /* B40F4 800C38F4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B40F8 800C38F8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B40FC 800C38FC 30010224 */  addiu      $v0, $zero, 0x130
    /* B4100 800C3900 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B4104 800C3904 0C004226 */  addiu      $v0, $s2, 0xC
    /* B4108 800C3908 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B410C 800C390C 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B4110 800C3910 5511040C */  jal        func_80104554
    /* B4114 800C3914 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C3918:
    /* B4118 800C3918 78057326 */  addiu      $s3, $s3, 0x578
    /* B411C 800C391C 04001026 */  addiu      $s0, $s0, 0x4
    /* B4120 800C3920 EA0D0308 */  j          .L800C37A8
    /* B4124 800C3924 01003126 */   addiu     $s1, $s1, 0x1
  .L800C3928:
    /* B4128 800C3928 5801A427 */  addiu      $a0, $sp, 0x158
    /* B412C 800C392C 2128C002 */  addu       $a1, $s6, $zero
    /* B4130 800C3930 21304002 */  addu       $a2, $s2, $zero
    /* B4134 800C3934 1680073C */  lui        $a3, %hi(D_80159030)
    /* B4138 800C3938 3090E724 */  addiu      $a3, $a3, %lo(D_80159030)
    /* B413C 800C393C 1000BEAF */  sw         $fp, 0x10($sp)
    /* B4140 800C3940 9008030C */  jal        func_800C2240
    /* B4144 800C3944 1400A0AF */   sw        $zero, 0x14($sp)
    /* B4148 800C3948 0C005226 */  addiu      $s2, $s2, 0xC
    /* B414C 800C394C 1680033C */  lui        $v1, %hi(D_8015894C)
    /* B4150 800C3950 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* B4154 800C3954 78000224 */  addiu      $v0, $zero, 0x78
    /* B4158 800C3958 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B415C 800C395C 0C004226 */  addiu      $v0, $s2, 0xC
    /* B4160 800C3960 7801B7A7 */  sh         $s7, 0x178($sp)
    /* B4164 800C3964 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B4168 800C3968 7E01A2A7 */  sh         $v0, 0x17E($sp)
    /* B416C 800C396C 0406648C */  lw         $a0, 0x604($v1)
    /* B4170 800C3970 A63A030C */  jal        func_800CEA98
    /* B4174 800C3974 01001124 */   addiu     $s1, $zero, 0x1
    /* B4178 800C3978 21284000 */  addu       $a1, $v0, $zero
    /* B417C 800C397C 7801A627 */  addiu      $a2, $sp, 0x178
    /* B4180 800C3980 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4184 800C3984 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B4188 800C3988 5511040C */  jal        func_80104554
    /* B418C 800C398C 10000724 */   addiu     $a3, $zero, 0x10
  .L800C3990:
    /* B4190 800C3990 0800222A */  slti       $v0, $s1, 0x8
    /* B4194 800C3994 2E004010 */  beqz       $v0, .L800C3A50
    /* B4198 800C3998 80181100 */   sll       $v1, $s1, 2
    /* B419C 800C399C 1800A227 */  addiu      $v0, $sp, 0x18
    /* B41A0 800C39A0 21806200 */  addu       $s0, $v1, $v0
    /* B41A4 800C39A4 2001038E */  lw         $v1, 0x120($s0)
    /* B41A8 800C39A8 00000000 */  nop
    /* B41AC 800C39AC 80100300 */  sll        $v0, $v1, 2
    /* B41B0 800C39B0 21104300 */  addu       $v0, $v0, $v1
    /* B41B4 800C39B4 0000038E */  lw         $v1, 0x0($s0)
    /* B41B8 800C39B8 40100200 */  sll        $v0, $v0, 1
    /* B41BC 800C39BC 1A004300 */  div        $zero, $v0, $v1
    /* B41C0 800C39C0 02006014 */  bnez       $v1, .L800C39CC
    /* B41C4 800C39C4 00000000 */   nop
    /* B41C8 800C39C8 0D000700 */  break      7
  .L800C39CC:
    /* B41CC 800C39CC FFFF0124 */  addiu      $at, $zero, -0x1
    /* B41D0 800C39D0 04006114 */  bne        $v1, $at, .L800C39E4
    /* B41D4 800C39D4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B41D8 800C39D8 02004114 */  bne        $v0, $at, .L800C39E4
    /* B41DC 800C39DC 00000000 */   nop
    /* B41E0 800C39E0 0D000600 */  break      6
  .L800C39E4:
    /* B41E4 800C39E4 12100000 */  mflo       $v0
    /* B41E8 800C39E8 17003616 */  bne        $s1, $s6, .L800C3A48
    /* B41EC 800C39EC 400102AE */   sw        $v0, 0x140($s0)
    /* B41F0 800C39F0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B41F4 800C39F4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B41F8 800C39F8 CB1A030C */  jal        func_800C6B2C
    /* B41FC 800C39FC 00000000 */   nop
    /* B4200 800C3A00 4001058E */  lw         $a1, 0x140($s0)
    /* B4204 800C3A04 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4208 800C3A08 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B420C 800C3A0C D31B030C */  jal        func_800C6F4C
    /* B4210 800C3A10 00000000 */   nop
    /* B4214 800C3A14 1280053C */  lui        $a1, %hi(D_80121340)
    /* B4218 800C3A18 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B421C 800C3A1C 7801A627 */  addiu      $a2, $sp, 0x178
    /* B4220 800C3A20 10000724 */  addiu      $a3, $zero, 0x10
    /* B4224 800C3A24 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4228 800C3A28 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B422C 800C3A2C 30010224 */  addiu      $v0, $zero, 0x130
    /* B4230 800C3A30 7C01A2A7 */  sh         $v0, 0x17C($sp)
    /* B4234 800C3A34 0C004226 */  addiu      $v0, $s2, 0xC
    /* B4238 800C3A38 7801B5A7 */  sh         $s5, 0x178($sp)
    /* B423C 800C3A3C 7A01B2A7 */  sh         $s2, 0x17A($sp)
    /* B4240 800C3A40 5511040C */  jal        func_80104554
    /* B4244 800C3A44 7E01A2A7 */   sh        $v0, 0x17E($sp)
  .L800C3A48:
    /* B4248 800C3A48 640E0308 */  j          .L800C3990
    /* B424C 800C3A4C 01003126 */   addiu     $s1, $s1, 0x1
  .L800C3A50:
    /* B4250 800C3A50 5801A427 */  addiu      $a0, $sp, 0x158
    /* B4254 800C3A54 2128C002 */  addu       $a1, $s6, $zero
    /* B4258 800C3A58 21304002 */  addu       $a2, $s2, $zero
    /* B425C 800C3A5C 1680073C */  lui        $a3, %hi(D_80159054)
    /* B4260 800C3A60 5490E724 */  addiu      $a3, $a3, %lo(D_80159054)
    /* B4264 800C3A64 1000BEAF */  sw         $fp, 0x10($sp)
    /* B4268 800C3A68 9008030C */  jal        func_800C2240
    /* B426C 800C3A6C 1400A0AF */   sw        $zero, 0x14($sp)
  .L800C3A70:
    /* B4270 800C3A70 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4274 800C3A74 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B4278 800C3A78 7D11040C */  jal        func_801045F4
    /* B427C 800C3A7C 00000000 */   nop
    /* B4280 800C3A80 0402BF8F */  lw         $ra, 0x204($sp)
    /* B4284 800C3A84 0002BE8F */  lw         $fp, 0x200($sp)
    /* B4288 800C3A88 FC01B78F */  lw         $s7, 0x1FC($sp)
    /* B428C 800C3A8C F801B68F */  lw         $s6, 0x1F8($sp)
    /* B4290 800C3A90 F401B58F */  lw         $s5, 0x1F4($sp)
    /* B4294 800C3A94 F001B48F */  lw         $s4, 0x1F0($sp)
    /* B4298 800C3A98 EC01B38F */  lw         $s3, 0x1EC($sp)
    /* B429C 800C3A9C E801B28F */  lw         $s2, 0x1E8($sp)
    /* B42A0 800C3AA0 E401B18F */  lw         $s1, 0x1E4($sp)
    /* B42A4 800C3AA4 E001B08F */  lw         $s0, 0x1E0($sp)
    /* B42A8 800C3AA8 0802BD27 */  addiu      $sp, $sp, 0x208
    /* B42AC 800C3AAC 0800E003 */  jr         $ra
    /* B42B0 800C3AB0 00000000 */   nop
endlabel func_800C2364
