.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001BE14, 0x10C

glabel func_8001BE14
    /* C614 8001BE14 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C618 8001BE18 2000BFAF */  sw         $ra, 0x20($sp)
    /* C61C 8001BE1C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C620 8001BE20 1800B2AF */  sw         $s2, 0x18($sp)
    /* C624 8001BE24 1400B1AF */  sw         $s1, 0x14($sp)
    /* C628 8001BE28 1000B0AF */  sw         $s0, 0x10($sp)
    /* C62C 8001BE2C 21880000 */  addu       $s1, $zero, $zero
    /* C630 8001BE30 0D80133C */  lui        $s3, %hi(D_800CC1C8)
    /* C634 8001BE34 C8C17326 */  addiu      $s3, $s3, %lo(D_800CC1C8)
    /* C638 8001BE38 1780123C */  lui        $s2, %hi(D_80177748)
    /* C63C 8001BE3C 48775226 */  addiu      $s2, $s2, %lo(D_80177748)
    /* C640 8001BE40 00141100 */  sll        $v0, $s1, 16
  .L8001BE44:
    /* C644 8001BE44 03840200 */  sra        $s0, $v0, 16
    /* C648 8001BE48 80101000 */  sll        $v0, $s0, 2
    /* C64C 8001BE4C 21105300 */  addu       $v0, $v0, $s3
    /* C650 8001BE50 0000428C */  lw         $v0, 0x0($v0)
    /* C654 8001BE54 00000000 */  nop
    /* C658 8001BE58 0F004010 */  beqz       $v0, .L8001BE98
    /* C65C 8001BE5C 21200000 */   addu      $a0, $zero, $zero
    /* C660 8001BE60 8BF7000C */  jal        SsSetMVol
    /* C664 8001BE64 21280000 */   addu      $a1, $zero, $zero
    /* C668 8001BE68 40801000 */  sll        $s0, $s0, 1
    /* C66C 8001BE6C 21801202 */  addu       $s0, $s0, $s2
    /* C670 8001BE70 00000486 */  lh         $a0, 0x0($s0)
    /* C674 8001BE74 21280000 */  addu       $a1, $zero, $zero
    /* C678 8001BE78 2FFF000C */  jal        SsSeqSetVol
    /* C67C 8001BE7C 21300000 */   addu      $a2, $zero, $zero
    /* C680 8001BE80 00000486 */  lh         $a0, 0x0($s0)
    /* C684 8001BE84 AFFD000C */  jal        SsSeqStop
    /* C688 8001BE88 00000000 */   nop
    /* C68C 8001BE8C 00000486 */  lh         $a0, 0x0($s0)
    /* C690 8001BE90 4EEB000C */  jal        SsSeqClose
    /* C694 8001BE94 00000000 */   nop
  .L8001BE98:
    /* C698 8001BE98 01002226 */  addiu      $v0, $s1, 0x1
    /* C69C 8001BE9C 21884000 */  addu       $s1, $v0, $zero
    /* C6A0 8001BEA0 00140200 */  sll        $v0, $v0, 16
    /* C6A4 8001BEA4 03140200 */  sra        $v0, $v0, 16
    /* C6A8 8001BEA8 08004228 */  slti       $v0, $v0, 0x8
    /* C6AC 8001BEAC E5FF4014 */  bnez       $v0, .L8001BE44
    /* C6B0 8001BEB0 00141100 */   sll       $v0, $s1, 16
    /* C6B4 8001BEB4 21200000 */  addu       $a0, $zero, $zero
    /* C6B8 8001BEB8 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* C6BC 8001BEBC 7FEA000C */  jal        SpuSetKey
    /* C6C0 8001BEC0 FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* C6C4 8001BEC4 63EB000C */  jal        SsEnd
    /* C6C8 8001BEC8 21880000 */   addu      $s1, $zero, $zero
    /* C6CC 8001BECC 0D80033C */  lui        $v1, %hi(D_800CC1C8)
    /* C6D0 8001BED0 C8C16324 */  addiu      $v1, $v1, %lo(D_800CC1C8)
    /* C6D4 8001BED4 00141100 */  sll        $v0, $s1, 16
  .L8001BED8:
    /* C6D8 8001BED8 83130200 */  sra        $v0, $v0, 14
    /* C6DC 8001BEDC 21104300 */  addu       $v0, $v0, $v1
    /* C6E0 8001BEE0 000040AC */  sw         $zero, 0x0($v0)
    /* C6E4 8001BEE4 01002226 */  addiu      $v0, $s1, 0x1
    /* C6E8 8001BEE8 21884000 */  addu       $s1, $v0, $zero
    /* C6EC 8001BEEC 00140200 */  sll        $v0, $v0, 16
    /* C6F0 8001BEF0 03140200 */  sra        $v0, $v0, 16
    /* C6F4 8001BEF4 08004228 */  slti       $v0, $v0, 0x8
    /* C6F8 8001BEF8 F7FF4014 */  bnez       $v0, .L8001BED8
    /* C6FC 8001BEFC 00141100 */   sll       $v0, $s1, 16
    /* C700 8001BF00 2000BF8F */  lw         $ra, 0x20($sp)
    /* C704 8001BF04 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C708 8001BF08 1800B28F */  lw         $s2, 0x18($sp)
    /* C70C 8001BF0C 1400B18F */  lw         $s1, 0x14($sp)
    /* C710 8001BF10 1000B08F */  lw         $s0, 0x10($sp)
    /* C714 8001BF14 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C718 8001BF18 0800E003 */  jr         $ra
    /* C71C 8001BF1C 00000000 */   nop
endlabel func_8001BE14
