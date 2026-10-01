.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D5F6C, 0x1D0

glabel func_800D5F6C
    /* C676C 800D5F6C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C6770 800D5F70 2400BFAF */  sw         $ra, 0x24($sp)
    /* C6774 800D5F74 2000B2AF */  sw         $s2, 0x20($sp)
    /* C6778 800D5F78 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C677C 800D5F7C 1800B0AF */  sw         $s0, 0x18($sp)
    /* C6780 800D5F80 21808000 */  addu       $s0, $a0, $zero
    /* C6784 800D5F84 B4010224 */  addiu      $v0, $zero, 0x1B4
    /* C6788 800D5F88 1000A2AF */  sw         $v0, 0x10($sp)
    /* C678C 800D5F8C 3D000224 */  addiu      $v0, $zero, 0x3D
    /* C6790 800D5F90 1400A2AF */  sw         $v0, 0x14($sp)
    /* C6794 800D5F94 EC0E0526 */  addiu      $a1, $s0, 0xEEC
    /* C6798 800D5F98 21300000 */  addu       $a2, $zero, $zero
    /* C679C 800D5F9C AC57030C */  jal        func_800D5EB0
    /* C67A0 800D5FA0 21380000 */   addu      $a3, $zero, $zero
    /* C67A4 800D5FA4 80001224 */  addiu      $s2, $zero, 0x80
    /* C67A8 800D5FA8 1000B2AF */  sw         $s2, 0x10($sp)
    /* C67AC 800D5FAC 40001124 */  addiu      $s1, $zero, 0x40
    /* C67B0 800D5FB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* C67B4 800D5FB4 21200002 */  addu       $a0, $s0, $zero
    /* C67B8 800D5FB8 F40E0526 */  addiu      $a1, $s0, 0xEF4
    /* C67BC 800D5FBC 20000624 */  addiu      $a2, $zero, 0x20
    /* C67C0 800D5FC0 AC57030C */  jal        func_800D5EB0
    /* C67C4 800D5FC4 40000724 */   addiu     $a3, $zero, 0x40
    /* C67C8 800D5FC8 20010224 */  addiu      $v0, $zero, 0x120
    /* C67CC 800D5FCC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C67D0 800D5FD0 1400B1AF */  sw         $s1, 0x14($sp)
    /* C67D4 800D5FD4 21200002 */  addu       $a0, $s0, $zero
    /* C67D8 800D5FD8 2C0F0526 */  addiu      $a1, $s0, 0xF2C
    /* C67DC 800D5FDC 10000624 */  addiu      $a2, $zero, 0x10
    /* C67E0 800D5FE0 AC57030C */  jal        func_800D5EB0
    /* C67E4 800D5FE4 90000724 */   addiu     $a3, $zero, 0x90
    /* C67E8 800D5FE8 70000224 */  addiu      $v0, $zero, 0x70
    /* C67EC 800D5FEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C67F0 800D5FF0 50000224 */  addiu      $v0, $zero, 0x50
    /* C67F4 800D5FF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* C67F8 800D5FF8 21200002 */  addu       $a0, $s0, $zero
    /* C67FC 800D5FFC FC0E0526 */  addiu      $a1, $s0, 0xEFC
    /* C6800 800D6000 BC000624 */  addiu      $a2, $zero, 0xBC
    /* C6804 800D6004 AC57030C */  jal        func_800D5EB0
    /* C6808 800D6008 30000724 */   addiu     $a3, $zero, 0x30
    /* C680C 800D600C 60000224 */  addiu      $v0, $zero, 0x60
    /* C6810 800D6010 1000A2AF */  sw         $v0, 0x10($sp)
    /* C6814 800D6014 88000224 */  addiu      $v0, $zero, 0x88
    /* C6818 800D6018 1400A2AF */  sw         $v0, 0x14($sp)
    /* C681C 800D601C 21200002 */  addu       $a0, $s0, $zero
    /* C6820 800D6020 040F0526 */  addiu      $a1, $s0, 0xF04
    /* C6824 800D6024 10000624 */  addiu      $a2, $zero, 0x10
    /* C6828 800D6028 AC57030C */  jal        func_800D5EB0
    /* C682C 800D602C 48000724 */   addiu     $a3, $zero, 0x48
    /* C6830 800D6030 C8000224 */  addiu      $v0, $zero, 0xC8
    /* C6834 800D6034 1000A2AF */  sw         $v0, 0x10($sp)
    /* C6838 800D6038 41000224 */  addiu      $v0, $zero, 0x41
    /* C683C 800D603C 1400A2AF */  sw         $v0, 0x14($sp)
    /* C6840 800D6040 21200002 */  addu       $a0, $s0, $zero
    /* C6844 800D6044 0C0F0526 */  addiu      $a1, $s0, 0xF0C
    /* C6848 800D6048 B4010624 */  addiu      $a2, $zero, 0x1B4
    /* C684C 800D604C AC57030C */  jal        func_800D5EB0
    /* C6850 800D6050 64010724 */   addiu     $a3, $zero, 0x164
    /* C6854 800D6054 1000B2AF */  sw         $s2, 0x10($sp)
    /* C6858 800D6058 78001124 */  addiu      $s1, $zero, 0x78
    /* C685C 800D605C 1400B1AF */  sw         $s1, 0x14($sp)
    /* C6860 800D6060 21200002 */  addu       $a0, $s0, $zero
    /* C6864 800D6064 140F0526 */  addiu      $a1, $s0, 0xF14
    /* C6868 800D6068 10000624 */  addiu      $a2, $zero, 0x10
    /* C686C 800D606C AC57030C */  jal        func_800D5EB0
    /* C6870 800D6070 60000724 */   addiu     $a3, $zero, 0x60
    /* C6874 800D6074 B5000224 */  addiu      $v0, $zero, 0xB5
    /* C6878 800D6078 1000A2AF */  sw         $v0, 0x10($sp)
    /* C687C 800D607C 45000224 */  addiu      $v0, $zero, 0x45
    /* C6880 800D6080 1400A2AF */  sw         $v0, 0x14($sp)
    /* C6884 800D6084 21200002 */  addu       $a0, $s0, $zero
    /* C6888 800D6088 3C0F0526 */  addiu      $a1, $s0, 0xF3C
    /* C688C 800D608C 07000624 */  addiu      $a2, $zero, 0x7
    /* C6890 800D6090 AC57030C */  jal        func_800D5EB0
    /* C6894 800D6094 D8000724 */   addiu     $a3, $zero, 0xD8
    /* C6898 800D6098 B0000224 */  addiu      $v0, $zero, 0xB0
    /* C689C 800D609C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C68A0 800D60A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* C68A4 800D60A4 21200002 */  addu       $a0, $s0, $zero
    /* C68A8 800D60A8 1C0F0526 */  addiu      $a1, $s0, 0xF1C
    /* C68AC 800D60AC 78000624 */  addiu      $a2, $zero, 0x78
    /* C68B0 800D60B0 AC57030C */  jal        func_800D5EB0
    /* C68B4 800D60B4 50000724 */   addiu     $a3, $zero, 0x50
    /* C68B8 800D60B8 AF000224 */  addiu      $v0, $zero, 0xAF
    /* C68BC 800D60BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C68C0 800D60C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* C68C4 800D60C4 21200002 */  addu       $a0, $s0, $zero
    /* C68C8 800D60C8 340F0526 */  addiu      $a1, $s0, 0xF34
    /* C68CC 800D60CC 78000624 */  addiu      $a2, $zero, 0x78
    /* C68D0 800D60D0 AC57030C */  jal        func_800D5EB0
    /* C68D4 800D60D4 4A000724 */   addiu     $a3, $zero, 0x4A
    /* C68D8 800D60D8 F4000224 */  addiu      $v0, $zero, 0xF4
    /* C68DC 800D60DC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C68E0 800D60E0 D1000224 */  addiu      $v0, $zero, 0xD1
    /* C68E4 800D60E4 1400A2AF */  sw         $v0, 0x14($sp)
    /* C68E8 800D60E8 21200002 */  addu       $a0, $s0, $zero
    /* C68EC 800D60EC 240F0526 */  addiu      $a1, $s0, 0xF24
    /* C68F0 800D60F0 C0000624 */  addiu      $a2, $zero, 0xC0
    /* C68F4 800D60F4 AC57030C */  jal        func_800D5EB0
    /* C68F8 800D60F8 D4000724 */   addiu     $a3, $zero, 0xD4
    /* C68FC 800D60FC E9000224 */  addiu      $v0, $zero, 0xE9
    /* C6900 800D6100 1000A2AF */  sw         $v0, 0x10($sp)
    /* C6904 800D6104 C6000224 */  addiu      $v0, $zero, 0xC6
    /* C6908 800D6108 1400A2AF */  sw         $v0, 0x14($sp)
    /* C690C 800D610C 21200002 */  addu       $a0, $s0, $zero
    /* C6910 800D6110 440F0526 */  addiu      $a1, $s0, 0xF44
    /* C6914 800D6114 C5000624 */  addiu      $a2, $zero, 0xC5
    /* C6918 800D6118 AC57030C */  jal        func_800D5EB0
    /* C691C 800D611C D8000724 */   addiu     $a3, $zero, 0xD8
    /* C6920 800D6120 2400BF8F */  lw         $ra, 0x24($sp)
    /* C6924 800D6124 2000B28F */  lw         $s2, 0x20($sp)
    /* C6928 800D6128 1C00B18F */  lw         $s1, 0x1C($sp)
    /* C692C 800D612C 1800B08F */  lw         $s0, 0x18($sp)
    /* C6930 800D6130 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C6934 800D6134 0800E003 */  jr         $ra
    /* C6938 800D6138 00000000 */   nop
endlabel func_800D5F6C
