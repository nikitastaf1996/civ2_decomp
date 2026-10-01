.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C658C, 0x19C

glabel func_800C658C
    /* B6D8C 800C658C 28FDBD27 */  addiu      $sp, $sp, -0x2D8
    /* B6D90 800C6590 2800A427 */  addiu      $a0, $sp, 0x28
    /* B6D94 800C6594 00200524 */  addiu      $a1, $zero, 0x2000
    /* B6D98 800C6598 D002BFAF */  sw         $ra, 0x2D0($sp)
    /* B6D9C 800C659C CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* B6DA0 800C65A0 ADC5020C */  jal        func_800B16B4
    /* B6DA4 800C65A4 C802B0AF */   sw        $s0, 0x2C8($sp)
    /* B6DA8 800C65A8 4000113C */  lui        $s1, (0x400001 >> 16)
    /* B6DAC 800C65AC 01003136 */  ori        $s1, $s1, (0x400001 & 0xFFFF)
    /* B6DB0 800C65B0 2800B027 */  addiu      $s0, $sp, 0x28
    /* B6DB4 800C65B4 21200002 */  addu       $a0, $s0, $zero
    /* B6DB8 800C65B8 1680053C */  lui        $a1, %hi(D_801590A0)
    /* B6DBC 800C65BC A090A524 */  addiu      $a1, $a1, %lo(D_801590A0)
    /* B6DC0 800C65C0 0C000624 */  addiu      $a2, $zero, 0xC
    /* B6DC4 800C65C4 21380000 */  addu       $a3, $zero, $zero
    /* B6DC8 800C65C8 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6DCC 800C65CC 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6DD0 800C65D0 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6DD4 800C65D4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6DD8 800C65D8 2CE0020C */  jal        func_800B80B0
    /* B6DDC 800C65DC 2000B1AF */   sw        $s1, 0x20($sp)
    /* B6DE0 800C65E0 21200002 */  addu       $a0, $s0, $zero
    /* B6DE4 800C65E4 52DF020C */  jal        func_800B7D48
    /* B6DE8 800C65E8 21280000 */   addu      $a1, $zero, $zero
    /* B6DEC 800C65EC 21200002 */  addu       $a0, $s0, $zero
    /* B6DF0 800C65F0 1680053C */  lui        $a1, %hi(D_801590A0)
    /* B6DF4 800C65F4 A090A524 */  addiu      $a1, $a1, %lo(D_801590A0)
    /* B6DF8 800C65F8 B3020624 */  addiu      $a2, $zero, 0x2B3
    /* B6DFC 800C65FC 21380000 */  addu       $a3, $zero, $zero
    /* B6E00 800C6600 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6E04 800C6604 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6E08 800C6608 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6E0C 800C660C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6E10 800C6610 2CE0020C */  jal        func_800B80B0
    /* B6E14 800C6614 2000B1AF */   sw        $s1, 0x20($sp)
    /* B6E18 800C6618 21200002 */  addu       $a0, $s0, $zero
    /* B6E1C 800C661C 52DF020C */  jal        func_800B7D48
    /* B6E20 800C6620 21280000 */   addu      $a1, $zero, $zero
    /* B6E24 800C6624 21200002 */  addu       $a0, $s0, $zero
    /* B6E28 800C6628 1680053C */  lui        $a1, %hi(D_801590A0)
    /* B6E2C 800C662C A090A524 */  addiu      $a1, $a1, %lo(D_801590A0)
    /* B6E30 800C6630 BC050624 */  addiu      $a2, $zero, 0x5BC
    /* B6E34 800C6634 21380000 */  addu       $a3, $zero, $zero
    /* B6E38 800C6638 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6E3C 800C663C 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6E40 800C6640 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6E44 800C6644 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6E48 800C6648 2CE0020C */  jal        func_800B80B0
    /* B6E4C 800C664C 2000B1AF */   sw        $s1, 0x20($sp)
    /* B6E50 800C6650 21200002 */  addu       $a0, $s0, $zero
    /* B6E54 800C6654 52DF020C */  jal        func_800B7D48
    /* B6E58 800C6658 21280000 */   addu      $a1, $zero, $zero
    /* B6E5C 800C665C 21200002 */  addu       $a0, $s0, $zero
    /* B6E60 800C6660 1680053C */  lui        $a1, %hi(D_801590A0)
    /* B6E64 800C6664 A090A524 */  addiu      $a1, $a1, %lo(D_801590A0)
    /* B6E68 800C6668 B1080624 */  addiu      $a2, $zero, 0x8B1
    /* B6E6C 800C666C 21380000 */  addu       $a3, $zero, $zero
    /* B6E70 800C6670 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6E74 800C6674 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6E78 800C6678 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6E7C 800C667C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6E80 800C6680 2CE0020C */  jal        func_800B80B0
    /* B6E84 800C6684 2000B1AF */   sw        $s1, 0x20($sp)
    /* B6E88 800C6688 21200002 */  addu       $a0, $s0, $zero
    /* B6E8C 800C668C 52DF020C */  jal        func_800B7D48
    /* B6E90 800C6690 21280000 */   addu      $a1, $zero, $zero
    /* B6E94 800C6694 21200002 */  addu       $a0, $s0, $zero
    /* B6E98 800C6698 1680053C */  lui        $a1, %hi(D_801590A0)
    /* B6E9C 800C669C A090A524 */  addiu      $a1, $a1, %lo(D_801590A0)
    /* B6EA0 800C66A0 560B0624 */  addiu      $a2, $zero, 0xB56
    /* B6EA4 800C66A4 21380000 */  addu       $a3, $zero, $zero
    /* B6EA8 800C66A8 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6EAC 800C66AC 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6EB0 800C66B0 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6EB4 800C66B4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6EB8 800C66B8 2CE0020C */  jal        func_800B80B0
    /* B6EBC 800C66BC 2000B1AF */   sw        $s1, 0x20($sp)
    /* B6EC0 800C66C0 21200002 */  addu       $a0, $s0, $zero
    /* B6EC4 800C66C4 52DF020C */  jal        func_800B7D48
    /* B6EC8 800C66C8 21280000 */   addu      $a1, $zero, $zero
    /* B6ECC 800C66CC 21200002 */  addu       $a0, $s0, $zero
    /* B6ED0 800C66D0 1680053C */  lui        $a1, %hi(D_801590A0)
    /* B6ED4 800C66D4 A090A524 */  addiu      $a1, $a1, %lo(D_801590A0)
    /* B6ED8 800C66D8 0E0E0624 */  addiu      $a2, $zero, 0xE0E
    /* B6EDC 800C66DC 21380000 */  addu       $a3, $zero, $zero
    /* B6EE0 800C66E0 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6EE4 800C66E4 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6EE8 800C66E8 1800A0AF */  sw         $zero, 0x18($sp)
    /* B6EEC 800C66EC 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6EF0 800C66F0 2CE0020C */  jal        func_800B80B0
    /* B6EF4 800C66F4 2000B1AF */   sw        $s1, 0x20($sp)
    /* B6EF8 800C66F8 21200002 */  addu       $a0, $s0, $zero
    /* B6EFC 800C66FC 52DF020C */  jal        func_800B7D48
    /* B6F00 800C6700 21280000 */   addu      $a1, $zero, $zero
    /* B6F04 800C6704 21200002 */  addu       $a0, $s0, $zero
    /* B6F08 800C6708 0AC7020C */  jal        func_800B1C28
    /* B6F0C 800C670C 02000524 */   addiu     $a1, $zero, 0x2
    /* B6F10 800C6710 D002BF8F */  lw         $ra, 0x2D0($sp)
    /* B6F14 800C6714 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* B6F18 800C6718 C802B08F */  lw         $s0, 0x2C8($sp)
    /* B6F1C 800C671C D802BD27 */  addiu      $sp, $sp, 0x2D8
    /* B6F20 800C6720 0800E003 */  jr         $ra
    /* B6F24 800C6724 00000000 */   nop
endlabel func_800C658C
