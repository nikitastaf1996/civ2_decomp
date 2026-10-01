.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C68A8, 0xEC

glabel func_800C68A8
    /* B70A8 800C68A8 1000A88F */  lw         $t0, 0x10($sp)
    /* B70AC 800C68AC 01000224 */  addiu      $v0, $zero, 0x1
    /* B70B0 800C68B0 2A104500 */  slt        $v0, $v0, $a1
    /* B70B4 800C68B4 02004010 */  beqz       $v0, .L800C68C0
    /* B70B8 800C68B8 01000324 */   addiu     $v1, $zero, 0x1
    /* B70BC 800C68BC 2118A000 */  addu       $v1, $a1, $zero
  .L800C68C0:
    /* B70C0 800C68C0 21286000 */  addu       $a1, $v1, $zero
    /* B70C4 800C68C4 01000224 */  addiu      $v0, $zero, 0x1
    /* B70C8 800C68C8 2A104400 */  slt        $v0, $v0, $a0
    /* B70CC 800C68CC 02004010 */  beqz       $v0, .L800C68D8
    /* B70D0 800C68D0 01000324 */   addiu     $v1, $zero, 0x1
    /* B70D4 800C68D4 21188000 */  addu       $v1, $a0, $zero
  .L800C68D8:
    /* B70D8 800C68D8 21206000 */  addu       $a0, $v1, $zero
    /* B70DC 800C68DC 01000224 */  addiu      $v0, $zero, 0x1
    /* B70E0 800C68E0 08008214 */  bne        $a0, $v0, .L800C6904
    /* B70E4 800C68E4 00000000 */   nop
    /* B70E8 800C68E8 02000011 */  beqz       $t0, .L800C68F4
    /* B70EC 800C68EC 00000000 */   nop
    /* B70F0 800C68F0 000000AD */  sw         $zero, 0x0($t0)
  .L800C68F4:
    /* B70F4 800C68F4 1900E010 */  beqz       $a3, .L800C695C
    /* B70F8 800C68F8 01000224 */   addiu     $v0, $zero, 0x1
    /* B70FC 800C68FC 571A0308 */  j          .L800C695C
    /* B7100 800C6900 0000E2AC */   sw        $v0, 0x0($a3)
  .L800C6904:
    /* B7104 800C6904 2330C500 */  subu       $a2, $a2, $a1
    /* B7108 800C6908 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* B710C 800C690C 1A00C200 */  div        $zero, $a2, $v0
    /* B7110 800C6910 02004014 */  bnez       $v0, .L800C691C
    /* B7114 800C6914 00000000 */   nop
    /* B7118 800C6918 0D000700 */  break      7
  .L800C691C:
    /* B711C 800C691C FFFF0124 */  addiu      $at, $zero, -0x1
    /* B7120 800C6920 04004114 */  bne        $v0, $at, .L800C6934
    /* B7124 800C6924 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B7128 800C6928 0200C114 */  bne        $a2, $at, .L800C6934
    /* B712C 800C692C 00000000 */   nop
    /* B7130 800C6930 0D000600 */  break      6
  .L800C6934:
    /* B7134 800C6934 12180000 */  mflo       $v1
    /* B7138 800C6938 10100000 */  mfhi       $v0
    /* B713C 800C693C 02000011 */  beqz       $t0, .L800C6948
    /* B7140 800C6940 00000000 */   nop
    /* B7144 800C6944 000002AD */  sw         $v0, 0x0($t0)
  .L800C6948:
    /* B7148 800C6948 0200E010 */  beqz       $a3, .L800C6954
    /* B714C 800C694C 2A106500 */   slt       $v0, $v1, $a1
    /* B7150 800C6950 0000E4AC */  sw         $a0, 0x0($a3)
  .L800C6954:
    /* B7154 800C6954 03004014 */  bnez       $v0, .L800C6964
    /* B7158 800C6958 00000000 */   nop
  .L800C695C:
    /* B715C 800C695C 631A0308 */  j          .L800C698C
    /* B7160 800C6960 2110A000 */   addu      $v0, $a1, $zero
  .L800C6964:
    /* B7164 800C6964 0900601C */  bgtz       $v1, .L800C698C
    /* B7168 800C6968 21106000 */   addu      $v0, $v1, $zero
    /* B716C 800C696C 02000011 */  beqz       $t0, .L800C6978
    /* B7170 800C6970 00000000 */   nop
    /* B7174 800C6974 000000AD */  sw         $zero, 0x0($t0)
  .L800C6978:
    /* B7178 800C6978 0300E010 */  beqz       $a3, .L800C6988
    /* B717C 800C697C 2310C500 */   subu      $v0, $a2, $a1
    /* B7180 800C6980 01004224 */  addiu      $v0, $v0, 0x1
    /* B7184 800C6984 0000E2AC */  sw         $v0, 0x0($a3)
  .L800C6988:
    /* B7188 800C6988 01000224 */  addiu      $v0, $zero, 0x1
  .L800C698C:
    /* B718C 800C698C 0800E003 */  jr         $ra
    /* B7190 800C6990 00000000 */   nop
endlabel func_800C68A8
