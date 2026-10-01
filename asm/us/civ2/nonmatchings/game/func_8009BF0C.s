.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BF0C, 0xB08

glabel func_8009BF0C
    /* 8C70C 8009BF0C B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 8C710 8009BF10 4800BFAF */  sw         $ra, 0x48($sp)
    /* 8C714 8009BF14 4400B7AF */  sw         $s7, 0x44($sp)
    /* 8C718 8009BF18 4000B6AF */  sw         $s6, 0x40($sp)
    /* 8C71C 8009BF1C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 8C720 8009BF20 3800B4AF */  sw         $s4, 0x38($sp)
    /* 8C724 8009BF24 3400B3AF */  sw         $s3, 0x34($sp)
    /* 8C728 8009BF28 3000B2AF */  sw         $s2, 0x30($sp)
    /* 8C72C 8009BF2C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 8C730 8009BF30 2800B0AF */  sw         $s0, 0x28($sp)
    /* 8C734 8009BF34 21A08000 */  addu       $s4, $a0, $zero
    /* 8C738 8009BF38 21B0A000 */  addu       $s6, $a1, $zero
    /* 8C73C 8009BF3C 2190C000 */  addu       $s2, $a2, $zero
    /* 8C740 8009BF40 21A8E000 */  addu       $s5, $a3, $zero
    /* 8C744 8009BF44 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8C748 8009BF48 1800A527 */  addiu      $a1, $sp, 0x18
    /* 8C74C 8009BF4C 1C00A627 */  addiu      $a2, $sp, 0x1C
    /* 8C750 8009BF50 0A66020C */  jal        func_80099828
    /* 8C754 8009BF54 2138C002 */   addu      $a3, $s6, $zero
    /* 8C758 8009BF58 21800000 */  addu       $s0, $zero, $zero
    /* 8C75C 8009BF5C 2120C002 */  addu       $a0, $s6, $zero
    /* 8C760 8009BF60 21284002 */  addu       $a1, $s2, $zero
    /* 8C764 8009BF64 A161020C */  jal        func_80098684
    /* 8C768 8009BF68 2130A002 */   addu      $a2, $s5, $zero
    /* 8C76C 8009BF6C 11004010 */  beqz       $v0, .L8009BFB4
    /* 8C770 8009BF70 00000000 */   nop
    /* 8C774 8009BF74 0D004006 */  bltz       $s2, .L8009BFAC
    /* 8C778 8009BF78 21180000 */   addu      $v1, $zero, $zero
    /* 8C77C 8009BF7C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8C780 8009BF80 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8C784 8009BF84 00000000 */  nop
    /* 8C788 8009BF88 2A104202 */  slt        $v0, $s2, $v0
    /* 8C78C 8009BF8C 07004010 */  beqz       $v0, .L8009BFAC
    /* 8C790 8009BF90 00000000 */   nop
    /* 8C794 8009BF94 0500C006 */  bltz       $s6, .L8009BFAC
    /* 8C798 8009BF98 00000000 */   nop
    /* 8C79C 8009BF9C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8C7A0 8009BFA0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8C7A4 8009BFA4 00000000 */  nop
    /* 8C7A8 8009BFA8 2A18C202 */  slt        $v1, $s6, $v0
  .L8009BFAC:
    /* 8C7AC 8009BFAC 02006014 */  bnez       $v1, .L8009BFB8
    /* 8C7B0 8009BFB0 00000000 */   nop
  .L8009BFB4:
    /* 8C7B4 8009BFB4 01001024 */  addiu      $s0, $zero, 0x1
  .L8009BFB8:
    /* 8C7B8 8009BFB8 7B020012 */  beqz       $s0, .L8009C9A8
    /* 8C7BC 8009BFBC 0100443A */   xori      $a0, $s2, 0x1
    /* 8C7C0 8009BFC0 01008430 */  andi       $a0, $a0, 0x1
    /* 8C7C4 8009BFC4 173B030C */  jal        func_800CEC5C
    /* 8C7C8 8009BFC8 2320C402 */   subu      $a0, $s6, $a0
    /* 8C7CC 8009BFCC 21984000 */  addu       $s3, $v0, $zero
    /* 8C7D0 8009BFD0 21880000 */  addu       $s1, $zero, $zero
    /* 8C7D4 8009BFD4 FFFF5026 */  addiu      $s0, $s2, -0x1
    /* 8C7D8 8009BFD8 21206002 */  addu       $a0, $s3, $zero
    /* 8C7DC 8009BFDC 21280002 */  addu       $a1, $s0, $zero
    /* 8C7E0 8009BFE0 A161020C */  jal        func_80098684
    /* 8C7E4 8009BFE4 2130A002 */   addu      $a2, $s5, $zero
    /* 8C7E8 8009BFE8 12004010 */  beqz       $v0, .L8009C034
    /* 8C7EC 8009BFEC 00000000 */   nop
    /* 8C7F0 8009BFF0 0D000006 */  bltz       $s0, .L8009C028
    /* 8C7F4 8009BFF4 21180000 */   addu      $v1, $zero, $zero
    /* 8C7F8 8009BFF8 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8C7FC 8009BFFC 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8C800 8009C000 00000000 */  nop
    /* 8C804 8009C004 2A100202 */  slt        $v0, $s0, $v0
    /* 8C808 8009C008 07004010 */  beqz       $v0, .L8009C028
    /* 8C80C 8009C00C 00000000 */   nop
    /* 8C810 8009C010 05006006 */  bltz       $s3, .L8009C028
    /* 8C814 8009C014 00000000 */   nop
    /* 8C818 8009C018 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8C81C 8009C01C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8C820 8009C020 00000000 */  nop
    /* 8C824 8009C024 2A186202 */  slt        $v1, $s3, $v0
  .L8009C028:
    /* 8C828 8009C028 02006010 */  beqz       $v1, .L8009C034
    /* 8C82C 8009C02C 00000000 */   nop
    /* 8C830 8009C030 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C034:
    /* 8C834 8009C034 09002012 */  beqz       $s1, .L8009C05C
    /* 8C838 8009C038 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8C83C 8009C03C 1800A787 */  lh         $a3, 0x18($sp)
    /* 8C840 8009C040 1C00A287 */  lh         $v0, 0x1C($sp)
    /* 8C844 8009C044 00000000 */  nop
    /* 8C848 8009C048 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C84C 8009C04C 1380053C */  lui        $a1, %hi(D_801379A8)
    /* 8C850 8009C050 A879A524 */  addiu      $a1, $a1, %lo(D_801379A8)
    /* 8C854 8009C054 89EE030C */  jal        func_800FBA24
    /* 8C858 8009C058 21308002 */   addu      $a2, $s4, $zero
  .L8009C05C:
    /* 8C85C 8009C05C 21B80000 */  addu       $s7, $zero, $zero
    /* 8C860 8009C060 02007126 */  addiu      $s1, $s3, 0x2
    /* 8C864 8009C064 173B030C */  jal        func_800CEC5C
    /* 8C868 8009C068 21202002 */   addu      $a0, $s1, $zero
    /* 8C86C 8009C06C FFFF5026 */  addiu      $s0, $s2, -0x1
    /* 8C870 8009C070 21204000 */  addu       $a0, $v0, $zero
    /* 8C874 8009C074 21280002 */  addu       $a1, $s0, $zero
    /* 8C878 8009C078 A161020C */  jal        func_80098684
    /* 8C87C 8009C07C 2130A002 */   addu      $a2, $s5, $zero
    /* 8C880 8009C080 15004010 */  beqz       $v0, .L8009C0D8
    /* 8C884 8009C084 00000000 */   nop
    /* 8C888 8009C088 173B030C */  jal        func_800CEC5C
    /* 8C88C 8009C08C 21202002 */   addu      $a0, $s1, $zero
    /* 8C890 8009C090 21204000 */  addu       $a0, $v0, $zero
    /* 8C894 8009C094 0D000006 */  bltz       $s0, .L8009C0CC
    /* 8C898 8009C098 21180000 */   addu      $v1, $zero, $zero
    /* 8C89C 8009C09C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8C8A0 8009C0A0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8C8A4 8009C0A4 00000000 */  nop
    /* 8C8A8 8009C0A8 2A100202 */  slt        $v0, $s0, $v0
    /* 8C8AC 8009C0AC 07004010 */  beqz       $v0, .L8009C0CC
    /* 8C8B0 8009C0B0 00000000 */   nop
    /* 8C8B4 8009C0B4 05008004 */  bltz       $a0, .L8009C0CC
    /* 8C8B8 8009C0B8 00000000 */   nop
    /* 8C8BC 8009C0BC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8C8C0 8009C0C0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8C8C4 8009C0C4 00000000 */  nop
    /* 8C8C8 8009C0C8 2A188200 */  slt        $v1, $a0, $v0
  .L8009C0CC:
    /* 8C8CC 8009C0CC 02006010 */  beqz       $v1, .L8009C0D8
    /* 8C8D0 8009C0D0 00000000 */   nop
    /* 8C8D4 8009C0D4 01001724 */  addiu      $s7, $zero, 0x1
  .L8009C0D8:
    /* 8C8D8 8009C0D8 0E00E012 */  beqz       $s7, .L8009C114
    /* 8C8DC 8009C0DC 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8C8E0 8009C0E0 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8C8E4 8009C0E4 48028296 */  lhu        $v0, 0x248($s4)
    /* 8C8E8 8009C0E8 00000000 */  nop
    /* 8C8EC 8009C0EC 2138E200 */  addu       $a3, $a3, $v0
    /* 8C8F0 8009C0F0 003C0700 */  sll        $a3, $a3, 16
    /* 8C8F4 8009C0F4 1C00A287 */  lh         $v0, 0x1C($sp)
    /* 8C8F8 8009C0F8 00000000 */  nop
    /* 8C8FC 8009C0FC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C900 8009C100 1380053C */  lui        $a1, %hi(D_80137B64)
    /* 8C904 8009C104 647BA524 */  addiu      $a1, $a1, %lo(D_80137B64)
    /* 8C908 8009C108 21308002 */  addu       $a2, $s4, $zero
    /* 8C90C 8009C10C 89EE030C */  jal        func_800FBA24
    /* 8C910 8009C110 033C0700 */   sra       $a3, $a3, 16
  .L8009C114:
    /* 8C914 8009C114 21880000 */  addu       $s1, $zero, $zero
    /* 8C918 8009C118 01005026 */  addiu      $s0, $s2, 0x1
    /* 8C91C 8009C11C 21206002 */  addu       $a0, $s3, $zero
    /* 8C920 8009C120 21280002 */  addu       $a1, $s0, $zero
    /* 8C924 8009C124 A161020C */  jal        func_80098684
    /* 8C928 8009C128 2130A002 */   addu      $a2, $s5, $zero
    /* 8C92C 8009C12C 12004010 */  beqz       $v0, .L8009C178
    /* 8C930 8009C130 00000000 */   nop
    /* 8C934 8009C134 0D000006 */  bltz       $s0, .L8009C16C
    /* 8C938 8009C138 21180000 */   addu      $v1, $zero, $zero
    /* 8C93C 8009C13C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8C940 8009C140 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8C944 8009C144 00000000 */  nop
    /* 8C948 8009C148 2A100202 */  slt        $v0, $s0, $v0
    /* 8C94C 8009C14C 07004010 */  beqz       $v0, .L8009C16C
    /* 8C950 8009C150 00000000 */   nop
    /* 8C954 8009C154 05006006 */  bltz       $s3, .L8009C16C
    /* 8C958 8009C158 00000000 */   nop
    /* 8C95C 8009C15C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8C960 8009C160 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8C964 8009C164 00000000 */  nop
    /* 8C968 8009C168 2A186202 */  slt        $v1, $s3, $v0
  .L8009C16C:
    /* 8C96C 8009C16C 02006010 */  beqz       $v1, .L8009C178
    /* 8C970 8009C170 00000000 */   nop
    /* 8C974 8009C174 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C178:
    /* 8C978 8009C178 0D002012 */  beqz       $s1, .L8009C1B0
    /* 8C97C 8009C17C 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8C980 8009C180 1800A787 */  lh         $a3, 0x18($sp)
    /* 8C984 8009C184 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 8C988 8009C188 4A028396 */  lhu        $v1, 0x24A($s4)
    /* 8C98C 8009C18C 00000000 */  nop
    /* 8C990 8009C190 21104300 */  addu       $v0, $v0, $v1
    /* 8C994 8009C194 00140200 */  sll        $v0, $v0, 16
    /* 8C998 8009C198 03140200 */  sra        $v0, $v0, 16
    /* 8C99C 8009C19C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C9A0 8009C1A0 1380053C */  lui        $a1, %hi(D_80137D20)
    /* 8C9A4 8009C1A4 207DA524 */  addiu      $a1, $a1, %lo(D_80137D20)
    /* 8C9A8 8009C1A8 89EE030C */  jal        func_800FBA24
    /* 8C9AC 8009C1AC 21308002 */   addu      $a2, $s4, $zero
  .L8009C1B0:
    /* 8C9B0 8009C1B0 21B80000 */  addu       $s7, $zero, $zero
    /* 8C9B4 8009C1B4 02007126 */  addiu      $s1, $s3, 0x2
    /* 8C9B8 8009C1B8 173B030C */  jal        func_800CEC5C
    /* 8C9BC 8009C1BC 21202002 */   addu      $a0, $s1, $zero
    /* 8C9C0 8009C1C0 01005026 */  addiu      $s0, $s2, 0x1
    /* 8C9C4 8009C1C4 21204000 */  addu       $a0, $v0, $zero
    /* 8C9C8 8009C1C8 21280002 */  addu       $a1, $s0, $zero
    /* 8C9CC 8009C1CC A161020C */  jal        func_80098684
    /* 8C9D0 8009C1D0 2130A002 */   addu      $a2, $s5, $zero
    /* 8C9D4 8009C1D4 15004010 */  beqz       $v0, .L8009C22C
    /* 8C9D8 8009C1D8 00000000 */   nop
    /* 8C9DC 8009C1DC 173B030C */  jal        func_800CEC5C
    /* 8C9E0 8009C1E0 21202002 */   addu      $a0, $s1, $zero
    /* 8C9E4 8009C1E4 21204000 */  addu       $a0, $v0, $zero
    /* 8C9E8 8009C1E8 0D000006 */  bltz       $s0, .L8009C220
    /* 8C9EC 8009C1EC 21180000 */   addu      $v1, $zero, $zero
    /* 8C9F0 8009C1F0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8C9F4 8009C1F4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8C9F8 8009C1F8 00000000 */  nop
    /* 8C9FC 8009C1FC 2A100202 */  slt        $v0, $s0, $v0
    /* 8CA00 8009C200 07004010 */  beqz       $v0, .L8009C220
    /* 8CA04 8009C204 00000000 */   nop
    /* 8CA08 8009C208 05008004 */  bltz       $a0, .L8009C220
    /* 8CA0C 8009C20C 00000000 */   nop
    /* 8CA10 8009C210 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CA14 8009C214 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CA18 8009C218 00000000 */  nop
    /* 8CA1C 8009C21C 2A188200 */  slt        $v1, $a0, $v0
  .L8009C220:
    /* 8CA20 8009C220 02006010 */  beqz       $v1, .L8009C22C
    /* 8CA24 8009C224 00000000 */   nop
    /* 8CA28 8009C228 01001724 */  addiu      $s7, $zero, 0x1
  .L8009C22C:
    /* 8CA2C 8009C22C 1200E012 */  beqz       $s7, .L8009C278
    /* 8CA30 8009C230 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CA34 8009C234 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8CA38 8009C238 48028296 */  lhu        $v0, 0x248($s4)
    /* 8CA3C 8009C23C 00000000 */  nop
    /* 8CA40 8009C240 2138E200 */  addu       $a3, $a3, $v0
    /* 8CA44 8009C244 003C0700 */  sll        $a3, $a3, 16
    /* 8CA48 8009C248 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 8CA4C 8009C24C 4A028396 */  lhu        $v1, 0x24A($s4)
    /* 8CA50 8009C250 00000000 */  nop
    /* 8CA54 8009C254 21104300 */  addu       $v0, $v0, $v1
    /* 8CA58 8009C258 00140200 */  sll        $v0, $v0, 16
    /* 8CA5C 8009C25C 03140200 */  sra        $v0, $v0, 16
    /* 8CA60 8009C260 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CA64 8009C264 1380053C */  lui        $a1, %hi(D_80137EDC)
    /* 8CA68 8009C268 DC7EA524 */  addiu      $a1, $a1, %lo(D_80137EDC)
    /* 8CA6C 8009C26C 21308002 */  addu       $a2, $s4, $zero
    /* 8CA70 8009C270 89EE030C */  jal        func_800FBA24
    /* 8CA74 8009C274 033C0700 */   sra       $a3, $a3, 16
  .L8009C278:
    /* 8CA78 8009C278 21880000 */  addu       $s1, $zero, $zero
    /* 8CA7C 8009C27C FEFF5026 */  addiu      $s0, $s2, -0x2
    /* 8CA80 8009C280 2120C002 */  addu       $a0, $s6, $zero
    /* 8CA84 8009C284 21280002 */  addu       $a1, $s0, $zero
    /* 8CA88 8009C288 A161020C */  jal        func_80098684
    /* 8CA8C 8009C28C 2130A002 */   addu      $a2, $s5, $zero
    /* 8CA90 8009C290 12004010 */  beqz       $v0, .L8009C2DC
    /* 8CA94 8009C294 00000000 */   nop
    /* 8CA98 8009C298 0D000006 */  bltz       $s0, .L8009C2D0
    /* 8CA9C 8009C29C 21180000 */   addu      $v1, $zero, $zero
    /* 8CAA0 8009C2A0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CAA4 8009C2A4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CAA8 8009C2A8 00000000 */  nop
    /* 8CAAC 8009C2AC 2A100202 */  slt        $v0, $s0, $v0
    /* 8CAB0 8009C2B0 07004010 */  beqz       $v0, .L8009C2D0
    /* 8CAB4 8009C2B4 00000000 */   nop
    /* 8CAB8 8009C2B8 0500C006 */  bltz       $s6, .L8009C2D0
    /* 8CABC 8009C2BC 00000000 */   nop
    /* 8CAC0 8009C2C0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CAC4 8009C2C4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CAC8 8009C2C8 00000000 */  nop
    /* 8CACC 8009C2CC 2A18C202 */  slt        $v1, $s6, $v0
  .L8009C2D0:
    /* 8CAD0 8009C2D0 02006010 */  beqz       $v1, .L8009C2DC
    /* 8CAD4 8009C2D4 00000000 */   nop
    /* 8CAD8 8009C2D8 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C2DC:
    /* 8CADC 8009C2DC 54002012 */  beqz       $s1, .L8009C430
    /* 8CAE0 8009C2E0 21880000 */   addu      $s1, $zero, $zero
    /* 8CAE4 8009C2E4 FFFF5026 */  addiu      $s0, $s2, -0x1
    /* 8CAE8 8009C2E8 21206002 */  addu       $a0, $s3, $zero
    /* 8CAEC 8009C2EC 21280002 */  addu       $a1, $s0, $zero
    /* 8CAF0 8009C2F0 A161020C */  jal        func_80098684
    /* 8CAF4 8009C2F4 2130A002 */   addu      $a2, $s5, $zero
    /* 8CAF8 8009C2F8 11004010 */  beqz       $v0, .L8009C340
    /* 8CAFC 8009C2FC 00000000 */   nop
    /* 8CB00 8009C300 0D000006 */  bltz       $s0, .L8009C338
    /* 8CB04 8009C304 21180000 */   addu      $v1, $zero, $zero
    /* 8CB08 8009C308 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CB0C 8009C30C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CB10 8009C310 00000000 */  nop
    /* 8CB14 8009C314 2A100202 */  slt        $v0, $s0, $v0
    /* 8CB18 8009C318 07004010 */  beqz       $v0, .L8009C338
    /* 8CB1C 8009C31C 00000000 */   nop
    /* 8CB20 8009C320 05006006 */  bltz       $s3, .L8009C338
    /* 8CB24 8009C324 00000000 */   nop
    /* 8CB28 8009C328 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CB2C 8009C32C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CB30 8009C330 00000000 */  nop
    /* 8CB34 8009C334 2A186202 */  slt        $v1, $s3, $v0
  .L8009C338:
    /* 8CB38 8009C338 02006014 */  bnez       $v1, .L8009C344
    /* 8CB3C 8009C33C 00000000 */   nop
  .L8009C340:
    /* 8CB40 8009C340 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C344:
    /* 8CB44 8009C344 0D002012 */  beqz       $s1, .L8009C37C
    /* 8CB48 8009C348 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CB4C 8009C34C 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8CB50 8009C350 00000000 */  nop
    /* 8CB54 8009C354 0800E724 */  addiu      $a3, $a3, 0x8
    /* 8CB58 8009C358 003C0700 */  sll        $a3, $a3, 16
    /* 8CB5C 8009C35C 1C00A287 */  lh         $v0, 0x1C($sp)
    /* 8CB60 8009C360 00000000 */  nop
    /* 8CB64 8009C364 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CB68 8009C368 1380053C */  lui        $a1, %hi(D_80137BF8)
    /* 8CB6C 8009C36C F87BA524 */  addiu      $a1, $a1, %lo(D_80137BF8)
    /* 8CB70 8009C370 21308002 */  addu       $a2, $s4, $zero
    /* 8CB74 8009C374 89EE030C */  jal        func_800FBA24
    /* 8CB78 8009C378 033C0700 */   sra       $a3, $a3, 16
  .L8009C37C:
    /* 8CB7C 8009C37C 21B80000 */  addu       $s7, $zero, $zero
    /* 8CB80 8009C380 02007126 */  addiu      $s1, $s3, 0x2
    /* 8CB84 8009C384 173B030C */  jal        func_800CEC5C
    /* 8CB88 8009C388 21202002 */   addu      $a0, $s1, $zero
    /* 8CB8C 8009C38C FFFF5026 */  addiu      $s0, $s2, -0x1
    /* 8CB90 8009C390 21204000 */  addu       $a0, $v0, $zero
    /* 8CB94 8009C394 21280002 */  addu       $a1, $s0, $zero
    /* 8CB98 8009C398 A161020C */  jal        func_80098684
    /* 8CB9C 8009C39C 2130A002 */   addu      $a2, $s5, $zero
    /* 8CBA0 8009C3A0 14004010 */  beqz       $v0, .L8009C3F4
    /* 8CBA4 8009C3A4 00000000 */   nop
    /* 8CBA8 8009C3A8 173B030C */  jal        func_800CEC5C
    /* 8CBAC 8009C3AC 21202002 */   addu      $a0, $s1, $zero
    /* 8CBB0 8009C3B0 21204000 */  addu       $a0, $v0, $zero
    /* 8CBB4 8009C3B4 0D000006 */  bltz       $s0, .L8009C3EC
    /* 8CBB8 8009C3B8 21180000 */   addu      $v1, $zero, $zero
    /* 8CBBC 8009C3BC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CBC0 8009C3C0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CBC4 8009C3C4 00000000 */  nop
    /* 8CBC8 8009C3C8 2A100202 */  slt        $v0, $s0, $v0
    /* 8CBCC 8009C3CC 07004010 */  beqz       $v0, .L8009C3EC
    /* 8CBD0 8009C3D0 00000000 */   nop
    /* 8CBD4 8009C3D4 05008004 */  bltz       $a0, .L8009C3EC
    /* 8CBD8 8009C3D8 00000000 */   nop
    /* 8CBDC 8009C3DC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CBE0 8009C3E0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CBE4 8009C3E4 00000000 */  nop
    /* 8CBE8 8009C3E8 2A188200 */  slt        $v1, $a0, $v0
  .L8009C3EC:
    /* 8CBEC 8009C3EC 02006014 */  bnez       $v1, .L8009C3F8
    /* 8CBF0 8009C3F0 00000000 */   nop
  .L8009C3F4:
    /* 8CBF4 8009C3F4 01001724 */  addiu      $s7, $zero, 0x1
  .L8009C3F8:
    /* 8CBF8 8009C3F8 0D00E012 */  beqz       $s7, .L8009C430
    /* 8CBFC 8009C3FC 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CC00 8009C400 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8CC04 8009C404 00000000 */  nop
    /* 8CC08 8009C408 1000E724 */  addiu      $a3, $a3, 0x10
    /* 8CC0C 8009C40C 003C0700 */  sll        $a3, $a3, 16
    /* 8CC10 8009C410 1C00A287 */  lh         $v0, 0x1C($sp)
    /* 8CC14 8009C414 00000000 */  nop
    /* 8CC18 8009C418 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CC1C 8009C41C 1380053C */  lui        $a1, %hi(D_80137A3C)
    /* 8CC20 8009C420 3C7AA524 */  addiu      $a1, $a1, %lo(D_80137A3C)
    /* 8CC24 8009C424 21308002 */  addu       $a2, $s4, $zero
    /* 8CC28 8009C428 89EE030C */  jal        func_800FBA24
    /* 8CC2C 8009C42C 033C0700 */   sra       $a3, $a3, 16
  .L8009C430:
    /* 8CC30 8009C430 21880000 */  addu       $s1, $zero, $zero
    /* 8CC34 8009C434 02005026 */  addiu      $s0, $s2, 0x2
    /* 8CC38 8009C438 2120C002 */  addu       $a0, $s6, $zero
    /* 8CC3C 8009C43C 21280002 */  addu       $a1, $s0, $zero
    /* 8CC40 8009C440 A161020C */  jal        func_80098684
    /* 8CC44 8009C444 2130A002 */   addu      $a2, $s5, $zero
    /* 8CC48 8009C448 12004010 */  beqz       $v0, .L8009C494
    /* 8CC4C 8009C44C 00000000 */   nop
    /* 8CC50 8009C450 0D000006 */  bltz       $s0, .L8009C488
    /* 8CC54 8009C454 21180000 */   addu      $v1, $zero, $zero
    /* 8CC58 8009C458 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CC5C 8009C45C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CC60 8009C460 00000000 */  nop
    /* 8CC64 8009C464 2A100202 */  slt        $v0, $s0, $v0
    /* 8CC68 8009C468 07004010 */  beqz       $v0, .L8009C488
    /* 8CC6C 8009C46C 00000000 */   nop
    /* 8CC70 8009C470 0500C006 */  bltz       $s6, .L8009C488
    /* 8CC74 8009C474 00000000 */   nop
    /* 8CC78 8009C478 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CC7C 8009C47C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CC80 8009C480 00000000 */  nop
    /* 8CC84 8009C484 2A18C202 */  slt        $v1, $s6, $v0
  .L8009C488:
    /* 8CC88 8009C488 02006010 */  beqz       $v1, .L8009C494
    /* 8CC8C 8009C48C 00000000 */   nop
    /* 8CC90 8009C490 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C494:
    /* 8CC94 8009C494 5C002012 */  beqz       $s1, .L8009C608
    /* 8CC98 8009C498 21880000 */   addu      $s1, $zero, $zero
    /* 8CC9C 8009C49C 01005026 */  addiu      $s0, $s2, 0x1
    /* 8CCA0 8009C4A0 21206002 */  addu       $a0, $s3, $zero
    /* 8CCA4 8009C4A4 21280002 */  addu       $a1, $s0, $zero
    /* 8CCA8 8009C4A8 A161020C */  jal        func_80098684
    /* 8CCAC 8009C4AC 2130A002 */   addu      $a2, $s5, $zero
    /* 8CCB0 8009C4B0 11004010 */  beqz       $v0, .L8009C4F8
    /* 8CCB4 8009C4B4 00000000 */   nop
    /* 8CCB8 8009C4B8 0D000006 */  bltz       $s0, .L8009C4F0
    /* 8CCBC 8009C4BC 21180000 */   addu      $v1, $zero, $zero
    /* 8CCC0 8009C4C0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CCC4 8009C4C4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CCC8 8009C4C8 00000000 */  nop
    /* 8CCCC 8009C4CC 2A100202 */  slt        $v0, $s0, $v0
    /* 8CCD0 8009C4D0 07004010 */  beqz       $v0, .L8009C4F0
    /* 8CCD4 8009C4D4 00000000 */   nop
    /* 8CCD8 8009C4D8 05006006 */  bltz       $s3, .L8009C4F0
    /* 8CCDC 8009C4DC 00000000 */   nop
    /* 8CCE0 8009C4E0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CCE4 8009C4E4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CCE8 8009C4E8 00000000 */  nop
    /* 8CCEC 8009C4EC 2A186202 */  slt        $v1, $s3, $v0
  .L8009C4F0:
    /* 8CCF0 8009C4F0 02006014 */  bnez       $v1, .L8009C4FC
    /* 8CCF4 8009C4F4 00000000 */   nop
  .L8009C4F8:
    /* 8CCF8 8009C4F8 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C4FC:
    /* 8CCFC 8009C4FC 11002012 */  beqz       $s1, .L8009C544
    /* 8CD00 8009C500 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CD04 8009C504 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8CD08 8009C508 00000000 */  nop
    /* 8CD0C 8009C50C 0800E724 */  addiu      $a3, $a3, 0x8
    /* 8CD10 8009C510 003C0700 */  sll        $a3, $a3, 16
    /* 8CD14 8009C514 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 8CD18 8009C518 4A028396 */  lhu        $v1, 0x24A($s4)
    /* 8CD1C 8009C51C 00000000 */  nop
    /* 8CD20 8009C520 21104300 */  addu       $v0, $v0, $v1
    /* 8CD24 8009C524 00140200 */  sll        $v0, $v0, 16
    /* 8CD28 8009C528 03140200 */  sra        $v0, $v0, 16
    /* 8CD2C 8009C52C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CD30 8009C530 1380053C */  lui        $a1, %hi(D_80137F70)
    /* 8CD34 8009C534 707FA524 */  addiu      $a1, $a1, %lo(D_80137F70)
    /* 8CD38 8009C538 21308002 */  addu       $a2, $s4, $zero
    /* 8CD3C 8009C53C 89EE030C */  jal        func_800FBA24
    /* 8CD40 8009C540 033C0700 */   sra       $a3, $a3, 16
  .L8009C544:
    /* 8CD44 8009C544 21B80000 */  addu       $s7, $zero, $zero
    /* 8CD48 8009C548 02007126 */  addiu      $s1, $s3, 0x2
    /* 8CD4C 8009C54C 173B030C */  jal        func_800CEC5C
    /* 8CD50 8009C550 21202002 */   addu      $a0, $s1, $zero
    /* 8CD54 8009C554 01005026 */  addiu      $s0, $s2, 0x1
    /* 8CD58 8009C558 21204000 */  addu       $a0, $v0, $zero
    /* 8CD5C 8009C55C 21280002 */  addu       $a1, $s0, $zero
    /* 8CD60 8009C560 A161020C */  jal        func_80098684
    /* 8CD64 8009C564 2130A002 */   addu      $a2, $s5, $zero
    /* 8CD68 8009C568 14004010 */  beqz       $v0, .L8009C5BC
    /* 8CD6C 8009C56C 00000000 */   nop
    /* 8CD70 8009C570 173B030C */  jal        func_800CEC5C
    /* 8CD74 8009C574 21202002 */   addu      $a0, $s1, $zero
    /* 8CD78 8009C578 21204000 */  addu       $a0, $v0, $zero
    /* 8CD7C 8009C57C 0D000006 */  bltz       $s0, .L8009C5B4
    /* 8CD80 8009C580 21180000 */   addu      $v1, $zero, $zero
    /* 8CD84 8009C584 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CD88 8009C588 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CD8C 8009C58C 00000000 */  nop
    /* 8CD90 8009C590 2A100202 */  slt        $v0, $s0, $v0
    /* 8CD94 8009C594 07004010 */  beqz       $v0, .L8009C5B4
    /* 8CD98 8009C598 00000000 */   nop
    /* 8CD9C 8009C59C 05008004 */  bltz       $a0, .L8009C5B4
    /* 8CDA0 8009C5A0 00000000 */   nop
    /* 8CDA4 8009C5A4 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CDA8 8009C5A8 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CDAC 8009C5AC 00000000 */  nop
    /* 8CDB0 8009C5B0 2A188200 */  slt        $v1, $a0, $v0
  .L8009C5B4:
    /* 8CDB4 8009C5B4 02006014 */  bnez       $v1, .L8009C5C0
    /* 8CDB8 8009C5B8 00000000 */   nop
  .L8009C5BC:
    /* 8CDBC 8009C5BC 01001724 */  addiu      $s7, $zero, 0x1
  .L8009C5C0:
    /* 8CDC0 8009C5C0 1100E012 */  beqz       $s7, .L8009C608
    /* 8CDC4 8009C5C4 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CDC8 8009C5C8 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8CDCC 8009C5CC 00000000 */  nop
    /* 8CDD0 8009C5D0 1000E724 */  addiu      $a3, $a3, 0x10
    /* 8CDD4 8009C5D4 003C0700 */  sll        $a3, $a3, 16
    /* 8CDD8 8009C5D8 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 8CDDC 8009C5DC 4A028396 */  lhu        $v1, 0x24A($s4)
    /* 8CDE0 8009C5E0 00000000 */  nop
    /* 8CDE4 8009C5E4 21104300 */  addu       $v0, $v0, $v1
    /* 8CDE8 8009C5E8 00140200 */  sll        $v0, $v0, 16
    /* 8CDEC 8009C5EC 03140200 */  sra        $v0, $v0, 16
    /* 8CDF0 8009C5F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CDF4 8009C5F4 1380053C */  lui        $a1, %hi(D_80137DB4)
    /* 8CDF8 8009C5F8 B47DA524 */  addiu      $a1, $a1, %lo(D_80137DB4)
    /* 8CDFC 8009C5FC 21308002 */  addu       $a2, $s4, $zero
    /* 8CE00 8009C600 89EE030C */  jal        func_800FBA24
    /* 8CE04 8009C604 033C0700 */   sra       $a3, $a3, 16
  .L8009C608:
    /* 8CE08 8009C608 21880000 */  addu       $s1, $zero, $zero
    /* 8CE0C 8009C60C FEFFD026 */  addiu      $s0, $s6, -0x2
    /* 8CE10 8009C610 173B030C */  jal        func_800CEC5C
    /* 8CE14 8009C614 21200002 */   addu      $a0, $s0, $zero
    /* 8CE18 8009C618 21204000 */  addu       $a0, $v0, $zero
    /* 8CE1C 8009C61C 21284002 */  addu       $a1, $s2, $zero
    /* 8CE20 8009C620 A161020C */  jal        func_80098684
    /* 8CE24 8009C624 2130A002 */   addu      $a2, $s5, $zero
    /* 8CE28 8009C628 15004010 */  beqz       $v0, .L8009C680
    /* 8CE2C 8009C62C 00000000 */   nop
    /* 8CE30 8009C630 173B030C */  jal        func_800CEC5C
    /* 8CE34 8009C634 21200002 */   addu      $a0, $s0, $zero
    /* 8CE38 8009C638 21204000 */  addu       $a0, $v0, $zero
    /* 8CE3C 8009C63C 0D004006 */  bltz       $s2, .L8009C674
    /* 8CE40 8009C640 21180000 */   addu      $v1, $zero, $zero
    /* 8CE44 8009C644 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CE48 8009C648 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CE4C 8009C64C 00000000 */  nop
    /* 8CE50 8009C650 2A104202 */  slt        $v0, $s2, $v0
    /* 8CE54 8009C654 07004010 */  beqz       $v0, .L8009C674
    /* 8CE58 8009C658 00000000 */   nop
    /* 8CE5C 8009C65C 05008004 */  bltz       $a0, .L8009C674
    /* 8CE60 8009C660 00000000 */   nop
    /* 8CE64 8009C664 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CE68 8009C668 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CE6C 8009C66C 00000000 */  nop
    /* 8CE70 8009C670 2A188200 */  slt        $v1, $a0, $v0
  .L8009C674:
    /* 8CE74 8009C674 02006010 */  beqz       $v1, .L8009C680
    /* 8CE78 8009C678 00000000 */   nop
    /* 8CE7C 8009C67C 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C680:
    /* 8CE80 8009C680 4A002012 */  beqz       $s1, .L8009C7AC
    /* 8CE84 8009C684 21880000 */   addu      $s1, $zero, $zero
    /* 8CE88 8009C688 FFFF5026 */  addiu      $s0, $s2, -0x1
    /* 8CE8C 8009C68C 21206002 */  addu       $a0, $s3, $zero
    /* 8CE90 8009C690 21280002 */  addu       $a1, $s0, $zero
    /* 8CE94 8009C694 A161020C */  jal        func_80098684
    /* 8CE98 8009C698 2130A002 */   addu      $a2, $s5, $zero
    /* 8CE9C 8009C69C 11004010 */  beqz       $v0, .L8009C6E4
    /* 8CEA0 8009C6A0 00000000 */   nop
    /* 8CEA4 8009C6A4 0D000006 */  bltz       $s0, .L8009C6DC
    /* 8CEA8 8009C6A8 21180000 */   addu      $v1, $zero, $zero
    /* 8CEAC 8009C6AC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CEB0 8009C6B0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CEB4 8009C6B4 00000000 */  nop
    /* 8CEB8 8009C6B8 2A100202 */  slt        $v0, $s0, $v0
    /* 8CEBC 8009C6BC 07004010 */  beqz       $v0, .L8009C6DC
    /* 8CEC0 8009C6C0 00000000 */   nop
    /* 8CEC4 8009C6C4 05006006 */  bltz       $s3, .L8009C6DC
    /* 8CEC8 8009C6C8 00000000 */   nop
    /* 8CECC 8009C6CC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CED0 8009C6D0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CED4 8009C6D4 00000000 */  nop
    /* 8CED8 8009C6D8 2A186202 */  slt        $v1, $s3, $v0
  .L8009C6DC:
    /* 8CEDC 8009C6DC 02006014 */  bnez       $v1, .L8009C6E8
    /* 8CEE0 8009C6E0 00000000 */   nop
  .L8009C6E4:
    /* 8CEE4 8009C6E4 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C6E8:
    /* 8CEE8 8009C6E8 09002012 */  beqz       $s1, .L8009C710
    /* 8CEEC 8009C6EC 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CEF0 8009C6F0 1800A787 */  lh         $a3, 0x18($sp)
    /* 8CEF4 8009C6F4 1C00A287 */  lh         $v0, 0x1C($sp)
    /* 8CEF8 8009C6F8 00000000 */  nop
    /* 8CEFC 8009C6FC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CF00 8009C700 1380053C */  lui        $a1, %hi(D_80137E48)
    /* 8CF04 8009C704 487EA524 */  addiu      $a1, $a1, %lo(D_80137E48)
    /* 8CF08 8009C708 89EE030C */  jal        func_800FBA24
    /* 8CF0C 8009C70C 21308002 */   addu      $a2, $s4, $zero
  .L8009C710:
    /* 8CF10 8009C710 21880000 */  addu       $s1, $zero, $zero
    /* 8CF14 8009C714 01005026 */  addiu      $s0, $s2, 0x1
    /* 8CF18 8009C718 21206002 */  addu       $a0, $s3, $zero
    /* 8CF1C 8009C71C 21280002 */  addu       $a1, $s0, $zero
    /* 8CF20 8009C720 A161020C */  jal        func_80098684
    /* 8CF24 8009C724 2130A002 */   addu      $a2, $s5, $zero
    /* 8CF28 8009C728 11004010 */  beqz       $v0, .L8009C770
    /* 8CF2C 8009C72C 00000000 */   nop
    /* 8CF30 8009C730 0D000006 */  bltz       $s0, .L8009C768
    /* 8CF34 8009C734 21180000 */   addu      $v1, $zero, $zero
    /* 8CF38 8009C738 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CF3C 8009C73C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CF40 8009C740 00000000 */  nop
    /* 8CF44 8009C744 2A100202 */  slt        $v0, $s0, $v0
    /* 8CF48 8009C748 07004010 */  beqz       $v0, .L8009C768
    /* 8CF4C 8009C74C 00000000 */   nop
    /* 8CF50 8009C750 05006006 */  bltz       $s3, .L8009C768
    /* 8CF54 8009C754 00000000 */   nop
    /* 8CF58 8009C758 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8CF5C 8009C75C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8CF60 8009C760 00000000 */  nop
    /* 8CF64 8009C764 2A186202 */  slt        $v1, $s3, $v0
  .L8009C768:
    /* 8CF68 8009C768 02006014 */  bnez       $v1, .L8009C774
    /* 8CF6C 8009C76C 00000000 */   nop
  .L8009C770:
    /* 8CF70 8009C770 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C774:
    /* 8CF74 8009C774 0D002012 */  beqz       $s1, .L8009C7AC
    /* 8CF78 8009C778 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8CF7C 8009C77C 1800A787 */  lh         $a3, 0x18($sp)
    /* 8CF80 8009C780 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 8CF84 8009C784 4A028396 */  lhu        $v1, 0x24A($s4)
    /* 8CF88 8009C788 00000000 */  nop
    /* 8CF8C 8009C78C 21104300 */  addu       $v0, $v0, $v1
    /* 8CF90 8009C790 00140200 */  sll        $v0, $v0, 16
    /* 8CF94 8009C794 03140200 */  sra        $v0, $v0, 16
    /* 8CF98 8009C798 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8CF9C 8009C79C 1380053C */  lui        $a1, %hi(D_80137AD0)
    /* 8CFA0 8009C7A0 D07AA524 */  addiu      $a1, $a1, %lo(D_80137AD0)
    /* 8CFA4 8009C7A4 89EE030C */  jal        func_800FBA24
    /* 8CFA8 8009C7A8 21308002 */   addu      $a2, $s4, $zero
  .L8009C7AC:
    /* 8CFAC 8009C7AC 21880000 */  addu       $s1, $zero, $zero
    /* 8CFB0 8009C7B0 0200D026 */  addiu      $s0, $s6, 0x2
    /* 8CFB4 8009C7B4 173B030C */  jal        func_800CEC5C
    /* 8CFB8 8009C7B8 21200002 */   addu      $a0, $s0, $zero
    /* 8CFBC 8009C7BC 21204000 */  addu       $a0, $v0, $zero
    /* 8CFC0 8009C7C0 21284002 */  addu       $a1, $s2, $zero
    /* 8CFC4 8009C7C4 A161020C */  jal        func_80098684
    /* 8CFC8 8009C7C8 2130A002 */   addu      $a2, $s5, $zero
    /* 8CFCC 8009C7CC 15004010 */  beqz       $v0, .L8009C824
    /* 8CFD0 8009C7D0 00000000 */   nop
    /* 8CFD4 8009C7D4 173B030C */  jal        func_800CEC5C
    /* 8CFD8 8009C7D8 21200002 */   addu      $a0, $s0, $zero
    /* 8CFDC 8009C7DC 21204000 */  addu       $a0, $v0, $zero
    /* 8CFE0 8009C7E0 0D004006 */  bltz       $s2, .L8009C818
    /* 8CFE4 8009C7E4 21180000 */   addu      $v1, $zero, $zero
    /* 8CFE8 8009C7E8 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8CFEC 8009C7EC 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8CFF0 8009C7F0 00000000 */  nop
    /* 8CFF4 8009C7F4 2A104202 */  slt        $v0, $s2, $v0
    /* 8CFF8 8009C7F8 07004010 */  beqz       $v0, .L8009C818
    /* 8CFFC 8009C7FC 00000000 */   nop
    /* 8D000 8009C800 05008004 */  bltz       $a0, .L8009C818
    /* 8D004 8009C804 00000000 */   nop
    /* 8D008 8009C808 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8D00C 8009C80C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8D010 8009C810 00000000 */  nop
    /* 8D014 8009C814 2A188200 */  slt        $v1, $a0, $v0
  .L8009C818:
    /* 8D018 8009C818 02006010 */  beqz       $v1, .L8009C824
    /* 8D01C 8009C81C 00000000 */   nop
    /* 8D020 8009C820 01001124 */  addiu      $s1, $zero, 0x1
  .L8009C824:
    /* 8D024 8009C824 6F002012 */  beqz       $s1, .L8009C9E4
    /* 8D028 8009C828 21B00000 */   addu      $s6, $zero, $zero
    /* 8D02C 8009C82C 02007126 */  addiu      $s1, $s3, 0x2
    /* 8D030 8009C830 173B030C */  jal        func_800CEC5C
    /* 8D034 8009C834 21202002 */   addu      $a0, $s1, $zero
    /* 8D038 8009C838 FFFF5026 */  addiu      $s0, $s2, -0x1
    /* 8D03C 8009C83C 21204000 */  addu       $a0, $v0, $zero
    /* 8D040 8009C840 21280002 */  addu       $a1, $s0, $zero
    /* 8D044 8009C844 A161020C */  jal        func_80098684
    /* 8D048 8009C848 2130A002 */   addu      $a2, $s5, $zero
    /* 8D04C 8009C84C 14004010 */  beqz       $v0, .L8009C8A0
    /* 8D050 8009C850 00000000 */   nop
    /* 8D054 8009C854 173B030C */  jal        func_800CEC5C
    /* 8D058 8009C858 21202002 */   addu      $a0, $s1, $zero
    /* 8D05C 8009C85C 21204000 */  addu       $a0, $v0, $zero
    /* 8D060 8009C860 0D000006 */  bltz       $s0, .L8009C898
    /* 8D064 8009C864 21180000 */   addu      $v1, $zero, $zero
    /* 8D068 8009C868 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8D06C 8009C86C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8D070 8009C870 00000000 */  nop
    /* 8D074 8009C874 2A100202 */  slt        $v0, $s0, $v0
    /* 8D078 8009C878 07004010 */  beqz       $v0, .L8009C898
    /* 8D07C 8009C87C 00000000 */   nop
    /* 8D080 8009C880 05008004 */  bltz       $a0, .L8009C898
    /* 8D084 8009C884 00000000 */   nop
    /* 8D088 8009C888 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8D08C 8009C88C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8D090 8009C890 00000000 */  nop
    /* 8D094 8009C894 2A188200 */  slt        $v1, $a0, $v0
  .L8009C898:
    /* 8D098 8009C898 02006014 */  bnez       $v1, .L8009C8A4
    /* 8D09C 8009C89C 00000000 */   nop
  .L8009C8A0:
    /* 8D0A0 8009C8A0 01001624 */  addiu      $s6, $zero, 0x1
  .L8009C8A4:
    /* 8D0A4 8009C8A4 0D00C012 */  beqz       $s6, .L8009C8DC
    /* 8D0A8 8009C8A8 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8D0AC 8009C8AC 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8D0B0 8009C8B0 00000000 */  nop
    /* 8D0B4 8009C8B4 1800E724 */  addiu      $a3, $a3, 0x18
    /* 8D0B8 8009C8B8 003C0700 */  sll        $a3, $a3, 16
    /* 8D0BC 8009C8BC 1C00A287 */  lh         $v0, 0x1C($sp)
    /* 8D0C0 8009C8C0 00000000 */  nop
    /* 8D0C4 8009C8C4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D0C8 8009C8C8 1480053C */  lui        $a1, %hi(D_80138004)
    /* 8D0CC 8009C8CC 0480A524 */  addiu      $a1, $a1, %lo(D_80138004)
    /* 8D0D0 8009C8D0 21308002 */  addu       $a2, $s4, $zero
    /* 8D0D4 8009C8D4 89EE030C */  jal        func_800FBA24
    /* 8D0D8 8009C8D8 033C0700 */   sra       $a3, $a3, 16
  .L8009C8DC:
    /* 8D0DC 8009C8DC 21B00000 */  addu       $s6, $zero, $zero
    /* 8D0E0 8009C8E0 02007126 */  addiu      $s1, $s3, 0x2
    /* 8D0E4 8009C8E4 173B030C */  jal        func_800CEC5C
    /* 8D0E8 8009C8E8 21202002 */   addu      $a0, $s1, $zero
    /* 8D0EC 8009C8EC 01005026 */  addiu      $s0, $s2, 0x1
    /* 8D0F0 8009C8F0 21204000 */  addu       $a0, $v0, $zero
    /* 8D0F4 8009C8F4 21280002 */  addu       $a1, $s0, $zero
    /* 8D0F8 8009C8F8 A161020C */  jal        func_80098684
    /* 8D0FC 8009C8FC 2130A002 */   addu      $a2, $s5, $zero
    /* 8D100 8009C900 14004010 */  beqz       $v0, .L8009C954
    /* 8D104 8009C904 00000000 */   nop
    /* 8D108 8009C908 173B030C */  jal        func_800CEC5C
    /* 8D10C 8009C90C 21202002 */   addu      $a0, $s1, $zero
    /* 8D110 8009C910 21204000 */  addu       $a0, $v0, $zero
    /* 8D114 8009C914 0D000006 */  bltz       $s0, .L8009C94C
    /* 8D118 8009C918 21180000 */   addu      $v1, $zero, $zero
    /* 8D11C 8009C91C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8D120 8009C920 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8D124 8009C924 00000000 */  nop
    /* 8D128 8009C928 2A100202 */  slt        $v0, $s0, $v0
    /* 8D12C 8009C92C 07004010 */  beqz       $v0, .L8009C94C
    /* 8D130 8009C930 00000000 */   nop
    /* 8D134 8009C934 05008004 */  bltz       $a0, .L8009C94C
    /* 8D138 8009C938 00000000 */   nop
    /* 8D13C 8009C93C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8D140 8009C940 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8D144 8009C944 00000000 */  nop
    /* 8D148 8009C948 2A188200 */  slt        $v1, $a0, $v0
  .L8009C94C:
    /* 8D14C 8009C94C 02006014 */  bnez       $v1, .L8009C958
    /* 8D150 8009C950 00000000 */   nop
  .L8009C954:
    /* 8D154 8009C954 01001624 */  addiu      $s6, $zero, 0x1
  .L8009C958:
    /* 8D158 8009C958 2200C012 */  beqz       $s6, .L8009C9E4
    /* 8D15C 8009C95C 2000A427 */   addiu     $a0, $sp, 0x20
    /* 8D160 8009C960 1800A797 */  lhu        $a3, 0x18($sp)
    /* 8D164 8009C964 00000000 */  nop
    /* 8D168 8009C968 1800E724 */  addiu      $a3, $a3, 0x18
    /* 8D16C 8009C96C 003C0700 */  sll        $a3, $a3, 16
    /* 8D170 8009C970 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 8D174 8009C974 4A028396 */  lhu        $v1, 0x24A($s4)
    /* 8D178 8009C978 00000000 */  nop
    /* 8D17C 8009C97C 21104300 */  addu       $v0, $v0, $v1
    /* 8D180 8009C980 00140200 */  sll        $v0, $v0, 16
    /* 8D184 8009C984 03140200 */  sra        $v0, $v0, 16
    /* 8D188 8009C988 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D18C 8009C98C 1380053C */  lui        $a1, %hi(D_80137C8C)
    /* 8D190 8009C990 8C7CA524 */  addiu      $a1, $a1, %lo(D_80137C8C)
    /* 8D194 8009C994 21308002 */  addu       $a2, $s4, $zero
    /* 8D198 8009C998 89EE030C */  jal        func_800FBA24
    /* 8D19C 8009C99C 033C0700 */   sra       $a3, $a3, 16
    /* 8D1A0 8009C9A0 79720208 */  j          .L8009C9E4
    /* 8D1A4 8009C9A4 00000000 */   nop
  .L8009C9A8:
    /* 8D1A8 8009C9A8 F804828F */  lw         $v0, %gp_rel(D_801589D0)($gp)
    /* 8D1AC 8009C9AC 00000000 */  nop
    /* 8D1B0 8009C9B0 0C004014 */  bnez       $v0, .L8009C9E4
    /* 8D1B4 8009C9B4 21208002 */   addu      $a0, $s4, $zero
    /* 8D1B8 8009C9B8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8D1BC 8009C9BC 1800A58F */  lw         $a1, 0x18($sp)
    /* 8D1C0 8009C9C0 1C00A68F */  lw         $a2, 0x1C($sp)
    /* 8D1C4 8009C9C4 4B6A020C */  jal        func_8009A92C
    /* 8D1C8 8009C9C8 2138C002 */   addu      $a3, $s6, $zero
    /* 8D1CC 8009C9CC 1000B2AF */  sw         $s2, 0x10($sp)
    /* 8D1D0 8009C9D0 21208002 */  addu       $a0, $s4, $zero
    /* 8D1D4 8009C9D4 1800A58F */  lw         $a1, 0x18($sp)
    /* 8D1D8 8009C9D8 1C00A68F */  lw         $a2, 0x1C($sp)
    /* 8D1DC 8009C9DC 7E6B020C */  jal        func_8009ADF8
    /* 8D1E0 8009C9E0 2138C002 */   addu      $a3, $s6, $zero
  .L8009C9E4:
    /* 8D1E4 8009C9E4 4800BF8F */  lw         $ra, 0x48($sp)
    /* 8D1E8 8009C9E8 4400B78F */  lw         $s7, 0x44($sp)
    /* 8D1EC 8009C9EC 4000B68F */  lw         $s6, 0x40($sp)
    /* 8D1F0 8009C9F0 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 8D1F4 8009C9F4 3800B48F */  lw         $s4, 0x38($sp)
    /* 8D1F8 8009C9F8 3400B38F */  lw         $s3, 0x34($sp)
    /* 8D1FC 8009C9FC 3000B28F */  lw         $s2, 0x30($sp)
    /* 8D200 8009CA00 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 8D204 8009CA04 2800B08F */  lw         $s0, 0x28($sp)
    /* 8D208 8009CA08 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 8D20C 8009CA0C 0800E003 */  jr         $ra
    /* 8D210 8009CA10 00000000 */   nop
endlabel func_8009BF0C
