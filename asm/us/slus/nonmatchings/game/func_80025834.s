.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80025834, 0x84

glabel func_80025834
    /* 16034 80025834 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 16038 80025838 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1603C 8002583C 2E7C000C */  jal        func_8001F0B8
    /* 16040 80025840 01000424 */   addiu     $a0, $zero, 0x1
    /* 16044 80025844 04000224 */  addiu      $v0, $zero, 0x4
    /* 16048 80025848 BA0B82A3 */  sb         $v0, %gp_rel(D_800552CA)($gp)
    /* 1604C 8002584C 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 16050 80025850 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 16054 80025854 02000224 */  addiu      $v0, $zero, 0x2
    /* 16058 80025858 10006214 */  bne        $v1, $v0, .L8002589C
    /* 1605C 8002585C 4A000424 */   addiu     $a0, $zero, 0x4A
    /* 16060 80025860 03000524 */  addiu      $a1, $zero, 0x3
    /* 16064 80025864 A07A000C */  jal        func_8001EA80
    /* 16068 80025868 08000624 */   addiu     $a2, $zero, 0x8
    /* 1606C 8002586C 4D000424 */  addiu      $a0, $zero, 0x4D
    /* 16070 80025870 04000524 */  addiu      $a1, $zero, 0x4
    /* 16074 80025874 A07A000C */  jal        func_8001EA80
    /* 16078 80025878 08000624 */   addiu     $a2, $zero, 0x8
    /* 1607C 8002587C 51000424 */  addiu      $a0, $zero, 0x51
    /* 16080 80025880 05000524 */  addiu      $a1, $zero, 0x5
    /* 16084 80025884 A07A000C */  jal        func_8001EA80
    /* 16088 80025888 08000624 */   addiu     $a2, $zero, 0x8
    /* 1608C 8002588C 56000424 */  addiu      $a0, $zero, 0x56
    /* 16090 80025890 03000524 */  addiu      $a1, $zero, 0x3
    /* 16094 80025894 A07A000C */  jal        func_8001EA80
    /* 16098 80025898 08000624 */   addiu     $a2, $zero, 0x8
  .L8002589C:
    /* 1609C 8002589C 5B95000C */  jal        func_8002556C
    /* 160A0 800258A0 00000000 */   nop
    /* 160A4 800258A4 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 160A8 800258A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 160AC 800258AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 160B0 800258B0 0800E003 */  jr         $ra
    /* 160B4 800258B4 00000000 */   nop
endlabel func_80025834
