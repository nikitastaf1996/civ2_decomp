.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AE858, 0x1D4

glabel func_800AE858
    /* 9F058 800AE858 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F05C 800AE85C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9F060 800AE860 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F064 800AE864 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F068 800AE868 20001024 */  addiu      $s0, $zero, 0x20
    /* 9F06C 800AE86C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 9F070 800AE870 1680013C */  lui        $at, %hi(D_801584EC)
    /* 9F074 800AE874 EC8422AC */  sw         $v0, %lo(D_801584EC)($at)
    /* 9F078 800AE878 1280113C */  lui        $s1, %hi(D_801208B8)
    /* 9F07C 800AE87C B8083126 */  addiu      $s1, $s1, %lo(D_801208B8)
  .L800AE880:
    /* 9F080 800AE880 8809828F */  lw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9F084 800AE884 00000000 */  nop
    /* 9F088 800AE888 401F4228 */  slti       $v0, $v0, 0x1F40
    /* 9F08C 800AE88C 05004014 */  bnez       $v0, .L800AE8A4
    /* 9F090 800AE890 00000000 */   nop
    /* 9F094 800AE894 8409838F */  lw         $v1, %gp_rel(D_80158E5C)($gp)
    /* 9F098 800AE898 000C0224 */  addiu      $v0, $zero, 0xC00
    /* 9F09C 800AE89C 57006210 */  beq        $v1, $v0, .L800AE9FC
    /* 9F0A0 800AE8A0 00000000 */   nop
  .L800AE8A4:
    /* 9F0A4 800AE8A4 8409848F */  lw         $a0, %gp_rel(D_80158E5C)($gp)
    /* 9F0A8 800AE8A8 00000000 */  nop
    /* 9F0AC 800AE8AC 80008324 */  addiu      $v1, $a0, 0x80
    /* 9F0B0 800AE8B0 02006104 */  bgez       $v1, .L800AE8BC
    /* 9F0B4 800AE8B4 21106000 */   addu      $v0, $v1, $zero
    /* 9F0B8 800AE8B8 7F108224 */  addiu      $v0, $a0, 0x107F
  .L800AE8BC:
    /* 9F0BC 800AE8BC 03130200 */  sra        $v0, $v0, 12
    /* 9F0C0 800AE8C0 00130200 */  sll        $v0, $v0, 12
    /* 9F0C4 800AE8C4 23206200 */  subu       $a0, $v1, $v0
    /* 9F0C8 800AE8C8 840984AF */  sw         $a0, %gp_rel(D_80158E5C)($gp)
    /* 9F0CC 800AE8CC 8809828F */  lw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9F0D0 800AE8D0 00000000 */  nop
    /* 9F0D4 800AE8D4 90014224 */  addiu      $v0, $v0, 0x190
    /* 9F0D8 800AE8D8 880982AF */  sw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9F0DC 800AE8DC 00048324 */  addiu      $v1, $a0, 0x400
    /* 9F0E0 800AE8E0 02006104 */  bgez       $v1, .L800AE8EC
    /* 9F0E4 800AE8E4 21106000 */   addu      $v0, $v1, $zero
    /* 9F0E8 800AE8E8 FF138224 */  addiu      $v0, $a0, 0x13FF
  .L800AE8EC:
    /* 9F0EC 800AE8EC 03230200 */  sra        $a0, $v0, 12
    /* 9F0F0 800AE8F0 00130400 */  sll        $v0, $a0, 12
    /* 9F0F4 800AE8F4 23206200 */  subu       $a0, $v1, $v0
    /* 9F0F8 800AE8F8 00088228 */  slti       $v0, $a0, 0x800
    /* 9F0FC 800AE8FC 05004010 */  beqz       $v0, .L800AE914
    /* 9F100 800AE900 00000000 */   nop
    /* 9F104 800AE904 07008104 */  bgez       $a0, .L800AE924
    /* 9F108 800AE908 21108000 */   addu      $v0, $a0, $zero
    /* 9F10C 800AE90C 49BA0208 */  j          .L800AE924
    /* 9F110 800AE910 0F008224 */   addiu     $v0, $a0, 0xF
  .L800AE914:
    /* 9F114 800AE914 00F88224 */  addiu      $v0, $a0, -0x800
    /* 9F118 800AE918 03004104 */  bgez       $v0, .L800AE928
    /* 9F11C 800AE91C 03110200 */   sra       $v0, $v0, 4
    /* 9F120 800AE920 0FF88224 */  addiu      $v0, $a0, -0x7F1
  .L800AE924:
    /* 9F124 800AE924 03110200 */  sra        $v0, $v0, 4
  .L800AE928:
    /* 9F128 800AE928 40004424 */  addiu      $a0, $v0, 0x40
    /* 9F12C 800AE92C 21180000 */  addu       $v1, $zero, $zero
  .L800AE930:
    /* 9F130 800AE930 40100300 */  sll        $v0, $v1, 1
    /* 9F134 800AE934 21105100 */  addu       $v0, $v0, $s1
    /* 9F138 800AE938 000044A4 */  sh         $a0, 0x0($v0)
    /* 9F13C 800AE93C 01006324 */  addiu      $v1, $v1, 0x1
    /* 9F140 800AE940 10006228 */  slti       $v0, $v1, 0x10
    /* 9F144 800AE944 FAFF4014 */  bnez       $v0, .L800AE930
    /* 9F148 800AE948 00120400 */   sll       $v0, $a0, 8
    /* 9F14C 800AE94C 23184400 */  subu       $v1, $v0, $a0
    /* 9F150 800AE950 02006104 */  bgez       $v1, .L800AE95C
    /* 9F154 800AE954 21106000 */   addu      $v0, $v1, $zero
    /* 9F158 800AE958 7F006224 */  addiu      $v0, $v1, 0x7F
  .L800AE95C:
    /* 9F15C 800AE95C C3190200 */  sra        $v1, $v0, 7
    /* 9F160 800AE960 00016228 */  slti       $v0, $v1, 0x100
    /* 9F164 800AE964 03004014 */  bnez       $v0, .L800AE974
    /* 9F168 800AE968 40006228 */   slti      $v0, $v1, 0x40
    /* 9F16C 800AE96C 60BA0208 */  j          .L800AE980
    /* 9F170 800AE970 FF000324 */   addiu     $v1, $zero, 0xFF
  .L800AE974:
    /* 9F174 800AE974 02004010 */  beqz       $v0, .L800AE980
    /* 9F178 800AE978 00000000 */   nop
    /* 9F17C 800AE97C 40000324 */  addiu      $v1, $zero, 0x40
  .L800AE980:
    /* 9F180 800AE980 1280023C */  lui        $v0, %hi(D_801208D8)
    /* 9F184 800AE984 D8084224 */  addiu      $v0, $v0, %lo(D_801208D8)
    /* 9F188 800AE988 000043A4 */  sh         $v1, 0x0($v0)
    /* 9F18C 800AE98C 020043A4 */  sh         $v1, 0x2($v0)
    /* 9F190 800AE990 21108000 */  addu       $v0, $a0, $zero
    /* 9F194 800AE994 03004104 */  bgez       $v0, .L800AE9A4
    /* 9F198 800AE998 C3180200 */   sra       $v1, $v0, 3
    /* 9F19C 800AE99C 07004224 */  addiu      $v0, $v0, 0x7
    /* 9F1A0 800AE9A0 C3180200 */  sra        $v1, $v0, 3
  .L800AE9A4:
    /* 9F1A4 800AE9A4 00016228 */  slti       $v0, $v1, 0x100
    /* 9F1A8 800AE9A8 03004014 */  bnez       $v0, .L800AE9B8
    /* 9F1AC 800AE9AC 40006228 */   slti      $v0, $v1, 0x40
    /* 9F1B0 800AE9B0 71BA0208 */  j          .L800AE9C4
    /* 9F1B4 800AE9B4 FF000324 */   addiu     $v1, $zero, 0xFF
  .L800AE9B8:
    /* 9F1B8 800AE9B8 02004010 */  beqz       $v0, .L800AE9C4
    /* 9F1BC 800AE9BC 00000000 */   nop
    /* 9F1C0 800AE9C0 40000324 */  addiu      $v1, $zero, 0x40
  .L800AE9C4:
    /* 9F1C4 800AE9C4 1280023C */  lui        $v0, %hi(D_801208DC)
    /* 9F1C8 800AE9C8 DC084224 */  addiu      $v0, $v0, %lo(D_801208DC)
    /* 9F1CC 800AE9CC 000043A4 */  sh         $v1, 0x0($v0)
    /* 9F1D0 800AE9D0 020043A4 */  sh         $v1, 0x2($v0)
    /* 9F1D4 800AE9D4 8000022A */  slti       $v0, $s0, 0x80
    /* 9F1D8 800AE9D8 02004010 */  beqz       $v0, .L800AE9E4
    /* 9F1DC 800AE9DC 00000000 */   nop
    /* 9F1E0 800AE9E0 08001026 */  addiu      $s0, $s0, 0x8
  .L800AE9E4:
    /* 9F1E4 800AE9E4 1680013C */  lui        $at, %hi(D_801592E4)
    /* 9F1E8 800AE9E8 E49230A4 */  sh         $s0, %lo(D_801592E4)($at)
    /* 9F1EC 800AE9EC 8E12040C */  jal        func_80104A38
    /* 9F1F0 800AE9F0 00000000 */   nop
    /* 9F1F4 800AE9F4 20BA0208 */  j          .L800AE880
    /* 9F1F8 800AE9F8 00000000 */   nop
  .L800AE9FC:
    /* 9F1FC 800AE9FC F809848F */  lw         $a0, %gp_rel(D_80158ED0)($gp)
    /* 9F200 800AEA00 89D6030C */  jal        func_800F5A24
    /* 9F204 800AEA04 00000000 */   nop
    /* 9F208 800AEA08 F809848F */  lw         $a0, %gp_rel(D_80158ED0)($gp)
    /* 9F20C 800AEA0C C6D5030C */  jal        func_800F5718
    /* 9F210 800AEA10 00000000 */   nop
    /* 9F214 800AEA14 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F218 800AEA18 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F21C 800AEA1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F220 800AEA20 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9F224 800AEA24 0800E003 */  jr         $ra
    /* 9F228 800AEA28 00000000 */   nop
endlabel func_800AE858
