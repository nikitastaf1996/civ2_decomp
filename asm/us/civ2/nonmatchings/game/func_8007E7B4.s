.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E7B4, 0x88

glabel func_8007E7B4
    /* 6EFB4 8007E7B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6EFB8 8007E7B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6EFBC 8007E7BC 1B008004 */  bltz       $a0, .L8007E82C
    /* 6EFC0 8007E7C0 21280000 */   addu      $a1, $zero, $zero
    /* 6EFC4 8007E7C4 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6EFC8 8007E7C8 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6EFCC 8007E7CC 00000000 */  nop
    /* 6EFD0 8007E7D0 2A108200 */  slt        $v0, $a0, $v0
    /* 6EFD4 8007E7D4 15004010 */  beqz       $v0, .L8007E82C
    /* 6EFD8 8007E7D8 00000000 */   nop
    /* 6EFDC 8007E7DC 40100400 */  sll        $v0, $a0, 1
    /* 6EFE0 8007E7E0 21104400 */  addu       $v0, $v0, $a0
    /* 6EFE4 8007E7E4 80100200 */  sll        $v0, $v0, 2
    /* 6EFE8 8007E7E8 21104400 */  addu       $v0, $v0, $a0
    /* 6EFEC 8007E7EC 40180200 */  sll        $v1, $v0, 1
    /* 6EFF0 8007E7F0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6EFF4 8007E7F4 21082300 */  addu       $at, $at, $v1
    /* 6EFF8 8007E7F8 B4D62284 */  lh         $v0, %lo(D_8010D6B4)($at)
    /* 6EFFC 8007E7FC 00000000 */  nop
    /* 6F000 8007E800 0A004004 */  bltz       $v0, .L8007E82C
    /* 6F004 8007E804 00000000 */   nop
    /* 6F008 8007E808 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6F00C 8007E80C 21082300 */  addu       $at, $at, $v1
    /* 6F010 8007E810 C3D62380 */  lb         $v1, %lo(D_8010D6C3)($at)
    /* 6F014 8007E814 03000224 */  addiu      $v0, $zero, 0x3
    /* 6F018 8007E818 04006210 */  beq        $v1, $v0, .L8007E82C
    /* 6F01C 8007E81C 00000000 */   nop
    /* 6F020 8007E820 A8ED010C */  jal        func_8007B6A0
    /* 6F024 8007E824 00000000 */   nop
    /* 6F028 8007E828 2B280200 */  sltu       $a1, $zero, $v0
  .L8007E82C:
    /* 6F02C 8007E82C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6F030 8007E830 2110A000 */  addu       $v0, $a1, $zero
    /* 6F034 8007E834 0800E003 */  jr         $ra
    /* 6F038 8007E838 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8007E7B4
