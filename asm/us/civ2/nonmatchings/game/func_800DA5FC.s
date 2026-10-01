.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DA5FC, 0x98

glabel func_800DA5FC
    /* CADFC 800DA5FC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CAE00 800DA600 1800BFAF */  sw         $ra, 0x18($sp)
    /* CAE04 800DA604 1400B1AF */  sw         $s1, 0x14($sp)
    /* CAE08 800DA608 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAE0C 800DA60C 21800000 */  addu       $s0, $zero, $zero
    /* CAE10 800DA610 1380113C */  lui        $s1, %hi(D_80136978)
    /* CAE14 800DA614 78693126 */  addiu      $s1, $s1, %lo(D_80136978)
  .L800DA618:
    /* CAE18 800DA618 C0201000 */  sll        $a0, $s0, 3
    /* CAE1C 800DA61C 21209000 */  addu       $a0, $a0, $s0
    /* CAE20 800DA620 80200400 */  sll        $a0, $a0, 2
    /* CAE24 800DA624 21209000 */  addu       $a0, $a0, $s0
    /* CAE28 800DA628 80200400 */  sll        $a0, $a0, 2
    /* CAE2C 800DA62C 35ED030C */  jal        func_800FB4D4
    /* CAE30 800DA630 21209100 */   addu      $a0, $a0, $s1
    /* CAE34 800DA634 01001026 */  addiu      $s0, $s0, 0x1
    /* CAE38 800DA638 1400022A */  slti       $v0, $s0, 0x14
    /* CAE3C 800DA63C F6FF4014 */  bnez       $v0, .L800DA618
    /* CAE40 800DA640 00000000 */   nop
    /* CAE44 800DA644 21800000 */  addu       $s0, $zero, $zero
    /* CAE48 800DA648 1480113C */  lui        $s1, %hi(D_80138098)
    /* CAE4C 800DA64C 98803126 */  addiu      $s1, $s1, %lo(D_80138098)
    /* CAE50 800DA650 C0201000 */  sll        $a0, $s0, 3
  .L800DA654:
    /* CAE54 800DA654 21209000 */  addu       $a0, $a0, $s0
    /* CAE58 800DA658 80200400 */  sll        $a0, $a0, 2
    /* CAE5C 800DA65C 21209000 */  addu       $a0, $a0, $s0
    /* CAE60 800DA660 80200400 */  sll        $a0, $a0, 2
    /* CAE64 800DA664 35ED030C */  jal        func_800FB4D4
    /* CAE68 800DA668 21209100 */   addu      $a0, $a0, $s1
    /* CAE6C 800DA66C 01001026 */  addiu      $s0, $s0, 0x1
    /* CAE70 800DA670 0B00022A */  slti       $v0, $s0, 0xB
    /* CAE74 800DA674 F7FF4014 */  bnez       $v0, .L800DA654
    /* CAE78 800DA678 C0201000 */   sll       $a0, $s0, 3
    /* CAE7C 800DA67C 1800BF8F */  lw         $ra, 0x18($sp)
    /* CAE80 800DA680 1400B18F */  lw         $s1, 0x14($sp)
    /* CAE84 800DA684 1000B08F */  lw         $s0, 0x10($sp)
    /* CAE88 800DA688 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CAE8C 800DA68C 0800E003 */  jr         $ra
    /* CAE90 800DA690 00000000 */   nop
endlabel func_800DA5FC
