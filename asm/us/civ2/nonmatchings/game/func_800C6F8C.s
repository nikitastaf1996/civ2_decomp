.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6F8C, 0xC0

glabel func_800C6F8C
    /* B778C 800C6F8C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* B7790 800C6F90 3400BFAF */  sw         $ra, 0x34($sp)
    /* B7794 800C6F94 3000B2AF */  sw         $s2, 0x30($sp)
    /* B7798 800C6F98 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* B779C 800C6F9C 2800B0AF */  sw         $s0, 0x28($sp)
    /* B77A0 800C6FA0 2188A000 */  addu       $s1, $a1, $zero
    /* B77A4 800C6FA4 E803222A */  slti       $v0, $s1, 0x3E8
    /* B77A8 800C6FA8 03004010 */  beqz       $v0, .L800C6FB8
    /* B77AC 800C6FAC 21908000 */   addu      $s2, $a0, $zero
    /* B77B0 800C6FB0 061C0308 */  j          .L800C7018
    /* B77B4 800C6FB4 21202002 */   addu      $a0, $s1, $zero
  .L800C6FB8:
    /* B77B8 800C6FB8 6210023C */  lui        $v0, (0x10624DD3 >> 16)
    /* B77BC 800C6FBC D34D4234 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
    /* B77C0 800C6FC0 18002202 */  mult       $s1, $v0
    /* B77C4 800C6FC4 10180000 */  mfhi       $v1
    /* B77C8 800C6FC8 83810300 */  sra        $s0, $v1, 6
    /* B77CC 800C6FCC C3171100 */  sra        $v0, $s1, 31
    /* B77D0 800C6FD0 23800202 */  subu       $s0, $s0, $v0
    /* B77D4 800C6FD4 21200002 */  addu       $a0, $s0, $zero
    /* B77D8 800C6FD8 1000A527 */  addiu      $a1, $sp, 0x10
    /* B77DC 800C6FDC C50A040C */  jal        func_80102B14
    /* B77E0 800C6FE0 0A000624 */   addiu     $a2, $zero, 0xA
    /* B77E4 800C6FE4 21204002 */  addu       $a0, $s2, $zero
    /* B77E8 800C6FE8 9987030C */  jal        func_800E1E64
    /* B77EC 800C6FEC 1000A527 */   addiu     $a1, $sp, 0x10
    /* B77F0 800C6FF0 1680053C */  lui        $a1, %hi(D_801590EC)
    /* B77F4 800C6FF4 EC90A524 */  addiu      $a1, $a1, %lo(D_801590EC)
    /* B77F8 800C6FF8 9987030C */  jal        func_800E1E64
    /* B77FC 800C6FFC 21204002 */   addu      $a0, $s2, $zero
    /* B7800 800C7000 40211000 */  sll        $a0, $s0, 5
    /* B7804 800C7004 23209000 */  subu       $a0, $a0, $s0
    /* B7808 800C7008 80200400 */  sll        $a0, $a0, 2
    /* B780C 800C700C 21209000 */  addu       $a0, $a0, $s0
    /* B7810 800C7010 C0200400 */  sll        $a0, $a0, 3
    /* B7814 800C7014 23202402 */  subu       $a0, $s1, $a0
  .L800C7018:
    /* B7818 800C7018 1000A527 */  addiu      $a1, $sp, 0x10
    /* B781C 800C701C C50A040C */  jal        func_80102B14
    /* B7820 800C7020 0A000624 */   addiu     $a2, $zero, 0xA
    /* B7824 800C7024 21204002 */  addu       $a0, $s2, $zero
    /* B7828 800C7028 9987030C */  jal        func_800E1E64
    /* B782C 800C702C 1000A527 */   addiu     $a1, $sp, 0x10
    /* B7830 800C7030 3400BF8F */  lw         $ra, 0x34($sp)
    /* B7834 800C7034 3000B28F */  lw         $s2, 0x30($sp)
    /* B7838 800C7038 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B783C 800C703C 2800B08F */  lw         $s0, 0x28($sp)
    /* B7840 800C7040 3800BD27 */  addiu      $sp, $sp, 0x38
    /* B7844 800C7044 0800E003 */  jr         $ra
    /* B7848 800C7048 00000000 */   nop
endlabel func_800C6F8C
