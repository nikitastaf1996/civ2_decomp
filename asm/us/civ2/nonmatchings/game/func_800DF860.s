.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF860, 0x1AC

glabel func_800DF860
    /* D0060 800DF860 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D0064 800DF864 1800BFAF */  sw         $ra, 0x18($sp)
    /* D0068 800DF868 1400B1AF */  sw         $s1, 0x14($sp)
    /* D006C 800DF86C 1000B0AF */  sw         $s0, 0x10($sp)
    /* D0070 800DF870 21808000 */  addu       $s0, $a0, $zero
    /* D0074 800DF874 2188A000 */  addu       $s1, $a1, $zero
    /* D0078 800DF878 0D002006 */  bltz       $s1, .L800DF8B0
    /* D007C 800DF87C 21180000 */   addu      $v1, $zero, $zero
    /* D0080 800DF880 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* D0084 800DF884 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* D0088 800DF888 00000000 */  nop
    /* D008C 800DF88C 2A102202 */  slt        $v0, $s1, $v0
    /* D0090 800DF890 07004010 */  beqz       $v0, .L800DF8B0
    /* D0094 800DF894 00000000 */   nop
    /* D0098 800DF898 05000006 */  bltz       $s0, .L800DF8B0
    /* D009C 800DF89C 00000000 */   nop
    /* D00A0 800DF8A0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* D00A4 800DF8A4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* D00A8 800DF8A8 00000000 */  nop
    /* D00AC 800DF8AC 2A180202 */  slt        $v1, $s0, $v0
  .L800DF8B0:
    /* D00B0 800DF8B0 0C006010 */  beqz       $v1, .L800DF8E4
    /* D00B4 800DF8B4 21200002 */   addu      $a0, $s0, $zero
    /* D00B8 800DF8B8 1280063C */  lui        $a2, %hi(D_8011ACB4)
    /* D00BC 800DF8BC B4ACC68C */  lw         $a2, %lo(D_8011ACB4)($a2)
    /* D00C0 800DF8C0 A161020C */  jal        func_80098684
    /* D00C4 800DF8C4 21282002 */   addu      $a1, $s1, $zero
    /* D00C8 800DF8C8 08004014 */  bnez       $v0, .L800DF8EC
    /* D00CC 800DF8CC 21200002 */   addu      $a0, $s0, $zero
    /* D00D0 800DF8D0 1280023C */  lui        $v0, %hi(D_8011A271)
    /* D00D4 800DF8D4 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* D00D8 800DF8D8 00000000 */  nop
    /* D00DC 800DF8DC 03004014 */  bnez       $v0, .L800DF8EC
    /* D00E0 800DF8E0 00000000 */   nop
  .L800DF8E4:
    /* D00E4 800DF8E4 7C7E0308 */  j          .L800DF9F0
    /* D00E8 800DF8E8 21200000 */   addu      $a0, $zero, $zero
  .L800DF8EC:
    /* D00EC 800DF8EC 1E26020C */  jal        func_80089878
    /* D00F0 800DF8F0 21282002 */   addu      $a1, $s1, $zero
    /* D00F4 800DF8F4 21184000 */  addu       $v1, $v0, $zero
    /* D00F8 800DF8F8 37006004 */  bltz       $v1, .L800DF9D8
    /* D00FC 800DF8FC 40100300 */   sll       $v0, $v1, 1
    /* D0100 800DF900 21104300 */  addu       $v0, $v0, $v1
    /* D0104 800DF904 80100200 */  sll        $v0, $v0, 2
    /* D0108 800DF908 23104300 */  subu       $v0, $v0, $v1
    /* D010C 800DF90C C0180200 */  sll        $v1, $v0, 3
    /* D0110 800DF910 1180013C */  lui        $at, %hi(D_80113ED8)
    /* D0114 800DF914 21082300 */  addu       $at, $at, $v1
    /* D0118 800DF918 D83E2580 */  lb         $a1, %lo(D_80113ED8)($at)
    /* D011C 800DF91C 1280023C */  lui        $v0, %hi(D_8011A271)
    /* D0120 800DF920 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* D0124 800DF924 00000000 */  nop
    /* D0128 800DF928 10004014 */  bnez       $v0, .L800DF96C
    /* D012C 800DF92C C0100500 */   sll       $v0, $a1, 3
    /* D0130 800DF930 1180013C */  lui        $at, %hi(D_80113EDC)
    /* D0134 800DF934 21082300 */  addu       $at, $at, $v1
    /* D0138 800DF938 DC3E2280 */  lb         $v0, %lo(D_80113EDC)($at)
    /* D013C 800DF93C 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* D0140 800DF940 B4AC8424 */  addiu      $a0, $a0, %lo(D_8011ACB4)
    /* D0144 800DF944 0000838C */  lw         $v1, 0x0($a0)
    /* D0148 800DF948 00000000 */  nop
    /* D014C 800DF94C 07106200 */  srav       $v0, $v0, $v1
    /* D0150 800DF950 01004230 */  andi       $v0, $v0, 0x1
    /* D0154 800DF954 05004014 */  bnez       $v0, .L800DF96C
    /* D0158 800DF958 C0100500 */   sll       $v0, $a1, 3
    /* D015C 800DF95C 00008290 */  lbu        $v0, 0x0($a0)
    /* D0160 800DF960 00000000 */  nop
    /* D0164 800DF964 1C00A214 */  bne        $a1, $v0, .L800DF9D8
    /* D0168 800DF968 C0100500 */   sll       $v0, $a1, 3
  .L800DF96C:
    /* D016C 800DF96C 1180013C */  lui        $at, %hi(D_80117654)
    /* D0170 800DF970 21082200 */  addu       $at, $at, $v0
    /* D0174 800DF974 54762284 */  lh         $v0, %lo(D_80117654)($at)
    /* D0178 800DF978 00000000 */  nop
    /* D017C 800DF97C 40180200 */  sll        $v1, $v0, 1
    /* D0180 800DF980 21186200 */  addu       $v1, $v1, $v0
    /* D0184 800DF984 1180013C */  lui        $at, %hi(D_8010CB00)
    /* D0188 800DF988 21082300 */  addu       $at, $at, $v1
    /* D018C 800DF98C 00CB2290 */  lbu        $v0, %lo(D_8010CB00)($at)
    /* D0190 800DF990 00000000 */  nop
    /* D0194 800DF994 C2200200 */  srl        $a0, $v0, 3
    /* D0198 800DF998 1180013C */  lui        $at, %hi(D_8010CB01)
    /* D019C 800DF99C 21082300 */  addu       $at, $at, $v1
    /* D01A0 800DF9A0 01CB2290 */  lbu        $v0, %lo(D_8010CB01)($at)
    /* D01A4 800DF9A4 00000000 */  nop
    /* D01A8 800DF9A8 C2100200 */  srl        $v0, $v0, 3
    /* D01AC 800DF9AC 40110200 */  sll        $v0, $v0, 5
    /* D01B0 800DF9B0 25208200 */  or         $a0, $a0, $v0
    /* D01B4 800DF9B4 1180013C */  lui        $at, %hi(D_8010CB02)
    /* D01B8 800DF9B8 21082300 */  addu       $at, $at, $v1
    /* D01BC 800DF9BC 02CB2290 */  lbu        $v0, %lo(D_8010CB02)($at)
    /* D01C0 800DF9C0 00000000 */  nop
    /* D01C4 800DF9C4 C2100200 */  srl        $v0, $v0, 3
    /* D01C8 800DF9C8 80120200 */  sll        $v0, $v0, 10
    /* D01CC 800DF9CC 25208200 */  or         $a0, $a0, $v0
    /* D01D0 800DF9D0 7C7E0308 */  j          .L800DF9F0
    /* D01D4 800DF9D4 00808434 */   ori       $a0, $a0, 0x8000
  .L800DF9D8:
    /* D01D8 800DF9D8 21200002 */  addu       $a0, $s0, $zero
    /* D01DC 800DF9DC F760020C */  jal        func_800983DC
    /* D01E0 800DF9E0 21282002 */   addu      $a1, $s1, $zero
    /* D01E4 800DF9E4 02004014 */  bnez       $v0, .L800DF9F0
    /* D01E8 800DF9E8 00C00434 */   ori       $a0, $zero, 0xC000
    /* D01EC 800DF9EC 00820434 */  ori        $a0, $zero, 0x8200
  .L800DF9F0:
    /* D01F0 800DF9F0 21108000 */  addu       $v0, $a0, $zero
    /* D01F4 800DF9F4 1800BF8F */  lw         $ra, 0x18($sp)
    /* D01F8 800DF9F8 1400B18F */  lw         $s1, 0x14($sp)
    /* D01FC 800DF9FC 1000B08F */  lw         $s0, 0x10($sp)
    /* D0200 800DFA00 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D0204 800DFA04 0800E003 */  jr         $ra
    /* D0208 800DFA08 00000000 */   nop
endlabel func_800DF860
