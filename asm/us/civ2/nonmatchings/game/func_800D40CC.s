.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D40CC, 0x4A0

glabel func_800D40CC
    /* C48CC 800D40CC 90FCBD27 */  addiu      $sp, $sp, -0x370
    /* C48D0 800D40D0 6C03BFAF */  sw         $ra, 0x36C($sp)
    /* C48D4 800D40D4 6803B2AF */  sw         $s2, 0x368($sp)
    /* C48D8 800D40D8 6403B1AF */  sw         $s1, 0x364($sp)
    /* C48DC 800D40DC 6003B0AF */  sw         $s0, 0x360($sp)
    /* C48E0 800D40E0 21888000 */  addu       $s1, $a0, $zero
    /* C48E4 800D40E4 2800A427 */  addiu      $a0, $sp, 0x28
    /* C48E8 800D40E8 ADC5020C */  jal        func_800B16B4
    /* C48EC 800D40EC 00200524 */   addiu     $a1, $zero, 0x2000
    /* C48F0 800D40F0 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* C48F4 800D40F4 FCEC030C */  jal        func_800FB3F0
    /* C48F8 800D40F8 21200002 */   addu      $a0, $s0, $zero
    /* C48FC 800D40FC 1280043C */  lui        $a0, %hi(D_80122AA4)
    /* C4900 800D4100 A42A848C */  lw         $a0, %lo(D_80122AA4)($a0)
    /* C4904 800D4104 0C25020C */  jal        func_80089430
    /* C4908 800D4108 00000000 */   nop
    /* C490C 800D410C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C4910 800D4110 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C4914 800D4114 00000000 */  nop
    /* C4918 800D4118 08004380 */  lb         $v1, 0x8($v0)
    /* C491C 800D411C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C4920 800D4120 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C4924 800D4124 00000000 */  nop
    /* C4928 800D4128 08006210 */  beq        $v1, $v0, .L800D414C
    /* C492C 800D412C 00000000 */   nop
    /* C4930 800D4130 1280023C */  lui        $v0, %hi(D_8011A271)
    /* C4934 800D4134 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* C4938 800D4138 00000000 */  nop
    /* C493C 800D413C 03004014 */  bnez       $v0, .L800D414C
    /* C4940 800D4140 00000000 */   nop
    /* C4944 800D4144 4F510308 */  j          .L800D453C
    /* C4948 800D4148 21200002 */   addu      $a0, $s0, $zero
  .L800D414C:
    /* C494C 800D414C 0C63000C */  jal        func_80018C30
    /* C4950 800D4150 21200000 */   addu      $a0, $zero, $zero
    /* C4954 800D4154 08000224 */  addiu      $v0, $zero, 0x8
    /* C4958 800D4158 1680013C */  lui        $at, %hi(D_801587C4)
    /* C495C 800D415C C48722AC */  sw         $v0, %lo(D_801587C4)($at)
    /* C4960 800D4160 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* C4964 800D4164 21200002 */  addu       $a0, $s0, $zero
    /* C4968 800D4168 20000524 */  addiu      $a1, $zero, 0x20
    /* C496C 800D416C 10000624 */  addiu      $a2, $zero, 0x10
    /* C4970 800D4170 27ED030C */  jal        func_800FB49C
    /* C4974 800D4174 21380000 */   addu      $a3, $zero, $zero
    /* C4978 800D4178 674F030C */  jal        func_800D3D9C
    /* C497C 800D417C 21202002 */   addu      $a0, $s1, $zero
    /* C4980 800D4180 2800B227 */  addiu      $s2, $sp, 0x28
    /* C4984 800D4184 01000224 */  addiu      $v0, $zero, 0x1
    /* C4988 800D4188 1000A0AF */  sw         $zero, 0x10($sp)
    /* C498C 800D418C 1400A0AF */  sw         $zero, 0x14($sp)
    /* C4990 800D4190 1800A0AF */  sw         $zero, 0x18($sp)
    /* C4994 800D4194 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* C4998 800D4198 2000A2AF */  sw         $v0, 0x20($sp)
    /* C499C 800D419C 21204002 */  addu       $a0, $s2, $zero
    /* C49A0 800D41A0 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* C49A4 800D41A4 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* C49A8 800D41A8 C12B0624 */  addiu      $a2, $zero, 0x2BC1
    /* C49AC 800D41AC 2CE0020C */  jal        func_800B80B0
    /* C49B0 800D41B0 21380000 */   addu      $a3, $zero, $zero
    /* C49B4 800D41B4 0880053C */  lui        $a1, %hi(func_8007EEE4)
    /* C49B8 800D41B8 E4EEA524 */  addiu      $a1, $a1, %lo(func_8007EEE4)
    /* C49BC 800D41BC 35C9020C */  jal        func_800B24D4
    /* C49C0 800D41C0 21204002 */   addu      $a0, $s2, $zero
    /* C49C4 800D41C4 21204002 */  addu       $a0, $s2, $zero
    /* C49C8 800D41C8 3BC9020C */  jal        func_800B24EC
    /* C49CC 800D41CC 21280000 */   addu      $a1, $zero, $zero
    /* C49D0 800D41D0 21204002 */  addu       $a0, $s2, $zero
    /* C49D4 800D41D4 21280002 */  addu       $a1, $s0, $zero
    /* C49D8 800D41D8 21302002 */  addu       $a2, $s1, $zero
    /* C49DC 800D41DC 3DC9020C */  jal        func_800B24F4
    /* C49E0 800D41E0 21380000 */   addu      $a3, $zero, $zero
    /* C49E4 800D41E4 1680023C */  lui        $v0, %hi(D_80158694)
    /* C49E8 800D41E8 9486428C */  lw         $v0, %lo(D_80158694)($v0)
    /* C49EC 800D41EC 00000000 */  nop
    /* C49F0 800D41F0 0C004014 */  bnez       $v0, .L800D4224
    /* C49F4 800D41F4 2800A427 */   addiu     $a0, $sp, 0x28
    /* C49F8 800D41F8 1680023C */  lui        $v0, %hi(D_8015894C)
    /* C49FC 800D41FC 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* C4A00 800D4200 00000000 */  nop
    /* C4A04 800D4204 C804448C */  lw         $a0, 0x4C8($v0)
    /* C4A08 800D4208 A63A030C */  jal        func_800CEA98
    /* C4A0C 800D420C 00000000 */   nop
    /* C4A10 800D4210 21204002 */  addu       $a0, $s2, $zero
    /* C4A14 800D4214 21284000 */  addu       $a1, $v0, $zero
    /* C4A18 800D4218 A8C9020C */  jal        func_800B26A0
    /* C4A1C 800D421C 04000624 */   addiu     $a2, $zero, 0x4
    /* C4A20 800D4220 2800A427 */  addiu      $a0, $sp, 0x28
  .L800D4224:
    /* C4A24 800D4224 52DF020C */  jal        func_800B7D48
    /* C4A28 800D4228 21280000 */   addu      $a1, $zero, $zero
    /* C4A2C 800D422C 21904000 */  addu       $s2, $v0, $zero
    /* C4A30 800D4230 C100401A */  blez       $s2, .L800D4538
    /* C4A34 800D4234 03000224 */   addiu     $v0, $zero, 0x3
    /* C4A38 800D4238 1C004216 */  bne        $s2, $v0, .L800D42AC
    /* C4A3C 800D423C 04000224 */   addiu     $v0, $zero, 0x4
    /* C4A40 800D4240 1680023C */  lui        $v0, %hi(D_80158694)
    /* C4A44 800D4244 9486428C */  lw         $v0, %lo(D_80158694)($v0)
    /* C4A48 800D4248 00000000 */  nop
    /* C4A4C 800D424C BB004014 */  bnez       $v0, .L800D453C
    /* C4A50 800D4250 C802A427 */   addiu     $a0, $sp, 0x2C8
    /* C4A54 800D4254 40101100 */  sll        $v0, $s1, 1
    /* C4A58 800D4258 21105100 */  addu       $v0, $v0, $s1
    /* C4A5C 800D425C 80100200 */  sll        $v0, $v0, 2
    /* C4A60 800D4260 21105100 */  addu       $v0, $v0, $s1
    /* C4A64 800D4264 40100200 */  sll        $v0, $v0, 1
    /* C4A68 800D4268 0B000324 */  addiu      $v1, $zero, 0xB
    /* C4A6C 800D426C 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* C4A70 800D4270 21082200 */  addu       $at, $at, $v0
    /* C4A74 800D4274 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* C4A78 800D4278 1680043C */  lui        $a0, %hi(D_80158864)
    /* C4A7C 800D427C 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* C4A80 800D4280 00000000 */  nop
    /* C4A84 800D4284 00008394 */  lhu        $v1, 0x0($a0)
    /* C4A88 800D4288 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* C4A8C 800D428C 21082200 */  addu       $at, $at, $v0
    /* C4A90 800D4290 C6D623A4 */  sh         $v1, %lo(D_8010D6C6)($at)
    /* C4A94 800D4294 02008394 */  lhu        $v1, 0x2($a0)
    /* C4A98 800D4298 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* C4A9C 800D429C 21082200 */  addu       $at, $at, $v0
    /* C4AA0 800D42A0 C8D623A4 */  sh         $v1, %lo(D_8010D6C8)($at)
    /* C4AA4 800D42A4 4F510308 */  j          .L800D453C
    /* C4AA8 800D42A8 C802A427 */   addiu     $a0, $sp, 0x2C8
  .L800D42AC:
    /* C4AAC 800D42AC 53004216 */  bne        $s2, $v0, .L800D43FC
    /* C4AB0 800D42B0 40101100 */   sll       $v0, $s1, 1
    /* C4AB4 800D42B4 1680023C */  lui        $v0, %hi(D_80158694)
    /* C4AB8 800D42B8 9486428C */  lw         $v0, %lo(D_80158694)($v0)
    /* C4ABC 800D42BC 00000000 */  nop
    /* C4AC0 800D42C0 4E004014 */  bnez       $v0, .L800D43FC
    /* C4AC4 800D42C4 40101100 */   sll       $v0, $s1, 1
    /* C4AC8 800D42C8 21105100 */  addu       $v0, $v0, $s1
    /* C4ACC 800D42CC 80100200 */  sll        $v0, $v0, 2
    /* C4AD0 800D42D0 21105100 */  addu       $v0, $v0, $s1
    /* C4AD4 800D42D4 40800200 */  sll        $s0, $v0, 1
    /* C4AD8 800D42D8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* C4ADC 800D42DC 21083000 */  addu       $at, $at, $s0
    /* C4AE0 800D42E0 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* C4AE4 800D42E4 00000000 */  nop
    /* C4AE8 800D42E8 80100300 */  sll        $v0, $v1, 2
    /* C4AEC 800D42EC 21104300 */  addu       $v0, $v0, $v1
    /* C4AF0 800D42F0 80100200 */  sll        $v0, $v0, 2
    /* C4AF4 800D42F4 1180013C */  lui        $at, %hi(D_8010D27C)
    /* C4AF8 800D42F8 21082200 */  addu       $at, $at, $v0
    /* C4AFC 800D42FC 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* C4B00 800D4300 ABAC020C */  jal        func_800AB2AC
    /* C4B04 800D4304 21200000 */   addu      $a0, $zero, $zero
    /* C4B08 800D4308 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* C4B0C 800D430C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* C4B10 800D4310 61260524 */  addiu      $a1, $zero, 0x2661
    /* C4B14 800D4314 21300000 */  addu       $a2, $zero, $zero
    /* C4B18 800D4318 63E4020C */  jal        func_800B918C
    /* C4B1C 800D431C 21382002 */   addu      $a3, $s1, $zero
    /* C4B20 800D4320 01000324 */  addiu      $v1, $zero, 0x1
    /* C4B24 800D4324 85004314 */  bne        $v0, $v1, .L800D453C
    /* C4B28 800D4328 C802A427 */   addiu     $a0, $sp, 0x2C8
    /* C4B2C 800D432C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C4B30 800D4330 21083000 */  addu       $at, $at, $s0
    /* C4B34 800D4334 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* C4B38 800D4338 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C4B3C 800D433C 21083000 */  addu       $at, $at, $s0
    /* C4B40 800D4340 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* C4B44 800D4344 1E26020C */  jal        func_80089878
    /* C4B48 800D4348 00000000 */   nop
    /* C4B4C 800D434C 21284000 */  addu       $a1, $v0, $zero
    /* C4B50 800D4350 2600A004 */  bltz       $a1, .L800D43EC
    /* C4B54 800D4354 40200500 */   sll       $a0, $a1, 1
    /* C4B58 800D4358 21208500 */  addu       $a0, $a0, $a1
    /* C4B5C 800D435C 80200400 */  sll        $a0, $a0, 2
    /* C4B60 800D4360 23208500 */  subu       $a0, $a0, $a1
    /* C4B64 800D4364 C0200400 */  sll        $a0, $a0, 3
    /* C4B68 800D4368 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* C4B6C 800D436C 21083000 */  addu       $at, $at, $s0
    /* C4B70 800D4370 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* C4B74 800D4374 00000000 */  nop
    /* C4B78 800D4378 80100300 */  sll        $v0, $v1, 2
    /* C4B7C 800D437C 21104300 */  addu       $v0, $v0, $v1
    /* C4B80 800D4380 80100200 */  sll        $v0, $v0, 2
    /* C4B84 800D4384 1180013C */  lui        $at, %hi(D_8010D28C)
    /* C4B88 800D4388 21082200 */  addu       $at, $at, $v0
    /* C4B8C 800D438C 8CD22380 */  lb         $v1, %lo(D_8010D28C)($at)
    /* C4B90 800D4390 1280023C */  lui        $v0, %hi(D_8011A5CC)
    /* C4B94 800D4394 CCA54290 */  lbu        $v0, %lo(D_8011A5CC)($v0)
    /* C4B98 800D4398 00000000 */  nop
    /* C4B9C 800D439C 18006200 */  mult       $v1, $v0
    /* C4BA0 800D43A0 12180000 */  mflo       $v1
    /* C4BA4 800D43A4 C2170300 */  srl        $v0, $v1, 31
    /* C4BA8 800D43A8 21186200 */  addu       $v1, $v1, $v0
    /* C4BAC 800D43AC 43180300 */  sra        $v1, $v1, 1
    /* C4BB0 800D43B0 1180013C */  lui        $at, %hi(D_80113EEE)
    /* C4BB4 800D43B4 21082400 */  addu       $at, $at, $a0
    /* C4BB8 800D43B8 EE3E2294 */  lhu        $v0, %lo(D_80113EEE)($at)
    /* C4BBC 800D43BC 00000000 */  nop
    /* C4BC0 800D43C0 21104300 */  addu       $v0, $v0, $v1
    /* C4BC4 800D43C4 1180013C */  lui        $at, %hi(D_80113EEE)
    /* C4BC8 800D43C8 21082400 */  addu       $at, $at, $a0
    /* C4BCC 800D43CC EE3E22A4 */  sh         $v0, %lo(D_80113EEE)($at)
    /* C4BD0 800D43D0 1680023C */  lui        $v0, %hi(D_80158860)
    /* C4BD4 800D43D4 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* C4BD8 800D43D8 00000000 */  nop
    /* C4BDC 800D43DC 0300A214 */  bne        $a1, $v0, .L800D43EC
    /* C4BE0 800D43E0 00000000 */   nop
    /* C4BE4 800D43E4 7B51000C */  jal        func_800145EC
    /* C4BE8 800D43E8 00000000 */   nop
  .L800D43EC:
    /* C4BEC 800D43EC 35F9010C */  jal        func_8007E4D4
    /* C4BF0 800D43F0 21202002 */   addu      $a0, $s1, $zero
    /* C4BF4 800D43F4 4F510308 */  j          .L800D453C
    /* C4BF8 800D43F8 C802A427 */   addiu     $a0, $sp, 0x2C8
  .L800D43FC:
    /* C4BFC 800D43FC 21105100 */  addu       $v0, $v0, $s1
    /* C4C00 800D4400 80100200 */  sll        $v0, $v0, 2
    /* C4C04 800D4404 21105100 */  addu       $v0, $v0, $s1
    /* C4C08 800D4408 40100200 */  sll        $v0, $v0, 1
    /* C4C0C 800D440C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C4C10 800D4410 21082200 */  addu       $at, $at, $v0
    /* C4C14 800D4414 B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* C4C18 800D4418 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C4C1C 800D441C 21082200 */  addu       $at, $at, $v0
    /* C4C20 800D4420 B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* C4C24 800D4424 00000000 */  nop
    /* C4C28 800D4428 0D006004 */  bltz       $v1, .L800D4460
    /* C4C2C 800D442C 21200000 */   addu      $a0, $zero, $zero
    /* C4C30 800D4430 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* C4C34 800D4434 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* C4C38 800D4438 00000000 */  nop
    /* C4C3C 800D443C 2A106200 */  slt        $v0, $v1, $v0
    /* C4C40 800D4440 07004010 */  beqz       $v0, .L800D4460
    /* C4C44 800D4444 00000000 */   nop
    /* C4C48 800D4448 0500A004 */  bltz       $a1, .L800D4460
    /* C4C4C 800D444C 00000000 */   nop
    /* C4C50 800D4450 1280023C */  lui        $v0, %hi(D_8011C308)
    /* C4C54 800D4454 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* C4C58 800D4458 00000000 */  nop
    /* C4C5C 800D445C 2A20A200 */  slt        $a0, $a1, $v0
  .L800D4460:
    /* C4C60 800D4460 36008010 */  beqz       $a0, .L800D453C
    /* C4C64 800D4464 C802A427 */   addiu     $a0, $sp, 0x2C8
    /* C4C68 800D4468 ABF9010C */  jal        func_8007E6AC
    /* C4C6C 800D446C 21202002 */   addu      $a0, $s1, $zero
    /* C4C70 800D4470 11004010 */  beqz       $v0, .L800D44B8
    /* C4C74 800D4474 40101100 */   sll       $v0, $s1, 1
    /* C4C78 800D4478 1280013C */  lui        $at, %hi(D_8011A268)
    /* C4C7C 800D447C 68A231A4 */  sh         $s1, %lo(D_8011A268)($at)
    /* C4C80 800D4480 21105100 */  addu       $v0, $v0, $s1
    /* C4C84 800D4484 80100200 */  sll        $v0, $v0, 2
    /* C4C88 800D4488 21105100 */  addu       $v0, $v0, $s1
    /* C4C8C 800D448C 40100200 */  sll        $v0, $v0, 1
    /* C4C90 800D4490 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* C4C94 800D4494 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* C4C98 800D4498 21082200 */  addu       $at, $at, $v0
    /* C4C9C 800D449C C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* C4CA0 800D44A0 1280013C */  lui        $at, %hi(D_8011ACBC)
    /* C4CA4 800D44A4 BCAC20AC */  sw         $zero, %lo(D_8011ACBC)($at)
    /* C4CA8 800D44A8 19AA010C */  jal        func_8006A864
    /* C4CAC 800D44AC 00000000 */   nop
    /* C4CB0 800D44B0 48510308 */  j          .L800D4520
    /* C4CB4 800D44B4 02000224 */   addiu     $v0, $zero, 0x2
  .L800D44B8:
    /* C4CB8 800D44B8 96A9010C */  jal        func_8006A658
    /* C4CBC 800D44BC 21200000 */   addu      $a0, $zero, $zero
    /* C4CC0 800D44C0 40801100 */  sll        $s0, $s1, 1
    /* C4CC4 800D44C4 21801102 */  addu       $s0, $s0, $s1
    /* C4CC8 800D44C8 80801000 */  sll        $s0, $s0, 2
    /* C4CCC 800D44CC 21801102 */  addu       $s0, $s0, $s1
    /* C4CD0 800D44D0 40801000 */  sll        $s0, $s0, 1
    /* C4CD4 800D44D4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C4CD8 800D44D8 21083000 */  addu       $at, $at, $s0
    /* C4CDC 800D44DC B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* C4CE0 800D44E0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C4CE4 800D44E4 21083000 */  addu       $at, $at, $s0
    /* C4CE8 800D44E8 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* C4CEC 800D44EC 097E020C */  jal        func_8009F824
    /* C4CF0 800D44F0 00000000 */   nop
    /* C4CF4 800D44F4 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* C4CF8 800D44F8 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* C4CFC 800D44FC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C4D00 800D4500 21083000 */  addu       $at, $at, $s0
    /* C4D04 800D4504 B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* C4D08 800D4508 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C4D0C 800D450C 21083000 */  addu       $at, $at, $s0
    /* C4D10 800D4510 B6D62684 */  lh         $a2, %lo(D_8010D6B6)($at)
    /* C4D14 800D4514 BC7B020C */  jal        func_8009EEF0
    /* C4D18 800D4518 00000000 */   nop
    /* C4D1C 800D451C 02000224 */  addiu      $v0, $zero, 0x2
  .L800D4520:
    /* C4D20 800D4520 06004216 */  bne        $s2, $v0, .L800D453C
    /* C4D24 800D4524 C802A427 */   addiu     $a0, $sp, 0x2C8
    /* C4D28 800D4528 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C4D2C 800D452C F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C4D30 800D4530 8762030C */  jal        func_800D8A1C
    /* C4D34 800D4534 00000000 */   nop
  .L800D4538:
    /* C4D38 800D4538 C802A427 */  addiu      $a0, $sp, 0x2C8
  .L800D453C:
    /* C4D3C 800D453C 12ED030C */  jal        func_800FB448
    /* C4D40 800D4540 02000524 */   addiu     $a1, $zero, 0x2
    /* C4D44 800D4544 2800A427 */  addiu      $a0, $sp, 0x28
    /* C4D48 800D4548 0AC7020C */  jal        func_800B1C28
    /* C4D4C 800D454C 02000524 */   addiu     $a1, $zero, 0x2
    /* C4D50 800D4550 6C03BF8F */  lw         $ra, 0x36C($sp)
    /* C4D54 800D4554 6803B28F */  lw         $s2, 0x368($sp)
    /* C4D58 800D4558 6403B18F */  lw         $s1, 0x364($sp)
    /* C4D5C 800D455C 6003B08F */  lw         $s0, 0x360($sp)
    /* C4D60 800D4560 7003BD27 */  addiu      $sp, $sp, 0x370
    /* C4D64 800D4564 0800E003 */  jr         $ra
    /* C4D68 800D4568 00000000 */   nop
endlabel func_800D40CC
