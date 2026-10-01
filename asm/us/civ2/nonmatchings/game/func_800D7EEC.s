.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D7EEC, 0x430

glabel func_800D7EEC
    /* C86EC 800D7EEC C8FCBD27 */  addiu      $sp, $sp, -0x338
    /* C86F0 800D7EF0 3403BFAF */  sw         $ra, 0x334($sp)
    /* C86F4 800D7EF4 3003B6AF */  sw         $s6, 0x330($sp)
    /* C86F8 800D7EF8 2C03B5AF */  sw         $s5, 0x32C($sp)
    /* C86FC 800D7EFC 2803B4AF */  sw         $s4, 0x328($sp)
    /* C8700 800D7F00 2403B3AF */  sw         $s3, 0x324($sp)
    /* C8704 800D7F04 2003B2AF */  sw         $s2, 0x320($sp)
    /* C8708 800D7F08 1C03B1AF */  sw         $s1, 0x31C($sp)
    /* C870C 800D7F0C 1803B0AF */  sw         $s0, 0x318($sp)
    /* C8710 800D7F10 21A80000 */  addu       $s5, $zero, $zero
    /* C8714 800D7F14 7800B027 */  addiu      $s0, $sp, 0x78
    /* C8718 800D7F18 21200002 */  addu       $a0, $s0, $zero
    /* C871C 800D7F1C ADC5020C */  jal        func_800B16B4
    /* C8720 800D7F20 00200524 */   addiu     $a1, $zero, 0x2000
    /* C8724 800D7F24 1280043C */  lui        $a0, %hi(D_80122AA4)
    /* C8728 800D7F28 A42A848C */  lw         $a0, %lo(D_80122AA4)($a0)
    /* C872C 800D7F2C 0C25020C */  jal        func_80089430
    /* C8730 800D7F30 00000000 */   nop
    /* C8734 800D7F34 0C63000C */  jal        func_80018C30
    /* C8738 800D7F38 21200000 */   addu      $a0, $zero, $zero
    /* C873C 800D7F3C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C8740 800D7F40 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C8744 800D7F44 00000000 */  nop
    /* C8748 800D7F48 08005380 */  lb         $s3, 0x8($v0)
    /* C874C 800D7F4C 3D005480 */  lb         $s4, 0x3D($v0)
    /* C8750 800D7F50 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C8754 800D7F54 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C8758 800D7F58 00000000 */  nop
    /* C875C 800D7F5C 08006212 */  beq        $s3, $v0, .L800D7F80
    /* C8760 800D7F60 23901400 */   negu      $s2, $s4
    /* C8764 800D7F64 1280023C */  lui        $v0, %hi(D_8011A271)
    /* C8768 800D7F68 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* C876C 800D7F6C 00000000 */  nop
    /* C8770 800D7F70 04004014 */  bnez       $v0, .L800D7F84
    /* C8774 800D7F74 26000224 */   addiu     $v0, $zero, 0x26
    /* C8778 800D7F78 BA600308 */  j          .L800D82E8
    /* C877C 800D7F7C 21200002 */   addu      $a0, $s0, $zero
  .L800D7F80:
    /* C8780 800D7F80 26000224 */  addiu      $v0, $zero, 0x26
  .L800D7F84:
    /* C8784 800D7F84 D8004212 */  beq        $s2, $v0, .L800D82E8
    /* C8788 800D7F88 7800A427 */   addiu     $a0, $sp, 0x78
    /* C878C 800D7F8C 1680033C */  lui        $v1, %hi(D_80158864)
    /* C8790 800D7F90 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C8794 800D7F94 00000000 */  nop
    /* C8798 800D7F98 3D006280 */  lb         $v0, 0x3D($v1)
    /* C879C 800D7F9C 00000000 */  nop
    /* C87A0 800D7FA0 22004004 */  bltz       $v0, .L800D802C
    /* C87A4 800D7FA4 80801400 */   sll       $s0, $s4, 2
    /* C87A8 800D7FA8 21801402 */  addu       $s0, $s0, $s4
    /* C87AC 800D7FAC 80801000 */  sll        $s0, $s0, 2
    /* C87B0 800D7FB0 1180013C */  lui        $at, %hi(D_8010D28C)
    /* C87B4 800D7FB4 21083000 */  addu       $at, $at, $s0
    /* C87B8 800D7FB8 8CD23680 */  lb         $s6, %lo(D_8010D28C)($at)
    /* C87BC 800D7FBC 1280023C */  lui        $v0, %hi(D_8011A5CC)
    /* C87C0 800D7FC0 CCA54290 */  lbu        $v0, %lo(D_8011A5CC)($v0)
    /* C87C4 800D7FC4 00000000 */  nop
    /* C87C8 800D7FC8 1800C202 */  mult       $s6, $v0
    /* C87CC 800D7FCC 12480000 */  mflo       $t1
    /* C87D0 800D7FD0 1E006484 */  lh         $a0, 0x1E($v1)
    /* C87D4 800D7FD4 00000000 */  nop
    /* C87D8 800D7FD8 23202401 */  subu       $a0, $t1, $a0
    /* C87DC 800D7FDC 21280000 */  addu       $a1, $zero, $zero
    /* C87E0 800D7FE0 F53A030C */  jal        func_800CEBD4
    /* C87E4 800D7FE4 E7030624 */   addiu     $a2, $zero, 0x3E7
    /* C87E8 800D7FE8 21884000 */  addu       $s1, $v0, $zero
    /* C87EC 800D7FEC 40201100 */  sll        $a0, $s1, 1
    /* C87F0 800D7FF0 18003102 */  mult       $s1, $s1
    /* C87F4 800D7FF4 12180000 */  mflo       $v1
    /* C87F8 800D7FF8 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* C87FC 800D7FFC 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* C8800 800D8000 18006200 */  mult       $v1, $v0
    /* C8804 800D8004 10400000 */  mfhi       $t0
    /* C8808 800D8008 C3100800 */  sra        $v0, $t0, 3
    /* C880C 800D800C C31F0300 */  sra        $v1, $v1, 31
    /* C8810 800D8010 23104300 */  subu       $v0, $v0, $v1
    /* C8814 800D8014 21888200 */  addu       $s1, $a0, $v0
    /* C8818 800D8018 1180013C */  lui        $at, %hi(D_8010D27C)
    /* C881C 800D801C 21083000 */  addu       $at, $at, $s0
    /* C8820 800D8020 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* C8824 800D8024 26600308 */  j          .L800D8098
    /* C8828 800D8028 21200000 */   addu      $a0, $zero, $zero
  .L800D802C:
    /* C882C 800D802C C0101200 */  sll        $v0, $s2, 3
    /* C8830 800D8030 1180013C */  lui        $at, %hi(D_8010D068)
    /* C8834 800D8034 21082200 */  addu       $at, $at, $v0
    /* C8838 800D8038 68D03690 */  lbu        $s6, %lo(D_8010D068)($at)
    /* C883C 800D803C 1280023C */  lui        $v0, %hi(D_8011A5CC)
    /* C8840 800D8040 CCA54290 */  lbu        $v0, %lo(D_8011A5CC)($v0)
    /* C8844 800D8044 00000000 */  nop
    /* C8848 800D8048 1800C202 */  mult       $s6, $v0
    /* C884C 800D804C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C8850 800D8050 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C8854 800D8054 00000000 */  nop
    /* C8858 800D8058 1E004484 */  lh         $a0, 0x1E($v0)
    /* C885C 800D805C 12400000 */  mflo       $t0
    /* C8860 800D8060 23200401 */  subu       $a0, $t0, $a0
    /* C8864 800D8064 21280000 */  addu       $a1, $zero, $zero
    /* C8868 800D8068 F53A030C */  jal        func_800CEBD4
    /* C886C 800D806C E7030624 */   addiu     $a2, $zero, 0x3E7
    /* C8870 800D8070 21184000 */  addu       $v1, $v0, $zero
    /* C8874 800D8074 2300422A */  slti       $v0, $s2, 0x23
    /* C8878 800D8078 02004014 */  bnez       $v0, .L800D8084
    /* C887C 800D807C 40880300 */   sll       $s1, $v1, 1
    /* C8880 800D8080 80880300 */  sll        $s1, $v1, 2
  .L800D8084:
    /* C8884 800D8084 C0101200 */  sll        $v0, $s2, 3
    /* C8888 800D8088 21200000 */  addu       $a0, $zero, $zero
    /* C888C 800D808C 1180013C */  lui        $at, %hi(D_8010D064)
    /* C8890 800D8090 21082200 */  addu       $at, $at, $v0
    /* C8894 800D8094 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
  .L800D8098:
    /* C8898 800D8098 ABAC020C */  jal        func_800AB2AC
    /* C889C 800D809C 00000000 */   nop
    /* C88A0 800D80A0 1680023C */  lui        $v0, %hi(D_80158864)
    /* C88A4 800D80A4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C88A8 800D80A8 00000000 */  nop
    /* C88AC 800D80AC 1E004284 */  lh         $v0, 0x1E($v0)
    /* C88B0 800D80B0 00000000 */  nop
    /* C88B4 800D80B4 02004014 */  bnez       $v0, .L800D80C0
    /* C88B8 800D80B8 00000000 */   nop
    /* C88BC 800D80BC 40881100 */  sll        $s1, $s1, 1
  .L800D80C0:
    /* C88C0 800D80C0 1280013C */  lui        $at, %hi(D_8011FF28)
    /* C88C4 800D80C4 28FF31AC */  sw         $s1, %lo(D_8011FF28)($at)
    /* C88C8 800D80C8 40101300 */  sll        $v0, $s3, 1
    /* C88CC 800D80CC 21105300 */  addu       $v0, $v0, $s3
    /* C88D0 800D80D0 80100200 */  sll        $v0, $v0, 2
    /* C88D4 800D80D4 23105300 */  subu       $v0, $v0, $s3
    /* C88D8 800D80D8 00110200 */  sll        $v0, $v0, 4
    /* C88DC 800D80DC 23105300 */  subu       $v0, $v0, $s3
    /* C88E0 800D80E0 C0100200 */  sll        $v0, $v0, 3
    /* C88E4 800D80E4 1180013C */  lui        $at, %hi(D_80117694)
    /* C88E8 800D80E8 21082200 */  addu       $at, $at, $v0
    /* C88EC 800D80EC 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* C88F0 800D80F0 1280013C */  lui        $at, %hi(D_8011FF2C)
    /* C88F4 800D80F4 2CFF23AC */  sw         $v1, %lo(D_8011FF2C)($at)
    /* C88F8 800D80F8 1180013C */  lui        $at, %hi(D_80117694)
    /* C88FC 800D80FC 21082200 */  addu       $at, $at, $v0
    /* C8900 800D8100 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* C8904 800D8104 00000000 */  nop
    /* C8908 800D8108 2A105100 */  slt        $v0, $v0, $s1
    /* C890C 800D810C 03004014 */  bnez       $v0, .L800D811C
    /* C8910 800D8110 E12C0624 */   addiu     $a2, $zero, 0x2CE1
    /* C8914 800D8114 01001524 */  addiu      $s5, $zero, 0x1
    /* C8918 800D8118 4B2D0624 */  addiu      $a2, $zero, 0x2D4B
  .L800D811C:
    /* C891C 800D811C 1680033C */  lui        $v1, %hi(D_80158864)
    /* C8920 800D8120 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C8924 800D8124 00000000 */  nop
    /* C8928 800D8128 3D006280 */  lb         $v0, 0x3D($v1)
    /* C892C 800D812C 00000000 */  nop
    /* C8930 800D8130 08004004 */  bltz       $v0, .L800D8154
    /* C8934 800D8134 00000000 */   nop
    /* C8938 800D8138 0400628C */  lw         $v0, 0x4($v1)
    /* C893C 800D813C 00000000 */  nop
    /* C8940 800D8140 01004230 */  andi       $v0, $v0, 0x1
    /* C8944 800D8144 03004010 */  beqz       $v0, .L800D8154
    /* C8948 800D8148 00000000 */   nop
    /* C894C 800D814C D22D0624 */  addiu      $a2, $zero, 0x2DD2
    /* C8950 800D8150 21A80000 */  addu       $s5, $zero, $zero
  .L800D8154:
    /* C8954 800D8154 0800A012 */  beqz       $s5, .L800D8178
    /* C8958 800D8158 01000224 */   addiu     $v0, $zero, 0x1
    /* C895C 800D815C 1680023C */  lui        $v0, %hi(D_80158694)
    /* C8960 800D8160 9486428C */  lw         $v0, %lo(D_80158694)($v0)
    /* C8964 800D8164 00000000 */  nop
    /* C8968 800D8168 03004010 */  beqz       $v0, .L800D8178
    /* C896C 800D816C 01000224 */   addiu     $v0, $zero, 0x1
    /* C8970 800D8170 4E2E0624 */  addiu      $a2, $zero, 0x2E4E
    /* C8974 800D8174 21A80000 */  addu       $s5, $zero, $zero
  .L800D8178:
    /* C8978 800D8178 1000A0AF */  sw         $zero, 0x10($sp)
    /* C897C 800D817C 1400A0AF */  sw         $zero, 0x14($sp)
    /* C8980 800D8180 1800A0AF */  sw         $zero, 0x18($sp)
    /* C8984 800D8184 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* C8988 800D8188 2000A2AF */  sw         $v0, 0x20($sp)
    /* C898C 800D818C 7800A427 */  addiu      $a0, $sp, 0x78
    /* C8990 800D8190 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* C8994 800D8194 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* C8998 800D8198 2CE0020C */  jal        func_800B80B0
    /* C899C 800D819C 21380000 */   addu      $a3, $zero, $zero
    /* C89A0 800D81A0 1680023C */  lui        $v0, %hi(D_80158864)
    /* C89A4 800D81A4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C89A8 800D81A8 00000000 */  nop
    /* C89AC 800D81AC 3D004280 */  lb         $v0, 0x3D($v0)
    /* C89B0 800D81B0 00000000 */  nop
    /* C89B4 800D81B4 09004104 */  bgez       $v0, .L800D81DC
    /* C89B8 800D81B8 00000000 */   nop
    /* C89BC 800D81BC C0281200 */  sll        $a1, $s2, 3
    /* C89C0 800D81C0 2128B200 */  addu       $a1, $a1, $s2
    /* C89C4 800D81C4 80280500 */  sll        $a1, $a1, 2
    /* C89C8 800D81C8 2128B200 */  addu       $a1, $a1, $s2
    /* C89CC 800D81CC 1380023C */  lui        $v0, %hi(D_80131638)
    /* C89D0 800D81D0 38164224 */  addiu      $v0, $v0, %lo(D_80131638)
    /* C89D4 800D81D4 7E600308 */  j          .L800D81F8
    /* C89D8 800D81D8 80280500 */   sll       $a1, $a1, 2
  .L800D81DC:
    /* C89DC 800D81DC C0281400 */  sll        $a1, $s4, 3
    /* C89E0 800D81E0 2128B400 */  addu       $a1, $a1, $s4
    /* C89E4 800D81E4 80280500 */  sll        $a1, $a1, 2
    /* C89E8 800D81E8 2128B400 */  addu       $a1, $a1, $s4
    /* C89EC 800D81EC 80280500 */  sll        $a1, $a1, 2
    /* C89F0 800D81F0 1380023C */  lui        $v0, %hi(D_8012BF80)
    /* C89F4 800D81F4 80BF4224 */  addiu      $v0, $v0, %lo(D_8012BF80)
  .L800D81F8:
    /* C89F8 800D81F8 7800A427 */  addiu      $a0, $sp, 0x78
    /* C89FC 800D81FC 2128A200 */  addu       $a1, $a1, $v0
    /* C8A00 800D8200 21300000 */  addu       $a2, $zero, $zero
    /* C8A04 800D8204 3DC9020C */  jal        func_800B24F4
    /* C8A08 800D8208 21380000 */   addu      $a3, $zero, $zero
    /* C8A0C 800D820C 7800B027 */  addiu      $s0, $sp, 0x78
    /* C8A10 800D8210 21200002 */  addu       $a0, $s0, $zero
    /* C8A14 800D8214 3BC9020C */  jal        func_800B24EC
    /* C8A18 800D8218 08000524 */   addiu     $a1, $zero, 0x8
    /* C8A1C 800D821C 0300A012 */  beqz       $s5, .L800D822C
    /* C8A20 800D8220 21200002 */   addu      $a0, $s0, $zero
    /* C8A24 800D8224 FFC8020C */  jal        func_800B23FC
    /* C8A28 800D8228 01000524 */   addiu     $a1, $zero, 0x1
  .L800D822C:
    /* C8A2C 800D822C 7800A427 */  addiu      $a0, $sp, 0x78
    /* C8A30 800D8230 52DF020C */  jal        func_800B7D48
    /* C8A34 800D8234 21280000 */   addu      $a1, $zero, $zero
    /* C8A38 800D8238 2B00A012 */  beqz       $s5, .L800D82E8
    /* C8A3C 800D823C 7800A427 */   addiu     $a0, $sp, 0x78
    /* C8A40 800D8240 29004014 */  bnez       $v0, .L800D82E8
    /* C8A44 800D8244 40101300 */   sll       $v0, $s3, 1
    /* C8A48 800D8248 21105300 */  addu       $v0, $v0, $s3
    /* C8A4C 800D824C 80100200 */  sll        $v0, $v0, 2
    /* C8A50 800D8250 23105300 */  subu       $v0, $v0, $s3
    /* C8A54 800D8254 00110200 */  sll        $v0, $v0, 4
    /* C8A58 800D8258 23105300 */  subu       $v0, $v0, $s3
    /* C8A5C 800D825C C0100200 */  sll        $v0, $v0, 3
    /* C8A60 800D8260 1180013C */  lui        $at, %hi(D_80117694)
    /* C8A64 800D8264 21082200 */  addu       $at, $at, $v0
    /* C8A68 800D8268 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* C8A6C 800D826C 00000000 */  nop
    /* C8A70 800D8270 23187100 */  subu       $v1, $v1, $s1
    /* C8A74 800D8274 1180013C */  lui        $at, %hi(D_80117694)
    /* C8A78 800D8278 21082200 */  addu       $at, $at, $v0
    /* C8A7C 800D827C 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* C8A80 800D8280 1680033C */  lui        $v1, %hi(D_80158864)
    /* C8A84 800D8284 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C8A88 800D8288 1280023C */  lui        $v0, %hi(D_8011A5CC)
    /* C8A8C 800D828C CCA54290 */  lbu        $v0, %lo(D_8011A5CC)($v0)
    /* C8A90 800D8290 00000000 */  nop
    /* C8A94 800D8294 1800C202 */  mult       $s6, $v0
    /* C8A98 800D8298 12400000 */  mflo       $t0
    /* C8A9C 800D829C 7B51000C */  jal        func_800145EC
    /* C8AA0 800D82A0 1E0068A4 */   sh        $t0, 0x1E($v1)
    /* C8AA4 800D82A4 68000424 */  addiu      $a0, $zero, 0x68
    /* C8AA8 800D82A8 01000524 */  addiu      $a1, $zero, 0x1
    /* C8AAC 800D82AC 21300000 */  addu       $a2, $zero, $zero
    /* C8AB0 800D82B0 2B9D020C */  jal        func_800A74AC
    /* C8AB4 800D82B4 21380000 */   addu      $a3, $zero, $zero
    /* C8AB8 800D82B8 0C63000C */  jal        func_80018C30
    /* C8ABC 800D82BC 01000424 */   addiu     $a0, $zero, 0x1
    /* C8AC0 800D82C0 9FBF000C */  jal        func_8002FE7C
    /* C8AC4 800D82C4 01000424 */   addiu     $a0, $zero, 0x1
    /* C8AC8 800D82C8 1280043C */  lui        $a0, %hi(D_80122C38)
    /* C8ACC 800D82CC 382C8424 */  addiu      $a0, $a0, %lo(D_80122C38)
    /* C8AD0 800D82D0 21280000 */  addu       $a1, $zero, $zero
    /* C8AD4 800D82D4 A9E0030C */  jal        func_800F82A4
    /* C8AD8 800D82D8 21300000 */   addu      $a2, $zero, $zero
    /* C8ADC 800D82DC 1E3C030C */  jal        func_800CF078
    /* C8AE0 800D82E0 21200000 */   addu      $a0, $zero, $zero
    /* C8AE4 800D82E4 7800A427 */  addiu      $a0, $sp, 0x78
  .L800D82E8:
    /* C8AE8 800D82E8 0AC7020C */  jal        func_800B1C28
    /* C8AEC 800D82EC 02000524 */   addiu     $a1, $zero, 0x2
    /* C8AF0 800D82F0 3403BF8F */  lw         $ra, 0x334($sp)
    /* C8AF4 800D82F4 3003B68F */  lw         $s6, 0x330($sp)
    /* C8AF8 800D82F8 2C03B58F */  lw         $s5, 0x32C($sp)
    /* C8AFC 800D82FC 2803B48F */  lw         $s4, 0x328($sp)
    /* C8B00 800D8300 2403B38F */  lw         $s3, 0x324($sp)
    /* C8B04 800D8304 2003B28F */  lw         $s2, 0x320($sp)
    /* C8B08 800D8308 1C03B18F */  lw         $s1, 0x31C($sp)
    /* C8B0C 800D830C 1803B08F */  lw         $s0, 0x318($sp)
    /* C8B10 800D8310 3803BD27 */  addiu      $sp, $sp, 0x338
    /* C8B14 800D8314 0800E003 */  jr         $ra
    /* C8B18 800D8318 00000000 */   nop
endlabel func_800D7EEC
