.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB5A4, 0x284

glabel func_800CB5A4
    /* BBDA4 800CB5A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BBDA8 800CB5A8 2000BFAF */  sw         $ra, 0x20($sp)
    /* BBDAC 800CB5AC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BBDB0 800CB5B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* BBDB4 800CB5B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* BBDB8 800CB5B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* BBDBC 800CB5BC 21808000 */  addu       $s0, $a0, $zero
    /* BBDC0 800CB5C0 EFE9030C */  jal        func_800FA7BC
    /* BBDC4 800CB5C4 2198A000 */   addu      $s3, $a1, $zero
    /* BBDC8 800CB5C8 100000AE */  sw         $zero, 0x10($s0)
    /* BBDCC 800CB5CC 140000AE */  sw         $zero, 0x14($s0)
    /* BBDD0 800CB5D0 180000AE */  sw         $zero, 0x18($s0)
    /* BBDD4 800CB5D4 1C0000AE */  sw         $zero, 0x1C($s0)
    /* BBDD8 800CB5D8 200000AE */  sw         $zero, 0x20($s0)
    /* BBDDC 800CB5DC 240000AE */  sw         $zero, 0x24($s0)
    /* BBDE0 800CB5E0 280000AE */  sw         $zero, 0x28($s0)
    /* BBDE4 800CB5E4 2C0000AE */  sw         $zero, 0x2C($s0)
    /* BBDE8 800CB5E8 300000AE */  sw         $zero, 0x30($s0)
    /* BBDEC 800CB5EC 340000AE */  sw         $zero, 0x34($s0)
    /* BBDF0 800CB5F0 380000AE */  sw         $zero, 0x38($s0)
    /* BBDF4 800CB5F4 3C0000AE */  sw         $zero, 0x3C($s0)
    /* BBDF8 800CB5F8 400000AE */  sw         $zero, 0x40($s0)
    /* BBDFC 800CB5FC 440000AE */  sw         $zero, 0x44($s0)
    /* BBE00 800CB600 480000AE */  sw         $zero, 0x48($s0)
    /* BBE04 800CB604 4C0000AE */  sw         $zero, 0x4C($s0)
    /* BBE08 800CB608 500000AE */  sw         $zero, 0x50($s0)
    /* BBE0C 800CB60C 540000AE */  sw         $zero, 0x54($s0)
    /* BBE10 800CB610 580000AE */  sw         $zero, 0x58($s0)
    /* BBE14 800CB614 5C0000AE */  sw         $zero, 0x5C($s0)
    /* BBE18 800CB618 600000AE */  sw         $zero, 0x60($s0)
    /* BBE1C 800CB61C 640000AE */  sw         $zero, 0x64($s0)
    /* BBE20 800CB620 680000AE */  sw         $zero, 0x68($s0)
    /* BBE24 800CB624 6C0000A6 */  sh         $zero, 0x6C($s0)
    /* BBE28 800CB628 6E0000A6 */  sh         $zero, 0x6E($s0)
    /* BBE2C 800CB62C 00401224 */  addiu      $s2, $zero, 0x4000
    /* BBE30 800CB630 700012A6 */  sh         $s2, 0x70($s0)
    /* BBE34 800CB634 720012A6 */  sh         $s2, 0x72($s0)
    /* BBE38 800CB638 7A0000A6 */  sh         $zero, 0x7A($s0)
    /* BBE3C 800CB63C 7C0000A6 */  sh         $zero, 0x7C($s0)
    /* BBE40 800CB640 740000A6 */  sh         $zero, 0x74($s0)
    /* BBE44 800CB644 01001124 */  addiu      $s1, $zero, 0x1
    /* BBE48 800CB648 760011A6 */  sh         $s1, 0x76($s0)
    /* BBE4C 800CB64C 780011A6 */  sh         $s1, 0x78($s0)
    /* BBE50 800CB650 9AE0030C */  jal        func_800F8268
    /* BBE54 800CB654 84000426 */   addiu     $a0, $s0, 0x84
    /* BBE58 800CB658 EFE9030C */  jal        func_800FA7BC
    /* BBE5C 800CB65C B0000426 */   addiu     $a0, $s0, 0xB0
    /* BBE60 800CB660 C00000AE */  sw         $zero, 0xC0($s0)
    /* BBE64 800CB664 C40000AE */  sw         $zero, 0xC4($s0)
    /* BBE68 800CB668 C80000AE */  sw         $zero, 0xC8($s0)
    /* BBE6C 800CB66C CC0000AE */  sw         $zero, 0xCC($s0)
    /* BBE70 800CB670 D00000AE */  sw         $zero, 0xD0($s0)
    /* BBE74 800CB674 D40000AE */  sw         $zero, 0xD4($s0)
    /* BBE78 800CB678 D80000AE */  sw         $zero, 0xD8($s0)
    /* BBE7C 800CB67C DC0000AE */  sw         $zero, 0xDC($s0)
    /* BBE80 800CB680 E00000AE */  sw         $zero, 0xE0($s0)
    /* BBE84 800CB684 E40000AE */  sw         $zero, 0xE4($s0)
    /* BBE88 800CB688 E80000AE */  sw         $zero, 0xE8($s0)
    /* BBE8C 800CB68C EC0000AE */  sw         $zero, 0xEC($s0)
    /* BBE90 800CB690 F00000AE */  sw         $zero, 0xF0($s0)
    /* BBE94 800CB694 F40000AE */  sw         $zero, 0xF4($s0)
    /* BBE98 800CB698 F80000AE */  sw         $zero, 0xF8($s0)
    /* BBE9C 800CB69C FC0000AE */  sw         $zero, 0xFC($s0)
    /* BBEA0 800CB6A0 000100AE */  sw         $zero, 0x100($s0)
    /* BBEA4 800CB6A4 040100AE */  sw         $zero, 0x104($s0)
    /* BBEA8 800CB6A8 080100AE */  sw         $zero, 0x108($s0)
    /* BBEAC 800CB6AC 0C0100AE */  sw         $zero, 0x10C($s0)
    /* BBEB0 800CB6B0 100100AE */  sw         $zero, 0x110($s0)
    /* BBEB4 800CB6B4 140100AE */  sw         $zero, 0x114($s0)
    /* BBEB8 800CB6B8 180100AE */  sw         $zero, 0x118($s0)
    /* BBEBC 800CB6BC 1C0100A6 */  sh         $zero, 0x11C($s0)
    /* BBEC0 800CB6C0 1E0100A6 */  sh         $zero, 0x11E($s0)
    /* BBEC4 800CB6C4 200112A6 */  sh         $s2, 0x120($s0)
    /* BBEC8 800CB6C8 220112A6 */  sh         $s2, 0x122($s0)
    /* BBECC 800CB6CC 2A0100A6 */  sh         $zero, 0x12A($s0)
    /* BBED0 800CB6D0 2C0100A6 */  sh         $zero, 0x12C($s0)
    /* BBED4 800CB6D4 240100A6 */  sh         $zero, 0x124($s0)
    /* BBED8 800CB6D8 260111A6 */  sh         $s1, 0x126($s0)
    /* BBEDC 800CB6DC 280111A6 */  sh         $s1, 0x128($s0)
    /* BBEE0 800CB6E0 340100AE */  sw         $zero, 0x134($s0)
    /* BBEE4 800CB6E4 380100AE */  sw         $zero, 0x138($s0)
    /* BBEE8 800CB6E8 3C0100AE */  sw         $zero, 0x13C($s0)
    /* BBEEC 800CB6EC 01000224 */  addiu      $v0, $zero, 0x1
    /* BBEF0 800CB6F0 400102A2 */  sb         $v0, 0x140($s0)
    /* BBEF4 800CB6F4 0180023C */  lui        $v0, %hi(D_800138BC)
    /* BBEF8 800CB6F8 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* BBEFC 800CB6FC AC0002AE */  sw         $v0, 0xAC($s0)
    /* BBF00 800CB700 340100AE */  sw         $zero, 0x134($s0)
    /* BBF04 800CB704 440100AE */  sw         $zero, 0x144($s0)
    /* BBF08 800CB708 F4031126 */  addiu      $s1, $s0, 0x3F4
    /* BBF0C 800CB70C 9AE0030C */  jal        func_800F8268
    /* BBF10 800CB710 21202002 */   addu      $a0, $s1, $zero
    /* BBF14 800CB714 9AE0030C */  jal        func_800F8268
    /* BBF18 800CB718 20040426 */   addiu     $a0, $s0, 0x420
    /* BBF1C 800CB71C FCEC030C */  jal        func_800FB3F0
    /* BBF20 800CB720 4C040426 */   addiu     $a0, $s0, 0x44C
    /* BBF24 800CB724 FCEC030C */  jal        func_800FB3F0
    /* BBF28 800CB728 F0040426 */   addiu     $a0, $s0, 0x4F0
    /* BBF2C 800CB72C FCEC030C */  jal        func_800FB3F0
    /* BBF30 800CB730 84050426 */   addiu     $a0, $s0, 0x584
    /* BBF34 800CB734 FCEC030C */  jal        func_800FB3F0
    /* BBF38 800CB738 18060426 */   addiu     $a0, $s0, 0x618
    /* BBF3C 800CB73C FCEC030C */  jal        func_800FB3F0
    /* BBF40 800CB740 AC060426 */   addiu     $a0, $s0, 0x6AC
    /* BBF44 800CB744 FCEC030C */  jal        func_800FB3F0
    /* BBF48 800CB748 40070426 */   addiu     $a0, $s0, 0x740
    /* BBF4C 800CB74C FCEC030C */  jal        func_800FB3F0
    /* BBF50 800CB750 D4070426 */   addiu     $a0, $s0, 0x7D4
    /* BBF54 800CB754 FCEC030C */  jal        func_800FB3F0
    /* BBF58 800CB758 68080426 */   addiu     $a0, $s0, 0x868
    /* BBF5C 800CB75C C12B030C */  jal        func_800CAF04
    /* BBF60 800CB760 00090426 */   addiu     $a0, $s0, 0x900
    /* BBF64 800CB764 480113A6 */  sh         $s3, 0x148($s0)
    /* BBF68 800CB768 5C0100A6 */  sh         $zero, 0x15C($s0)
    /* BBF6C 800CB76C 221B040C */  jal        func_80106C88
    /* BBF70 800CB770 4C010426 */   addiu     $a0, $s0, 0x14C
    /* BBF74 800CB774 E60300A6 */  sh         $zero, 0x3E6($s0)
    /* BBF78 800CB778 B80C90AF */  sw         $s0, %gp_rel(D_80159190)($gp)
    /* BBF7C 800CB77C F00300A6 */  sh         $zero, 0x3F0($s0)
    /* BBF80 800CB780 F20300A6 */  sh         $zero, 0x3F2($s0)
    /* BBF84 800CB784 21202002 */  addu       $a0, $s1, $zero
    /* BBF88 800CB788 E4000524 */  addiu      $a1, $zero, 0xE4
    /* BBF8C 800CB78C F3E0030C */  jal        func_800F83CC
    /* BBF90 800CB790 98000624 */   addiu     $a2, $zero, 0x98
    /* BBF94 800CB794 1004048E */  lw         $a0, 0x410($s0)
    /* BBF98 800CB798 00000000 */  nop
    /* BBF9C 800CB79C 0C008424 */  addiu      $a0, $a0, 0xC
    /* BBFA0 800CB7A0 21280000 */  addu       $a1, $zero, $zero
    /* BBFA4 800CB7A4 21300000 */  addu       $a2, $zero, $zero
    /* BBFA8 800CB7A8 8D8D030C */  jal        ClearImage
    /* BBFAC 800CB7AC 21380000 */   addu      $a3, $zero, $zero
    /* BBFB0 800CB7B0 600100A6 */  sh         $zero, 0x160($s0)
    /* BBFB4 800CB7B4 5C0100A6 */  sh         $zero, 0x15C($s0)
    /* BBFB8 800CB7B8 5E0100A6 */  sh         $zero, 0x15E($s0)
    /* BBFBC 800CB7BC 0A000224 */  addiu      $v0, $zero, 0xA
    /* BBFC0 800CB7C0 540102A6 */  sh         $v0, 0x154($s0)
    /* BBFC4 800CB7C4 14000224 */  addiu      $v0, $zero, 0x14
    /* BBFC8 800CB7C8 560102A6 */  sh         $v0, 0x156($s0)
    /* BBFCC 800CB7CC 2C010224 */  addiu      $v0, $zero, 0x12C
    /* BBFD0 800CB7D0 580102A6 */  sh         $v0, 0x158($s0)
    /* BBFD4 800CB7D4 DF010224 */  addiu      $v0, $zero, 0x1DF
    /* BBFD8 800CB7D8 5A0102A6 */  sh         $v0, 0x15A($s0)
    /* BBFDC 800CB7DC 841500AE */  sw         $zero, 0x1584($s0)
    /* BBFE0 800CB7E0 FC0800AE */  sw         $zero, 0x8FC($s0)
    /* BBFE4 800CB7E4 881500AE */  sw         $zero, 0x1588($s0)
    /* BBFE8 800CB7E8 8C1500AE */  sw         $zero, 0x158C($s0)
    /* BBFEC 800CB7EC 901500AE */  sw         $zero, 0x1590($s0)
    /* BBFF0 800CB7F0 E40400AE */  sw         $zero, 0x4E4($s0)
    /* BBFF4 800CB7F4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* BBFF8 800CB7F8 E80402A6 */  sh         $v0, 0x4E8($s0)
    /* BBFFC 800CB7FC EC0400A6 */  sh         $zero, 0x4EC($s0)
    /* BC000 800CB800 EA0400A6 */  sh         $zero, 0x4EA($s0)
    /* BC004 800CB804 21100002 */  addu       $v0, $s0, $zero
    /* BC008 800CB808 2000BF8F */  lw         $ra, 0x20($sp)
    /* BC00C 800CB80C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BC010 800CB810 1800B28F */  lw         $s2, 0x18($sp)
    /* BC014 800CB814 1400B18F */  lw         $s1, 0x14($sp)
    /* BC018 800CB818 1000B08F */  lw         $s0, 0x10($sp)
    /* BC01C 800CB81C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* BC020 800CB820 0800E003 */  jr         $ra
    /* BC024 800CB824 00000000 */   nop
endlabel func_800CB5A4
