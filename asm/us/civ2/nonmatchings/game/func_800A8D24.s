.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8D24, 0x270

glabel func_800A8D24
    /* 99524 800A8D24 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 99528 800A8D28 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9952C 800A8D2C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 99530 800A8D30 1800B2AF */  sw         $s2, 0x18($sp)
    /* 99534 800A8D34 1400B1AF */  sw         $s1, 0x14($sp)
    /* 99538 800A8D38 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9953C 800A8D3C 21988000 */  addu       $s3, $a0, $zero
    /* 99540 800A8D40 EFE9030C */  jal        func_800FA7BC
    /* 99544 800A8D44 2190A000 */   addu      $s2, $a1, $zero
    /* 99548 800A8D48 100060AE */  sw         $zero, 0x10($s3)
    /* 9954C 800A8D4C 140060AE */  sw         $zero, 0x14($s3)
    /* 99550 800A8D50 180060AE */  sw         $zero, 0x18($s3)
    /* 99554 800A8D54 1C0060AE */  sw         $zero, 0x1C($s3)
    /* 99558 800A8D58 200060AE */  sw         $zero, 0x20($s3)
    /* 9955C 800A8D5C 240060AE */  sw         $zero, 0x24($s3)
    /* 99560 800A8D60 280060AE */  sw         $zero, 0x28($s3)
    /* 99564 800A8D64 2C0060AE */  sw         $zero, 0x2C($s3)
    /* 99568 800A8D68 300060AE */  sw         $zero, 0x30($s3)
    /* 9956C 800A8D6C 340060AE */  sw         $zero, 0x34($s3)
    /* 99570 800A8D70 380060AE */  sw         $zero, 0x38($s3)
    /* 99574 800A8D74 3C0060AE */  sw         $zero, 0x3C($s3)
    /* 99578 800A8D78 400060AE */  sw         $zero, 0x40($s3)
    /* 9957C 800A8D7C 440060AE */  sw         $zero, 0x44($s3)
    /* 99580 800A8D80 480060AE */  sw         $zero, 0x48($s3)
    /* 99584 800A8D84 4C0060AE */  sw         $zero, 0x4C($s3)
    /* 99588 800A8D88 500060AE */  sw         $zero, 0x50($s3)
    /* 9958C 800A8D8C 540060AE */  sw         $zero, 0x54($s3)
    /* 99590 800A8D90 580060AE */  sw         $zero, 0x58($s3)
    /* 99594 800A8D94 5C0060AE */  sw         $zero, 0x5C($s3)
    /* 99598 800A8D98 600060AE */  sw         $zero, 0x60($s3)
    /* 9959C 800A8D9C 640060AE */  sw         $zero, 0x64($s3)
    /* 995A0 800A8DA0 680060AE */  sw         $zero, 0x68($s3)
    /* 995A4 800A8DA4 6C0060A6 */  sh         $zero, 0x6C($s3)
    /* 995A8 800A8DA8 6E0060A6 */  sh         $zero, 0x6E($s3)
    /* 995AC 800A8DAC 00401024 */  addiu      $s0, $zero, 0x4000
    /* 995B0 800A8DB0 700070A6 */  sh         $s0, 0x70($s3)
    /* 995B4 800A8DB4 720070A6 */  sh         $s0, 0x72($s3)
    /* 995B8 800A8DB8 7A0060A6 */  sh         $zero, 0x7A($s3)
    /* 995BC 800A8DBC 7C0060A6 */  sh         $zero, 0x7C($s3)
    /* 995C0 800A8DC0 740060A6 */  sh         $zero, 0x74($s3)
    /* 995C4 800A8DC4 01001124 */  addiu      $s1, $zero, 0x1
    /* 995C8 800A8DC8 760071A6 */  sh         $s1, 0x76($s3)
    /* 995CC 800A8DCC 780071A6 */  sh         $s1, 0x78($s3)
    /* 995D0 800A8DD0 9AE0030C */  jal        func_800F8268
    /* 995D4 800A8DD4 90006426 */   addiu     $a0, $s3, 0x90
    /* 995D8 800A8DD8 EFE9030C */  jal        func_800FA7BC
    /* 995DC 800A8DDC BC006426 */   addiu     $a0, $s3, 0xBC
    /* 995E0 800A8DE0 CC0060AE */  sw         $zero, 0xCC($s3)
    /* 995E4 800A8DE4 D00060AE */  sw         $zero, 0xD0($s3)
    /* 995E8 800A8DE8 D40060AE */  sw         $zero, 0xD4($s3)
    /* 995EC 800A8DEC D80060AE */  sw         $zero, 0xD8($s3)
    /* 995F0 800A8DF0 DC0060AE */  sw         $zero, 0xDC($s3)
    /* 995F4 800A8DF4 E00060AE */  sw         $zero, 0xE0($s3)
    /* 995F8 800A8DF8 E40060AE */  sw         $zero, 0xE4($s3)
    /* 995FC 800A8DFC E80060AE */  sw         $zero, 0xE8($s3)
    /* 99600 800A8E00 EC0060AE */  sw         $zero, 0xEC($s3)
    /* 99604 800A8E04 F00060AE */  sw         $zero, 0xF0($s3)
    /* 99608 800A8E08 F40060AE */  sw         $zero, 0xF4($s3)
    /* 9960C 800A8E0C F80060AE */  sw         $zero, 0xF8($s3)
    /* 99610 800A8E10 FC0060AE */  sw         $zero, 0xFC($s3)
    /* 99614 800A8E14 000160AE */  sw         $zero, 0x100($s3)
    /* 99618 800A8E18 040160AE */  sw         $zero, 0x104($s3)
    /* 9961C 800A8E1C 080160AE */  sw         $zero, 0x108($s3)
    /* 99620 800A8E20 0C0160AE */  sw         $zero, 0x10C($s3)
    /* 99624 800A8E24 100160AE */  sw         $zero, 0x110($s3)
    /* 99628 800A8E28 140160AE */  sw         $zero, 0x114($s3)
    /* 9962C 800A8E2C 180160AE */  sw         $zero, 0x118($s3)
    /* 99630 800A8E30 1C0160AE */  sw         $zero, 0x11C($s3)
    /* 99634 800A8E34 200160AE */  sw         $zero, 0x120($s3)
    /* 99638 800A8E38 240160AE */  sw         $zero, 0x124($s3)
    /* 9963C 800A8E3C 280160A6 */  sh         $zero, 0x128($s3)
    /* 99640 800A8E40 2A0160A6 */  sh         $zero, 0x12A($s3)
    /* 99644 800A8E44 2C0170A6 */  sh         $s0, 0x12C($s3)
    /* 99648 800A8E48 2E0170A6 */  sh         $s0, 0x12E($s3)
    /* 9964C 800A8E4C 360160A6 */  sh         $zero, 0x136($s3)
    /* 99650 800A8E50 380160A6 */  sh         $zero, 0x138($s3)
    /* 99654 800A8E54 300160A6 */  sh         $zero, 0x130($s3)
    /* 99658 800A8E58 320171A6 */  sh         $s1, 0x132($s3)
    /* 9965C 800A8E5C 340171A6 */  sh         $s1, 0x134($s3)
    /* 99660 800A8E60 400160AE */  sw         $zero, 0x140($s3)
    /* 99664 800A8E64 440160AE */  sw         $zero, 0x144($s3)
    /* 99668 800A8E68 480160AE */  sw         $zero, 0x148($s3)
    /* 9966C 800A8E6C 01000224 */  addiu      $v0, $zero, 0x1
    /* 99670 800A8E70 4C0162A2 */  sb         $v0, 0x14C($s3)
    /* 99674 800A8E74 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 99678 800A8E78 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9967C 800A8E7C B80062AE */  sw         $v0, 0xB8($s3)
    /* 99680 800A8E80 400160AE */  sw         $zero, 0x140($s3)
    /* 99684 800A8E84 500160AE */  sw         $zero, 0x150($s3)
    /* 99688 800A8E88 9AE0030C */  jal        func_800F8268
    /* 9968C 800A8E8C 54016426 */   addiu     $a0, $s3, 0x154
    /* 99690 800A8E90 C12B030C */  jal        func_800CAF04
    /* 99694 800A8E94 80016426 */   addiu     $a0, $s3, 0x180
    /* 99698 800A8E98 0C0E6426 */  addiu      $a0, $s3, 0xE0C
    /* 9969C 800A8E9C ADC5020C */  jal        func_800B16B4
    /* 996A0 800A8EA0 00200524 */   addiu     $a1, $zero, 0x2000
    /* 996A4 800A8EA4 221B040C */  jal        func_80106C88
    /* 996A8 800A8EA8 84006426 */   addiu     $a0, $s3, 0x84
    /* 996AC 800A8EAC 8C0072A6 */  sh         $s2, 0x8C($s3)
    /* 996B0 800A8EB0 6C0893AF */  sw         $s3, %gp_rel(D_80158D44)($gp)
    /* 996B4 800A8EB4 060E71A6 */  sh         $s1, 0xE06($s3)
    /* 996B8 800A8EB8 21200000 */  addu       $a0, $zero, $zero
    /* 996BC 800A8EBC 8C006386 */  lh         $v1, 0x8C($s3)
    /* 996C0 800A8EC0 00000000 */  nop
    /* 996C4 800A8EC4 40100300 */  sll        $v0, $v1, 1
    /* 996C8 800A8EC8 21104300 */  addu       $v0, $v0, $v1
    /* 996CC 800A8ECC 80100200 */  sll        $v0, $v0, 2
    /* 996D0 800A8ED0 23104300 */  subu       $v0, $v0, $v1
    /* 996D4 800A8ED4 00110200 */  sll        $v0, $v0, 4
    /* 996D8 800A8ED8 23104300 */  subu       $v0, $v0, $v1
    /* 996DC 800A8EDC C0100200 */  sll        $v0, $v0, 3
    /* 996E0 800A8EE0 1180033C */  lui        $v1, %hi(D_80117A67)
    /* 996E4 800A8EE4 677A6324 */  addiu      $v1, $v1, %lo(D_80117A67)
    /* 996E8 800A8EE8 21184300 */  addu       $v1, $v0, $v1
    /* 996EC 800A8EEC 00140400 */  sll        $v0, $a0, 16
  .L800A8EF0:
    /* 996F0 800A8EF0 03140200 */  sra        $v0, $v0, 16
    /* 996F4 800A8EF4 21106200 */  addu       $v0, $v1, $v0
    /* 996F8 800A8EF8 00004290 */  lbu        $v0, 0x0($v0)
    /* 996FC 800A8EFC 00000000 */  nop
    /* 99700 800A8F00 0400422C */  sltiu      $v0, $v0, 0x4
    /* 99704 800A8F04 02004010 */  beqz       $v0, .L800A8F10
    /* 99708 800A8F08 01008224 */   addiu     $v0, $a0, 0x1
    /* 9970C 800A8F0C 060E60A6 */  sh         $zero, 0xE06($s3)
  .L800A8F10:
    /* 99710 800A8F10 21204000 */  addu       $a0, $v0, $zero
    /* 99714 800A8F14 00140200 */  sll        $v0, $v0, 16
    /* 99718 800A8F18 03140200 */  sra        $v0, $v0, 16
    /* 9971C 800A8F1C 08004228 */  slti       $v0, $v0, 0x8
    /* 99720 800A8F20 F3FF4014 */  bnez       $v0, .L800A8EF0
    /* 99724 800A8F24 00140400 */   sll       $v0, $a0, 16
    /* 99728 800A8F28 A81060A6 */  sh         $zero, 0x10A8($s3)
    /* 9972C 800A8F2C C2010224 */  addiu      $v0, $zero, 0x1C2
    /* 99730 800A8F30 AA1062A6 */  sh         $v0, 0x10AA($s3)
    /* 99734 800A8F34 80020224 */  addiu      $v0, $zero, 0x280
    /* 99738 800A8F38 AC1062A6 */  sh         $v0, 0x10AC($s3)
    /* 9973C 800A8F3C E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 99740 800A8F40 AE1062A6 */  sh         $v0, 0x10AE($s3)
    /* 99744 800A8F44 1280043C */  lui        $a0, %hi(D_8011E748)
    /* 99748 800A8F48 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* 9974C 800A8F4C 331F040C */  jal        func_80107CCC
    /* 99750 800A8F50 00000000 */   nop
    /* 99754 800A8F54 1280013C */  lui        $at, %hi(D_8011E748)
    /* 99758 800A8F58 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* 9975C 800A8F5C A569030C */  jal        func_800DA694
    /* 99760 800A8F60 00000000 */   nop
    /* 99764 800A8F64 AE5E020C */  jal        func_80097AB8
    /* 99768 800A8F68 00000000 */   nop
    /* 9976C 800A8F6C B01060AE */  sw         $zero, 0x10B0($s3)
    /* 99770 800A8F70 21106002 */  addu       $v0, $s3, $zero
    /* 99774 800A8F74 2000BF8F */  lw         $ra, 0x20($sp)
    /* 99778 800A8F78 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9977C 800A8F7C 1800B28F */  lw         $s2, 0x18($sp)
    /* 99780 800A8F80 1400B18F */  lw         $s1, 0x14($sp)
    /* 99784 800A8F84 1000B08F */  lw         $s0, 0x10($sp)
    /* 99788 800A8F88 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9978C 800A8F8C 0800E003 */  jr         $ra
    /* 99790 800A8F90 00000000 */   nop
endlabel func_800A8D24
