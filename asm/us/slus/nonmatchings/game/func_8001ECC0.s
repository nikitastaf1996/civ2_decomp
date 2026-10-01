.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001ECC0, 0x3F8

glabel func_8001ECC0
    /* F4C0 8001ECC0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* F4C4 8001ECC4 3800BFAF */  sw         $ra, 0x38($sp)
    /* F4C8 8001ECC8 3400B7AF */  sw         $s7, 0x34($sp)
    /* F4CC 8001ECCC 3000B6AF */  sw         $s6, 0x30($sp)
    /* F4D0 8001ECD0 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* F4D4 8001ECD4 2800B4AF */  sw         $s4, 0x28($sp)
    /* F4D8 8001ECD8 2400B3AF */  sw         $s3, 0x24($sp)
    /* F4DC 8001ECDC 2000B2AF */  sw         $s2, 0x20($sp)
    /* F4E0 8001ECE0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* F4E4 8001ECE4 1800B0AF */  sw         $s0, 0x18($sp)
    /* F4E8 8001ECE8 21B00000 */  addu       $s6, $zero, $zero
    /* F4EC 8001ECEC 1280173C */  lui        $s7, %hi(D_80127368)
    /* F4F0 8001ECF0 6873F726 */  addiu      $s7, $s7, %lo(D_80127368)
    /* F4F4 8001ECF4 001C1600 */  sll        $v1, $s6, 16
  .L8001ECF8:
    /* F4F8 8001ECF8 031C0300 */  sra        $v1, $v1, 16
    /* F4FC 8001ECFC 40100300 */  sll        $v0, $v1, 1
    /* F500 8001ED00 21104300 */  addu       $v0, $v0, $v1
    /* F504 8001ED04 80100200 */  sll        $v0, $v0, 2
    /* F508 8001ED08 0180013C */  lui        $at, %hi(D_80016BFC)
    /* F50C 8001ED0C 21082200 */  addu       $at, $at, $v0
    /* F510 8001ED10 FC6B3094 */  lhu        $s0, %lo(D_80016BFC)($at)
    /* F514 8001ED14 0180013C */  lui        $at, %hi(D_80016C00)
    /* F518 8001ED18 21082200 */  addu       $at, $at, $v0
    /* F51C 8001ED1C 006C3394 */  lhu        $s3, %lo(D_80016C00)($at)
    /* F520 8001ED20 0180013C */  lui        $at, %hi(D_80016C02)
    /* F524 8001ED24 21082200 */  addu       $at, $at, $v0
    /* F528 8001ED28 026C3494 */  lhu        $s4, %lo(D_80016C02)($at)
    /* F52C 8001ED2C 0180013C */  lui        $at, %hi(D_80016C04)
    /* F530 8001ED30 21082200 */  addu       $at, $at, $v0
    /* F534 8001ED34 046C3594 */  lhu        $s5, %lo(D_80016C04)($at)
    /* F538 8001ED38 0180013C */  lui        $at, %hi(D_80016C06)
    /* F53C 8001ED3C 21082200 */  addu       $at, $at, $v0
    /* F540 8001ED40 066C3294 */  lhu        $s2, %lo(D_80016C06)($at)
    /* F544 8001ED44 0180013C */  lui        $at, %hi(D_80016BFE)
    /* F548 8001ED48 21082200 */  addu       $at, $at, $v0
    /* F54C 8001ED4C FE6B3190 */  lbu        $s1, %lo(D_80016BFE)($at)
    /* F550 8001ED50 0180043C */  lui        $a0, %hi(D_800171A0)
    /* F554 8001ED54 A0718424 */  addiu      $a0, $a0, %lo(D_800171A0)
    /* F558 8001ED58 5CAD000C */  jal        func_8002B570
    /* F55C 8001ED5C 21282002 */   addu      $a1, $s1, $zero
    /* F560 8001ED60 FFFF1032 */  andi       $s0, $s0, 0xFFFF
    /* F564 8001ED64 7CAD000C */  jal        func_8002B5F0
    /* F568 8001ED68 21200002 */   addu      $a0, $s0, $zero
    /* F56C 8001ED6C 80801000 */  sll        $s0, $s0, 2
    /* F570 8001ED70 21101702 */  addu       $v0, $s0, $s7
    /* F574 8001ED74 0000448C */  lw         $a0, 0x0($v0)
    /* F578 8001ED78 1380013C */  lui        $at, %hi(D_80129868)
    /* F57C 8001ED7C 21083000 */  addu       $at, $at, $s0
    /* F580 8001ED80 6898258C */  lw         $a1, %lo(D_80129868)($at)
    /* F584 8001ED84 AF6A000C */  jal        func_8001AABC
    /* F588 8001ED88 01000624 */   addiu     $a2, $zero, 0x1
    /* F58C 8001ED8C 00211100 */  sll        $a0, $s1, 4
    /* F590 8001ED90 21209100 */  addu       $a0, $a0, $s1
    /* F594 8001ED94 80200400 */  sll        $a0, $a0, 2
    /* F598 8001ED98 1580023C */  lui        $v0, %hi(D_8014C008)
    /* F59C 8001ED9C 08C04224 */  addiu      $v0, $v0, %lo(D_8014C008)
    /* F5A0 8001EDA0 009C1300 */  sll        $s3, $s3, 16
    /* F5A4 8001EDA4 00A41400 */  sll        $s4, $s4, 16
    /* F5A8 8001EDA8 00AC1500 */  sll        $s5, $s5, 16
    /* F5AC 8001EDAC 00941200 */  sll        $s2, $s2, 16
    /* F5B0 8001EDB0 03941200 */  sra        $s2, $s2, 16
    /* F5B4 8001EDB4 1000B2AF */  sw         $s2, 0x10($sp)
    /* F5B8 8001EDB8 21208200 */  addu       $a0, $a0, $v0
    /* F5BC 8001EDBC 032C1300 */  sra        $a1, $s3, 16
    /* F5C0 8001EDC0 03341400 */  sra        $a2, $s4, 16
    /* F5C4 8001EDC4 396B000C */  jal        func_8001ACE4
    /* F5C8 8001EDC8 033C1500 */   sra       $a3, $s5, 16
    /* F5CC 8001EDCC 0100C226 */  addiu      $v0, $s6, 0x1
    /* F5D0 8001EDD0 21B04000 */  addu       $s6, $v0, $zero
    /* F5D4 8001EDD4 00140200 */  sll        $v0, $v0, 16
    /* F5D8 8001EDD8 03140200 */  sra        $v0, $v0, 16
    /* F5DC 8001EDDC 0B004228 */  slti       $v0, $v0, 0xB
    /* F5E0 8001EDE0 C5FF4014 */  bnez       $v0, .L8001ECF8
    /* F5E4 8001EDE4 001C1600 */   sll       $v1, $s6, 16
    /* F5E8 8001EDE8 6E68000C */  jal        func_8001A1B8
    /* F5EC 8001EDEC 00011124 */   addiu     $s1, $zero, 0x100
    /* F5F0 8001EDF0 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* F5F4 8001EDF4 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* F5F8 8001EDF8 1580053C */  lui        $a1, %hi(D_8014C008)
    /* F5FC 8001EDFC 08C0A524 */  addiu      $a1, $a1, %lo(D_8014C008)
    /* F600 8001EE00 1D6C000C */  jal        func_8001B074
    /* F604 8001EE04 0A000624 */   addiu     $a2, $zero, 0xA
    /* F608 8001EE08 1380013C */  lui        $at, %hi(D_8012A24C)
    /* F60C 8001EE0C 4CA220A4 */  sh         $zero, %lo(D_8012A24C)($at)
    /* F610 8001EE10 1380013C */  lui        $at, %hi(D_8012A24E)
    /* F614 8001EE14 4EA220A4 */  sh         $zero, %lo(D_8012A24E)($at)
    /* F618 8001EE18 1380013C */  lui        $at, %hi(D_8012A250)
    /* F61C 8001EE1C 50A231A4 */  sh         $s1, %lo(D_8012A250)($at)
    /* F620 8001EE20 F0001224 */  addiu      $s2, $zero, 0xF0
    /* F624 8001EE24 1380013C */  lui        $at, %hi(D_8012A252)
    /* F628 8001EE28 52A232A4 */  sh         $s2, %lo(D_8012A252)($at)
    /* F62C 8001EE2C 1380013C */  lui        $at, %hi(D_8012A256)
    /* F630 8001EE30 56A220A0 */  sb         $zero, %lo(D_8012A256)($at)
    /* F634 8001EE34 1380013C */  lui        $at, %hi(D_8012A257)
    /* F638 8001EE38 57A220A0 */  sb         $zero, %lo(D_8012A257)($at)
    /* F63C 8001EE3C 1380103C */  lui        $s0, %hi(D_8012A0E0)
    /* F640 8001EE40 E0A01026 */  addiu      $s0, $s0, %lo(D_8012A0E0)
    /* F644 8001EE44 7E0100A2 */  sb         $zero, 0x17E($s0)
    /* F648 8001EE48 7D0100A2 */  sb         $zero, 0x17D($s0)
    /* F64C 8001EE4C 1380013C */  lui        $at, %hi(D_8012A25C)
    /* F650 8001EE50 5CA220A0 */  sb         $zero, %lo(D_8012A25C)($at)
    /* F654 8001EE54 21200002 */  addu       $a0, $s0, $zero
    /* F658 8001EE58 1580053C */  lui        $a1, %hi(D_8014C04C)
    /* F65C 8001EE5C 4CC0A524 */  addiu      $a1, $a1, %lo(D_8014C04C)
    /* F660 8001EE60 1D6C000C */  jal        func_8001B074
    /* F664 8001EE64 0B000624 */   addiu     $a2, $zero, 0xB
    /* F668 8001EE68 1380013C */  lui        $at, %hi(D_8012A270)
    /* F66C 8001EE6C 70A231A4 */  sh         $s1, %lo(D_8012A270)($at)
    /* F670 8001EE70 1380013C */  lui        $at, %hi(D_8012A272)
    /* F674 8001EE74 72A220A4 */  sh         $zero, %lo(D_8012A272)($at)
    /* F678 8001EE78 40000224 */  addiu      $v0, $zero, 0x40
    /* F67C 8001EE7C 1380013C */  lui        $at, %hi(D_8012A274)
    /* F680 8001EE80 74A222A4 */  sh         $v0, %lo(D_8012A274)($at)
    /* F684 8001EE84 1380013C */  lui        $at, %hi(D_8012A276)
    /* F688 8001EE88 76A232A4 */  sh         $s2, %lo(D_8012A276)($at)
    /* F68C 8001EE8C 1380013C */  lui        $at, %hi(D_8012A27A)
    /* F690 8001EE90 7AA220A0 */  sb         $zero, %lo(D_8012A27A)($at)
    /* F694 8001EE94 1380013C */  lui        $at, %hi(D_8012A27B)
    /* F698 8001EE98 7BA220A0 */  sb         $zero, %lo(D_8012A27B)($at)
    /* F69C 8001EE9C A20100A2 */  sb         $zero, 0x1A2($s0)
    /* F6A0 8001EEA0 A10100A2 */  sb         $zero, 0x1A1($s0)
    /* F6A4 8001EEA4 1380013C */  lui        $at, %hi(D_8012A280)
    /* F6A8 8001EEA8 80A220A0 */  sb         $zero, %lo(D_8012A280)($at)
    /* F6AC 8001EEAC 21200002 */  addu       $a0, $s0, $zero
    /* F6B0 8001EEB0 1580053C */  lui        $a1, %hi(D_8014C04C)
    /* F6B4 8001EEB4 4CC0A524 */  addiu      $a1, $a1, %lo(D_8014C04C)
    /* F6B8 8001EEB8 1D6C000C */  jal        func_8001B074
    /* F6BC 8001EEBC 0C000624 */   addiu     $a2, $zero, 0xC
    /* F6C0 8001EEC0 A4000224 */  addiu      $v0, $zero, 0xA4
    /* F6C4 8001EEC4 1380013C */  lui        $at, %hi(D_8012A294)
    /* F6C8 8001EEC8 94A222A4 */  sh         $v0, %lo(D_8012A294)($at)
    /* F6CC 8001EECC 78000224 */  addiu      $v0, $zero, 0x78
    /* F6D0 8001EED0 1380013C */  lui        $at, %hi(D_8012A296)
    /* F6D4 8001EED4 96A222A4 */  sh         $v0, %lo(D_8012A296)($at)
    /* F6D8 8001EED8 70000224 */  addiu      $v0, $zero, 0x70
    /* F6DC 8001EEDC 1380013C */  lui        $at, %hi(D_8012A298)
    /* F6E0 8001EEE0 98A222A4 */  sh         $v0, %lo(D_8012A298)($at)
    /* F6E4 8001EEE4 1380013C */  lui        $at, %hi(D_8012A29A)
    /* F6E8 8001EEE8 9AA222A4 */  sh         $v0, %lo(D_8012A29A)($at)
    /* F6EC 8001EEEC 40000224 */  addiu      $v0, $zero, 0x40
    /* F6F0 8001EEF0 1380013C */  lui        $at, %hi(D_8012A29E)
    /* F6F4 8001EEF4 9EA222A0 */  sb         $v0, %lo(D_8012A29E)($at)
    /* F6F8 8001EEF8 1380013C */  lui        $at, %hi(D_8012A29F)
    /* F6FC 8001EEFC 9FA220A0 */  sb         $zero, %lo(D_8012A29F)($at)
    /* F700 8001EF00 38000224 */  addiu      $v0, $zero, 0x38
    /* F704 8001EF04 1380013C */  lui        $at, %hi(D_8012A2A8)
    /* F708 8001EF08 A8A222A4 */  sh         $v0, %lo(D_8012A2A8)($at)
    /* F70C 8001EF0C 1380013C */  lui        $at, %hi(D_8012A2AA)
    /* F710 8001EF10 AAA222A4 */  sh         $v0, %lo(D_8012A2AA)($at)
    /* F714 8001EF14 1380013C */  lui        $at, %hi(D_8012A2B0)
    /* F718 8001EF18 B0A220AC */  sw         $zero, %lo(D_8012A2B0)($at)
    /* F71C 8001EF1C C60100A2 */  sb         $zero, 0x1C6($s0)
    /* F720 8001EF20 C50100A2 */  sb         $zero, 0x1C5($s0)
    /* F724 8001EF24 1380013C */  lui        $at, %hi(D_8012A2A4)
    /* F728 8001EF28 A4A220A0 */  sb         $zero, %lo(D_8012A2A4)($at)
    /* F72C 8001EF2C 21200002 */  addu       $a0, $s0, $zero
    /* F730 8001EF30 1580053C */  lui        $a1, %hi(D_8014C090)
    /* F734 8001EF34 90C0A524 */  addiu      $a1, $a1, %lo(D_8014C090)
    /* F738 8001EF38 1D6C000C */  jal        func_8001B074
    /* F73C 8001EF3C 0D000624 */   addiu     $a2, $zero, 0xD
    /* F740 8001EF40 1380013C */  lui        $at, %hi(D_8012A2B8)
    /* F744 8001EF44 B8A220A4 */  sh         $zero, %lo(D_8012A2B8)($at)
    /* F748 8001EF48 1380013C */  lui        $at, %hi(D_8012A2BA)
    /* F74C 8001EF4C BAA220A4 */  sh         $zero, %lo(D_8012A2BA)($at)
    /* F750 8001EF50 A0001124 */  addiu      $s1, $zero, 0xA0
    /* F754 8001EF54 1380013C */  lui        $at, %hi(D_8012A2BC)
    /* F758 8001EF58 BCA231A4 */  sh         $s1, %lo(D_8012A2BC)($at)
    /* F75C 8001EF5C 1380013C */  lui        $at, %hi(D_8012A2BE)
    /* F760 8001EF60 BEA232A4 */  sh         $s2, %lo(D_8012A2BE)($at)
    /* F764 8001EF64 1380013C */  lui        $at, %hi(D_8012A2C2)
    /* F768 8001EF68 C2A220A0 */  sb         $zero, %lo(D_8012A2C2)($at)
    /* F76C 8001EF6C 1380013C */  lui        $at, %hi(D_8012A2C3)
    /* F770 8001EF70 C3A220A0 */  sb         $zero, %lo(D_8012A2C3)($at)
    /* F774 8001EF74 EA0100A2 */  sb         $zero, 0x1EA($s0)
    /* F778 8001EF78 E90100A2 */  sb         $zero, 0x1E9($s0)
    /* F77C 8001EF7C 1380013C */  lui        $at, %hi(D_8012A2C8)
    /* F780 8001EF80 C8A220A0 */  sb         $zero, %lo(D_8012A2C8)($at)
    /* F784 8001EF84 21200002 */  addu       $a0, $s0, $zero
    /* F788 8001EF88 1580053C */  lui        $a1, %hi(D_8014C0D4)
    /* F78C 8001EF8C D4C0A524 */  addiu      $a1, $a1, %lo(D_8014C0D4)
    /* F790 8001EF90 1D6C000C */  jal        func_8001B074
    /* F794 8001EF94 0E000624 */   addiu     $a2, $zero, 0xE
    /* F798 8001EF98 1380013C */  lui        $at, %hi(D_8012A2DC)
    /* F79C 8001EF9C DCA231A4 */  sh         $s1, %lo(D_8012A2DC)($at)
    /* F7A0 8001EFA0 1380013C */  lui        $at, %hi(D_8012A2DE)
    /* F7A4 8001EFA4 DEA220A4 */  sh         $zero, %lo(D_8012A2DE)($at)
    /* F7A8 8001EFA8 1380013C */  lui        $at, %hi(D_8012A2E0)
    /* F7AC 8001EFAC E0A231A4 */  sh         $s1, %lo(D_8012A2E0)($at)
    /* F7B0 8001EFB0 1380013C */  lui        $at, %hi(D_8012A2E2)
    /* F7B4 8001EFB4 E2A232A4 */  sh         $s2, %lo(D_8012A2E2)($at)
    /* F7B8 8001EFB8 1380013C */  lui        $at, %hi(D_8012A2E6)
    /* F7BC 8001EFBC E6A220A0 */  sb         $zero, %lo(D_8012A2E6)($at)
    /* F7C0 8001EFC0 1380013C */  lui        $at, %hi(D_8012A2E7)
    /* F7C4 8001EFC4 E7A220A0 */  sb         $zero, %lo(D_8012A2E7)($at)
    /* F7C8 8001EFC8 0E0200A2 */  sb         $zero, 0x20E($s0)
    /* F7CC 8001EFCC 0D0200A2 */  sb         $zero, 0x20D($s0)
    /* F7D0 8001EFD0 1380013C */  lui        $at, %hi(D_8012A2EC)
    /* F7D4 8001EFD4 ECA220A0 */  sb         $zero, %lo(D_8012A2EC)($at)
    /* F7D8 8001EFD8 21200002 */  addu       $a0, $s0, $zero
    /* F7DC 8001EFDC 1580053C */  lui        $a1, %hi(D_8014C090)
    /* F7E0 8001EFE0 90C0A524 */  addiu      $a1, $a1, %lo(D_8014C090)
    /* F7E4 8001EFE4 1D6C000C */  jal        func_8001B074
    /* F7E8 8001EFE8 0F000624 */   addiu     $a2, $zero, 0xF
    /* F7EC 8001EFEC 40010224 */  addiu      $v0, $zero, 0x140
    /* F7F0 8001EFF0 1380013C */  lui        $at, %hi(D_8012A300)
    /* F7F4 8001EFF4 00A322A4 */  sh         $v0, %lo(D_8012A300)($at)
    /* F7F8 8001EFF8 1380013C */  lui        $at, %hi(D_8012A302)
    /* F7FC 8001EFFC 02A320A4 */  sh         $zero, %lo(D_8012A302)($at)
    /* F800 8001F000 1380013C */  lui        $at, %hi(D_8012A304)
    /* F804 8001F004 04A331A4 */  sh         $s1, %lo(D_8012A304)($at)
    /* F808 8001F008 1380013C */  lui        $at, %hi(D_8012A306)
    /* F80C 8001F00C 06A332A4 */  sh         $s2, %lo(D_8012A306)($at)
    /* F810 8001F010 1380013C */  lui        $at, %hi(D_8012A30A)
    /* F814 8001F014 0AA320A0 */  sb         $zero, %lo(D_8012A30A)($at)
    /* F818 8001F018 1380013C */  lui        $at, %hi(D_8012A30B)
    /* F81C 8001F01C 0BA320A0 */  sb         $zero, %lo(D_8012A30B)($at)
    /* F820 8001F020 320200A2 */  sb         $zero, 0x232($s0)
    /* F824 8001F024 310200A2 */  sb         $zero, 0x231($s0)
    /* F828 8001F028 1380013C */  lui        $at, %hi(D_8012A310)
    /* F82C 8001F02C 10A320A0 */  sb         $zero, %lo(D_8012A310)($at)
    /* F830 8001F030 21200002 */  addu       $a0, $s0, $zero
    /* F834 8001F034 1580053C */  lui        $a1, %hi(D_8014C0D4)
    /* F838 8001F038 D4C0A524 */  addiu      $a1, $a1, %lo(D_8014C0D4)
    /* F83C 8001F03C 1D6C000C */  jal        func_8001B074
    /* F840 8001F040 10000624 */   addiu     $a2, $zero, 0x10
    /* F844 8001F044 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* F848 8001F048 1380013C */  lui        $at, %hi(D_8012A324)
    /* F84C 8001F04C 24A322A4 */  sh         $v0, %lo(D_8012A324)($at)
    /* F850 8001F050 1380013C */  lui        $at, %hi(D_8012A326)
    /* F854 8001F054 26A320A4 */  sh         $zero, %lo(D_8012A326)($at)
    /* F858 8001F058 1380013C */  lui        $at, %hi(D_8012A328)
    /* F85C 8001F05C 28A331A4 */  sh         $s1, %lo(D_8012A328)($at)
    /* F860 8001F060 1380013C */  lui        $at, %hi(D_8012A32A)
    /* F864 8001F064 2AA332A4 */  sh         $s2, %lo(D_8012A32A)($at)
    /* F868 8001F068 1380013C */  lui        $at, %hi(D_8012A32E)
    /* F86C 8001F06C 2EA320A0 */  sb         $zero, %lo(D_8012A32E)($at)
    /* F870 8001F070 1380013C */  lui        $at, %hi(D_8012A32F)
    /* F874 8001F074 2FA320A0 */  sb         $zero, %lo(D_8012A32F)($at)
    /* F878 8001F078 560200A2 */  sb         $zero, 0x256($s0)
    /* F87C 8001F07C 550200A2 */  sb         $zero, 0x255($s0)
    /* F880 8001F080 1380013C */  lui        $at, %hi(D_8012A334)
    /* F884 8001F084 34A320A0 */  sb         $zero, %lo(D_8012A334)($at)
    /* F888 8001F088 3800BF8F */  lw         $ra, 0x38($sp)
    /* F88C 8001F08C 3400B78F */  lw         $s7, 0x34($sp)
    /* F890 8001F090 3000B68F */  lw         $s6, 0x30($sp)
    /* F894 8001F094 2C00B58F */  lw         $s5, 0x2C($sp)
    /* F898 8001F098 2800B48F */  lw         $s4, 0x28($sp)
    /* F89C 8001F09C 2400B38F */  lw         $s3, 0x24($sp)
    /* F8A0 8001F0A0 2000B28F */  lw         $s2, 0x20($sp)
    /* F8A4 8001F0A4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* F8A8 8001F0A8 1800B08F */  lw         $s0, 0x18($sp)
    /* F8AC 8001F0AC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* F8B0 8001F0B0 0800E003 */  jr         $ra
    /* F8B4 8001F0B4 00000000 */   nop
endlabel func_8001ECC0
