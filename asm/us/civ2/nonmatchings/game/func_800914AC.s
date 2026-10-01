.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800914AC, 0x84

glabel func_800914AC
    /* 81CAC 800914AC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 81CB0 800914B0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 81CB4 800914B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 81CB8 800914B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 81CBC 800914BC 21808000 */  addu       $s0, $a0, $zero
    /* 81CC0 800914C0 2188A000 */  addu       $s1, $a1, $zero
    /* 81CC4 800914C4 21200000 */  addu       $a0, $zero, $zero
    /* 81CC8 800914C8 7253020C */  jal        func_80094DC8
    /* 81CCC 800914CC 03000524 */   addiu     $a1, $zero, 0x3
    /* 81CD0 800914D0 21184000 */  addu       $v1, $v0, $zero
    /* 81CD4 800914D4 6830028E */  lw         $v0, 0x3068($s0)
    /* 81CD8 800914D8 00000000 */  nop
    /* 81CDC 800914DC 0E004014 */  bnez       $v0, .L80091518
    /* 81CE0 800914E0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 81CE4 800914E4 0C002212 */  beq        $s1, $v0, .L80091518
    /* 81CE8 800914E8 80201100 */   sll       $a0, $s1, 2
    /* 81CEC 800914EC 21209000 */  addu       $a0, $a0, $s0
    /* 81CF0 800914F0 001C0300 */  sll        $v1, $v1, 16
    /* 81CF4 800914F4 031C0300 */  sra        $v1, $v1, 16
    /* 81CF8 800914F8 C0100300 */  sll        $v0, $v1, 3
    /* 81CFC 800914FC 21104300 */  addu       $v0, $v0, $v1
    /* 81D00 80091500 80100200 */  sll        $v0, $v0, 2
    /* 81D04 80091504 21104300 */  addu       $v0, $v0, $v1
    /* 81D08 80091508 80100200 */  sll        $v0, $v0, 2
    /* 81D0C 8009150C 9C254224 */  addiu      $v0, $v0, 0x259C
    /* 81D10 80091510 21100202 */  addu       $v0, $s0, $v0
    /* 81D14 80091514 AC2482AC */  sw         $v0, 0x24AC($a0)
  .L80091518:
    /* 81D18 80091518 1800BF8F */  lw         $ra, 0x18($sp)
    /* 81D1C 8009151C 1400B18F */  lw         $s1, 0x14($sp)
    /* 81D20 80091520 1000B08F */  lw         $s0, 0x10($sp)
    /* 81D24 80091524 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 81D28 80091528 0800E003 */  jr         $ra
    /* 81D2C 8009152C 00000000 */   nop
endlabel func_800914AC
