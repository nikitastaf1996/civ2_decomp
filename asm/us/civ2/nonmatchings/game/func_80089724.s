.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089724, 0xD0

glabel func_80089724
    /* 79F24 80089724 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 79F28 80089728 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 79F2C 8008972C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 79F30 80089730 1400B1AF */  sw         $s1, 0x14($sp)
    /* 79F34 80089734 1000B0AF */  sw         $s0, 0x10($sp)
    /* 79F38 80089738 21908000 */  addu       $s2, $a0, $zero
    /* 79F3C 8008973C 3D25020C */  jal        func_800894F4
    /* 79F40 80089740 2120A000 */   addu      $a0, $a1, $zero
    /* 79F44 80089744 21884000 */  addu       $s1, $v0, $zero
    /* 79F48 80089748 6400222A */  slti       $v0, $s1, 0x64
    /* 79F4C 8008974C 1B004014 */  bnez       $v0, .L800897BC
    /* 79F50 80089750 EB51023C */   lui       $v0, (0x51EB851F >> 16)
    /* 79F54 80089754 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 79F58 80089758 18002202 */  mult       $s1, $v0
    /* 79F5C 8008975C 10180000 */  mfhi       $v1
    /* 79F60 80089760 43810300 */  sra        $s0, $v1, 5
    /* 79F64 80089764 C3171100 */  sra        $v0, $s1, 31
    /* 79F68 80089768 23800202 */  subu       $s0, $s0, $v0
    /* 79F6C 8008976C 21204002 */  addu       $a0, $s2, $zero
    /* 79F70 80089770 9C1B030C */  jal        func_800C6E70
    /* 79F74 80089774 21280002 */   addu      $a1, $s0, $zero
    /* 79F78 80089778 1680053C */  lui        $a1, %hi(D_80158804)
    /* 79F7C 8008977C 0488A524 */  addiu      $a1, $a1, %lo(D_80158804)
    /* 79F80 80089780 9987030C */  jal        func_800E1E64
    /* 79F84 80089784 21204002 */   addu      $a0, $s2, $zero
    /* 79F88 80089788 40101000 */  sll        $v0, $s0, 1
    /* 79F8C 8008978C 21105000 */  addu       $v0, $v0, $s0
    /* 79F90 80089790 C0100200 */  sll        $v0, $v0, 3
    /* 79F94 80089794 21105000 */  addu       $v0, $v0, $s0
    /* 79F98 80089798 80100200 */  sll        $v0, $v0, 2
    /* 79F9C 8008979C 23882202 */  subu       $s1, $s1, $v0
    /* 79FA0 800897A0 0A00222A */  slti       $v0, $s1, 0xA
    /* 79FA4 800897A4 05004010 */  beqz       $v0, .L800897BC
    /* 79FA8 800897A8 00000000 */   nop
    /* 79FAC 800897AC 1680053C */  lui        $a1, %hi(D_80158808)
    /* 79FB0 800897B0 0888A524 */  addiu      $a1, $a1, %lo(D_80158808)
    /* 79FB4 800897B4 9987030C */  jal        func_800E1E64
    /* 79FB8 800897B8 21204002 */   addu      $a0, $s2, $zero
  .L800897BC:
    /* 79FBC 800897BC 21204002 */  addu       $a0, $s2, $zero
    /* 79FC0 800897C0 9C1B030C */  jal        func_800C6E70
    /* 79FC4 800897C4 21282002 */   addu      $a1, $s1, $zero
    /* 79FC8 800897C8 1680053C */  lui        $a1, %hi(D_8015880C)
    /* 79FCC 800897CC 0C88A524 */  addiu      $a1, $a1, %lo(D_8015880C)
    /* 79FD0 800897D0 9987030C */  jal        func_800E1E64
    /* 79FD4 800897D4 21204002 */   addu      $a0, $s2, $zero
    /* 79FD8 800897D8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 79FDC 800897DC 1800B28F */  lw         $s2, 0x18($sp)
    /* 79FE0 800897E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 79FE4 800897E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 79FE8 800897E8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 79FEC 800897EC 0800E003 */  jr         $ra
    /* 79FF0 800897F0 00000000 */   nop
endlabel func_80089724
