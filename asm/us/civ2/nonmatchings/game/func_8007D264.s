.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D264, 0x18C

glabel func_8007D264
    /* 6DA64 8007D264 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6DA68 8007D268 3400BFAF */  sw         $ra, 0x34($sp)
    /* 6DA6C 8007D26C 3000BEAF */  sw         $fp, 0x30($sp)
    /* 6DA70 8007D270 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 6DA74 8007D274 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6DA78 8007D278 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6DA7C 8007D27C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6DA80 8007D280 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6DA84 8007D284 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DA88 8007D288 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DA8C 8007D28C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DA90 8007D290 21B08000 */  addu       $s6, $a0, $zero
    /* 6DA94 8007D294 21A8A000 */  addu       $s5, $a1, $zero
    /* 6DA98 8007D298 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6DA9C 8007D29C 080382AF */  sw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6DAA0 8007D2A0 F760020C */  jal        func_800983DC
    /* 6DAA4 8007D2A4 21A0C000 */   addu      $s4, $a2, $zero
    /* 6DAA8 8007D2A8 21F04000 */  addu       $fp, $v0, $zero
    /* 6DAAC 8007D2AC 21980000 */  addu       $s3, $zero, $zero
    /* 6DAB0 8007D2B0 40101400 */  sll        $v0, $s4, 1
    /* 6DAB4 8007D2B4 21105400 */  addu       $v0, $v0, $s4
    /* 6DAB8 8007D2B8 80100200 */  sll        $v0, $v0, 2
    /* 6DABC 8007D2BC 23105400 */  subu       $v0, $v0, $s4
    /* 6DAC0 8007D2C0 00110200 */  sll        $v0, $v0, 4
    /* 6DAC4 8007D2C4 23105400 */  subu       $v0, $v0, $s4
    /* 6DAC8 8007D2C8 C0100200 */  sll        $v0, $v0, 3
    /* 6DACC 8007D2CC 1180033C */  lui        $v1, %hi(D_801176B4)
    /* 6DAD0 8007D2D0 B4766324 */  addiu      $v1, $v1, %lo(D_801176B4)
    /* 6DAD4 8007D2D4 21B84300 */  addu       $s7, $v0, $v1
  .L8007D2D8:
    /* 6DAD8 8007D2D8 0803828F */  lw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6DADC 8007D2DC 00000000 */  nop
    /* 6DAE0 8007D2E0 32004104 */  bgez       $v0, .L8007D3AC
    /* 6DAE4 8007D2E4 0800622A */   slti      $v0, $s3, 0x8
    /* 6DAE8 8007D2E8 30004010 */  beqz       $v0, .L8007D3AC
    /* 6DAEC 8007D2EC 00000000 */   nop
    /* 6DAF0 8007D2F0 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 6DAF4 8007D2F4 21083300 */  addu       $at, $at, $s3
    /* 6DAF8 8007D2F8 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 6DAFC 8007D2FC 173B030C */  jal        func_800CEC5C
    /* 6DB00 8007D300 2120C402 */   addu      $a0, $s6, $a0
    /* 6DB04 8007D304 21904000 */  addu       $s2, $v0, $zero
    /* 6DB08 8007D308 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 6DB0C 8007D30C 21083300 */  addu       $at, $at, $s3
    /* 6DB10 8007D310 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 6DB14 8007D314 00000000 */  nop
    /* 6DB18 8007D318 2188A202 */  addu       $s1, $s5, $v0
    /* 6DB1C 8007D31C 0D002006 */  bltz       $s1, .L8007D354
    /* 6DB20 8007D320 21180000 */   addu      $v1, $zero, $zero
    /* 6DB24 8007D324 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6DB28 8007D328 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6DB2C 8007D32C 00000000 */  nop
    /* 6DB30 8007D330 2A102202 */  slt        $v0, $s1, $v0
    /* 6DB34 8007D334 07004010 */  beqz       $v0, .L8007D354
    /* 6DB38 8007D338 00000000 */   nop
    /* 6DB3C 8007D33C 05004006 */  bltz       $s2, .L8007D354
    /* 6DB40 8007D340 00000000 */   nop
    /* 6DB44 8007D344 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6DB48 8007D348 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6DB4C 8007D34C 00000000 */  nop
    /* 6DB50 8007D350 2A184202 */  slt        $v1, $s2, $v0
  .L8007D354:
    /* 6DB54 8007D354 13006010 */  beqz       $v1, .L8007D3A4
    /* 6DB58 8007D358 21204002 */   addu      $a0, $s2, $zero
    /* 6DB5C 8007D35C 3A62020C */  jal        func_800988E8
    /* 6DB60 8007D360 21282002 */   addu      $a1, $s1, $zero
    /* 6DB64 8007D364 21804000 */  addu       $s0, $v0, $zero
    /* 6DB68 8007D368 0E000006 */  bltz       $s0, .L8007D3A4
    /* 6DB6C 8007D36C 00000000 */   nop
    /* 6DB70 8007D370 0C001412 */  beq        $s0, $s4, .L8007D3A4
    /* 6DB74 8007D374 21204002 */   addu      $a0, $s2, $zero
    /* 6DB78 8007D378 F760020C */  jal        func_800983DC
    /* 6DB7C 8007D37C 21282002 */   addu      $a1, $s1, $zero
    /* 6DB80 8007D380 08005E14 */  bne        $v0, $fp, .L8007D3A4
    /* 6DB84 8007D384 80101000 */   sll       $v0, $s0, 2
    /* 6DB88 8007D388 21105700 */  addu       $v0, $v0, $s7
    /* 6DB8C 8007D38C 0000428C */  lw         $v0, 0x0($v0)
    /* 6DB90 8007D390 00000000 */  nop
    /* 6DB94 8007D394 08004230 */  andi       $v0, $v0, 0x8
    /* 6DB98 8007D398 02004014 */  bnez       $v0, .L8007D3A4
    /* 6DB9C 8007D39C 00000000 */   nop
    /* 6DBA0 8007D3A0 080390AF */  sw         $s0, %gp_rel(D_801587E0)($gp)
  .L8007D3A4:
    /* 6DBA4 8007D3A4 B6F40108 */  j          .L8007D2D8
    /* 6DBA8 8007D3A8 01007326 */   addiu     $s3, $s3, 0x1
  .L8007D3AC:
    /* 6DBAC 8007D3AC 0803828F */  lw         $v0, %gp_rel(D_801587E0)($gp)
    /* 6DBB0 8007D3B0 00000000 */  nop
    /* 6DBB4 8007D3B4 27100200 */  nor        $v0, $zero, $v0
    /* 6DBB8 8007D3B8 C2170200 */  srl        $v0, $v0, 31
    /* 6DBBC 8007D3BC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 6DBC0 8007D3C0 3000BE8F */  lw         $fp, 0x30($sp)
    /* 6DBC4 8007D3C4 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 6DBC8 8007D3C8 2800B68F */  lw         $s6, 0x28($sp)
    /* 6DBCC 8007D3CC 2400B58F */  lw         $s5, 0x24($sp)
    /* 6DBD0 8007D3D0 2000B48F */  lw         $s4, 0x20($sp)
    /* 6DBD4 8007D3D4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DBD8 8007D3D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DBDC 8007D3DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DBE0 8007D3E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DBE4 8007D3E4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 6DBE8 8007D3E8 0800E003 */  jr         $ra
    /* 6DBEC 8007D3EC 00000000 */   nop
endlabel func_8007D264
