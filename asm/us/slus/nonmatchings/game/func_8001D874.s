.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D874, 0x12C

glabel func_8001D874
    /* E074 8001D874 1380023C */  lui        $v0, %hi(D_8012A2B0)
    /* E078 8001D878 B0A2428C */  lw         $v0, %lo(D_8012A2B0)($v0)
    /* E07C 8001D87C 00000000 */  nop
    /* E080 8001D880 00FC4224 */  addiu      $v0, $v0, -0x400
    /* E084 8001D884 1380013C */  lui        $at, %hi(D_8012A2B0)
    /* E088 8001D888 B0A222AC */  sw         $v0, %lo(D_8012A2B0)($at)
    /* E08C 8001D88C 0400401C */  bgtz       $v0, .L8001D8A0
    /* E090 8001D890 1600023C */   lui       $v0, (0x168000 >> 16)
    /* E094 8001D894 00804234 */  ori        $v0, $v0, (0x168000 & 0xFFFF)
    /* E098 8001D898 1380013C */  lui        $at, %hi(D_8012A2B0)
    /* E09C 8001D89C B0A222AC */  sw         $v0, %lo(D_8012A2B0)($at)
  .L8001D8A0:
    /* E0A0 8001D8A0 B80B8297 */  lhu        $v0, %gp_rel(D_800552C8)($gp)
    /* E0A4 8001D8A4 00000000 */  nop
    /* E0A8 8001D8A8 37004014 */  bnez       $v0, .L8001D988
    /* E0AC 8001D8AC 00000000 */   nop
    /* E0B0 8001D8B0 1380023C */  lui        $v0, %hi(D_8012A2B8)
    /* E0B4 8001D8B4 B8A24294 */  lhu        $v0, %lo(D_8012A2B8)($v0)
    /* E0B8 8001D8B8 00000000 */  nop
    /* E0BC 8001D8BC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E0C0 8001D8C0 1380013C */  lui        $at, %hi(D_8012A2B8)
    /* E0C4 8001D8C4 B8A222A4 */  sh         $v0, %lo(D_8012A2B8)($at)
    /* E0C8 8001D8C8 00140200 */  sll        $v0, $v0, 16
    /* E0CC 8001D8CC 03140200 */  sra        $v0, $v0, 16
    /* E0D0 8001D8D0 60FF4228 */  slti       $v0, $v0, -0xA0
    /* E0D4 8001D8D4 03004010 */  beqz       $v0, .L8001D8E4
    /* E0D8 8001D8D8 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* E0DC 8001D8DC 1380013C */  lui        $at, %hi(D_8012A2B8)
    /* E0E0 8001D8E0 B8A222A4 */  sh         $v0, %lo(D_8012A2B8)($at)
  .L8001D8E4:
    /* E0E4 8001D8E4 1380023C */  lui        $v0, %hi(D_8012A2DC)
    /* E0E8 8001D8E8 DCA24294 */  lhu        $v0, %lo(D_8012A2DC)($v0)
    /* E0EC 8001D8EC 00000000 */  nop
    /* E0F0 8001D8F0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E0F4 8001D8F4 1380013C */  lui        $at, %hi(D_8012A2DC)
    /* E0F8 8001D8F8 DCA222A4 */  sh         $v0, %lo(D_8012A2DC)($at)
    /* E0FC 8001D8FC 00140200 */  sll        $v0, $v0, 16
    /* E100 8001D900 03140200 */  sra        $v0, $v0, 16
    /* E104 8001D904 60FF4228 */  slti       $v0, $v0, -0xA0
    /* E108 8001D908 03004010 */  beqz       $v0, .L8001D918
    /* E10C 8001D90C E0010224 */   addiu     $v0, $zero, 0x1E0
    /* E110 8001D910 1380013C */  lui        $at, %hi(D_8012A2DC)
    /* E114 8001D914 DCA222A4 */  sh         $v0, %lo(D_8012A2DC)($at)
  .L8001D918:
    /* E118 8001D918 1380023C */  lui        $v0, %hi(D_8012A300)
    /* E11C 8001D91C 00A34294 */  lhu        $v0, %lo(D_8012A300)($v0)
    /* E120 8001D920 00000000 */  nop
    /* E124 8001D924 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E128 8001D928 1380013C */  lui        $at, %hi(D_8012A300)
    /* E12C 8001D92C 00A322A4 */  sh         $v0, %lo(D_8012A300)($at)
    /* E130 8001D930 00140200 */  sll        $v0, $v0, 16
    /* E134 8001D934 03140200 */  sra        $v0, $v0, 16
    /* E138 8001D938 60FF4228 */  slti       $v0, $v0, -0xA0
    /* E13C 8001D93C 03004010 */  beqz       $v0, .L8001D94C
    /* E140 8001D940 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* E144 8001D944 1380013C */  lui        $at, %hi(D_8012A300)
    /* E148 8001D948 00A322A4 */  sh         $v0, %lo(D_8012A300)($at)
  .L8001D94C:
    /* E14C 8001D94C 1380023C */  lui        $v0, %hi(D_8012A324)
    /* E150 8001D950 24A34294 */  lhu        $v0, %lo(D_8012A324)($v0)
    /* E154 8001D954 00000000 */  nop
    /* E158 8001D958 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E15C 8001D95C 1380013C */  lui        $at, %hi(D_8012A324)
    /* E160 8001D960 24A322A4 */  sh         $v0, %lo(D_8012A324)($at)
    /* E164 8001D964 00140200 */  sll        $v0, $v0, 16
    /* E168 8001D968 03140200 */  sra        $v0, $v0, 16
    /* E16C 8001D96C 60FF4228 */  slti       $v0, $v0, -0xA0
    /* E170 8001D970 03004010 */  beqz       $v0, .L8001D980
    /* E174 8001D974 E0010224 */   addiu     $v0, $zero, 0x1E0
    /* E178 8001D978 1380013C */  lui        $at, %hi(D_8012A324)
    /* E17C 8001D97C 24A322A4 */  sh         $v0, %lo(D_8012A324)($at)
  .L8001D980:
    /* E180 8001D980 65760008 */  j          .L8001D994
    /* E184 8001D984 04000224 */   addiu     $v0, $zero, 0x4
  .L8001D988:
    /* E188 8001D988 B80B8297 */  lhu        $v0, %gp_rel(D_800552C8)($gp)
    /* E18C 8001D98C 00000000 */  nop
    /* E190 8001D990 FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8001D994:
    /* E194 8001D994 B80B82A7 */  sh         $v0, %gp_rel(D_800552C8)($gp)
    /* E198 8001D998 0800E003 */  jr         $ra
    /* E19C 8001D99C 00000000 */   nop
endlabel func_8001D874
