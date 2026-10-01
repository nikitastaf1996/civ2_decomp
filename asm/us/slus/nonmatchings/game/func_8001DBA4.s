.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DBA4, 0x7C

glabel func_8001DBA4
    /* E3A4 8001DBA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E3A8 8001DBA8 1400BFAF */  sw         $ra, 0x14($sp)
    /* E3AC 8001DBAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* E3B0 8001DBB0 21808000 */  addu       $s0, $a0, $zero
    /* E3B4 8001DBB4 15000012 */  beqz       $s0, .L8001DC0C
    /* E3B8 8001DBB8 00000000 */   nop
  .L8001DBBC:
    /* E3BC 8001DBBC 1D76000C */  jal        func_8001D874
    /* E3C0 8001DBC0 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* E3C4 8001DBC4 6876000C */  jal        func_8001D9A0
    /* E3C8 8001DBC8 00000000 */   nop
    /* E3CC 8001DBCC D975000C */  jal        func_8001D764
    /* E3D0 8001DBD0 00000000 */   nop
    /* E3D4 8001DBD4 23B3000C */  jal        VSync
    /* E3D8 8001DBD8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* E3DC 8001DBDC 0580013C */  lui        $at, %hi(D_80056520)
    /* E3E0 8001DBE0 206522AC */  sw         $v0, %lo(D_80056520)($at)
    /* E3E4 8001DBE4 0580023C */  lui        $v0, %hi(D_80056550)
    /* E3E8 8001DBE8 5065428C */  lw         $v0, %lo(D_80056550)($v0)
    /* E3EC 8001DBEC 00000000 */  nop
    /* E3F0 8001DBF0 01004224 */  addiu      $v0, $v0, 0x1
    /* E3F4 8001DBF4 0580013C */  lui        $at, %hi(D_80056550)
    /* E3F8 8001DBF8 506522AC */  sw         $v0, %lo(D_80056550)($at)
    /* E3FC 8001DBFC 946C000C */  jal        func_8001B250
    /* E400 8001DC00 00000000 */   nop
    /* E404 8001DC04 EDFF0016 */  bnez       $s0, .L8001DBBC
    /* E408 8001DC08 00000000 */   nop
  .L8001DC0C:
    /* E40C 8001DC0C 1400BF8F */  lw         $ra, 0x14($sp)
    /* E410 8001DC10 1000B08F */  lw         $s0, 0x10($sp)
    /* E414 8001DC14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E418 8001DC18 0800E003 */  jr         $ra
    /* E41C 8001DC1C 00000000 */   nop
endlabel func_8001DBA4
