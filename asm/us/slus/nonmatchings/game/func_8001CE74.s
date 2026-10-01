.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CE74, 0x330

glabel func_8001CE74
    /* D674 8001CE74 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* D678 8001CE78 3000BFAF */  sw         $ra, 0x30($sp)
    /* D67C 8001CE7C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* D680 8001CE80 2800B6AF */  sw         $s6, 0x28($sp)
    /* D684 8001CE84 2400B5AF */  sw         $s5, 0x24($sp)
    /* D688 8001CE88 2000B4AF */  sw         $s4, 0x20($sp)
    /* D68C 8001CE8C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D690 8001CE90 1800B2AF */  sw         $s2, 0x18($sp)
    /* D694 8001CE94 1400B1AF */  sw         $s1, 0x14($sp)
    /* D698 8001CE98 1000B0AF */  sw         $s0, 0x10($sp)
    /* D69C 8001CE9C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* D6A0 8001CEA0 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* D6A4 8001CEA4 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* D6A8 8001CEA8 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* D6AC 8001CEAC 1D6C000C */  jal        func_8001B074
    /* D6B0 8001CEB0 0C000624 */   addiu     $a2, $zero, 0xC
    /* D6B4 8001CEB4 74000224 */  addiu      $v0, $zero, 0x74
    /* D6B8 8001CEB8 1380013C */  lui        $at, %hi(D_8012A294)
    /* D6BC 8001CEBC 94A222A4 */  sh         $v0, %lo(D_8012A294)($at)
    /* D6C0 8001CEC0 68000224 */  addiu      $v0, $zero, 0x68
    /* D6C4 8001CEC4 1380013C */  lui        $at, %hi(D_8012A296)
    /* D6C8 8001CEC8 96A222A4 */  sh         $v0, %lo(D_8012A296)($at)
    /* D6CC 8001CECC 50001324 */  addiu      $s3, $zero, 0x50
    /* D6D0 8001CED0 1380013C */  lui        $at, %hi(D_8012A298)
    /* D6D4 8001CED4 98A233A4 */  sh         $s3, %lo(D_8012A298)($at)
    /* D6D8 8001CED8 18001224 */  addiu      $s2, $zero, 0x18
    /* D6DC 8001CEDC 1380013C */  lui        $at, %hi(D_8012A29A)
    /* D6E0 8001CEE0 9AA232A4 */  sh         $s2, %lo(D_8012A29A)($at)
    /* D6E4 8001CEE4 58001624 */  addiu      $s6, $zero, 0x58
    /* D6E8 8001CEE8 1380013C */  lui        $at, %hi(D_8012A29E)
    /* D6EC 8001CEEC 9EA236A0 */  sb         $s6, %lo(D_8012A29E)($at)
    /* D6F0 8001CEF0 50000224 */  addiu      $v0, $zero, 0x50
    /* D6F4 8001CEF4 1380013C */  lui        $at, %hi(D_8012A29F)
    /* D6F8 8001CEF8 9FA222A0 */  sb         $v0, %lo(D_8012A29F)($at)
    /* D6FC 8001CEFC 1380013C */  lui        $at, %hi(D_8012A2AA)
    /* D700 8001CF00 AAA232A4 */  sh         $s2, %lo(D_8012A2AA)($at)
    /* D704 8001CF04 1380013C */  lui        $at, %hi(D_8012A2AE)
    /* D708 8001CF08 AEA220A4 */  sh         $zero, %lo(D_8012A2AE)($at)
    /* D70C 8001CF0C 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* D710 8001CF10 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* D714 8001CF14 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* D718 8001CF18 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* D71C 8001CF1C 1D6C000C */  jal        func_8001B074
    /* D720 8001CF20 0D000624 */   addiu     $a2, $zero, 0xD
    /* D724 8001CF24 9C001424 */  addiu      $s4, $zero, 0x9C
    /* D728 8001CF28 1380013C */  lui        $at, %hi(D_8012A2B8)
    /* D72C 8001CF2C B8A234A4 */  sh         $s4, %lo(D_8012A2B8)($at)
    /* D730 8001CF30 88000224 */  addiu      $v0, $zero, 0x88
    /* D734 8001CF34 1380013C */  lui        $at, %hi(D_8012A2BA)
    /* D738 8001CF38 BAA222A4 */  sh         $v0, %lo(D_8012A2BA)($at)
    /* D73C 8001CF3C 1380013C */  lui        $at, %hi(D_8012A2BC)
    /* D740 8001CF40 BCA233A4 */  sh         $s3, %lo(D_8012A2BC)($at)
    /* D744 8001CF44 1380013C */  lui        $at, %hi(D_8012A2BE)
    /* D748 8001CF48 BEA232A4 */  sh         $s2, %lo(D_8012A2BE)($at)
    /* D74C 8001CF4C 1380013C */  lui        $at, %hi(D_8012A2C2)
    /* D750 8001CF50 C2A236A0 */  sb         $s6, %lo(D_8012A2C2)($at)
    /* D754 8001CF54 68000224 */  addiu      $v0, $zero, 0x68
    /* D758 8001CF58 1380013C */  lui        $at, %hi(D_8012A2C3)
    /* D75C 8001CF5C C3A222A0 */  sb         $v0, %lo(D_8012A2C3)($at)
    /* D760 8001CF60 28001724 */  addiu      $s7, $zero, 0x28
    /* D764 8001CF64 1380013C */  lui        $at, %hi(D_8012A2CC)
    /* D768 8001CF68 CCA237A4 */  sh         $s7, %lo(D_8012A2CC)($at)
    /* D76C 8001CF6C 1380013C */  lui        $at, %hi(D_8012A2CE)
    /* D770 8001CF70 CEA232A4 */  sh         $s2, %lo(D_8012A2CE)($at)
    /* D774 8001CF74 000F1524 */  addiu      $s5, $zero, 0xF00
    /* D778 8001CF78 1380013C */  lui        $at, %hi(D_8012A2D0)
    /* D77C 8001CF7C D0A235A4 */  sh         $s5, %lo(D_8012A2D0)($at)
    /* D780 8001CF80 1380013C */  lui        $at, %hi(D_8012A2D2)
    /* D784 8001CF84 D2A220A4 */  sh         $zero, %lo(D_8012A2D2)($at)
    /* D788 8001CF88 1380113C */  lui        $s1, %hi(D_8012A0E0)
    /* D78C 8001CF8C E0A03126 */  addiu      $s1, $s1, %lo(D_8012A0E0)
    /* D790 8001CF90 40001024 */  addiu      $s0, $zero, 0x40
    /* D794 8001CF94 EA0130A2 */  sb         $s0, 0x1EA($s1)
    /* D798 8001CF98 E90130A2 */  sb         $s0, 0x1E9($s1)
    /* D79C 8001CF9C 1380013C */  lui        $at, %hi(D_8012A2C8)
    /* D7A0 8001CFA0 C8A230A0 */  sb         $s0, %lo(D_8012A2C8)($at)
    /* D7A4 8001CFA4 21202002 */  addu       $a0, $s1, $zero
    /* D7A8 8001CFA8 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* D7AC 8001CFAC E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* D7B0 8001CFB0 1D6C000C */  jal        func_8001B074
    /* D7B4 8001CFB4 0E000624 */   addiu     $a2, $zero, 0xE
    /* D7B8 8001CFB8 1380013C */  lui        $at, %hi(D_8012A2DC)
    /* D7BC 8001CFBC DCA234A4 */  sh         $s4, %lo(D_8012A2DC)($at)
    /* D7C0 8001CFC0 A8000224 */  addiu      $v0, $zero, 0xA8
    /* D7C4 8001CFC4 1380013C */  lui        $at, %hi(D_8012A2DE)
    /* D7C8 8001CFC8 DEA222A4 */  sh         $v0, %lo(D_8012A2DE)($at)
    /* D7CC 8001CFCC 1380013C */  lui        $at, %hi(D_8012A2E0)
    /* D7D0 8001CFD0 E0A233A4 */  sh         $s3, %lo(D_8012A2E0)($at)
    /* D7D4 8001CFD4 1380013C */  lui        $at, %hi(D_8012A2E2)
    /* D7D8 8001CFD8 E2A232A4 */  sh         $s2, %lo(D_8012A2E2)($at)
    /* D7DC 8001CFDC 1380013C */  lui        $at, %hi(D_8012A2E6)
    /* D7E0 8001CFE0 E6A236A0 */  sb         $s6, %lo(D_8012A2E6)($at)
    /* D7E4 8001CFE4 80000224 */  addiu      $v0, $zero, 0x80
    /* D7E8 8001CFE8 1380013C */  lui        $at, %hi(D_8012A2E7)
    /* D7EC 8001CFEC E7A222A0 */  sb         $v0, %lo(D_8012A2E7)($at)
    /* D7F0 8001CFF0 1380013C */  lui        $at, %hi(D_8012A2F0)
    /* D7F4 8001CFF4 F0A237A4 */  sh         $s7, %lo(D_8012A2F0)($at)
    /* D7F8 8001CFF8 1380013C */  lui        $at, %hi(D_8012A2F2)
    /* D7FC 8001CFFC F2A232A4 */  sh         $s2, %lo(D_8012A2F2)($at)
    /* D800 8001D000 1380013C */  lui        $at, %hi(D_8012A2F4)
    /* D804 8001D004 F4A235A4 */  sh         $s5, %lo(D_8012A2F4)($at)
    /* D808 8001D008 1380013C */  lui        $at, %hi(D_8012A2F6)
    /* D80C 8001D00C F6A220A4 */  sh         $zero, %lo(D_8012A2F6)($at)
    /* D810 8001D010 0E0230A2 */  sb         $s0, 0x20E($s1)
    /* D814 8001D014 0D0230A2 */  sb         $s0, 0x20D($s1)
    /* D818 8001D018 1380013C */  lui        $at, %hi(D_8012A2EC)
    /* D81C 8001D01C ECA230A0 */  sb         $s0, %lo(D_8012A2EC)($at)
    /* D820 8001D020 21202002 */  addu       $a0, $s1, $zero
    /* D824 8001D024 1580053C */  lui        $a1, %hi(D_8014C1E4)
    /* D828 8001D028 E4C1A524 */  addiu      $a1, $a1, %lo(D_8014C1E4)
    /* D82C 8001D02C 1D6C000C */  jal        func_8001B074
    /* D830 8001D030 0F000624 */   addiu     $a2, $zero, 0xF
    /* D834 8001D034 1380013C */  lui        $at, %hi(D_8012A300)
    /* D838 8001D038 00A334A4 */  sh         $s4, %lo(D_8012A300)($at)
    /* D83C 8001D03C C8000224 */  addiu      $v0, $zero, 0xC8
    /* D840 8001D040 1380013C */  lui        $at, %hi(D_8012A302)
    /* D844 8001D044 02A322A4 */  sh         $v0, %lo(D_8012A302)($at)
    /* D848 8001D048 60000224 */  addiu      $v0, $zero, 0x60
    /* D84C 8001D04C 1380013C */  lui        $at, %hi(D_8012A304)
    /* D850 8001D050 04A322A4 */  sh         $v0, %lo(D_8012A304)($at)
    /* D854 8001D054 1380013C */  lui        $at, %hi(D_8012A306)
    /* D858 8001D058 06A332A4 */  sh         $s2, %lo(D_8012A306)($at)
    /* D85C 8001D05C 1380013C */  lui        $at, %hi(D_8012A30A)
    /* D860 8001D060 0AA336A0 */  sb         $s6, %lo(D_8012A30A)($at)
    /* D864 8001D064 98000224 */  addiu      $v0, $zero, 0x98
    /* D868 8001D068 1380013C */  lui        $at, %hi(D_8012A30B)
    /* D86C 8001D06C 0BA322A0 */  sb         $v0, %lo(D_8012A30B)($at)
    /* D870 8001D070 30000224 */  addiu      $v0, $zero, 0x30
    /* D874 8001D074 1380013C */  lui        $at, %hi(D_8012A314)
    /* D878 8001D078 14A322A4 */  sh         $v0, %lo(D_8012A314)($at)
    /* D87C 8001D07C 1380013C */  lui        $at, %hi(D_8012A316)
    /* D880 8001D080 16A332A4 */  sh         $s2, %lo(D_8012A316)($at)
    /* D884 8001D084 1380013C */  lui        $at, %hi(D_8012A318)
    /* D888 8001D088 18A335A4 */  sh         $s5, %lo(D_8012A318)($at)
    /* D88C 8001D08C 1380013C */  lui        $at, %hi(D_8012A31A)
    /* D890 8001D090 1AA320A4 */  sh         $zero, %lo(D_8012A31A)($at)
    /* D894 8001D094 320230A2 */  sb         $s0, 0x232($s1)
    /* D898 8001D098 310230A2 */  sb         $s0, 0x231($s1)
    /* D89C 8001D09C 1380013C */  lui        $at, %hi(D_8012A310)
    /* D8A0 8001D0A0 10A330A0 */  sb         $s0, %lo(D_8012A310)($at)
    /* D8A4 8001D0A4 21800000 */  addu       $s0, $zero, $zero
  .L8001D0A8:
    /* D8A8 8001D0A8 BF72000C */  jal        func_8001CAFC
    /* D8AC 8001D0AC 01000424 */   addiu     $a0, $zero, 0x1
    /* D8B0 8001D0B0 1380023C */  lui        $v0, %hi(D_8012A2AE)
    /* D8B4 8001D0B4 AEA24294 */  lhu        $v0, %lo(D_8012A2AE)($v0)
    /* D8B8 8001D0B8 00000000 */  nop
    /* D8BC 8001D0BC 80004224 */  addiu      $v0, $v0, 0x80
    /* D8C0 8001D0C0 1380013C */  lui        $at, %hi(D_8012A2AE)
    /* D8C4 8001D0C4 AEA222A4 */  sh         $v0, %lo(D_8012A2AE)($at)
    /* D8C8 8001D0C8 1380023C */  lui        $v0, %hi(D_8012A2D2)
    /* D8CC 8001D0CC D2A24294 */  lhu        $v0, %lo(D_8012A2D2)($v0)
    /* D8D0 8001D0D0 00000000 */  nop
    /* D8D4 8001D0D4 80004224 */  addiu      $v0, $v0, 0x80
    /* D8D8 8001D0D8 1380013C */  lui        $at, %hi(D_8012A2D2)
    /* D8DC 8001D0DC D2A222A4 */  sh         $v0, %lo(D_8012A2D2)($at)
    /* D8E0 8001D0E0 1380023C */  lui        $v0, %hi(D_8012A2F6)
    /* D8E4 8001D0E4 F6A24294 */  lhu        $v0, %lo(D_8012A2F6)($v0)
    /* D8E8 8001D0E8 00000000 */  nop
    /* D8EC 8001D0EC 80004224 */  addiu      $v0, $v0, 0x80
    /* D8F0 8001D0F0 1380013C */  lui        $at, %hi(D_8012A2F6)
    /* D8F4 8001D0F4 F6A222A4 */  sh         $v0, %lo(D_8012A2F6)($at)
    /* D8F8 8001D0F8 1380023C */  lui        $v0, %hi(D_8012A31A)
    /* D8FC 8001D0FC 1AA34294 */  lhu        $v0, %lo(D_8012A31A)($v0)
    /* D900 8001D100 00000000 */  nop
    /* D904 8001D104 80004224 */  addiu      $v0, $v0, 0x80
    /* D908 8001D108 1380013C */  lui        $at, %hi(D_8012A31A)
    /* D90C 8001D10C 1AA322A4 */  sh         $v0, %lo(D_8012A31A)($at)
    /* D910 8001D110 01000226 */  addiu      $v0, $s0, 0x1
    /* D914 8001D114 21804000 */  addu       $s0, $v0, $zero
    /* D918 8001D118 00140200 */  sll        $v0, $v0, 16
    /* D91C 8001D11C 03140200 */  sra        $v0, $v0, 16
    /* D920 8001D120 1E004228 */  slti       $v0, $v0, 0x1E
    /* D924 8001D124 E0FF4014 */  bnez       $v0, .L8001D0A8
    /* D928 8001D128 00000000 */   nop
    /* D92C 8001D12C 21800000 */  addu       $s0, $zero, $zero
  .L8001D130:
    /* D930 8001D130 BF72000C */  jal        func_8001CAFC
    /* D934 8001D134 01000424 */   addiu     $a0, $zero, 0x1
    /* D938 8001D138 1380023C */  lui        $v0, %hi(D_8012A2AE)
    /* D93C 8001D13C AEA24294 */  lhu        $v0, %lo(D_8012A2AE)($v0)
    /* D940 8001D140 00000000 */  nop
    /* D944 8001D144 80004224 */  addiu      $v0, $v0, 0x80
    /* D948 8001D148 1380013C */  lui        $at, %hi(D_8012A2AE)
    /* D94C 8001D14C AEA222A4 */  sh         $v0, %lo(D_8012A2AE)($at)
    /* D950 8001D150 01000226 */  addiu      $v0, $s0, 0x1
    /* D954 8001D154 21804000 */  addu       $s0, $v0, $zero
    /* D958 8001D158 00140200 */  sll        $v0, $v0, 16
    /* D95C 8001D15C 03140200 */  sra        $v0, $v0, 16
    /* D960 8001D160 02004228 */  slti       $v0, $v0, 0x2
    /* D964 8001D164 F2FF4014 */  bnez       $v0, .L8001D130
    /* D968 8001D168 00000000 */   nop
    /* D96C 8001D16C BF72000C */  jal        func_8001CAFC
    /* D970 8001D170 01000424 */   addiu     $a0, $zero, 0x1
    /* D974 8001D174 3000BF8F */  lw         $ra, 0x30($sp)
    /* D978 8001D178 2C00B78F */  lw         $s7, 0x2C($sp)
    /* D97C 8001D17C 2800B68F */  lw         $s6, 0x28($sp)
    /* D980 8001D180 2400B58F */  lw         $s5, 0x24($sp)
    /* D984 8001D184 2000B48F */  lw         $s4, 0x20($sp)
    /* D988 8001D188 1C00B38F */  lw         $s3, 0x1C($sp)
    /* D98C 8001D18C 1800B28F */  lw         $s2, 0x18($sp)
    /* D990 8001D190 1400B18F */  lw         $s1, 0x14($sp)
    /* D994 8001D194 1000B08F */  lw         $s0, 0x10($sp)
    /* D998 8001D198 3800BD27 */  addiu      $sp, $sp, 0x38
    /* D99C 8001D19C 0800E003 */  jr         $ra
    /* D9A0 8001D1A0 00000000 */   nop
endlabel func_8001CE74
