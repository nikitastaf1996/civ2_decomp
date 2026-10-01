.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D6144, 0x130

glabel func_800D6144
    /* C6944 800D6144 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C6948 800D6148 1400BFAF */  sw         $ra, 0x14($sp)
    /* C694C 800D614C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C6950 800D6150 21808000 */  addu       $s0, $a0, $zero
    /* C6954 800D6154 CC00038E */  lw         $v1, 0xCC($s0)
    /* C6958 800D6158 02000586 */  lh         $a1, 0x2($s0)
    /* C695C 800D615C 00000486 */  lh         $a0, 0x0($s0)
    /* C6960 800D6160 02000224 */  addiu      $v0, $zero, 0x2
    /* C6964 800D6164 E40E02AE */  sw         $v0, 0xEE4($s0)
    /* C6968 800D6168 9A026224 */  addiu      $v0, $v1, 0x29A
    /* C696C 800D616C 2A10A200 */  slt        $v0, $a1, $v0
    /* C6970 800D6170 09004014 */  bnez       $v0, .L800D6198
    /* C6974 800D6174 BC016224 */   addiu     $v0, $v1, 0x1BC
    /* C6978 800D6178 40100300 */  sll        $v0, $v1, 1
    /* C697C 800D617C B9034224 */  addiu      $v0, $v0, 0x3B9
    /* C6980 800D6180 2A108200 */  slt        $v0, $a0, $v0
    /* C6984 800D6184 04004014 */  bnez       $v0, .L800D6198
    /* C6988 800D6188 BC016224 */   addiu     $v0, $v1, 0x1BC
    /* C698C 800D618C 03000224 */  addiu      $v0, $zero, 0x3
    /* C6990 800D6190 E40E02AE */  sw         $v0, 0xEE4($s0)
    /* C6994 800D6194 BC016224 */  addiu      $v0, $v1, 0x1BC
  .L800D6198:
    /* C6998 800D6198 2A10A200 */  slt        $v0, $a1, $v0
    /* C699C 800D619C 06004014 */  bnez       $v0, .L800D61B8
    /* C69A0 800D61A0 01000224 */   addiu     $v0, $zero, 0x1
    /* C69A4 800D61A4 40100300 */  sll        $v0, $v1, 1
    /* C69A8 800D61A8 7B024224 */  addiu      $v0, $v0, 0x27B
    /* C69AC 800D61AC 2A108200 */  slt        $v0, $a0, $v0
    /* C69B0 800D61B0 02004010 */  beqz       $v0, .L800D61BC
    /* C69B4 800D61B4 01000224 */   addiu     $v0, $zero, 0x1
  .L800D61B8:
    /* C69B8 800D61B8 E40E02AE */  sw         $v0, 0xEE4($s0)
  .L800D61BC:
    /* C69BC 800D61BC E40E028E */  lw         $v0, 0xEE4($s0)
    /* C69C0 800D61C0 00000000 */  nop
    /* C69C4 800D61C4 02004228 */  slti       $v0, $v0, 0x2
    /* C69C8 800D61C8 02004014 */  bnez       $v0, .L800D61D4
    /* C69CC 800D61CC 12000224 */   addiu     $v0, $zero, 0x12
    /* C69D0 800D61D0 18000224 */  addiu      $v0, $zero, 0x18
  .L800D61D4:
    /* C69D4 800D61D4 C80002AE */  sw         $v0, 0xC8($s0)
    /* C69D8 800D61D8 DC49020C */  jal        func_80092770
    /* C69DC 800D61DC 21200002 */   addu      $a0, $s0, $zero
    /* C69E0 800D61E0 DC00028E */  lw         $v0, 0xDC($s0)
    /* C69E4 800D61E4 00000000 */  nop
    /* C69E8 800D61E8 CC0E02AE */  sw         $v0, 0xECC($s0)
    /* C69EC 800D61EC E000028E */  lw         $v0, 0xE0($s0)
    /* C69F0 800D61F0 E241030C */  jal        func_800D0788
    /* C69F4 800D61F4 D00E02AE */   sw        $v0, 0xED0($s0)
    /* C69F8 800D61F8 7C020224 */  addiu      $v0, $zero, 0x27C
    /* C69FC 800D61FC CC0E038E */  lw         $v1, 0xECC($s0)
    /* C6A00 800D6200 00000000 */  nop
    /* C6A04 800D6204 2A104300 */  slt        $v0, $v0, $v1
    /* C6A08 800D6208 04004010 */  beqz       $v0, .L800D621C
    /* C6A0C 800D620C A5010424 */   addiu     $a0, $zero, 0x1A5
    /* C6A10 800D6210 84FD6224 */  addiu      $v0, $v1, -0x27C
    /* C6A14 800D6214 88580308 */  j          .L800D6220
    /* C6A18 800D6218 43100200 */   sra       $v0, $v0, 1
  .L800D621C:
    /* C6A1C 800D621C 21100000 */  addu       $v0, $zero, $zero
  .L800D6220:
    /* C6A20 800D6220 D40E02AE */  sw         $v0, 0xED4($s0)
    /* C6A24 800D6224 D00E038E */  lw         $v1, 0xED0($s0)
    /* C6A28 800D6228 00000000 */  nop
    /* C6A2C 800D622C 2A108300 */  slt        $v0, $a0, $v1
    /* C6A30 800D6230 03004010 */  beqz       $v0, .L800D6240
    /* C6A34 800D6234 23106400 */   subu      $v0, $v1, $a0
    /* C6A38 800D6238 91580308 */  j          .L800D6244
    /* C6A3C 800D623C 43100200 */   sra       $v0, $v0, 1
  .L800D6240:
    /* C6A40 800D6240 21100000 */  addu       $v0, $zero, $zero
  .L800D6244:
    /* C6A44 800D6244 D80E02AE */  sw         $v0, 0xED8($s0)
    /* C6A48 800D6248 D40E028E */  lw         $v0, 0xED4($s0)
    /* C6A4C 800D624C 00000000 */  nop
    /* C6A50 800D6250 DC0E02AE */  sw         $v0, 0xEDC($s0)
    /* C6A54 800D6254 D80E028E */  lw         $v0, 0xED8($s0)
    /* C6A58 800D6258 00000000 */  nop
    /* C6A5C 800D625C E00E02AE */  sw         $v0, 0xEE0($s0)
    /* C6A60 800D6260 1400BF8F */  lw         $ra, 0x14($sp)
    /* C6A64 800D6264 1000B08F */  lw         $s0, 0x10($sp)
    /* C6A68 800D6268 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C6A6C 800D626C 0800E003 */  jr         $ra
    /* C6A70 800D6270 00000000 */   nop
endlabel func_800D6144
