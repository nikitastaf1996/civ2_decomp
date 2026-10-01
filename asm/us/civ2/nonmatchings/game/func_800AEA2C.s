.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AEA2C, 0x5C

glabel func_800AEA2C
    /* 9F22C 800AEA2C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9F230 800AEA30 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9F234 800AEA34 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9F238 800AEA38 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9F23C 800AEA3C 80001024 */  addiu      $s0, $zero, 0x80
    /* 9F240 800AEA40 02001124 */  addiu      $s1, $zero, 0x2
    /* 9F244 800AEA44 2000022A */  slti       $v0, $s0, 0x20
  .L800AEA48:
    /* 9F248 800AEA48 09004014 */  bnez       $v0, .L800AEA70
    /* 9F24C 800AEA4C 00000000 */   nop
    /* 9F250 800AEA50 1680013C */  lui        $at, %hi(D_801584EC)
    /* 9F254 800AEA54 EC8431AC */  sw         $s1, %lo(D_801584EC)($at)
    /* 9F258 800AEA58 1680013C */  lui        $at, %hi(D_801592E4)
    /* 9F25C 800AEA5C E49230A4 */  sh         $s0, %lo(D_801592E4)($at)
    /* 9F260 800AEA60 8E12040C */  jal        func_80104A38
    /* 9F264 800AEA64 FCFF1026 */   addiu     $s0, $s0, -0x4
    /* 9F268 800AEA68 92BA0208 */  j          .L800AEA48
    /* 9F26C 800AEA6C 2000022A */   slti      $v0, $s0, 0x20
  .L800AEA70:
    /* 9F270 800AEA70 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9F274 800AEA74 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F278 800AEA78 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F27C 800AEA7C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9F280 800AEA80 0800E003 */  jr         $ra
    /* 9F284 800AEA84 00000000 */   nop
endlabel func_800AEA2C
