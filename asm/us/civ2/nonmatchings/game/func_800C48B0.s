.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C48B0, 0x198

glabel func_800C48B0
    /* B50B0 800C48B0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* B50B4 800C48B4 3800B4AF */  sw         $s4, 0x38($sp)
    /* B50B8 800C48B8 21A08000 */  addu       $s4, $a0, $zero
    /* B50BC 800C48BC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* B50C0 800C48C0 3400B3AF */  sw         $s3, 0x34($sp)
    /* B50C4 800C48C4 3000B2AF */  sw         $s2, 0x30($sp)
    /* B50C8 800C48C8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* B50CC 800C48CC 221C030C */  jal        func_800C7088
    /* B50D0 800C48D0 2800B0AF */   sw        $s0, 0x28($sp)
    /* B50D4 800C48D4 1280103C */  lui        $s0, %hi(D_8011A282)
    /* B50D8 800C48D8 82A21026 */  addiu      $s0, $s0, %lo(D_8011A282)
    /* B50DC 800C48DC 00000486 */  lh         $a0, 0x0($s0)
    /* B50E0 800C48E0 21900000 */  addu       $s2, $zero, $zero
    /* B50E4 800C48E4 FED4030C */  jal        func_800F53F8
    /* B50E8 800C48E8 00210400 */   sll       $a0, $a0, 4
    /* B50EC 800C48EC 21204000 */  addu       $a0, $v0, $zero
    /* B50F0 800C48F0 D00B84AF */  sw         $a0, %gp_rel(D_801590A8)($gp)
    /* B50F4 800C48F4 7CD6030C */  jal        func_800F59F0
    /* B50F8 800C48F8 00000000 */   nop
    /* B50FC 800C48FC 00000386 */  lh         $v1, 0x0($s0)
    /* B5100 800C4900 00000000 */  nop
    /* B5104 800C4904 22006018 */  blez       $v1, .L800C4990
    /* B5108 800C4908 21884000 */   addu      $s1, $v0, $zero
    /* B510C 800C490C 21980000 */  addu       $s3, $zero, $zero
    /* B5110 800C4910 0C003026 */  addiu      $s0, $s1, 0xC
  .L800C4914:
    /* B5114 800C4914 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B5118 800C4918 21083300 */  addu       $at, $at, $s3
    /* B511C 800C491C D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* B5120 800C4920 00000000 */  nop
    /* B5124 800C4924 14005414 */  bne        $v0, $s4, .L800C4978
    /* B5128 800C4928 00000000 */   nop
    /* B512C 800C492C 0C25020C */  jal        func_80089430
    /* B5130 800C4930 21204002 */   addu      $a0, $s2, $zero
    /* B5134 800C4934 0C63000C */  jal        func_80018C30
    /* B5138 800C4938 01000424 */   addiu     $a0, $zero, 0x1
    /* B513C 800C493C 1680023C */  lui        $v0, %hi(D_80158564)
    /* B5140 800C4940 6485428C */  lw         $v0, %lo(D_80158564)($v0)
    /* B5144 800C4944 00000000 */  nop
    /* B5148 800C4948 000022AE */  sw         $v0, 0x0($s1)
    /* B514C 800C494C 1680023C */  lui        $v0, %hi(D_80158568)
    /* B5150 800C4950 6885428C */  lw         $v0, %lo(D_80158568)($v0)
    /* B5154 800C4954 1680033C */  lui        $v1, %hi(D_8015858C)
    /* B5158 800C4958 8C85638C */  lw         $v1, %lo(D_8015858C)($v1)
    /* B515C 800C495C 1680043C */  lui        $a0, %hi(D_8015856C)
    /* B5160 800C4960 6C85848C */  lw         $a0, %lo(D_8015856C)($a0)
    /* B5164 800C4964 10003126 */  addiu      $s1, $s1, 0x10
    /* B5168 800C4968 F8FF02AE */  sw         $v0, -0x8($s0)
    /* B516C 800C496C FCFF03AE */  sw         $v1, -0x4($s0)
    /* B5170 800C4970 000004AE */  sw         $a0, 0x0($s0)
    /* B5174 800C4974 10001026 */  addiu      $s0, $s0, 0x10
  .L800C4978:
    /* B5178 800C4978 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B517C 800C497C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B5180 800C4980 01005226 */  addiu      $s2, $s2, 0x1
    /* B5184 800C4984 2A104202 */  slt        $v0, $s2, $v0
    /* B5188 800C4988 E2FF4014 */  bnez       $v0, .L800C4914
    /* B518C 800C498C 58007326 */   addiu     $s3, $s3, 0x58
  .L800C4990:
    /* B5190 800C4990 D00B848F */  lw         $a0, %gp_rel(D_801590A8)($gp)
    /* B5194 800C4994 89D6030C */  jal        func_800F5A24
    /* B5198 800C4998 00000000 */   nop
    /* B519C 800C499C 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B51A0 800C49A0 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B51A4 800C49A4 21200002 */  addu       $a0, $s0, $zero
    /* B51A8 800C49A8 0A000524 */  addiu      $a1, $zero, 0xA
    /* B51AC 800C49AC 2C010224 */  addiu      $v0, $zero, 0x12C
    /* B51B0 800C49B0 1000A2AF */  sw         $v0, 0x10($sp)
    /* B51B4 800C49B4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* B51B8 800C49B8 0A000624 */  addiu      $a2, $zero, 0xA
    /* B51BC 800C49BC 01000724 */  addiu      $a3, $zero, 0x1
    /* B51C0 800C49C0 1400A2AF */  sw         $v0, 0x14($sp)
    /* B51C4 800C49C4 1800A0AF */  sw         $zero, 0x18($sp)
    /* B51C8 800C49C8 6FE5020C */  jal        func_800B95BC
    /* B51CC 800C49CC 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* B51D0 800C49D0 1280013C */  lui        $at, %hi(D_801210C4)
    /* B51D4 800C49D4 C41034AC */  sw         $s4, %lo(D_801210C4)($at)
    /* B51D8 800C49D8 50E6020C */  jal        func_800B9940
    /* B51DC 800C49DC 21200002 */   addu      $a0, $s0, $zero
    /* B51E0 800C49E0 0C80053C */  lui        $a1, %hi(func_800C3B5C)
    /* B51E4 800C49E4 5C3BA524 */  addiu      $a1, $a1, %lo(func_800C3B5C)
    /* B51E8 800C49E8 82DF030C */  jal        func_800F7E08
    /* B51EC 800C49EC 21200002 */   addu      $a0, $s0, $zero
    /* B51F0 800C49F0 E5DE030C */  jal        func_800F7B94
    /* B51F4 800C49F4 21200002 */   addu      $a0, $s0, $zero
    /* B51F8 800C49F8 F8EA030C */  jal        func_800FABE0
    /* B51FC 800C49FC 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B5200 800C4A00 05DD030C */  jal        func_800F7414
    /* B5204 800C4A04 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B5208 800C4A08 14DE030C */  jal        func_800F7850
    /* B520C 800C4A0C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* B5210 800C4A10 29E5020C */  jal        func_800B94A4
    /* B5214 800C4A14 21200002 */   addu      $a0, $s0, $zero
    /* B5218 800C4A18 D00B848F */  lw         $a0, %gp_rel(D_801590A8)($gp)
    /* B521C 800C4A1C C6D5030C */  jal        func_800F5718
    /* B5220 800C4A20 00000000 */   nop
    /* B5224 800C4A24 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* B5228 800C4A28 3800B48F */  lw         $s4, 0x38($sp)
    /* B522C 800C4A2C 3400B38F */  lw         $s3, 0x34($sp)
    /* B5230 800C4A30 3000B28F */  lw         $s2, 0x30($sp)
    /* B5234 800C4A34 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B5238 800C4A38 2800B08F */  lw         $s0, 0x28($sp)
    /* B523C 800C4A3C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* B5240 800C4A40 0800E003 */  jr         $ra
    /* B5244 800C4A44 00000000 */   nop
endlabel func_800C48B0
