.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009FED8, 0x148

glabel func_8009FED8
    /* 906D8 8009FED8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 906DC 8009FEDC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 906E0 8009FEE0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 906E4 8009FEE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 906E8 8009FEE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 906EC 8009FEEC 21808000 */  addu       $s0, $a0, $zero
    /* 906F0 8009FEF0 1680023C */  lui        $v0, %hi(D_80158500)
    /* 906F4 8009FEF4 0085428C */  lw         $v0, %lo(D_80158500)($v0)
    /* 906F8 8009FEF8 00000000 */  nop
    /* 906FC 8009FEFC 05004010 */  beqz       $v0, .L8009FF14
    /* 90700 8009FF00 2188A000 */   addu      $s1, $a1, $zero
    /* 90704 8009FF04 E641030C */  jal        func_800D0798
    /* 90708 8009FF08 00000000 */   nop
    /* 9070C 8009FF0C 01800208 */  j          .L800A0004
    /* 90710 8009FF10 00000000 */   nop
  .L8009FF14:
    /* 90714 8009FF14 35DE030C */  jal        func_800F78D4
    /* 90718 8009FF18 00000000 */   nop
    /* 9071C 8009FF1C 00141000 */  sll        $v0, $s0, 16
    /* 90720 8009FF20 03840200 */  sra        $s0, $v0, 16
    /* 90724 8009FF24 00141100 */  sll        $v0, $s1, 16
    /* 90728 8009FF28 038C0200 */  sra        $s1, $v0, 16
    /* 9072C 8009FF2C 0D002006 */  bltz       $s1, .L8009FF64
    /* 90730 8009FF30 21180000 */   addu      $v1, $zero, $zero
    /* 90734 8009FF34 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 90738 8009FF38 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 9073C 8009FF3C 00000000 */  nop
    /* 90740 8009FF40 2A102202 */  slt        $v0, $s1, $v0
    /* 90744 8009FF44 07004010 */  beqz       $v0, .L8009FF64
    /* 90748 8009FF48 00000000 */   nop
    /* 9074C 8009FF4C 05000006 */  bltz       $s0, .L8009FF64
    /* 90750 8009FF50 00000000 */   nop
    /* 90754 8009FF54 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 90758 8009FF58 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 9075C 8009FF5C 00000000 */  nop
    /* 90760 8009FF60 2A180202 */  slt        $v1, $s0, $v0
  .L8009FF64:
    /* 90764 8009FF64 27006010 */  beqz       $v1, .L800A0004
    /* 90768 8009FF68 21200002 */   addu      $a0, $s0, $zero
    /* 9076C 8009FF6C 4F62020C */  jal        func_8009893C
    /* 90770 8009FF70 21282002 */   addu      $a1, $s1, $zero
    /* 90774 8009FF74 23004104 */  bgez       $v0, .L800A0004
    /* 90778 8009FF78 21200002 */   addu      $a0, $s0, $zero
    /* 9077C 8009FF7C 1280063C */  lui        $a2, %hi(D_8011ACB4)
    /* 90780 8009FF80 B4ACC68C */  lw         $a2, %lo(D_8011ACB4)($a2)
    /* 90784 8009FF84 A161020C */  jal        func_80098684
    /* 90788 8009FF88 21282002 */   addu      $a1, $s1, $zero
    /* 9078C 8009FF8C 1D004010 */  beqz       $v0, .L800A0004
    /* 90790 8009FF90 21200002 */   addu      $a0, $s0, $zero
    /* 90794 8009FF94 D560020C */  jal        func_80098354
    /* 90798 8009FF98 21282002 */   addu      $a1, $s1, $zero
    /* 9079C 8009FF9C FF005230 */  andi       $s2, $v0, 0xFF
    /* 907A0 8009FFA0 02000224 */  addiu      $v0, $zero, 0x2
    /* 907A4 8009FFA4 0E004216 */  bne        $s2, $v0, .L8009FFE0
    /* 907A8 8009FFA8 21200002 */   addu      $a0, $s0, $zero
    /* 907AC 8009FFAC 21203002 */  addu       $a0, $s1, $s0
    /* 907B0 8009FFB0 43200400 */  sra        $a0, $a0, 1
    /* 907B4 8009FFB4 C0181000 */  sll        $v1, $s0, 3
    /* 907B8 8009FFB8 23187000 */  subu       $v1, $v1, $s0
    /* 907BC 8009FFBC 40100400 */  sll        $v0, $a0, 1
    /* 907C0 8009FFC0 21104400 */  addu       $v0, $v0, $a0
    /* 907C4 8009FFC4 80100200 */  sll        $v0, $v0, 2
    /* 907C8 8009FFC8 23104400 */  subu       $v0, $v0, $a0
    /* 907CC 8009FFCC 21186200 */  addu       $v1, $v1, $v0
    /* 907D0 8009FFD0 42180300 */  srl        $v1, $v1, 1
    /* 907D4 8009FFD4 01006338 */  xori       $v1, $v1, 0x1
    /* 907D8 8009FFD8 FA7F0208 */  j          .L8009FFE8
    /* 907DC 8009FFDC 01006230 */   andi      $v0, $v1, 0x1
  .L8009FFE0:
    /* 907E0 8009FFE0 9F62020C */  jal        func_80098A7C
    /* 907E4 8009FFE4 21282002 */   addu      $a1, $s1, $zero
  .L8009FFE8:
    /* 907E8 8009FFE8 40280200 */  sll        $a1, $v0, 1
    /* 907EC 8009FFEC 2128A200 */  addu       $a1, $a1, $v0
    /* 907F0 8009FFF0 80280500 */  sll        $a1, $a1, 2
    /* 907F4 8009FFF4 2328A200 */  subu       $a1, $a1, $v0
    /* 907F8 8009FFF8 0B080424 */  addiu      $a0, $zero, 0x80B
    /* 907FC 8009FFFC 149C020C */  jal        func_800A7050
    /* 90800 800A0000 21284502 */   addu      $a1, $s2, $a1
  .L800A0004:
    /* 90804 800A0004 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 90808 800A0008 1800B28F */  lw         $s2, 0x18($sp)
    /* 9080C 800A000C 1400B18F */  lw         $s1, 0x14($sp)
    /* 90810 800A0010 1000B08F */  lw         $s0, 0x10($sp)
    /* 90814 800A0014 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 90818 800A0018 0800E003 */  jr         $ra
    /* 9081C 800A001C 00000000 */   nop
endlabel func_8009FED8
