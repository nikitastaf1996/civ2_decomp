.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A392C, 0xD8

glabel func_800A392C
    /* 9412C 800A392C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 94130 800A3930 2000BFAF */  sw         $ra, 0x20($sp)
    /* 94134 800A3934 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 94138 800A3938 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9413C 800A393C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 94140 800A3940 1000B0AF */  sw         $s0, 0x10($sp)
    /* 94144 800A3944 21888000 */  addu       $s1, $a0, $zero
    /* 94148 800A3948 2198A000 */  addu       $s3, $a1, $zero
    /* 9414C 800A394C BE0580A3 */  sb         $zero, %gp_rel(D_80158A96)($gp)
    /* 94150 800A3950 88052426 */  addiu      $a0, $s1, 0x588
    /* 94154 800A3954 12ED030C */  jal        func_800FB448
    /* 94158 800A3958 02000524 */   addiu     $a1, $zero, 0x2
    /* 9415C 800A395C F4043026 */  addiu      $s0, $s1, 0x4F4
    /* 94160 800A3960 21200002 */  addu       $a0, $s0, $zero
    /* 94164 800A3964 12ED030C */  jal        func_800FB448
    /* 94168 800A3968 02000524 */   addiu     $a1, $zero, 0x2
    /* 9416C 800A396C 10022226 */  addiu      $v0, $s1, 0x210
    /* 94170 800A3970 0A004010 */  beqz       $v0, .L800A399C
    /* 94174 800A3974 7C012426 */   addiu     $a0, $s1, 0x17C
    /* 94178 800A3978 08005010 */  beq        $v0, $s0, .L800A399C
    /* 9417C 800A397C 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* 94180 800A3980 10023226 */  addiu      $s2, $s1, 0x210
  .L800A3984:
    /* 94184 800A3984 21200002 */  addu       $a0, $s0, $zero
    /* 94188 800A3988 12ED030C */  jal        func_800FB448
    /* 9418C 800A398C 02000524 */   addiu     $a1, $zero, 0x2
    /* 94190 800A3990 FCFF5016 */  bne        $s2, $s0, .L800A3984
    /* 94194 800A3994 6CFF1026 */   addiu     $s0, $s0, -0x94
    /* 94198 800A3998 7C012426 */  addiu      $a0, $s1, 0x17C
  .L800A399C:
    /* 9419C 800A399C 12ED030C */  jal        func_800FB448
    /* 941A0 800A39A0 02000524 */   addiu     $a1, $zero, 0x2
    /* 941A4 800A39A4 50012426 */  addiu      $a0, $s1, 0x150
    /* 941A8 800A39A8 4CE1030C */  jal        func_800F8530
    /* 941AC 800A39AC 02000524 */   addiu     $a1, $zero, 0x2
    /* 941B0 800A39B0 8C003026 */  addiu      $s0, $s1, 0x8C
    /* 941B4 800A39B4 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 941B8 800A39B8 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 941BC 800A39BC B40022AE */  sw         $v0, 0xB4($s1)
    /* 941C0 800A39C0 B8002426 */  addiu      $a0, $s1, 0xB8
    /* 941C4 800A39C4 F5E9030C */  jal        func_800FA7D4
    /* 941C8 800A39C8 21280000 */   addu      $a1, $zero, $zero
    /* 941CC 800A39CC 21200002 */  addu       $a0, $s0, $zero
    /* 941D0 800A39D0 4CE1030C */  jal        func_800F8530
    /* 941D4 800A39D4 02000524 */   addiu     $a1, $zero, 0x2
    /* 941D8 800A39D8 21202002 */  addu       $a0, $s1, $zero
    /* 941DC 800A39DC F5E9030C */  jal        func_800FA7D4
    /* 941E0 800A39E0 21286002 */   addu      $a1, $s3, $zero
    /* 941E4 800A39E4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 941E8 800A39E8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 941EC 800A39EC 1800B28F */  lw         $s2, 0x18($sp)
    /* 941F0 800A39F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 941F4 800A39F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 941F8 800A39F8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 941FC 800A39FC 0800E003 */  jr         $ra
    /* 94200 800A3A00 00000000 */   nop
endlabel func_800A392C
