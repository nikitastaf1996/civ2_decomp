.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001BF20, 0x11C

glabel func_8001BF20
    /* C720 8001BF20 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C724 8001BF24 2000BFAF */  sw         $ra, 0x20($sp)
    /* C728 8001BF28 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C72C 8001BF2C 1800B2AF */  sw         $s2, 0x18($sp)
    /* C730 8001BF30 1400B1AF */  sw         $s1, 0x14($sp)
    /* C734 8001BF34 1000B0AF */  sw         $s0, 0x10($sp)
    /* C738 8001BF38 21880000 */  addu       $s1, $zero, $zero
    /* C73C 8001BF3C 1480133C */  lui        $s3, %hi(D_80139D08)
    /* C740 8001BF40 089D7326 */  addiu      $s3, $s3, %lo(D_80139D08)
    /* C744 8001BF44 1780123C */  lui        $s2, %hi(D_80177748)
    /* C748 8001BF48 48775226 */  addiu      $s2, $s2, %lo(D_80177748)
    /* C74C 8001BF4C 00141100 */  sll        $v0, $s1, 16
  .L8001BF50:
    /* C750 8001BF50 03840200 */  sra        $s0, $v0, 16
    /* C754 8001BF54 80101000 */  sll        $v0, $s0, 2
    /* C758 8001BF58 21105300 */  addu       $v0, $v0, $s3
    /* C75C 8001BF5C 0000428C */  lw         $v0, 0x0($v0)
    /* C760 8001BF60 00000000 */  nop
    /* C764 8001BF64 0F004010 */  beqz       $v0, .L8001BFA4
    /* C768 8001BF68 21200000 */   addu      $a0, $zero, $zero
    /* C76C 8001BF6C 8BF7000C */  jal        SsSetMVol
    /* C770 8001BF70 21280000 */   addu      $a1, $zero, $zero
    /* C774 8001BF74 40801000 */  sll        $s0, $s0, 1
    /* C778 8001BF78 21801202 */  addu       $s0, $s0, $s2
    /* C77C 8001BF7C 00000486 */  lh         $a0, 0x0($s0)
    /* C780 8001BF80 21280000 */  addu       $a1, $zero, $zero
    /* C784 8001BF84 2FFF000C */  jal        SsSeqSetVol
    /* C788 8001BF88 21300000 */   addu      $a2, $zero, $zero
    /* C78C 8001BF8C 00000486 */  lh         $a0, 0x0($s0)
    /* C790 8001BF90 AFFD000C */  jal        SsSeqStop
    /* C794 8001BF94 00000000 */   nop
    /* C798 8001BF98 00000486 */  lh         $a0, 0x0($s0)
    /* C79C 8001BF9C 4EEB000C */  jal        SsSeqClose
    /* C7A0 8001BFA0 00000000 */   nop
  .L8001BFA4:
    /* C7A4 8001BFA4 01002226 */  addiu      $v0, $s1, 0x1
    /* C7A8 8001BFA8 21884000 */  addu       $s1, $v0, $zero
    /* C7AC 8001BFAC 00140200 */  sll        $v0, $v0, 16
    /* C7B0 8001BFB0 03140200 */  sra        $v0, $v0, 16
    /* C7B4 8001BFB4 08004228 */  slti       $v0, $v0, 0x8
    /* C7B8 8001BFB8 E5FF4014 */  bnez       $v0, .L8001BF50
    /* C7BC 8001BFBC 00141100 */   sll       $v0, $s1, 16
    /* C7C0 8001BFC0 21200000 */  addu       $a0, $zero, $zero
    /* C7C4 8001BFC4 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* C7C8 8001BFC8 7FEA000C */  jal        SpuSetKey
    /* C7CC 8001BFCC FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* C7D0 8001BFD0 63EB000C */  jal        SsEnd
    /* C7D4 8001BFD4 21880000 */   addu      $s1, $zero, $zero
    /* C7D8 8001BFD8 1480053C */  lui        $a1, %hi(D_80139D08)
    /* C7DC 8001BFDC 089DA524 */  addiu      $a1, $a1, %lo(D_80139D08)
    /* C7E0 8001BFE0 1480043C */  lui        $a0, %hi(D_80139D30)
    /* C7E4 8001BFE4 309D8424 */  addiu      $a0, $a0, %lo(D_80139D30)
    /* C7E8 8001BFE8 00141100 */  sll        $v0, $s1, 16
  .L8001BFEC:
    /* C7EC 8001BFEC 83130200 */  sra        $v0, $v0, 14
    /* C7F0 8001BFF0 21184500 */  addu       $v1, $v0, $a1
    /* C7F4 8001BFF4 000060AC */  sw         $zero, 0x0($v1)
    /* C7F8 8001BFF8 21104400 */  addu       $v0, $v0, $a0
    /* C7FC 8001BFFC 000040AC */  sw         $zero, 0x0($v0)
    /* C800 8001C000 01002226 */  addiu      $v0, $s1, 0x1
    /* C804 8001C004 21884000 */  addu       $s1, $v0, $zero
    /* C808 8001C008 00140200 */  sll        $v0, $v0, 16
    /* C80C 8001C00C 03140200 */  sra        $v0, $v0, 16
    /* C810 8001C010 08004228 */  slti       $v0, $v0, 0x8
    /* C814 8001C014 F5FF4014 */  bnez       $v0, .L8001BFEC
    /* C818 8001C018 00141100 */   sll       $v0, $s1, 16
    /* C81C 8001C01C 2000BF8F */  lw         $ra, 0x20($sp)
    /* C820 8001C020 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C824 8001C024 1800B28F */  lw         $s2, 0x18($sp)
    /* C828 8001C028 1400B18F */  lw         $s1, 0x14($sp)
    /* C82C 8001C02C 1000B08F */  lw         $s0, 0x10($sp)
    /* C830 8001C030 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C834 8001C034 0800E003 */  jr         $ra
    /* C838 8001C038 00000000 */   nop
endlabel func_8001BF20
