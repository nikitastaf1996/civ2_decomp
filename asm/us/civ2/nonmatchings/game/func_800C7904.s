.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C7904, 0x1C4

glabel func_800C7904
    /* B8104 800C7904 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B8108 800C7908 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B810C 800C790C 1800B2AF */  sw         $s2, 0x18($sp)
    /* B8110 800C7910 1400B1AF */  sw         $s1, 0x14($sp)
    /* B8114 800C7914 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8118 800C7918 EFE9030C */  jal        func_800FA7BC
    /* B811C 800C791C 21808000 */   addu      $s0, $a0, $zero
    /* B8120 800C7920 100000AE */  sw         $zero, 0x10($s0)
    /* B8124 800C7924 140000AE */  sw         $zero, 0x14($s0)
    /* B8128 800C7928 180000AE */  sw         $zero, 0x18($s0)
    /* B812C 800C792C 1C0000AE */  sw         $zero, 0x1C($s0)
    /* B8130 800C7930 200000AE */  sw         $zero, 0x20($s0)
    /* B8134 800C7934 240000AE */  sw         $zero, 0x24($s0)
    /* B8138 800C7938 280000AE */  sw         $zero, 0x28($s0)
    /* B813C 800C793C 2C0000AE */  sw         $zero, 0x2C($s0)
    /* B8140 800C7940 300000AE */  sw         $zero, 0x30($s0)
    /* B8144 800C7944 340000AE */  sw         $zero, 0x34($s0)
    /* B8148 800C7948 380000AE */  sw         $zero, 0x38($s0)
    /* B814C 800C794C 3C0000AE */  sw         $zero, 0x3C($s0)
    /* B8150 800C7950 400000AE */  sw         $zero, 0x40($s0)
    /* B8154 800C7954 440000AE */  sw         $zero, 0x44($s0)
    /* B8158 800C7958 480000AE */  sw         $zero, 0x48($s0)
    /* B815C 800C795C 4C0000AE */  sw         $zero, 0x4C($s0)
    /* B8160 800C7960 500000AE */  sw         $zero, 0x50($s0)
    /* B8164 800C7964 540000AE */  sw         $zero, 0x54($s0)
    /* B8168 800C7968 580000AE */  sw         $zero, 0x58($s0)
    /* B816C 800C796C 5C0000AE */  sw         $zero, 0x5C($s0)
    /* B8170 800C7970 600000AE */  sw         $zero, 0x60($s0)
    /* B8174 800C7974 640000AE */  sw         $zero, 0x64($s0)
    /* B8178 800C7978 680000AE */  sw         $zero, 0x68($s0)
    /* B817C 800C797C 6C0000A6 */  sh         $zero, 0x6C($s0)
    /* B8180 800C7980 6E0000A6 */  sh         $zero, 0x6E($s0)
    /* B8184 800C7984 00401224 */  addiu      $s2, $zero, 0x4000
    /* B8188 800C7988 700012A6 */  sh         $s2, 0x70($s0)
    /* B818C 800C798C 720012A6 */  sh         $s2, 0x72($s0)
    /* B8190 800C7990 7A0000A6 */  sh         $zero, 0x7A($s0)
    /* B8194 800C7994 7C0000A6 */  sh         $zero, 0x7C($s0)
    /* B8198 800C7998 740000A6 */  sh         $zero, 0x74($s0)
    /* B819C 800C799C 01001124 */  addiu      $s1, $zero, 0x1
    /* B81A0 800C79A0 760011A6 */  sh         $s1, 0x76($s0)
    /* B81A4 800C79A4 780011A6 */  sh         $s1, 0x78($s0)
    /* B81A8 800C79A8 9AE0030C */  jal        func_800F8268
    /* B81AC 800C79AC 84000426 */   addiu     $a0, $s0, 0x84
    /* B81B0 800C79B0 EFE9030C */  jal        func_800FA7BC
    /* B81B4 800C79B4 B0000426 */   addiu     $a0, $s0, 0xB0
    /* B81B8 800C79B8 C00000AE */  sw         $zero, 0xC0($s0)
    /* B81BC 800C79BC C40000AE */  sw         $zero, 0xC4($s0)
    /* B81C0 800C79C0 C80000AE */  sw         $zero, 0xC8($s0)
    /* B81C4 800C79C4 CC0000AE */  sw         $zero, 0xCC($s0)
    /* B81C8 800C79C8 D00000AE */  sw         $zero, 0xD0($s0)
    /* B81CC 800C79CC D40000AE */  sw         $zero, 0xD4($s0)
    /* B81D0 800C79D0 D80000AE */  sw         $zero, 0xD8($s0)
    /* B81D4 800C79D4 DC0000AE */  sw         $zero, 0xDC($s0)
    /* B81D8 800C79D8 E00000AE */  sw         $zero, 0xE0($s0)
    /* B81DC 800C79DC E40000AE */  sw         $zero, 0xE4($s0)
    /* B81E0 800C79E0 E80000AE */  sw         $zero, 0xE8($s0)
    /* B81E4 800C79E4 EC0000AE */  sw         $zero, 0xEC($s0)
    /* B81E8 800C79E8 F00000AE */  sw         $zero, 0xF0($s0)
    /* B81EC 800C79EC F40000AE */  sw         $zero, 0xF4($s0)
    /* B81F0 800C79F0 F80000AE */  sw         $zero, 0xF8($s0)
    /* B81F4 800C79F4 FC0000AE */  sw         $zero, 0xFC($s0)
    /* B81F8 800C79F8 000100AE */  sw         $zero, 0x100($s0)
    /* B81FC 800C79FC 040100AE */  sw         $zero, 0x104($s0)
    /* B8200 800C7A00 080100AE */  sw         $zero, 0x108($s0)
    /* B8204 800C7A04 0C0100AE */  sw         $zero, 0x10C($s0)
    /* B8208 800C7A08 100100AE */  sw         $zero, 0x110($s0)
    /* B820C 800C7A0C 140100AE */  sw         $zero, 0x114($s0)
    /* B8210 800C7A10 180100AE */  sw         $zero, 0x118($s0)
    /* B8214 800C7A14 1C0100A6 */  sh         $zero, 0x11C($s0)
    /* B8218 800C7A18 1E0100A6 */  sh         $zero, 0x11E($s0)
    /* B821C 800C7A1C 200112A6 */  sh         $s2, 0x120($s0)
    /* B8220 800C7A20 220112A6 */  sh         $s2, 0x122($s0)
    /* B8224 800C7A24 2A0100A6 */  sh         $zero, 0x12A($s0)
    /* B8228 800C7A28 2C0100A6 */  sh         $zero, 0x12C($s0)
    /* B822C 800C7A2C 240100A6 */  sh         $zero, 0x124($s0)
    /* B8230 800C7A30 260111A6 */  sh         $s1, 0x126($s0)
    /* B8234 800C7A34 280111A6 */  sh         $s1, 0x128($s0)
    /* B8238 800C7A38 340100AE */  sw         $zero, 0x134($s0)
    /* B823C 800C7A3C 380100AE */  sw         $zero, 0x138($s0)
    /* B8240 800C7A40 3C0100AE */  sw         $zero, 0x13C($s0)
    /* B8244 800C7A44 01000224 */  addiu      $v0, $zero, 0x1
    /* B8248 800C7A48 400102A2 */  sb         $v0, 0x140($s0)
    /* B824C 800C7A4C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* B8250 800C7A50 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* B8254 800C7A54 AC0002AE */  sw         $v0, 0xAC($s0)
    /* B8258 800C7A58 340100AE */  sw         $zero, 0x134($s0)
    /* B825C 800C7A5C 440100AE */  sw         $zero, 0x144($s0)
    /* B8260 800C7A60 9AE0030C */  jal        func_800F8268
    /* B8264 800C7A64 48010426 */   addiu     $a0, $s0, 0x148
    /* B8268 800C7A68 FCEC030C */  jal        func_800FB3F0
    /* B826C 800C7A6C 74010426 */   addiu     $a0, $s0, 0x174
    /* B8270 800C7A70 FCEC030C */  jal        func_800FB3F0
    /* B8274 800C7A74 08020426 */   addiu     $a0, $s0, 0x208
    /* B8278 800C7A78 9C0200AE */  sw         $zero, 0x29C($s0)
    /* B827C 800C7A7C 540C90AF */  sw         $s0, %gp_rel(D_8015912C)($gp)
    /* B8280 800C7A80 BC0200AE */  sw         $zero, 0x2BC($s0)
    /* B8284 800C7A84 68000224 */  addiu      $v0, $zero, 0x68
    /* B8288 800C7A88 B40202A6 */  sh         $v0, 0x2B4($s0)
    /* B828C 800C7A8C 1C000224 */  addiu      $v0, $zero, 0x1C
    /* B8290 800C7A90 B60202A6 */  sh         $v0, 0x2B6($s0)
    /* B8294 800C7A94 D8000224 */  addiu      $v0, $zero, 0xD8
    /* B8298 800C7A98 B80202A6 */  sh         $v0, 0x2B8($s0)
    /* B829C 800C7A9C A5000224 */  addiu      $v0, $zero, 0xA5
    /* B82A0 800C7AA0 BA0202A6 */  sh         $v0, 0x2BA($s0)
    /* B82A4 800C7AA4 C00200AE */  sw         $zero, 0x2C0($s0)
    /* B82A8 800C7AA8 21100002 */  addu       $v0, $s0, $zero
    /* B82AC 800C7AAC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B82B0 800C7AB0 1800B28F */  lw         $s2, 0x18($sp)
    /* B82B4 800C7AB4 1400B18F */  lw         $s1, 0x14($sp)
    /* B82B8 800C7AB8 1000B08F */  lw         $s0, 0x10($sp)
    /* B82BC 800C7ABC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B82C0 800C7AC0 0800E003 */  jr         $ra
    /* B82C4 800C7AC4 00000000 */   nop
endlabel func_800C7904
