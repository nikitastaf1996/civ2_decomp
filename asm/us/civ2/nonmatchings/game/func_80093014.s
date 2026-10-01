.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80093014, 0xC4

glabel func_80093014
    /* 83814 80093014 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 83818 80093018 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8381C 8009301C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 83820 80093020 1400B1AF */  sw         $s1, 0x14($sp)
    /* 83824 80093024 1000B0AF */  sw         $s0, 0x10($sp)
    /* 83828 80093028 21808000 */  addu       $s0, $a0, $zero
    /* 8382C 8009302C 2190A000 */  addu       $s2, $a1, $zero
    /* 83830 80093030 0180113C */  lui        $s1, %hi(D_800138BC)
    /* 83834 80093034 BC383126 */  addiu      $s1, $s1, %lo(D_800138BC)
    /* 83838 80093038 280011AE */  sw         $s1, 0x28($s0)
    /* 8383C 8009303C 1C0480AF */  sw         $zero, %gp_rel(D_801588F4)($gp)
    /* 83840 80093040 2C0B0426 */  addiu      $a0, $s0, 0xB2C
    /* 83844 80093044 1BDA030C */  jal        func_800F686C
    /* 83848 80093048 02000524 */   addiu     $a1, $zero, 0x2
    /* 8384C 8009304C 000B0426 */  addiu      $a0, $s0, 0xB00
    /* 83850 80093050 1BDA030C */  jal        func_800F686C
    /* 83854 80093054 02000524 */   addiu     $a1, $zero, 0x2
    /* 83858 80093058 D40A0426 */  addiu      $a0, $s0, 0xAD4
    /* 8385C 8009305C 1BDA030C */  jal        func_800F686C
    /* 83860 80093060 02000524 */   addiu     $a1, $zero, 0x2
    /* 83864 80093064 A80A0426 */  addiu      $a0, $s0, 0xAA8
    /* 83868 80093068 1BDA030C */  jal        func_800F686C
    /* 8386C 8009306C 02000524 */   addiu     $a1, $zero, 0x2
    /* 83870 80093070 7C0A0426 */  addiu      $a0, $s0, 0xA7C
    /* 83874 80093074 1BDA030C */  jal        func_800F686C
    /* 83878 80093078 02000524 */   addiu     $a1, $zero, 0x2
    /* 8387C 8009307C 500A0426 */  addiu      $a0, $s0, 0xA50
    /* 83880 80093080 1BDA030C */  jal        func_800F686C
    /* 83884 80093084 02000524 */   addiu     $a1, $zero, 0x2
    /* 83888 80093088 4C020426 */  addiu      $a0, $s0, 0x24C
    /* 8388C 8009308C 0AC7020C */  jal        func_800B1C28
    /* 83890 80093090 02000524 */   addiu     $a1, $zero, 0x2
    /* 83894 80093094 C4000426 */  addiu      $a0, $s0, 0xC4
    /* 83898 80093098 9BD7030C */  jal        func_800F5E6C
    /* 8389C 8009309C 02000524 */   addiu     $a1, $zero, 0x2
    /* 838A0 800930A0 280011AE */  sw         $s1, 0x28($s0)
    /* 838A4 800930A4 2C000426 */  addiu      $a0, $s0, 0x2C
    /* 838A8 800930A8 F5E9030C */  jal        func_800FA7D4
    /* 838AC 800930AC 21280000 */   addu      $a1, $zero, $zero
    /* 838B0 800930B0 21200002 */  addu       $a0, $s0, $zero
    /* 838B4 800930B4 4CE1030C */  jal        func_800F8530
    /* 838B8 800930B8 21284002 */   addu      $a1, $s2, $zero
    /* 838BC 800930BC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 838C0 800930C0 1800B28F */  lw         $s2, 0x18($sp)
    /* 838C4 800930C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 838C8 800930C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 838CC 800930CC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 838D0 800930D0 0800E003 */  jr         $ra
    /* 838D4 800930D4 00000000 */   nop
endlabel func_80093014
