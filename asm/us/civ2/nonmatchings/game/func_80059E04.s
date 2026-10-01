.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80059E04, 0x180

glabel func_80059E04
    /* 4A604 80059E04 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4A608 80059E08 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4A60C 80059E0C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4A610 80059E10 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4A614 80059E14 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4A618 80059E18 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4A61C 80059E1C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4A620 80059E20 21808000 */  addu       $s0, $a0, $zero
    /* 4A624 80059E24 2188A000 */  addu       $s1, $a1, $zero
    /* 4A628 80059E28 40101000 */  sll        $v0, $s0, 1
    /* 4A62C 80059E2C 21105000 */  addu       $v0, $v0, $s0
    /* 4A630 80059E30 80100200 */  sll        $v0, $v0, 2
    /* 4A634 80059E34 21105000 */  addu       $v0, $v0, $s0
    /* 4A638 80059E38 40180200 */  sll        $v1, $v0, 1
    /* 4A63C 80059E3C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4A640 80059E40 21082300 */  addu       $at, $at, $v1
    /* 4A644 80059E44 B4D63384 */  lh         $s3, %lo(D_8010D6B4)($at)
    /* 4A648 80059E48 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4A64C 80059E4C 21082300 */  addu       $at, $at, $v1
    /* 4A650 80059E50 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 4A654 80059E54 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 4A658 80059E58 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 4A65C 80059E5C 00000000 */  nop
    /* 4A660 80059E60 09004014 */  bnez       $v0, .L80059E88
    /* 4A664 80059E64 21A0C000 */   addu      $s4, $a2, $zero
    /* 4A668 80059E68 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4A66C 80059E6C 21082300 */  addu       $at, $at, $v1
    /* 4A670 80059E70 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 4A674 80059E74 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4A678 80059E78 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4A67C 80059E7C 00000000 */  nop
    /* 4A680 80059E80 0C006214 */  bne        $v1, $v0, .L80059EB4
    /* 4A684 80059E84 00000000 */   nop
  .L80059E88:
    /* 4A688 80059E88 40101000 */  sll        $v0, $s0, 1
    /* 4A68C 80059E8C 21105000 */  addu       $v0, $v0, $s0
    /* 4A690 80059E90 80100200 */  sll        $v0, $v0, 2
    /* 4A694 80059E94 21105000 */  addu       $v0, $v0, $s0
    /* 4A698 80059E98 40100200 */  sll        $v0, $v0, 1
    /* 4A69C 80059E9C 21206002 */  addu       $a0, $s3, $zero
    /* 4A6A0 80059EA0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4A6A4 80059EA4 21082200 */  addu       $at, $at, $v0
    /* 4A6A8 80059EA8 BBD62680 */  lb         $a2, %lo(D_8010D6BB)($at)
    /* 4A6AC 80059EAC 6D7C020C */  jal        func_8009F1B4
    /* 4A6B0 80059EB0 21284002 */   addu      $a1, $s2, $zero
  .L80059EB4:
    /* 4A6B4 80059EB4 0E002106 */  bgez       $s1, .L80059EF0
    /* 4A6B8 80059EB8 40101000 */   sll       $v0, $s0, 1
    /* 4A6BC 80059EBC 21105000 */  addu       $v0, $v0, $s0
    /* 4A6C0 80059EC0 80100200 */  sll        $v0, $v0, 2
    /* 4A6C4 80059EC4 21105000 */  addu       $v0, $v0, $s0
    /* 4A6C8 80059EC8 40100200 */  sll        $v0, $v0, 1
    /* 4A6CC 80059ECC 21206002 */  addu       $a0, $s3, $zero
    /* 4A6D0 80059ED0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4A6D4 80059ED4 21082200 */  addu       $at, $at, $v0
    /* 4A6D8 80059ED8 BBD62680 */  lb         $a2, %lo(D_8010D6BB)($at)
    /* 4A6DC 80059EDC 9632020C */  jal        func_8008CA58
    /* 4A6E0 80059EE0 21284002 */   addu      $a1, $s2, $zero
    /* 4A6E4 80059EE4 21884000 */  addu       $s1, $v0, $zero
    /* 4A6E8 80059EE8 1D002006 */  bltz       $s1, .L80059F60
    /* 4A6EC 80059EEC 00000000 */   nop
  .L80059EF0:
    /* 4A6F0 80059EF0 0A008012 */  beqz       $s4, .L80059F1C
    /* 4A6F4 80059EF4 40201100 */   sll       $a0, $s1, 1
    /* 4A6F8 80059EF8 21209100 */  addu       $a0, $a0, $s1
    /* 4A6FC 80059EFC 80200400 */  sll        $a0, $a0, 2
    /* 4A700 80059F00 23209100 */  subu       $a0, $a0, $s1
    /* 4A704 80059F04 C0200400 */  sll        $a0, $a0, 3
    /* 4A708 80059F08 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 4A70C 80059F0C F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 4A710 80059F10 21208200 */  addu       $a0, $a0, $v0
    /* 4A714 80059F14 A587030C */  jal        func_800E1E94
    /* 4A718 80059F18 21288002 */   addu      $a1, $s4, $zero
  .L80059F1C:
    /* 4A71C 80059F1C 04F2010C */  jal        func_8007C810
    /* 4A720 80059F20 21200002 */   addu      $a0, $s0, $zero
    /* 4A724 80059F24 21206002 */  addu       $a0, $s3, $zero
    /* 4A728 80059F28 BD60020C */  jal        func_800982F4
    /* 4A72C 80059F2C 21284002 */   addu      $a1, $s2, $zero
    /* 4A730 80059F30 01004390 */  lbu        $v1, 0x1($v0)
    /* 4A734 80059F34 00000000 */  nop
    /* 4A738 80059F38 83006330 */  andi       $v1, $v1, 0x83
    /* 4A73C 80059F3C 010043A0 */  sb         $v1, 0x1($v0)
    /* 4A740 80059F40 01000224 */  addiu      $v0, $zero, 0x1
    /* 4A744 80059F44 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4A748 80059F48 21206002 */  addu       $a0, $s3, $zero
    /* 4A74C 80059F4C 21284002 */  addu       $a1, $s2, $zero
    /* 4A750 80059F50 1280073C */  lui        $a3, %hi(D_8011ACB4)
    /* 4A754 80059F54 B4ACE78C */  lw         $a3, %lo(D_8011ACB4)($a3)
    /* 4A758 80059F58 0B6F020C */  jal        func_8009BC2C
    /* 4A75C 80059F5C 01000624 */   addiu     $a2, $zero, 0x1
  .L80059F60:
    /* 4A760 80059F60 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4A764 80059F64 2800B48F */  lw         $s4, 0x28($sp)
    /* 4A768 80059F68 2400B38F */  lw         $s3, 0x24($sp)
    /* 4A76C 80059F6C 2000B28F */  lw         $s2, 0x20($sp)
    /* 4A770 80059F70 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4A774 80059F74 1800B08F */  lw         $s0, 0x18($sp)
    /* 4A778 80059F78 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4A77C 80059F7C 0800E003 */  jr         $ra
    /* 4A780 80059F80 00000000 */   nop
endlabel func_80059E04
