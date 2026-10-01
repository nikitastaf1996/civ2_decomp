.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB0F0, 0xE0

glabel func_800CB0F0
    /* BB8F0 800CB0F0 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* BB8F4 800CB0F4 1800AB8F */  lw         $t3, 0x18($sp)
    /* BB8F8 800CB0F8 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* BB8FC 800CB0FC 800C828C */  lw         $v0, 0xC80($a0)
    /* BB900 800CB100 00000000 */  nop
    /* BB904 800CB104 1C004018 */  blez       $v0, .L800CB178
    /* BB908 800CB108 21400000 */   addu      $t0, $zero, $zero
    /* BB90C 800CB10C 800C8A8C */  lw         $t2, 0xC80($a0)
    /* BB910 800CB110 00110800 */  sll        $v0, $t0, 4
  .L800CB114:
    /* BB914 800CB114 21188200 */  addu       $v1, $a0, $v0
    /* BB918 800CB118 00006284 */  lh         $v0, 0x0($v1)
    /* BB91C 800CB11C 00000000 */  nop
    /* BB920 800CB120 2A10A200 */  slt        $v0, $a1, $v0
    /* BB924 800CB124 10004014 */  bnez       $v0, .L800CB168
    /* BB928 800CB128 00000000 */   nop
    /* BB92C 800CB12C 04006284 */  lh         $v0, 0x4($v1)
    /* BB930 800CB130 00000000 */  nop
    /* BB934 800CB134 2A10A200 */  slt        $v0, $a1, $v0
    /* BB938 800CB138 0B004010 */  beqz       $v0, .L800CB168
    /* BB93C 800CB13C 00000000 */   nop
    /* BB940 800CB140 02006284 */  lh         $v0, 0x2($v1)
    /* BB944 800CB144 00000000 */  nop
    /* BB948 800CB148 2A10C200 */  slt        $v0, $a2, $v0
    /* BB94C 800CB14C 06004014 */  bnez       $v0, .L800CB168
    /* BB950 800CB150 00000000 */   nop
    /* BB954 800CB154 06006284 */  lh         $v0, 0x6($v1)
    /* BB958 800CB158 00000000 */  nop
    /* BB95C 800CB15C 2A10C200 */  slt        $v0, $a2, $v0
    /* BB960 800CB160 09004014 */  bnez       $v0, .L800CB188
    /* BB964 800CB164 00000000 */   nop
  .L800CB168:
    /* BB968 800CB168 01000825 */  addiu      $t0, $t0, 0x1
    /* BB96C 800CB16C 2A100A01 */  slt        $v0, $t0, $t2
    /* BB970 800CB170 E8FF4014 */  bnez       $v0, .L800CB114
    /* BB974 800CB174 00110800 */   sll       $v0, $t0, 4
  .L800CB178:
    /* BB978 800CB178 05002105 */  bgez       $t1, .L800CB190
    /* BB97C 800CB17C 21102001 */   addu      $v0, $t1, $zero
    /* BB980 800CB180 712C0308 */  j          .L800CB1C4
    /* BB984 800CB184 00000000 */   nop
  .L800CB188:
    /* BB988 800CB188 5E2C0308 */  j          .L800CB178
    /* BB98C 800CB18C 21480001 */   addu      $t1, $t0, $zero
  .L800CB190:
    /* BB990 800CB190 0500E010 */  beqz       $a3, .L800CB1A8
    /* BB994 800CB194 00110900 */   sll       $v0, $t1, 4
    /* BB998 800CB198 21108200 */  addu       $v0, $a0, $v0
    /* BB99C 800CB19C 0C00428C */  lw         $v0, 0xC($v0)
    /* BB9A0 800CB1A0 00000000 */  nop
    /* BB9A4 800CB1A4 0000E2AC */  sw         $v0, 0x0($a3)
  .L800CB1A8:
    /* BB9A8 800CB1A8 05006011 */  beqz       $t3, .L800CB1C0
    /* BB9AC 800CB1AC 00110900 */   sll       $v0, $t1, 4
    /* BB9B0 800CB1B0 21108200 */  addu       $v0, $a0, $v0
    /* BB9B4 800CB1B4 0800428C */  lw         $v0, 0x8($v0)
    /* BB9B8 800CB1B8 00000000 */  nop
    /* BB9BC 800CB1BC 000062AD */  sw         $v0, 0x0($t3)
  .L800CB1C0:
    /* BB9C0 800CB1C0 21102001 */  addu       $v0, $t1, $zero
  .L800CB1C4:
    /* BB9C4 800CB1C4 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BB9C8 800CB1C8 0800E003 */  jr         $ra
    /* BB9CC 800CB1CC 00000000 */   nop
endlabel func_800CB0F0
