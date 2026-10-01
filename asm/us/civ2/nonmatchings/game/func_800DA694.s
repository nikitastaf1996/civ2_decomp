.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DA694, 0x970

glabel func_800DA694
    /* CAE94 800DA694 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* CAE98 800DA698 2400BFAF */  sw         $ra, 0x24($sp)
    /* CAE9C 800DA69C 2000B4AF */  sw         $s4, 0x20($sp)
    /* CAEA0 800DA6A0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* CAEA4 800DA6A4 1800B2AF */  sw         $s2, 0x18($sp)
    /* CAEA8 800DA6A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* CAEAC 800DA6AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* CAEB0 800DA6B0 21880000 */  addu       $s1, $zero, $zero
  .L800DA6B4:
    /* CAEB4 800DA6B4 0600222A */  slti       $v0, $s1, 0x6
    /* CAEB8 800DA6B8 23004010 */  beqz       $v0, .L800DA748
    /* CAEBC 800DA6BC 21800000 */   addu      $s0, $zero, $zero
    /* CAEC0 800DA6C0 C0101100 */  sll        $v0, $s1, 3
    /* CAEC4 800DA6C4 21105100 */  addu       $v0, $v0, $s1
    /* CAEC8 800DA6C8 80100200 */  sll        $v0, $v0, 2
    /* CAECC 800DA6CC 21A05100 */  addu       $s4, $v0, $s1
  .L800DA6D0:
    /* CAED0 800DA6D0 0400022A */  slti       $v0, $s0, 0x4
    /* CAED4 800DA6D4 1A004010 */  beqz       $v0, .L800DA740
    /* CAED8 800DA6D8 21900000 */   addu      $s2, $zero, $zero
    /* CAEDC 800DA6DC 40191400 */  sll        $v1, $s4, 5
    /* CAEE0 800DA6E0 C0101000 */  sll        $v0, $s0, 3
    /* CAEE4 800DA6E4 21105000 */  addu       $v0, $v0, $s0
    /* CAEE8 800DA6E8 80100200 */  sll        $v0, $v0, 2
    /* CAEEC 800DA6EC 21105000 */  addu       $v0, $v0, $s0
    /* CAEF0 800DA6F0 C0100200 */  sll        $v0, $v0, 3
    /* CAEF4 800DA6F4 21986200 */  addu       $s3, $v1, $v0
  .L800DA6F8:
    /* CAEF8 800DA6F8 0200422A */  slti       $v0, $s2, 0x2
    /* CAEFC 800DA6FC 0E004010 */  beqz       $v0, .L800DA738
    /* CAF00 800DA700 C0201200 */   sll       $a0, $s2, 3
    /* CAF04 800DA704 21209200 */  addu       $a0, $a0, $s2
    /* CAF08 800DA708 80200400 */  sll        $a0, $a0, 2
    /* CAF0C 800DA70C 21209200 */  addu       $a0, $a0, $s2
    /* CAF10 800DA710 80200400 */  sll        $a0, $a0, 2
    /* CAF14 800DA714 21209300 */  addu       $a0, $a0, $s3
    /* CAF18 800DA718 1380023C */  lui        $v0, %hi(D_80129A80)
    /* CAF1C 800DA71C 809A4224 */  addiu      $v0, $v0, %lo(D_80129A80)
    /* CAF20 800DA720 21208200 */  addu       $a0, $a0, $v0
    /* CAF24 800DA724 21280000 */  addu       $a1, $zero, $zero
    /* CAF28 800DA728 A9E0030C */  jal        func_800F82A4
    /* CAF2C 800DA72C 21300000 */   addu      $a2, $zero, $zero
    /* CAF30 800DA730 BE690308 */  j          .L800DA6F8
    /* CAF34 800DA734 01005226 */   addiu     $s2, $s2, 0x1
  .L800DA738:
    /* CAF38 800DA738 B4690308 */  j          .L800DA6D0
    /* CAF3C 800DA73C 01001026 */   addiu     $s0, $s0, 0x1
  .L800DA740:
    /* CAF40 800DA740 AD690308 */  j          .L800DA6B4
    /* CAF44 800DA744 01003126 */   addiu     $s1, $s1, 0x1
  .L800DA748:
    /* CAF48 800DA748 21880000 */  addu       $s1, $zero, $zero
    /* CAF4C 800DA74C 1380133C */  lui        $s3, %hi(D_8012B640)
    /* CAF50 800DA750 40B67326 */  addiu      $s3, $s3, %lo(D_8012B640)
  .L800DA754:
    /* CAF54 800DA754 0800222A */  slti       $v0, $s1, 0x8
    /* CAF58 800DA758 16004010 */  beqz       $v0, .L800DA7B4
    /* CAF5C 800DA75C 21800000 */   addu      $s0, $zero, $zero
    /* CAF60 800DA760 C0101100 */  sll        $v0, $s1, 3
    /* CAF64 800DA764 21105100 */  addu       $v0, $v0, $s1
    /* CAF68 800DA768 80100200 */  sll        $v0, $v0, 2
    /* CAF6C 800DA76C 21105100 */  addu       $v0, $v0, $s1
    /* CAF70 800DA770 C0900200 */  sll        $s2, $v0, 3
  .L800DA774:
    /* CAF74 800DA774 0200022A */  slti       $v0, $s0, 0x2
    /* CAF78 800DA778 0C004010 */  beqz       $v0, .L800DA7AC
    /* CAF7C 800DA77C C0201000 */   sll       $a0, $s0, 3
    /* CAF80 800DA780 21209000 */  addu       $a0, $a0, $s0
    /* CAF84 800DA784 80200400 */  sll        $a0, $a0, 2
    /* CAF88 800DA788 21209000 */  addu       $a0, $a0, $s0
    /* CAF8C 800DA78C 80200400 */  sll        $a0, $a0, 2
    /* CAF90 800DA790 21204402 */  addu       $a0, $s2, $a0
    /* CAF94 800DA794 21209300 */  addu       $a0, $a0, $s3
    /* CAF98 800DA798 21280000 */  addu       $a1, $zero, $zero
    /* CAF9C 800DA79C A9E0030C */  jal        func_800F82A4
    /* CAFA0 800DA7A0 21300000 */   addu      $a2, $zero, $zero
    /* CAFA4 800DA7A4 DD690308 */  j          .L800DA774
    /* CAFA8 800DA7A8 01001026 */   addiu     $s0, $s0, 0x1
  .L800DA7AC:
    /* CAFAC 800DA7AC D5690308 */  j          .L800DA754
    /* CAFB0 800DA7B0 01003126 */   addiu     $s1, $s1, 0x1
  .L800DA7B4:
    /* CAFB4 800DA7B4 1380043C */  lui        $a0, %hi(D_8012DF4C)
    /* CAFB8 800DA7B8 4CDF8424 */  addiu      $a0, $a0, %lo(D_8012DF4C)
    /* CAFBC 800DA7BC 21280000 */  addu       $a1, $zero, $zero
    /* CAFC0 800DA7C0 A9E0030C */  jal        func_800F82A4
    /* CAFC4 800DA7C4 21300000 */   addu      $a2, $zero, $zero
    /* CAFC8 800DA7C8 1380043C */  lui        $a0, %hi(D_8012E074)
    /* CAFCC 800DA7CC 74E08424 */  addiu      $a0, $a0, %lo(D_8012E074)
    /* CAFD0 800DA7D0 21280000 */  addu       $a1, $zero, $zero
    /* CAFD4 800DA7D4 A9E0030C */  jal        func_800F82A4
    /* CAFD8 800DA7D8 21300000 */   addu      $a2, $zero, $zero
    /* CAFDC 800DA7DC 1380043C */  lui        $a0, %hi(D_80128E5C)
    /* CAFE0 800DA7E0 5C8E8424 */  addiu      $a0, $a0, %lo(D_80128E5C)
    /* CAFE4 800DA7E4 21280000 */  addu       $a1, $zero, $zero
    /* CAFE8 800DA7E8 A9E0030C */  jal        func_800F82A4
    /* CAFEC 800DA7EC 21300000 */   addu      $a2, $zero, $zero
    /* CAFF0 800DA7F0 1380043C */  lui        $a0, %hi(D_80128EF0)
    /* CAFF4 800DA7F4 F08E8424 */  addiu      $a0, $a0, %lo(D_80128EF0)
    /* CAFF8 800DA7F8 21280000 */  addu       $a1, $zero, $zero
    /* CAFFC 800DA7FC A9E0030C */  jal        func_800F82A4
    /* CB000 800DA800 21300000 */   addu      $a2, $zero, $zero
    /* CB004 800DA804 1380043C */  lui        $a0, %hi(D_80129958)
    /* CB008 800DA808 58998424 */  addiu      $a0, $a0, %lo(D_80129958)
    /* CB00C 800DA80C 21280000 */  addu       $a1, $zero, $zero
    /* CB010 800DA810 A9E0030C */  jal        func_800F82A4
    /* CB014 800DA814 21300000 */   addu      $a2, $zero, $zero
    /* CB018 800DA818 1380043C */  lui        $a0, %hi(D_80134D24)
    /* CB01C 800DA81C 244D8424 */  addiu      $a0, $a0, %lo(D_80134D24)
    /* CB020 800DA820 21280000 */  addu       $a1, $zero, $zero
    /* CB024 800DA824 A9E0030C */  jal        func_800F82A4
    /* CB028 800DA828 21300000 */   addu      $a2, $zero, $zero
    /* CB02C 800DA82C 1380043C */  lui        $a0, %hi(D_8012E19C)
    /* CB030 800DA830 9CE18424 */  addiu      $a0, $a0, %lo(D_8012E19C)
    /* CB034 800DA834 21280000 */  addu       $a1, $zero, $zero
    /* CB038 800DA838 A9E0030C */  jal        func_800F82A4
    /* CB03C 800DA83C 21300000 */   addu      $a2, $zero, $zero
    /* CB040 800DA840 1380043C */  lui        $a0, %hi(D_8012E230)
    /* CB044 800DA844 30E28424 */  addiu      $a0, $a0, %lo(D_8012E230)
    /* CB048 800DA848 21280000 */  addu       $a1, $zero, $zero
    /* CB04C 800DA84C A9E0030C */  jal        func_800F82A4
    /* CB050 800DA850 21300000 */   addu      $a2, $zero, $zero
    /* CB054 800DA854 1380043C */  lui        $a0, %hi(D_8012E2C4)
    /* CB058 800DA858 C4E28424 */  addiu      $a0, $a0, %lo(D_8012E2C4)
    /* CB05C 800DA85C 21280000 */  addu       $a1, $zero, $zero
    /* CB060 800DA860 A9E0030C */  jal        func_800F82A4
    /* CB064 800DA864 21300000 */   addu      $a2, $zero, $zero
    /* CB068 800DA868 1380043C */  lui        $a0, %hi(D_8012E358)
    /* CB06C 800DA86C 58E38424 */  addiu      $a0, $a0, %lo(D_8012E358)
    /* CB070 800DA870 21280000 */  addu       $a1, $zero, $zero
    /* CB074 800DA874 A9E0030C */  jal        func_800F82A4
    /* CB078 800DA878 21300000 */   addu      $a2, $zero, $zero
    /* CB07C 800DA87C 1380043C */  lui        $a0, %hi(D_8013122C)
    /* CB080 800DA880 2C128424 */  addiu      $a0, $a0, %lo(D_8013122C)
    /* CB084 800DA884 21280000 */  addu       $a1, $zero, $zero
    /* CB088 800DA888 A9E0030C */  jal        func_800F82A4
    /* CB08C 800DA88C 21300000 */   addu      $a2, $zero, $zero
    /* CB090 800DA890 1380043C */  lui        $a0, %hi(D_801312C0)
    /* CB094 800DA894 C0128424 */  addiu      $a0, $a0, %lo(D_801312C0)
    /* CB098 800DA898 21280000 */  addu       $a1, $zero, $zero
    /* CB09C 800DA89C A9E0030C */  jal        func_800F82A4
    /* CB0A0 800DA8A0 21300000 */   addu      $a2, $zero, $zero
    /* CB0A4 800DA8A4 1380043C */  lui        $a0, %hi(D_8013147C)
    /* CB0A8 800DA8A8 7C148424 */  addiu      $a0, $a0, %lo(D_8013147C)
    /* CB0AC 800DA8AC 21280000 */  addu       $a1, $zero, $zero
    /* CB0B0 800DA8B0 A9E0030C */  jal        func_800F82A4
    /* CB0B4 800DA8B4 21300000 */   addu      $a2, $zero, $zero
    /* CB0B8 800DA8B8 1380043C */  lui        $a0, %hi(D_80131510)
    /* CB0BC 800DA8BC 10158424 */  addiu      $a0, $a0, %lo(D_80131510)
    /* CB0C0 800DA8C0 21280000 */  addu       $a1, $zero, $zero
    /* CB0C4 800DA8C4 A9E0030C */  jal        func_800F82A4
    /* CB0C8 800DA8C8 21300000 */   addu      $a2, $zero, $zero
    /* CB0CC 800DA8CC 1380043C */  lui        $a0, %hi(D_80131354)
    /* CB0D0 800DA8D0 54138424 */  addiu      $a0, $a0, %lo(D_80131354)
    /* CB0D4 800DA8D4 21280000 */  addu       $a1, $zero, $zero
    /* CB0D8 800DA8D8 A9E0030C */  jal        func_800F82A4
    /* CB0DC 800DA8DC 21300000 */   addu      $a2, $zero, $zero
    /* CB0E0 800DA8E0 1380043C */  lui        $a0, %hi(D_801313E8)
    /* CB0E4 800DA8E4 E8138424 */  addiu      $a0, $a0, %lo(D_801313E8)
    /* CB0E8 800DA8E8 21280000 */  addu       $a1, $zero, $zero
    /* CB0EC 800DA8EC A9E0030C */  jal        func_800F82A4
    /* CB0F0 800DA8F0 21300000 */   addu      $a2, $zero, $zero
    /* CB0F4 800DA8F4 1380043C */  lui        $a0, %hi(D_801315A4)
    /* CB0F8 800DA8F8 A4158424 */  addiu      $a0, $a0, %lo(D_801315A4)
    /* CB0FC 800DA8FC 21280000 */  addu       $a1, $zero, $zero
    /* CB100 800DA900 A9E0030C */  jal        func_800F82A4
    /* CB104 800DA904 21300000 */   addu      $a2, $zero, $zero
    /* CB108 800DA908 21880000 */  addu       $s1, $zero, $zero
    /* CB10C 800DA90C 1380133C */  lui        $s3, %hi(D_801303B8)
    /* CB110 800DA910 B8037326 */  addiu      $s3, $s3, %lo(D_801303B8)
    /* CB114 800DA914 1380123C */  lui        $s2, %hi(D_8013044C)
    /* CB118 800DA918 4C045226 */  addiu      $s2, $s2, %lo(D_8013044C)
  .L800DA91C:
    /* CB11C 800DA91C 0300222A */  slti       $v0, $s1, 0x3
    /* CB120 800DA920 0F004010 */  beqz       $v0, .L800DA960
    /* CB124 800DA924 C0801100 */   sll       $s0, $s1, 3
    /* CB128 800DA928 21801102 */  addu       $s0, $s0, $s1
    /* CB12C 800DA92C 80801000 */  sll        $s0, $s0, 2
    /* CB130 800DA930 21801102 */  addu       $s0, $s0, $s1
    /* CB134 800DA934 C0801000 */  sll        $s0, $s0, 3
    /* CB138 800DA938 21201302 */  addu       $a0, $s0, $s3
    /* CB13C 800DA93C 21280000 */  addu       $a1, $zero, $zero
    /* CB140 800DA940 A9E0030C */  jal        func_800F82A4
    /* CB144 800DA944 21300000 */   addu      $a2, $zero, $zero
    /* CB148 800DA948 21201202 */  addu       $a0, $s0, $s2
    /* CB14C 800DA94C 21280000 */  addu       $a1, $zero, $zero
    /* CB150 800DA950 A9E0030C */  jal        func_800F82A4
    /* CB154 800DA954 21300000 */   addu      $a2, $zero, $zero
    /* CB158 800DA958 476A0308 */  j          .L800DA91C
    /* CB15C 800DA95C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DA960:
    /* CB160 800DA960 21880000 */  addu       $s1, $zero, $zero
    /* CB164 800DA964 1380103C */  lui        $s0, %hi(D_80130730)
    /* CB168 800DA968 30071026 */  addiu      $s0, $s0, %lo(D_80130730)
  .L800DA96C:
    /* CB16C 800DA96C 0300222A */  slti       $v0, $s1, 0x3
    /* CB170 800DA970 0B004010 */  beqz       $v0, .L800DA9A0
    /* CB174 800DA974 C0201100 */   sll       $a0, $s1, 3
    /* CB178 800DA978 21209100 */  addu       $a0, $a0, $s1
    /* CB17C 800DA97C 80200400 */  sll        $a0, $a0, 2
    /* CB180 800DA980 21209100 */  addu       $a0, $a0, $s1
    /* CB184 800DA984 80200400 */  sll        $a0, $a0, 2
    /* CB188 800DA988 21209000 */  addu       $a0, $a0, $s0
    /* CB18C 800DA98C 21280000 */  addu       $a1, $zero, $zero
    /* CB190 800DA990 A9E0030C */  jal        func_800F82A4
    /* CB194 800DA994 21300000 */   addu      $a2, $zero, $zero
    /* CB198 800DA998 5B6A0308 */  j          .L800DA96C
    /* CB19C 800DA99C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DA9A0:
    /* CB1A0 800DA9A0 21880000 */  addu       $s1, $zero, $zero
    /* CB1A4 800DA9A4 1380103C */  lui        $s0, %hi(D_801308EC)
    /* CB1A8 800DA9A8 EC081026 */  addiu      $s0, $s0, %lo(D_801308EC)
  .L800DA9AC:
    /* CB1AC 800DA9AC 0300222A */  slti       $v0, $s1, 0x3
    /* CB1B0 800DA9B0 0B004010 */  beqz       $v0, .L800DA9E0
    /* CB1B4 800DA9B4 C0201100 */   sll       $a0, $s1, 3
    /* CB1B8 800DA9B8 21209100 */  addu       $a0, $a0, $s1
    /* CB1BC 800DA9BC 80200400 */  sll        $a0, $a0, 2
    /* CB1C0 800DA9C0 21209100 */  addu       $a0, $a0, $s1
    /* CB1C4 800DA9C4 80200400 */  sll        $a0, $a0, 2
    /* CB1C8 800DA9C8 21209000 */  addu       $a0, $a0, $s0
    /* CB1CC 800DA9CC 21280000 */  addu       $a1, $zero, $zero
    /* CB1D0 800DA9D0 A9E0030C */  jal        func_800F82A4
    /* CB1D4 800DA9D4 21300000 */   addu      $a2, $zero, $zero
    /* CB1D8 800DA9D8 6B6A0308 */  j          .L800DA9AC
    /* CB1DC 800DA9DC 01003126 */   addiu     $s1, $s1, 0x1
  .L800DA9E0:
    /* CB1E0 800DA9E0 21880000 */  addu       $s1, $zero, $zero
    /* CB1E4 800DA9E4 1380103C */  lui        $s0, %hi(D_80130AA8)
    /* CB1E8 800DA9E8 A80A1026 */  addiu      $s0, $s0, %lo(D_80130AA8)
  .L800DA9EC:
    /* CB1EC 800DA9EC 0300222A */  slti       $v0, $s1, 0x3
    /* CB1F0 800DA9F0 0B004010 */  beqz       $v0, .L800DAA20
    /* CB1F4 800DA9F4 C0201100 */   sll       $a0, $s1, 3
    /* CB1F8 800DA9F8 21209100 */  addu       $a0, $a0, $s1
    /* CB1FC 800DA9FC 80200400 */  sll        $a0, $a0, 2
    /* CB200 800DAA00 21209100 */  addu       $a0, $a0, $s1
    /* CB204 800DAA04 80200400 */  sll        $a0, $a0, 2
    /* CB208 800DAA08 21209000 */  addu       $a0, $a0, $s0
    /* CB20C 800DAA0C 21280000 */  addu       $a1, $zero, $zero
    /* CB210 800DAA10 A9E0030C */  jal        func_800F82A4
    /* CB214 800DAA14 21300000 */   addu      $a2, $zero, $zero
    /* CB218 800DAA18 7B6A0308 */  j          .L800DA9EC
    /* CB21C 800DAA1C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAA20:
    /* CB220 800DAA20 1380043C */  lui        $a0, %hi(D_80130C64)
    /* CB224 800DAA24 640C8424 */  addiu      $a0, $a0, %lo(D_80130C64)
    /* CB228 800DAA28 21280000 */  addu       $a1, $zero, $zero
    /* CB22C 800DAA2C A9E0030C */  jal        func_800F82A4
    /* CB230 800DAA30 21300000 */   addu      $a2, $zero, $zero
    /* CB234 800DAA34 1380043C */  lui        $a0, %hi(D_80130CF8)
    /* CB238 800DAA38 F80C8424 */  addiu      $a0, $a0, %lo(D_80130CF8)
    /* CB23C 800DAA3C 21280000 */  addu       $a1, $zero, $zero
    /* CB240 800DAA40 A9E0030C */  jal        func_800F82A4
    /* CB244 800DAA44 21300000 */   addu      $a2, $zero, $zero
    /* CB248 800DAA48 21880000 */  addu       $s1, $zero, $zero
    /* CB24C 800DAA4C 1380133C */  lui        $s3, %hi(D_80130D8C)
    /* CB250 800DAA50 8C0D7326 */  addiu      $s3, $s3, %lo(D_80130D8C)
    /* CB254 800DAA54 1380123C */  lui        $s2, %hi(D_80130FDC)
    /* CB258 800DAA58 DC0F5226 */  addiu      $s2, $s2, %lo(D_80130FDC)
  .L800DAA5C:
    /* CB25C 800DAA5C 0400222A */  slti       $v0, $s1, 0x4
    /* CB260 800DAA60 0F004010 */  beqz       $v0, .L800DAAA0
    /* CB264 800DAA64 C0801100 */   sll       $s0, $s1, 3
    /* CB268 800DAA68 21801102 */  addu       $s0, $s0, $s1
    /* CB26C 800DAA6C 80801000 */  sll        $s0, $s0, 2
    /* CB270 800DAA70 21801102 */  addu       $s0, $s0, $s1
    /* CB274 800DAA74 80801000 */  sll        $s0, $s0, 2
    /* CB278 800DAA78 21201302 */  addu       $a0, $s0, $s3
    /* CB27C 800DAA7C 21280000 */  addu       $a1, $zero, $zero
    /* CB280 800DAA80 A9E0030C */  jal        func_800F82A4
    /* CB284 800DAA84 21300000 */   addu      $a2, $zero, $zero
    /* CB288 800DAA88 21201202 */  addu       $a0, $s0, $s2
    /* CB28C 800DAA8C 21280000 */  addu       $a1, $zero, $zero
    /* CB290 800DAA90 A9E0030C */  jal        func_800F82A4
    /* CB294 800DAA94 21300000 */   addu      $a2, $zero, $zero
    /* CB298 800DAA98 976A0308 */  j          .L800DAA5C
    /* CB29C 800DAA9C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAAA0:
    /* CB2A0 800DAAA0 21880000 */  addu       $s1, $zero, $zero
    /* CB2A4 800DAAA4 1380103C */  lui        $s0, %hi(D_80134884)
    /* CB2A8 800DAAA8 84481026 */  addiu      $s0, $s0, %lo(D_80134884)
  .L800DAAAC:
    /* CB2AC 800DAAAC 0800222A */  slti       $v0, $s1, 0x8
    /* CB2B0 800DAAB0 0B004010 */  beqz       $v0, .L800DAAE0
    /* CB2B4 800DAAB4 C0201100 */   sll       $a0, $s1, 3
    /* CB2B8 800DAAB8 21209100 */  addu       $a0, $a0, $s1
    /* CB2BC 800DAABC 80200400 */  sll        $a0, $a0, 2
    /* CB2C0 800DAAC0 21209100 */  addu       $a0, $a0, $s1
    /* CB2C4 800DAAC4 80200400 */  sll        $a0, $a0, 2
    /* CB2C8 800DAAC8 21209000 */  addu       $a0, $a0, $s0
    /* CB2CC 800DAACC 21280000 */  addu       $a1, $zero, $zero
    /* CB2D0 800DAAD0 A9E0030C */  jal        func_800F82A4
    /* CB2D4 800DAAD4 21300000 */   addu      $a2, $zero, $zero
    /* CB2D8 800DAAD8 AB6A0308 */  j          .L800DAAAC
    /* CB2DC 800DAADC 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAAE0:
    /* CB2E0 800DAAE0 01001124 */  addiu      $s1, $zero, 0x1
    /* CB2E4 800DAAE4 1380103C */  lui        $s0, %hi(D_80131638)
    /* CB2E8 800DAAE8 38161026 */  addiu      $s0, $s0, %lo(D_80131638)
  .L800DAAEC:
    /* CB2EC 800DAAEC 2700222A */  slti       $v0, $s1, 0x27
    /* CB2F0 800DAAF0 0B004010 */  beqz       $v0, .L800DAB20
    /* CB2F4 800DAAF4 C0201100 */   sll       $a0, $s1, 3
    /* CB2F8 800DAAF8 21209100 */  addu       $a0, $a0, $s1
    /* CB2FC 800DAAFC 80200400 */  sll        $a0, $a0, 2
    /* CB300 800DAB00 21209100 */  addu       $a0, $a0, $s1
    /* CB304 800DAB04 80200400 */  sll        $a0, $a0, 2
    /* CB308 800DAB08 21209000 */  addu       $a0, $a0, $s0
    /* CB30C 800DAB0C 21280000 */  addu       $a1, $zero, $zero
    /* CB310 800DAB10 A9E0030C */  jal        func_800F82A4
    /* CB314 800DAB14 21300000 */   addu      $a2, $zero, $zero
    /* CB318 800DAB18 BB6A0308 */  j          .L800DAAEC
    /* CB31C 800DAB1C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAB20:
    /* CB320 800DAB20 21880000 */  addu       $s1, $zero, $zero
    /* CB324 800DAB24 1380103C */  lui        $s0, %hi(D_80132CC4)
    /* CB328 800DAB28 C42C1026 */  addiu      $s0, $s0, %lo(D_80132CC4)
  .L800DAB2C:
    /* CB32C 800DAB2C 1C00222A */  slti       $v0, $s1, 0x1C
    /* CB330 800DAB30 0B004010 */  beqz       $v0, .L800DAB60
    /* CB334 800DAB34 C0201100 */   sll       $a0, $s1, 3
    /* CB338 800DAB38 21209100 */  addu       $a0, $a0, $s1
    /* CB33C 800DAB3C 80200400 */  sll        $a0, $a0, 2
    /* CB340 800DAB40 21209100 */  addu       $a0, $a0, $s1
    /* CB344 800DAB44 80200400 */  sll        $a0, $a0, 2
    /* CB348 800DAB48 21209000 */  addu       $a0, $a0, $s0
    /* CB34C 800DAB4C 21280000 */  addu       $a1, $zero, $zero
    /* CB350 800DAB50 A9E0030C */  jal        func_800F82A4
    /* CB354 800DAB54 21300000 */   addu      $a2, $zero, $zero
    /* CB358 800DAB58 CB6A0308 */  j          .L800DAB2C
    /* CB35C 800DAB5C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAB60:
    /* CB360 800DAB60 21880000 */  addu       $s1, $zero, $zero
    /* CB364 800DAB64 1380133C */  lui        $s3, %hi(D_80133CF4)
    /* CB368 800DAB68 F43C7326 */  addiu      $s3, $s3, %lo(D_80133CF4)
  .L800DAB6C:
    /* CB36C 800DAB6C 0400222A */  slti       $v0, $s1, 0x4
    /* CB370 800DAB70 16004010 */  beqz       $v0, .L800DABCC
    /* CB374 800DAB74 21800000 */   addu      $s0, $zero, $zero
    /* CB378 800DAB78 C0101100 */  sll        $v0, $s1, 3
    /* CB37C 800DAB7C 21105100 */  addu       $v0, $v0, $s1
    /* CB380 800DAB80 80100200 */  sll        $v0, $v0, 2
    /* CB384 800DAB84 21105100 */  addu       $v0, $v0, $s1
    /* CB388 800DAB88 80900200 */  sll        $s2, $v0, 2
  .L800DAB8C:
    /* CB38C 800DAB8C 0500022A */  slti       $v0, $s0, 0x5
    /* CB390 800DAB90 0C004010 */  beqz       $v0, .L800DABC4
    /* CB394 800DAB94 C0201000 */   sll       $a0, $s0, 3
    /* CB398 800DAB98 21209000 */  addu       $a0, $a0, $s0
    /* CB39C 800DAB9C 80200400 */  sll        $a0, $a0, 2
    /* CB3A0 800DABA0 21209000 */  addu       $a0, $a0, $s0
    /* CB3A4 800DABA4 00210400 */  sll        $a0, $a0, 4
    /* CB3A8 800DABA8 21209200 */  addu       $a0, $a0, $s2
    /* CB3AC 800DABAC 21209300 */  addu       $a0, $a0, $s3
    /* CB3B0 800DABB0 21280000 */  addu       $a1, $zero, $zero
    /* CB3B4 800DABB4 A9E0030C */  jal        func_800F82A4
    /* CB3B8 800DABB8 21300000 */   addu      $a2, $zero, $zero
    /* CB3BC 800DABBC E36A0308 */  j          .L800DAB8C
    /* CB3C0 800DABC0 01001026 */   addiu     $s0, $s0, 0x1
  .L800DABC4:
    /* CB3C4 800DABC4 DB6A0308 */  j          .L800DAB6C
    /* CB3C8 800DABC8 01003126 */   addiu     $s1, $s1, 0x1
  .L800DABCC:
    /* CB3CC 800DABCC 21880000 */  addu       $s1, $zero, $zero
    /* CB3D0 800DABD0 1380133C */  lui        $s3, %hi(D_8012E3EC)
    /* CB3D4 800DABD4 ECE37326 */  addiu      $s3, $s3, %lo(D_8012E3EC)
  .L800DABD8:
    /* CB3D8 800DABD8 0B00222A */  slti       $v0, $s1, 0xB
    /* CB3DC 800DABDC 18004010 */  beqz       $v0, .L800DAC40
    /* CB3E0 800DABE0 21800000 */   addu      $s0, $zero, $zero
    /* CB3E4 800DABE4 C0101100 */  sll        $v0, $s1, 3
    /* CB3E8 800DABE8 21105100 */  addu       $v0, $v0, $s1
    /* CB3EC 800DABEC 80100200 */  sll        $v0, $v0, 2
    /* CB3F0 800DABF0 21105100 */  addu       $v0, $v0, $s1
    /* CB3F4 800DABF4 80900200 */  sll        $s2, $v0, 2
  .L800DABF8:
    /* CB3F8 800DABF8 0400022A */  slti       $v0, $s0, 0x4
    /* CB3FC 800DABFC 0E004010 */  beqz       $v0, .L800DAC38
    /* CB400 800DAC00 40201000 */   sll       $a0, $s0, 1
    /* CB404 800DAC04 21209000 */  addu       $a0, $a0, $s0
    /* CB408 800DAC08 00110400 */  sll        $v0, $a0, 4
    /* CB40C 800DAC0C 21208200 */  addu       $a0, $a0, $v0
    /* CB410 800DAC10 C0200400 */  sll        $a0, $a0, 3
    /* CB414 800DAC14 23209000 */  subu       $a0, $a0, $s0
    /* CB418 800DAC18 80200400 */  sll        $a0, $a0, 2
    /* CB41C 800DAC1C 21209200 */  addu       $a0, $a0, $s2
    /* CB420 800DAC20 21209300 */  addu       $a0, $a0, $s3
    /* CB424 800DAC24 21280000 */  addu       $a1, $zero, $zero
    /* CB428 800DAC28 A9E0030C */  jal        func_800F82A4
    /* CB42C 800DAC2C 21300000 */   addu      $a2, $zero, $zero
    /* CB430 800DAC30 FE6A0308 */  j          .L800DABF8
    /* CB434 800DAC34 01001026 */   addiu     $s0, $s0, 0x1
  .L800DAC38:
    /* CB438 800DAC38 F66A0308 */  j          .L800DABD8
    /* CB43C 800DAC3C 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAC40:
    /* CB440 800DAC40 21880000 */  addu       $s1, $zero, $zero
    /* CB444 800DAC44 1280143C */  lui        $s4, %hi(D_80123020)
    /* CB448 800DAC48 20309426 */  addiu      $s4, $s4, %lo(D_80123020)
    /* CB44C 800DAC4C 1380133C */  lui        $s3, %hi(D_801281A4)
    /* CB450 800DAC50 A4817326 */  addiu      $s3, $s3, %lo(D_801281A4)
    /* CB454 800DAC54 1380123C */  lui        $s2, %hi(D_80128238)
    /* CB458 800DAC58 38825226 */  addiu      $s2, $s2, %lo(D_80128238)
  .L800DAC5C:
    /* CB45C 800DAC5C 0B00222A */  slti       $v0, $s1, 0xB
    /* CB460 800DAC60 14004010 */  beqz       $v0, .L800DACB4
    /* CB464 800DAC64 C0801100 */   sll       $s0, $s1, 3
    /* CB468 800DAC68 21801102 */  addu       $s0, $s0, $s1
    /* CB46C 800DAC6C 80801000 */  sll        $s0, $s0, 2
    /* CB470 800DAC70 21801102 */  addu       $s0, $s0, $s1
    /* CB474 800DAC74 80201000 */  sll        $a0, $s0, 2
    /* CB478 800DAC78 21209400 */  addu       $a0, $a0, $s4
    /* CB47C 800DAC7C 21280000 */  addu       $a1, $zero, $zero
    /* CB480 800DAC80 A9E0030C */  jal        func_800F82A4
    /* CB484 800DAC84 21300000 */   addu      $a2, $zero, $zero
    /* CB488 800DAC88 C0801000 */  sll        $s0, $s0, 3
    /* CB48C 800DAC8C 21201302 */  addu       $a0, $s0, $s3
    /* CB490 800DAC90 21280000 */  addu       $a1, $zero, $zero
    /* CB494 800DAC94 A9E0030C */  jal        func_800F82A4
    /* CB498 800DAC98 21300000 */   addu      $a2, $zero, $zero
    /* CB49C 800DAC9C 21201202 */  addu       $a0, $s0, $s2
    /* CB4A0 800DACA0 21280000 */  addu       $a1, $zero, $zero
    /* CB4A4 800DACA4 A9E0030C */  jal        func_800F82A4
    /* CB4A8 800DACA8 21300000 */   addu      $a2, $zero, $zero
    /* CB4AC 800DACAC 176B0308 */  j          .L800DAC5C
    /* CB4B0 800DACB0 01003126 */   addiu     $s1, $s1, 0x1
  .L800DACB4:
    /* CB4B4 800DACB4 21880000 */  addu       $s1, $zero, $zero
    /* CB4B8 800DACB8 1280103C */  lui        $s0, %hi(D_80127EC0)
    /* CB4BC 800DACBC C07E1026 */  addiu      $s0, $s0, %lo(D_80127EC0)
  .L800DACC0:
    /* CB4C0 800DACC0 0300222A */  slti       $v0, $s1, 0x3
    /* CB4C4 800DACC4 0B004010 */  beqz       $v0, .L800DACF4
    /* CB4C8 800DACC8 C0201100 */   sll       $a0, $s1, 3
    /* CB4CC 800DACCC 21209100 */  addu       $a0, $a0, $s1
    /* CB4D0 800DACD0 80200400 */  sll        $a0, $a0, 2
    /* CB4D4 800DACD4 21209100 */  addu       $a0, $a0, $s1
    /* CB4D8 800DACD8 80200400 */  sll        $a0, $a0, 2
    /* CB4DC 800DACDC 21209000 */  addu       $a0, $a0, $s0
    /* CB4E0 800DACE0 21280000 */  addu       $a1, $zero, $zero
    /* CB4E4 800DACE4 A9E0030C */  jal        func_800F82A4
    /* CB4E8 800DACE8 21300000 */   addu      $a2, $zero, $zero
    /* CB4EC 800DACEC 306B0308 */  j          .L800DACC0
    /* CB4F0 800DACF0 01003126 */   addiu     $s1, $s1, 0x1
  .L800DACF4:
    /* CB4F4 800DACF4 1380043C */  lui        $a0, %hi(D_8012807C)
    /* CB4F8 800DACF8 7C808424 */  addiu      $a0, $a0, %lo(D_8012807C)
    /* CB4FC 800DACFC 21280000 */  addu       $a1, $zero, $zero
    /* CB500 800DAD00 A9E0030C */  jal        func_800F82A4
    /* CB504 800DAD04 21300000 */   addu      $a2, $zero, $zero
    /* CB508 800DAD08 1380043C */  lui        $a0, %hi(D_80128110)
    /* CB50C 800DAD0C 10818424 */  addiu      $a0, $a0, %lo(D_80128110)
    /* CB510 800DAD10 21280000 */  addu       $a1, $zero, $zero
    /* CB514 800DAD14 A9E0030C */  jal        func_800F82A4
    /* CB518 800DAD18 21300000 */   addu      $a2, $zero, $zero
    /* CB51C 800DAD1C 1280043C */  lui        $a0, %hi(D_80125C10)
    /* CB520 800DAD20 105C8424 */  addiu      $a0, $a0, %lo(D_80125C10)
    /* CB524 800DAD24 21280000 */  addu       $a1, $zero, $zero
    /* CB528 800DAD28 A9E0030C */  jal        func_800F82A4
    /* CB52C 800DAD2C 21300000 */   addu      $a2, $zero, $zero
    /* CB530 800DAD30 21880000 */  addu       $s1, $zero, $zero
    /* CB534 800DAD34 1280133C */  lui        $s3, %hi(D_80127458)
    /* CB538 800DAD38 58747326 */  addiu      $s3, $s3, %lo(D_80127458)
    /* CB53C 800DAD3C 1280123C */  lui        $s2, %hi(D_8012798C)
    /* CB540 800DAD40 8C795226 */  addiu      $s2, $s2, %lo(D_8012798C)
  .L800DAD44:
    /* CB544 800DAD44 0900222A */  slti       $v0, $s1, 0x9
    /* CB548 800DAD48 0F004010 */  beqz       $v0, .L800DAD88
    /* CB54C 800DAD4C C0801100 */   sll       $s0, $s1, 3
    /* CB550 800DAD50 21801102 */  addu       $s0, $s0, $s1
    /* CB554 800DAD54 80801000 */  sll        $s0, $s0, 2
    /* CB558 800DAD58 21801102 */  addu       $s0, $s0, $s1
    /* CB55C 800DAD5C 80801000 */  sll        $s0, $s0, 2
    /* CB560 800DAD60 21201302 */  addu       $a0, $s0, $s3
    /* CB564 800DAD64 21280000 */  addu       $a1, $zero, $zero
    /* CB568 800DAD68 A9E0030C */  jal        func_800F82A4
    /* CB56C 800DAD6C 21300000 */   addu      $a2, $zero, $zero
    /* CB570 800DAD70 21201202 */  addu       $a0, $s0, $s2
    /* CB574 800DAD74 21280000 */  addu       $a1, $zero, $zero
    /* CB578 800DAD78 A9E0030C */  jal        func_800F82A4
    /* CB57C 800DAD7C 21300000 */   addu      $a2, $zero, $zero
    /* CB580 800DAD80 516B0308 */  j          .L800DAD44
    /* CB584 800DAD84 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAD88:
    /* CB588 800DAD88 1280043C */  lui        $a0, %hi(D_80125DCC)
    /* CB58C 800DAD8C CC5D8424 */  addiu      $a0, $a0, %lo(D_80125DCC)
    /* CB590 800DAD90 21280000 */  addu       $a1, $zero, $zero
    /* CB594 800DAD94 A9E0030C */  jal        func_800F82A4
    /* CB598 800DAD98 21300000 */   addu      $a2, $zero, $zero
    /* CB59C 800DAD9C 1280043C */  lui        $a0, %hi(D_80125EF4)
    /* CB5A0 800DADA0 F45E8424 */  addiu      $a0, $a0, %lo(D_80125EF4)
    /* CB5A4 800DADA4 21280000 */  addu       $a1, $zero, $zero
    /* CB5A8 800DADA8 A9E0030C */  jal        func_800F82A4
    /* CB5AC 800DADAC 21300000 */   addu      $a2, $zero, $zero
    /* CB5B0 800DADB0 1280043C */  lui        $a0, %hi(D_80125E60)
    /* CB5B4 800DADB4 605E8424 */  addiu      $a0, $a0, %lo(D_80125E60)
    /* CB5B8 800DADB8 21280000 */  addu       $a1, $zero, $zero
    /* CB5BC 800DADBC A9E0030C */  jal        func_800F82A4
    /* CB5C0 800DADC0 21300000 */   addu      $a2, $zero, $zero
    /* CB5C4 800DADC4 21880000 */  addu       $s1, $zero, $zero
  .L800DADC8:
    /* CB5C8 800DADC8 1000222A */  slti       $v0, $s1, 0x10
    /* CB5CC 800DADCC 1F004010 */  beqz       $v0, .L800DAE4C
    /* CB5D0 800DADD0 C0801100 */   sll       $s0, $s1, 3
    /* CB5D4 800DADD4 21801102 */  addu       $s0, $s0, $s1
    /* CB5D8 800DADD8 80801000 */  sll        $s0, $s0, 2
    /* CB5DC 800DADDC 21801102 */  addu       $s0, $s0, $s1
    /* CB5E0 800DADE0 80801000 */  sll        $s0, $s0, 2
    /* CB5E4 800DADE4 1280043C */  lui        $a0, %hi(D_80123710)
    /* CB5E8 800DADE8 10378424 */  addiu      $a0, $a0, %lo(D_80123710)
    /* CB5EC 800DADEC 21200402 */  addu       $a0, $s0, $a0
    /* CB5F0 800DADF0 21280000 */  addu       $a1, $zero, $zero
    /* CB5F4 800DADF4 A9E0030C */  jal        func_800F82A4
    /* CB5F8 800DADF8 21300000 */   addu      $a2, $zero, $zero
    /* CB5FC 800DADFC 1280043C */  lui        $a0, %hi(D_80124050)
    /* CB600 800DAE00 50408424 */  addiu      $a0, $a0, %lo(D_80124050)
    /* CB604 800DAE04 21200402 */  addu       $a0, $s0, $a0
    /* CB608 800DAE08 21280000 */  addu       $a1, $zero, $zero
    /* CB60C 800DAE0C A9E0030C */  jal        func_800F82A4
    /* CB610 800DAE10 21300000 */   addu      $a2, $zero, $zero
    /* CB614 800DAE14 1280043C */  lui        $a0, %hi(D_80124990)
    /* CB618 800DAE18 90498424 */  addiu      $a0, $a0, %lo(D_80124990)
    /* CB61C 800DAE1C 21200402 */  addu       $a0, $s0, $a0
    /* CB620 800DAE20 21280000 */  addu       $a1, $zero, $zero
    /* CB624 800DAE24 A9E0030C */  jal        func_800F82A4
    /* CB628 800DAE28 21300000 */   addu      $a2, $zero, $zero
    /* CB62C 800DAE2C 1280043C */  lui        $a0, %hi(D_801252D0)
    /* CB630 800DAE30 D0528424 */  addiu      $a0, $a0, %lo(D_801252D0)
    /* CB634 800DAE34 21200402 */  addu       $a0, $s0, $a0
    /* CB638 800DAE38 21280000 */  addu       $a1, $zero, $zero
    /* CB63C 800DAE3C A9E0030C */  jal        func_800F82A4
    /* CB640 800DAE40 21300000 */   addu      $a2, $zero, $zero
    /* CB644 800DAE44 726B0308 */  j          .L800DADC8
    /* CB648 800DAE48 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAE4C:
    /* CB64C 800DAE4C 21880000 */  addu       $s1, $zero, $zero
    /* CB650 800DAE50 1280123C */  lui        $s2, %hi(D_80125F88)
    /* CB654 800DAE54 885F5226 */  addiu      $s2, $s2, %lo(D_80125F88)
    /* CB658 800DAE58 1280133C */  lui        $s3, %hi(D_80126144)
    /* CB65C 800DAE5C 44617326 */  addiu      $s3, $s3, %lo(D_80126144)
  .L800DAE60:
    /* CB660 800DAE60 0800222A */  slti       $v0, $s1, 0x8
    /* CB664 800DAE64 19004010 */  beqz       $v0, .L800DAECC
    /* CB668 800DAE68 C0801100 */   sll       $s0, $s1, 3
    /* CB66C 800DAE6C 21801102 */  addu       $s0, $s0, $s1
    /* CB670 800DAE70 80801000 */  sll        $s0, $s0, 2
    /* CB674 800DAE74 21801102 */  addu       $s0, $s0, $s1
    /* CB678 800DAE78 00811000 */  sll        $s0, $s0, 4
    /* CB67C 800DAE7C 21201202 */  addu       $a0, $s0, $s2
    /* CB680 800DAE80 21280000 */  addu       $a1, $zero, $zero
    /* CB684 800DAE84 A9E0030C */  jal        func_800F82A4
    /* CB688 800DAE88 21300000 */   addu      $a2, $zero, $zero
    /* CB68C 800DAE8C 94004426 */  addiu      $a0, $s2, 0x94
    /* CB690 800DAE90 21200402 */  addu       $a0, $s0, $a0
    /* CB694 800DAE94 21280000 */  addu       $a1, $zero, $zero
    /* CB698 800DAE98 A9E0030C */  jal        func_800F82A4
    /* CB69C 800DAE9C 21300000 */   addu      $a2, $zero, $zero
    /* CB6A0 800DAEA0 28014426 */  addiu      $a0, $s2, 0x128
    /* CB6A4 800DAEA4 21200402 */  addu       $a0, $s0, $a0
    /* CB6A8 800DAEA8 21280000 */  addu       $a1, $zero, $zero
    /* CB6AC 800DAEAC A9E0030C */  jal        func_800F82A4
    /* CB6B0 800DAEB0 21300000 */   addu      $a2, $zero, $zero
    /* CB6B4 800DAEB4 21201302 */  addu       $a0, $s0, $s3
    /* CB6B8 800DAEB8 21280000 */  addu       $a1, $zero, $zero
    /* CB6BC 800DAEBC A9E0030C */  jal        func_800F82A4
    /* CB6C0 800DAEC0 21300000 */   addu      $a2, $zero, $zero
    /* CB6C4 800DAEC4 986B0308 */  j          .L800DAE60
    /* CB6C8 800DAEC8 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAECC:
    /* CB6CC 800DAECC 21880000 */  addu       $s1, $zero, $zero
    /* CB6D0 800DAED0 1280103C */  lui        $s0, %hi(D_80127208)
    /* CB6D4 800DAED4 08721026 */  addiu      $s0, $s0, %lo(D_80127208)
  .L800DAED8:
    /* CB6D8 800DAED8 0400222A */  slti       $v0, $s1, 0x4
    /* CB6DC 800DAEDC 0B004010 */  beqz       $v0, .L800DAF0C
    /* CB6E0 800DAEE0 C0201100 */   sll       $a0, $s1, 3
    /* CB6E4 800DAEE4 21209100 */  addu       $a0, $a0, $s1
    /* CB6E8 800DAEE8 80200400 */  sll        $a0, $a0, 2
    /* CB6EC 800DAEEC 21209100 */  addu       $a0, $a0, $s1
    /* CB6F0 800DAEF0 80200400 */  sll        $a0, $a0, 2
    /* CB6F4 800DAEF4 21209000 */  addu       $a0, $a0, $s0
    /* CB6F8 800DAEF8 21280000 */  addu       $a1, $zero, $zero
    /* CB6FC 800DAEFC A9E0030C */  jal        func_800F82A4
    /* CB700 800DAF00 21300000 */   addu      $a2, $zero, $zero
    /* CB704 800DAF04 B66B0308 */  j          .L800DAED8
    /* CB708 800DAF08 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAF0C:
    /* CB70C 800DAF0C 21880000 */  addu       $s1, $zero, $zero
    /* CB710 800DAF10 1380103C */  lui        $s0, %hi(D_801379A8)
    /* CB714 800DAF14 A8791026 */  addiu      $s0, $s0, %lo(D_801379A8)
  .L800DAF18:
    /* CB718 800DAF18 0C00222A */  slti       $v0, $s1, 0xC
    /* CB71C 800DAF1C 0B004010 */  beqz       $v0, .L800DAF4C
    /* CB720 800DAF20 C0201100 */   sll       $a0, $s1, 3
    /* CB724 800DAF24 21209100 */  addu       $a0, $a0, $s1
    /* CB728 800DAF28 80200400 */  sll        $a0, $a0, 2
    /* CB72C 800DAF2C 21209100 */  addu       $a0, $a0, $s1
    /* CB730 800DAF30 80200400 */  sll        $a0, $a0, 2
    /* CB734 800DAF34 21209000 */  addu       $a0, $a0, $s0
    /* CB738 800DAF38 21280000 */  addu       $a1, $zero, $zero
    /* CB73C 800DAF3C A9E0030C */  jal        func_800F82A4
    /* CB740 800DAF40 21300000 */   addu      $a2, $zero, $zero
    /* CB744 800DAF44 C66B0308 */  j          .L800DAF18
    /* CB748 800DAF48 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAF4C:
    /* CB74C 800DAF4C 21880000 */  addu       $s1, $zero, $zero
    /* CB750 800DAF50 1380103C */  lui        $s0, %hi(D_8012BF80)
    /* CB754 800DAF54 80BF1026 */  addiu      $s0, $s0, %lo(D_8012BF80)
  .L800DAF58:
    /* CB758 800DAF58 3700222A */  slti       $v0, $s1, 0x37
    /* CB75C 800DAF5C 0B004010 */  beqz       $v0, .L800DAF8C
    /* CB760 800DAF60 C0201100 */   sll       $a0, $s1, 3
    /* CB764 800DAF64 21209100 */  addu       $a0, $a0, $s1
    /* CB768 800DAF68 80200400 */  sll        $a0, $a0, 2
    /* CB76C 800DAF6C 21209100 */  addu       $a0, $a0, $s1
    /* CB770 800DAF70 80200400 */  sll        $a0, $a0, 2
    /* CB774 800DAF74 21209000 */  addu       $a0, $a0, $s0
    /* CB778 800DAF78 21280000 */  addu       $a1, $zero, $zero
    /* CB77C 800DAF7C A9E0030C */  jal        func_800F82A4
    /* CB780 800DAF80 21300000 */   addu      $a2, $zero, $zero
    /* CB784 800DAF84 D66B0308 */  j          .L800DAF58
    /* CB788 800DAF88 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAF8C:
    /* CB78C 800DAF8C 1380043C */  lui        $a0, %hi(D_801299EC)
    /* CB790 800DAF90 EC998424 */  addiu      $a0, $a0, %lo(D_801299EC)
    /* CB794 800DAF94 21280000 */  addu       $a1, $zero, $zero
    /* CB798 800DAF98 A9E0030C */  jal        func_800F82A4
    /* CB79C 800DAF9C 21300000 */   addu      $a2, $zero, $zero
    /* CB7A0 800DAFA0 21880000 */  addu       $s1, $zero, $zero
    /* CB7A4 800DAFA4 1380103C */  lui        $s0, %hi(D_80137508)
    /* CB7A8 800DAFA8 08751026 */  addiu      $s0, $s0, %lo(D_80137508)
  .L800DAFAC:
    /* CB7AC 800DAFAC 0800222A */  slti       $v0, $s1, 0x8
    /* CB7B0 800DAFB0 0B004010 */  beqz       $v0, .L800DAFE0
    /* CB7B4 800DAFB4 C0201100 */   sll       $a0, $s1, 3
    /* CB7B8 800DAFB8 21209100 */  addu       $a0, $a0, $s1
    /* CB7BC 800DAFBC 80200400 */  sll        $a0, $a0, 2
    /* CB7C0 800DAFC0 21209100 */  addu       $a0, $a0, $s1
    /* CB7C4 800DAFC4 80200400 */  sll        $a0, $a0, 2
    /* CB7C8 800DAFC8 21209000 */  addu       $a0, $a0, $s0
    /* CB7CC 800DAFCC 21280000 */  addu       $a1, $zero, $zero
    /* CB7D0 800DAFD0 A9E0030C */  jal        func_800F82A4
    /* CB7D4 800DAFD4 21300000 */   addu      $a2, $zero, $zero
    /* CB7D8 800DAFD8 EB6B0308 */  j          .L800DAFAC
    /* CB7DC 800DAFDC 01003126 */   addiu     $s1, $s1, 0x1
  .L800DAFE0:
    /* CB7E0 800DAFE0 2400BF8F */  lw         $ra, 0x24($sp)
    /* CB7E4 800DAFE4 2000B48F */  lw         $s4, 0x20($sp)
    /* CB7E8 800DAFE8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* CB7EC 800DAFEC 1800B28F */  lw         $s2, 0x18($sp)
    /* CB7F0 800DAFF0 1400B18F */  lw         $s1, 0x14($sp)
    /* CB7F4 800DAFF4 1000B08F */  lw         $s0, 0x10($sp)
    /* CB7F8 800DAFF8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* CB7FC 800DAFFC 0800E003 */  jr         $ra
    /* CB800 800DB000 00000000 */   nop
endlabel func_800DA694
