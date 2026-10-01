.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D39EC, 0x3B0

glabel func_800D39EC
    /* C41EC 800D39EC 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* C41F0 800D39F0 7400BFAF */  sw         $ra, 0x74($sp)
    /* C41F4 800D39F4 7000BEAF */  sw         $fp, 0x70($sp)
    /* C41F8 800D39F8 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* C41FC 800D39FC 6800B6AF */  sw         $s6, 0x68($sp)
    /* C4200 800D3A00 6400B5AF */  sw         $s5, 0x64($sp)
    /* C4204 800D3A04 6000B4AF */  sw         $s4, 0x60($sp)
    /* C4208 800D3A08 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* C420C 800D3A0C 5800B2AF */  sw         $s2, 0x58($sp)
    /* C4210 800D3A10 5400B1AF */  sw         $s1, 0x54($sp)
    /* C4214 800D3A14 5000B0AF */  sw         $s0, 0x50($sp)
    /* C4218 800D3A18 21A08000 */  addu       $s4, $a0, $zero
    /* C421C 800D3A1C C80F828E */  lw         $v0, 0xFC8($s4)
    /* C4220 800D3A20 00000000 */  nop
    /* C4224 800D3A24 0100422C */  sltiu      $v0, $v0, 0x1
    /* C4228 800D3A28 4000A2AF */  sw         $v0, 0x40($sp)
    /* C422C 800D3A2C 28028426 */  addiu      $a0, $s4, 0x228
    /* C4230 800D3A30 082C030C */  jal        func_800CB020
    /* C4234 800D3A34 04000524 */   addiu     $a1, $zero, 0x4
    /* C4238 800D3A38 360F9686 */  lh         $s6, 0xF36($s4)
    /* C423C 800D3A3C 340F9586 */  lh         $s5, 0xF34($s4)
    /* C4240 800D3A40 2198C002 */  addu       $s3, $s6, $zero
    /* C4244 800D3A44 3A0F8286 */  lh         $v0, 0xF3A($s4)
    /* C4248 800D3A48 00000000 */  nop
    /* C424C 800D3A4C 23105300 */  subu       $v0, $v0, $s3
    /* C4250 800D3A50 00140200 */  sll        $v0, $v0, 16
    /* C4254 800D3A54 03240200 */  sra        $a0, $v0, 16
    /* C4258 800D3A58 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* C425C 800D3A5C ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* C4260 800D3A60 18008300 */  mult       $a0, $v1
    /* C4264 800D3A64 10400000 */  mfhi       $t0
    /* C4268 800D3A68 43180800 */  sra        $v1, $t0, 1
    /* C426C 800D3A6C C3170200 */  sra        $v0, $v0, 31
    /* C4270 800D3A70 23186200 */  subu       $v1, $v1, $v0
    /* C4274 800D3A74 001C0300 */  sll        $v1, $v1, 16
    /* C4278 800D3A78 03940300 */  sra        $s2, $v1, 16
    /* C427C 800D3A7C E40E828E */  lw         $v0, 0xEE4($s4)
    /* C4280 800D3A80 00000000 */  nop
    /* C4284 800D3A84 40100200 */  sll        $v0, $v0, 1
    /* C4288 800D3A88 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* C428C 800D3A8C 3800A2AF */  sw         $v0, 0x38($sp)
    /* C4290 800D3A90 21880000 */  addu       $s1, $zero, $zero
  .L800D3A94:
    /* C4294 800D3A94 2A103202 */  slt        $v0, $s1, $s2
    /* C4298 800D3A98 1B004010 */  beqz       $v0, .L800D3B08
    /* C429C 800D3A9C 5C01A226 */   addiu     $v0, $s5, 0x15C
    /* C42A0 800D3AA0 2000B5A7 */  sh         $s5, 0x20($sp)
    /* C42A4 800D3AA4 2200B3A7 */  sh         $s3, 0x22($sp)
    /* C42A8 800D3AA8 2400A2A7 */  sh         $v0, 0x24($sp)
    /* C42AC 800D3AAC 0C007026 */  addiu      $s0, $s3, 0xC
    /* C42B0 800D3AB0 2600B0A7 */  sh         $s0, 0x26($sp)
    /* C42B4 800D3AB4 00141300 */  sll        $v0, $s3, 16
    /* C42B8 800D3AB8 03140200 */  sra        $v0, $v0, 16
    /* C42BC 800D3ABC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C42C0 800D3AC0 2400A287 */  lh         $v0, 0x24($sp)
    /* C42C4 800D3AC4 2000A387 */  lh         $v1, 0x20($sp)
    /* C42C8 800D3AC8 00000000 */  nop
    /* C42CC 800D3ACC 23104300 */  subu       $v0, $v0, $v1
    /* C42D0 800D3AD0 1400A2AF */  sw         $v0, 0x14($sp)
    /* C42D4 800D3AD4 2600A287 */  lh         $v0, 0x26($sp)
    /* C42D8 800D3AD8 2200A387 */  lh         $v1, 0x22($sp)
    /* C42DC 800D3ADC 00000000 */  nop
    /* C42E0 800D3AE0 23104300 */  subu       $v0, $v0, $v1
    /* C42E4 800D3AE4 1800A2AF */  sw         $v0, 0x18($sp)
    /* C42E8 800D3AE8 28028426 */  addiu      $a0, $s4, 0x228
    /* C42EC 800D3AEC 21282002 */  addu       $a1, $s1, $zero
    /* C42F0 800D3AF0 04000624 */  addiu      $a2, $zero, 0x4
    /* C42F4 800D3AF4 252C030C */  jal        func_800CB094
    /* C42F8 800D3AF8 2138A002 */   addu      $a3, $s5, $zero
    /* C42FC 800D3AFC 21980002 */  addu       $s3, $s0, $zero
    /* C4300 800D3B00 A54E0308 */  j          .L800D3A94
    /* C4304 800D3B04 01003126 */   addiu     $s1, $s1, 0x1
  .L800D3B08:
    /* C4308 800D3B08 2198C002 */  addu       $s3, $s6, $zero
    /* C430C 800D3B0C 21B00000 */  addu       $s6, $zero, $zero
    /* C4310 800D3B10 21900000 */  addu       $s2, $zero, $zero
    /* C4314 800D3B14 E000BE26 */  addiu      $fp, $s5, 0xE0
    /* C4318 800D3B18 00141E00 */  sll        $v0, $fp, 16
    /* C431C 800D3B1C 03140200 */  sra        $v0, $v0, 16
    /* C4320 800D3B20 4800A2AF */  sw         $v0, 0x48($sp)
  .L800D3B24:
    /* C4324 800D3B24 4300422A */  slti       $v0, $s2, 0x43
    /* C4328 800D3B28 8A004010 */  beqz       $v0, .L800D3D54
    /* C432C 800D3B2C 2700422A */   slti      $v0, $s2, 0x27
    /* C4330 800D3B30 08004010 */  beqz       $v0, .L800D3B54
    /* C4334 800D3B34 D9FF5126 */   addiu     $s1, $s2, -0x27
    /* C4338 800D3B38 1680043C */  lui        $a0, %hi(D_80158860)
    /* C433C 800D3B3C 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C4340 800D3B40 C826020C */  jal        func_80089B20
    /* C4344 800D3B44 21284002 */   addu      $a1, $s2, $zero
    /* C4348 800D3B48 21184000 */  addu       $v1, $v0, $zero
    /* C434C 800D3B4C DE4E0308 */  j          .L800D3B78
    /* C4350 800D3B50 FFFF1124 */   addiu     $s1, $zero, -0x1
  .L800D3B54:
    /* C4354 800D3B54 40101100 */  sll        $v0, $s1, 1
    /* C4358 800D3B58 1280013C */  lui        $at, %hi(D_8011A342)
    /* C435C 800D3B5C 21082200 */  addu       $at, $at, $v0
    /* C4360 800D3B60 42A32384 */  lh         $v1, %lo(D_8011A342)($at)
    /* C4364 800D3B64 1680023C */  lui        $v0, %hi(D_80158860)
    /* C4368 800D3B68 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* C436C 800D3B6C 00000000 */  nop
    /* C4370 800D3B70 26106200 */  xor        $v0, $v1, $v0
    /* C4374 800D3B74 0100432C */  sltiu      $v1, $v0, 0x1
  .L800D3B78:
    /* C4378 800D3B78 74006010 */  beqz       $v1, .L800D3D4C
    /* C437C 800D3B7C 00000000 */   nop
    /* C4380 800D3B80 0100D626 */  addiu      $s6, $s6, 0x1
    /* C4384 800D3B84 FFFFC426 */  addiu      $a0, $s6, -0x1
    /* C4388 800D3B88 840F838E */  lw         $v1, 0xF84($s4)
    /* C438C 800D3B8C 00000000 */  nop
    /* C4390 800D3B90 2A108300 */  slt        $v0, $a0, $v1
    /* C4394 800D3B94 6D004014 */  bnez       $v0, .L800D3D4C
    /* C4398 800D3B98 07006224 */   addiu     $v0, $v1, 0x7
    /* C439C 800D3B9C 2A104400 */  slt        $v0, $v0, $a0
    /* C43A0 800D3BA0 6A004014 */  bnez       $v0, .L800D3D4C
    /* C43A4 800D3BA4 00000000 */   nop
    /* C43A8 800D3BA8 3800A88F */  lw         $t0, 0x38($sp)
    /* C43AC 800D3BAC 00000000 */  nop
    /* C43B0 800D3BB0 08000425 */  addiu      $a0, $t0, 0x8
    /* C43B4 800D3BB4 00240400 */  sll        $a0, $a0, 16
    /* C43B8 800D3BB8 03240400 */  sra        $a0, $a0, 16
    /* C43BC 800D3BBC D0EC030C */  jal        func_800FB340
    /* C43C0 800D3BC0 08000524 */   addiu     $a1, $zero, 0x8
    /* C43C4 800D3BC4 09002006 */  bltz       $s1, .L800D3BEC
    /* C43C8 800D3BC8 00000000 */   nop
    /* C43CC 800D3BCC C0281100 */  sll        $a1, $s1, 3
    /* C43D0 800D3BD0 2128B100 */  addu       $a1, $a1, $s1
    /* C43D4 800D3BD4 80280500 */  sll        $a1, $a1, 2
    /* C43D8 800D3BD8 2128B100 */  addu       $a1, $a1, $s1
    /* C43DC 800D3BDC 1380033C */  lui        $v1, %hi(D_80132CC4)
    /* C43E0 800D3BE0 C42C6324 */  addiu      $v1, $v1, %lo(D_80132CC4)
    /* C43E4 800D3BE4 024F0308 */  j          .L800D3C08
    /* C43E8 800D3BE8 80280500 */   sll       $a1, $a1, 2
  .L800D3BEC:
    /* C43EC 800D3BEC C0281200 */  sll        $a1, $s2, 3
    /* C43F0 800D3BF0 2128B200 */  addu       $a1, $a1, $s2
    /* C43F4 800D3BF4 80280500 */  sll        $a1, $a1, 2
    /* C43F8 800D3BF8 2128B200 */  addu       $a1, $a1, $s2
    /* C43FC 800D3BFC 80280500 */  sll        $a1, $a1, 2
    /* C4400 800D3C00 1380033C */  lui        $v1, %hi(D_80131638)
    /* C4404 800D3C04 38166324 */  addiu      $v1, $v1, %lo(D_80131638)
  .L800D3C08:
    /* C4408 800D3C08 00141300 */  sll        $v0, $s3, 16
    /* C440C 800D3C0C 03140200 */  sra        $v0, $v0, 16
    /* C4410 800D3C10 1000A2AF */  sw         $v0, 0x10($sp)
    /* C4414 800D3C14 2800A427 */  addiu      $a0, $sp, 0x28
    /* C4418 800D3C18 2128A300 */  addu       $a1, $a1, $v1
    /* C441C 800D3C1C 21308002 */  addu       $a2, $s4, $zero
    /* C4420 800D3C20 89EE030C */  jal        func_800FBA24
    /* C4424 800D3C24 2138A002 */   addu      $a3, $s5, $zero
    /* C4428 800D3C28 01000424 */  addiu      $a0, $zero, 0x1
    /* C442C 800D3C2C D0EC030C */  jal        func_800FB340
    /* C4430 800D3C30 01000524 */   addiu     $a1, $zero, 0x1
    /* C4434 800D3C34 1800B026 */  addiu      $s0, $s5, 0x18
    /* C4438 800D3C38 1280043C */  lui        $a0, %hi(D_80121340)
    /* C443C 800D3C3C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4440 800D3C40 CB1A030C */  jal        func_800C6B2C
    /* C4444 800D3C44 21B86002 */   addu      $s7, $s3, $zero
    /* C4448 800D3C48 C0101200 */  sll        $v0, $s2, 3
    /* C444C 800D3C4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4450 800D3C50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4454 800D3C54 1180013C */  lui        $at, %hi(D_8010D064)
    /* C4458 800D3C58 21082200 */  addu       $at, $at, $v0
    /* C445C 800D3C5C 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* C4460 800D3C60 651B030C */  jal        func_800C6D94
    /* C4464 800D3C64 00000000 */   nop
    /* C4468 800D3C68 4000A88F */  lw         $t0, 0x40($sp)
    /* C446C 800D3C6C 00000000 */  nop
    /* C4470 800D3C70 1C000011 */  beqz       $t0, .L800D3CE4
    /* C4474 800D3C74 0C006226 */   addiu     $v0, $s3, 0xC
    /* C4478 800D3C78 2800B0A7 */  sh         $s0, 0x28($sp)
    /* C447C 800D3C7C 2A00B3A7 */  sh         $s3, 0x2A($sp)
    /* C4480 800D3C80 2C00BEA7 */  sh         $fp, 0x2C($sp)
    /* C4484 800D3C84 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* C4488 800D3C88 002C1000 */  sll        $a1, $s0, 16
    /* C448C 800D3C8C 032C0500 */  sra        $a1, $a1, 16
    /* C4490 800D3C90 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4494 800D3C94 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4498 800D3C98 4800A88F */  lw         $t0, 0x48($sp)
    /* C449C 800D3C9C D050000C */  jal        func_80014340
    /* C44A0 800D3CA0 23280501 */   subu      $a1, $t0, $a1
    /* C44A4 800D3CA4 C80F828E */  lw         $v0, 0xFC8($s4)
    /* C44A8 800D3CA8 00000000 */  nop
    /* C44AC 800D3CAC 08004014 */  bnez       $v0, .L800D3CD0
    /* C44B0 800D3CB0 2800A627 */   addiu     $a2, $sp, 0x28
    /* C44B4 800D3CB4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C44B8 800D3CB8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C44BC 800D3CBC 2800A527 */  addiu      $a1, $sp, 0x28
    /* C44C0 800D3CC0 DC0F040C */  jal        func_80103F70
    /* C44C4 800D3CC4 10000624 */   addiu     $a2, $zero, 0x10
    /* C44C8 800D3CC8 394F0308 */  j          .L800D3CE4
    /* C44CC 800D3CCC C80F82AE */   sw        $v0, 0xFC8($s4)
  .L800D3CD0:
    /* C44D0 800D3CD0 C80F848E */  lw         $a0, 0xFC8($s4)
    /* C44D4 800D3CD4 1280053C */  lui        $a1, %hi(D_80121340)
    /* C44D8 800D3CD8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* C44DC 800D3CDC 5511040C */  jal        func_80104554
    /* C44E0 800D3CE0 10000724 */   addiu     $a3, $zero, 0x10
  .L800D3CE4:
    /* C44E4 800D3CE4 380F9086 */  lh         $s0, 0xF38($s4)
    /* C44E8 800D3CE8 17002106 */  bgez       $s1, .L800D3D48
    /* C44EC 800D3CEC F8FF1026 */   addiu     $s0, $s0, -0x8
    /* C44F0 800D3CF0 E40E828E */  lw         $v0, 0xEE4($s4)
    /* C44F4 800D3CF4 00000000 */  nop
    /* C44F8 800D3CF8 40200200 */  sll        $a0, $v0, 1
    /* C44FC 800D3CFC 21208200 */  addu       $a0, $a0, $v0
    /* C4500 800D3D00 01008424 */  addiu      $a0, $a0, 0x1
    /* C4504 800D3D04 00240400 */  sll        $a0, $a0, 16
    /* C4508 800D3D08 03240400 */  sra        $a0, $a0, 16
    /* C450C 800D3D0C D0EC030C */  jal        func_800FB340
    /* C4510 800D3D10 08000524 */   addiu     $a1, $zero, 0x8
    /* C4514 800D3D14 003C1000 */  sll        $a3, $s0, 16
    /* C4518 800D3D18 00141700 */  sll        $v0, $s7, 16
    /* C451C 800D3D1C 03140200 */  sra        $v0, $v0, 16
    /* C4520 800D3D20 1000A2AF */  sw         $v0, 0x10($sp)
    /* C4524 800D3D24 3000A427 */  addiu      $a0, $sp, 0x30
    /* C4528 800D3D28 1380053C */  lui        $a1, %hi(D_801307C4)
    /* C452C 800D3D2C C407A524 */  addiu      $a1, $a1, %lo(D_801307C4)
    /* C4530 800D3D30 21308002 */  addu       $a2, $s4, $zero
    /* C4534 800D3D34 89EE030C */  jal        func_800FBA24
    /* C4538 800D3D38 033C0700 */   sra       $a3, $a3, 16
    /* C453C 800D3D3C 01000424 */  addiu      $a0, $zero, 0x1
    /* C4540 800D3D40 D0EC030C */  jal        func_800FB340
    /* C4544 800D3D44 01000524 */   addiu     $a1, $zero, 0x1
  .L800D3D48:
    /* C4548 800D3D48 0C007326 */  addiu      $s3, $s3, 0xC
  .L800D3D4C:
    /* C454C 800D3D4C C94E0308 */  j          .L800D3B24
    /* C4550 800D3D50 01005226 */   addiu     $s2, $s2, 0x1
  .L800D3D54:
    /* C4554 800D3D54 C80F848E */  lw         $a0, 0xFC8($s4)
    /* C4558 800D3D58 7D11040C */  jal        func_801045F4
    /* C455C 800D3D5C 00000000 */   nop
    /* C4560 800D3D60 1280013C */  lui        $at, %hi(D_80122BA8)
    /* C4564 800D3D64 A82B36AC */  sw         $s6, %lo(D_80122BA8)($at)
    /* C4568 800D3D68 7400BF8F */  lw         $ra, 0x74($sp)
    /* C456C 800D3D6C 7000BE8F */  lw         $fp, 0x70($sp)
    /* C4570 800D3D70 6C00B78F */  lw         $s7, 0x6C($sp)
    /* C4574 800D3D74 6800B68F */  lw         $s6, 0x68($sp)
    /* C4578 800D3D78 6400B58F */  lw         $s5, 0x64($sp)
    /* C457C 800D3D7C 6000B48F */  lw         $s4, 0x60($sp)
    /* C4580 800D3D80 5C00B38F */  lw         $s3, 0x5C($sp)
    /* C4584 800D3D84 5800B28F */  lw         $s2, 0x58($sp)
    /* C4588 800D3D88 5400B18F */  lw         $s1, 0x54($sp)
    /* C458C 800D3D8C 5000B08F */  lw         $s0, 0x50($sp)
    /* C4590 800D3D90 7800BD27 */  addiu      $sp, $sp, 0x78
    /* C4594 800D3D94 0800E003 */  jr         $ra
    /* C4598 800D3D98 00000000 */   nop
endlabel func_800D39EC
