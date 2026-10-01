.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E01AC, 0xBC

glabel func_800E01AC
    /* D09AC 800E01AC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* D09B0 800E01B0 2400BFAF */  sw         $ra, 0x24($sp)
    /* D09B4 800E01B4 2000B4AF */  sw         $s4, 0x20($sp)
    /* D09B8 800E01B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D09BC 800E01BC 1800B2AF */  sw         $s2, 0x18($sp)
    /* D09C0 800E01C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* D09C4 800E01C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* D09C8 800E01C8 21908000 */  addu       $s2, $a0, $zero
    /* D09CC 800E01CC 2188A000 */  addu       $s1, $a1, $zero
    /* D09D0 800E01D0 2180C000 */  addu       $s0, $a2, $zero
    /* D09D4 800E01D4 2198E000 */  addu       $s3, $a3, $zero
    /* D09D8 800E01D8 3800B48F */  lw         $s4, 0x38($sp)
    /* D09DC 800E01DC AD87030C */  jal        func_800E1EB4
    /* D09E0 800E01E0 21202002 */   addu      $a0, $s1, $zero
    /* D09E4 800E01E4 40180200 */  sll        $v1, $v0, 1
    /* D09E8 800E01E8 21186200 */  addu       $v1, $v1, $v0
    /* D09EC 800E01EC B40D828F */  lw         $v0, %gp_rel(D_8015928C)($gp)
    /* D09F0 800E01F0 00000000 */  nop
    /* D09F4 800E01F4 08004004 */  bltz       $v0, .L800E0218
    /* D09F8 800E01F8 40180300 */   sll       $v1, $v1, 1
    /* D09FC 800E01FC B80D828F */  lw         $v0, %gp_rel(D_80159290)($gp)
    /* D0A00 800E0200 00000000 */  nop
    /* D0A04 800E0204 0300401C */  bgtz       $v0, .L800E0214
    /* D0A08 800E0208 00000000 */   nop
    /* D0A0C 800E020C 86800308 */  j          .L800E0218
    /* D0A10 800E0210 23186200 */   subu      $v1, $v1, $v0
  .L800E0214:
    /* D0A14 800E0214 21186200 */  addu       $v1, $v1, $v0
  .L800E0218:
    /* D0A18 800E0218 C00D828F */  lw         $v0, %gp_rel(D_80159298)($gp)
    /* D0A1C 800E021C 00000000 */  nop
    /* D0A20 800E0220 21186200 */  addu       $v1, $v1, $v0
    /* D0A24 800E0224 21801402 */  addu       $s0, $s0, $s4
    /* D0A28 800E0228 23800302 */  subu       $s0, $s0, $v1
    /* D0A2C 800E022C 21204002 */  addu       $a0, $s2, $zero
    /* D0A30 800E0230 21282002 */  addu       $a1, $s1, $zero
    /* D0A34 800E0234 21300002 */  addu       $a2, $s0, $zero
    /* D0A38 800E0238 2A80030C */  jal        func_800E00A8
    /* D0A3C 800E023C 21386002 */   addu      $a3, $s3, $zero
    /* D0A40 800E0240 21100002 */  addu       $v0, $s0, $zero
    /* D0A44 800E0244 2400BF8F */  lw         $ra, 0x24($sp)
    /* D0A48 800E0248 2000B48F */  lw         $s4, 0x20($sp)
    /* D0A4C 800E024C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* D0A50 800E0250 1800B28F */  lw         $s2, 0x18($sp)
    /* D0A54 800E0254 1400B18F */  lw         $s1, 0x14($sp)
    /* D0A58 800E0258 1000B08F */  lw         $s0, 0x10($sp)
    /* D0A5C 800E025C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* D0A60 800E0260 0800E003 */  jr         $ra
    /* D0A64 800E0264 00000000 */   nop
endlabel func_800E01AC
  alabel D_800E0268
    /* D0A68 800E0268 00000000 */  nop
