.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C3B5C, 0xD54

glabel func_800C3B5C
    /* B435C 800C3B5C 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* B4360 800C3B60 9800B0AF */  sw         $s0, 0x98($sp)
    /* B4364 800C3B64 1280103C */  lui        $s0, %hi(D_801210C4)
    /* B4368 800C3B68 C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* B436C 800C3B6C BC00BFAF */  sw         $ra, 0xBC($sp)
    /* B4370 800C3B70 B800BEAF */  sw         $fp, 0xB8($sp)
    /* B4374 800C3B74 B400B7AF */  sw         $s7, 0xB4($sp)
    /* B4378 800C3B78 B000B6AF */  sw         $s6, 0xB0($sp)
    /* B437C 800C3B7C AC00B5AF */  sw         $s5, 0xAC($sp)
    /* B4380 800C3B80 A800B4AF */  sw         $s4, 0xA8($sp)
    /* B4384 800C3B84 A400B3AF */  sw         $s3, 0xA4($sp)
    /* B4388 800C3B88 A000B2AF */  sw         $s2, 0xA0($sp)
    /* B438C 800C3B8C 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* B4390 800C3B90 00000A8E */  lw         $t2, 0x0($s0)
    /* B4394 800C3B94 C0FC0426 */  addiu      $a0, $s0, -0x340
    /* B4398 800C3B98 DC49020C */  jal        func_80092770
    /* B439C 800C3B9C 4000AAAF */   sw        $t2, 0x40($sp)
    /* B43A0 800C3BA0 7907040C */  jal        func_80101DE4
    /* B43A4 800C3BA4 01000424 */   addiu     $a0, $zero, 0x1
    /* B43A8 800C3BA8 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* B43AC 800C3BAC BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* B43B0 800C3BB0 00000000 */  nop
    /* B43B4 800C3BB4 0400448C */  lw         $a0, 0x4($v0)
    /* B43B8 800C3BB8 D707040C */  jal        func_80101F5C
    /* B43BC 800C3BBC 00000000 */   nop
    /* B43C0 800C3BC0 1800A427 */  addiu      $a0, $sp, 0x18
    /* B43C4 800C3BC4 21280000 */  addu       $a1, $zero, $zero
    /* B43C8 800C3BC8 40010224 */  addiu      $v0, $zero, 0x140
    /* B43CC 800C3BCC 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B43D0 800C3BD0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B43D4 800C3BD4 1800A0A7 */  sh         $zero, 0x18($sp)
    /* B43D8 800C3BD8 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* B43DC 800C3BDC A314020C */  jal        func_8008528C
    /* B43E0 800C3BE0 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* B43E4 800C3BE4 E8FE0426 */  addiu      $a0, $s0, -0x118
    /* B43E8 800C3BE8 ECFC1026 */  addiu      $s0, $s0, -0x314
    /* B43EC 800C3BEC 21280002 */  addu       $a1, $s0, $zero
    /* B43F0 800C3BF0 2000A627 */  addiu      $a2, $sp, 0x20
    /* B43F4 800C3BF4 1800A727 */  addiu      $a3, $sp, 0x18
    /* B43F8 800C3BF8 06000324 */  addiu      $v1, $zero, 0x6
    /* B43FC 800C3BFC 3A010824 */  addiu      $t0, $zero, 0x13A
    /* B4400 800C3C00 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B4404 800C3C04 2600A2A7 */  sh         $v0, 0x26($sp)
    /* B4408 800C3C08 10000224 */  addiu      $v0, $zero, 0x10
    /* B440C 800C3C0C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* B4410 800C3C10 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B4414 800C3C14 2000A3A7 */  sh         $v1, 0x20($sp)
    /* B4418 800C3C18 2200A0A7 */  sh         $zero, 0x22($sp)
    /* B441C 800C3C1C 2400A8A7 */  sh         $t0, 0x24($sp)
    /* B4420 800C3C20 1800A3A7 */  sh         $v1, 0x18($sp)
    /* B4424 800C3C24 1C00A8A7 */  sh         $t0, 0x1C($sp)
    /* B4428 800C3C28 1FE4030C */  jal        func_800F907C
    /* B442C 800C3C2C 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* B4430 800C3C30 1280023C */  lui        $v0, %hi(D_8012110C)
    /* B4434 800C3C34 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* B4438 800C3C38 00000000 */  nop
    /* B443C 800C3C3C 61004014 */  bnez       $v0, .L800C3DC4
    /* B4440 800C3C40 30001024 */   addiu     $s0, $zero, 0x30
    /* B4444 800C3C44 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4448 800C3C48 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B444C 800C3C4C CB1A030C */  jal        func_800C6B2C
    /* B4450 800C3C50 00000000 */   nop
    /* B4454 800C3C54 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B4458 800C3C58 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B445C 800C3C5C 00000000 */  nop
    /* B4460 800C3C60 5C05448C */  lw         $a0, 0x55C($v0)
    /* B4464 800C3C64 01000B24 */  addiu      $t3, $zero, 0x1
    /* B4468 800C3C68 A63A030C */  jal        func_800CEA98
    /* B446C 800C3C6C 5800ABAF */   sw        $t3, 0x58($sp)
    /* B4470 800C3C70 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4474 800C3C74 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4478 800C3C78 9987030C */  jal        func_800E1E64
    /* B447C 800C3C7C 21284000 */   addu      $a1, $v0, $zero
    /* B4480 800C3C80 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4484 800C3C84 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4488 800C3C88 D71A030C */  jal        func_800C6B5C
    /* B448C 800C3C8C 04000524 */   addiu     $a1, $zero, 0x4
    /* B4490 800C3C90 4000AA8F */  lw         $t2, 0x40($sp)
    /* B4494 800C3C94 21280000 */  addu       $a1, $zero, $zero
    /* B4498 800C3C98 40100A00 */  sll        $v0, $t2, 1
    /* B449C 800C3C9C 21104A00 */  addu       $v0, $v0, $t2
    /* B44A0 800C3CA0 80100200 */  sll        $v0, $v0, 2
    /* B44A4 800C3CA4 23104A00 */  subu       $v0, $v0, $t2
    /* B44A8 800C3CA8 00110200 */  sll        $v0, $v0, 4
    /* B44AC 800C3CAC 23104A00 */  subu       $v0, $v0, $t2
    /* B44B0 800C3CB0 C0100200 */  sll        $v0, $v0, 3
    /* B44B4 800C3CB4 1180013C */  lui        $at, %hi(D_801176A7)
    /* B44B8 800C3CB8 21082200 */  addu       $at, $at, $v0
    /* B44BC 800C3CBC A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* B44C0 800C3CC0 04000624 */  addiu      $a2, $zero, 0x4
    /* B44C4 800C3CC4 F53A030C */  jal        func_800CEBD4
    /* B44C8 800C3CC8 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* B44CC 800C3CCC 4000A48F */  lw         $a0, 0x40($sp)
    /* B44D0 800C3CD0 5D54020C */  jal        func_80095174
    /* B44D4 800C3CD4 21804000 */   addu      $s0, $v0, $zero
    /* B44D8 800C3CD8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B44DC 800C3CDC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B44E0 800C3CE0 9987030C */  jal        func_800E1E64
    /* B44E4 800C3CE4 21284000 */   addu      $a1, $v0, $zero
    /* B44E8 800C3CE8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B44EC 800C3CEC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B44F0 800C3CF0 CD1A030C */  jal        func_800C6B34
    /* B44F4 800C3CF4 00000000 */   nop
    /* B44F8 800C3CF8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B44FC 800C3CFC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4500 800C3D00 731B030C */  jal        func_800C6DCC
    /* B4504 800C3D04 48010526 */   addiu     $a1, $s0, 0x148
    /* B4508 800C3D08 1800A427 */  addiu      $a0, $sp, 0x18
    /* B450C 800C3D0C 1280103C */  lui        $s0, %hi(D_80121340)
    /* B4510 800C3D10 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B4514 800C3D14 21280002 */  addu       $a1, $s0, $zero
    /* B4518 800C3D18 7FE6020C */  jal        func_800B99FC
    /* B451C 800C3D1C 10000624 */   addiu     $a2, $zero, 0x10
    /* B4520 800C3D20 21200002 */  addu       $a0, $s0, $zero
    /* B4524 800C3D24 1800A527 */  addiu      $a1, $sp, 0x18
    /* B4528 800C3D28 DC0F040C */  jal        func_80103F70
    /* B452C 800C3D2C 10000624 */   addiu     $a2, $zero, 0x10
    /* B4530 800C3D30 1280013C */  lui        $at, %hi(D_8012110C)
    /* B4534 800C3D34 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* B4538 800C3D38 CB1A030C */  jal        func_800C6B2C
    /* B453C 800C3D3C 21200002 */   addu      $a0, $s0, $zero
    /* B4540 800C3D40 4000A48F */  lw         $a0, 0x40($sp)
    /* B4544 800C3D44 2554020C */  jal        func_80095094
    /* B4548 800C3D48 00000000 */   nop
    /* B454C 800C3D4C 21200002 */  addu       $a0, $s0, $zero
    /* B4550 800C3D50 9987030C */  jal        func_800E1E64
    /* B4554 800C3D54 21284000 */   addu      $a1, $v0, $zero
    /* B4558 800C3D58 CD1A030C */  jal        func_800C6B34
    /* B455C 800C3D5C 21200002 */   addu      $a0, $s0, $zero
    /* B4560 800C3D60 4000A48F */  lw         $a0, 0x40($sp)
    /* B4564 800C3D64 F853020C */  jal        func_80094FE0
    /* B4568 800C3D68 00000000 */   nop
    /* B456C 800C3D6C 21200002 */  addu       $a0, $s0, $zero
    /* B4570 800C3D70 9987030C */  jal        func_800E1E64
    /* B4574 800C3D74 21284000 */   addu      $a1, $v0, $zero
    /* B4578 800C3D78 21200002 */  addu       $a0, $s0, $zero
    /* B457C 800C3D7C D71A030C */  jal        func_800C6B5C
    /* B4580 800C3D80 02000524 */   addiu     $a1, $zero, 0x2
    /* B4584 800C3D84 1280053C */  lui        $a1, %hi(D_8011A264)
    /* B4588 800C3D88 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* B458C 800C3D8C AD98010C */  jal        func_800662B4
    /* B4590 800C3D90 21200002 */   addu      $a0, $s0, $zero
    /* B4594 800C3D94 1800A427 */  addiu      $a0, $sp, 0x18
    /* B4598 800C3D98 21280002 */  addu       $a1, $s0, $zero
    /* B459C 800C3D9C 7FE6020C */  jal        func_800B99FC
    /* B45A0 800C3DA0 20000624 */   addiu     $a2, $zero, 0x20
    /* B45A4 800C3DA4 21280002 */  addu       $a1, $s0, $zero
    /* B45A8 800C3DA8 1800A627 */  addiu      $a2, $sp, 0x18
    /* B45AC 800C3DAC 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B45B0 800C3DB0 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B45B4 800C3DB4 5511040C */  jal        func_80104554
    /* B45B8 800C3DB8 10000724 */   addiu     $a3, $zero, 0x10
    /* B45BC 800C3DBC 720F0308 */  j          .L800C3DC8
    /* B45C0 800C3DC0 30001024 */   addiu     $s0, $zero, 0x30
  .L800C3DC4:
    /* B45C4 800C3DC4 5800A0AF */  sw         $zero, 0x58($sp)
  .L800C3DC8:
    /* B45C8 800C3DC8 0C000B24 */  addiu      $t3, $zero, 0xC
    /* B45CC 800C3DCC 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B45D0 800C3DD0 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B45D4 800C3DD4 B0000324 */  addiu      $v1, $zero, 0xB0
    /* B45D8 800C3DD8 1280013C */  lui        $at, %hi(D_801210D8)
    /* B45DC 800C3DDC D8102BAC */  sw         $t3, %lo(D_801210D8)($at)
    /* B45E0 800C3DE0 1280013C */  lui        $at, %hi(D_801210D0)
    /* B45E4 800C3DE4 D01030AC */  sw         $s0, %lo(D_801210D0)($at)
    /* B45E8 800C3DE8 1280013C */  lui        $at, %hi(D_801210D4)
    /* B45EC 800C3DEC D41023AC */  sw         $v1, %lo(D_801210D4)($at)
    /* B45F0 800C3DF0 20004230 */  andi       $v0, $v0, 0x20
    /* B45F4 800C3DF4 1B004010 */  beqz       $v0, .L800C3E64
    /* B45F8 800C3DF8 00000000 */   nop
    /* B45FC 800C3DFC 5800AA8F */  lw         $t2, 0x58($sp)
    /* B4600 800C3E00 00000000 */  nop
    /* B4604 800C3E04 99024011 */  beqz       $t2, .L800C486C
    /* B4608 800C3E08 00000000 */   nop
    /* B460C 800C3E0C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4610 800C3E10 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4614 800C3E14 CB1A030C */  jal        func_800C6B2C
    /* B4618 800C3E18 00000000 */   nop
    /* B461C 800C3E1C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4620 800C3E20 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4624 800C3E24 731B030C */  jal        func_800C6DCC
    /* B4628 800C3E28 C9010524 */   addiu     $a1, $zero, 0x1C9
    /* B462C 800C3E2C 1800A427 */  addiu      $a0, $sp, 0x18
    /* B4630 800C3E30 1280103C */  lui        $s0, %hi(D_80121340)
    /* B4634 800C3E34 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B4638 800C3E38 21280002 */  addu       $a1, $s0, $zero
    /* B463C 800C3E3C 7FE6020C */  jal        func_800B99FC
    /* B4640 800C3E40 30000624 */   addiu     $a2, $zero, 0x30
    /* B4644 800C3E44 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4648 800C3E48 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B464C 800C3E4C 21280002 */  addu       $a1, $s0, $zero
    /* B4650 800C3E50 1800A627 */  addiu      $a2, $sp, 0x18
    /* B4654 800C3E54 5511040C */  jal        func_80104554
    /* B4658 800C3E58 10000724 */   addiu     $a3, $zero, 0x10
    /* B465C 800C3E5C 1B120308 */  j          .L800C486C
    /* B4660 800C3E60 00000000 */   nop
  .L800C3E64:
    /* B4664 800C3E64 4000A48F */  lw         $a0, 0x40($sp)
    /* B4668 800C3E68 08000B24 */  addiu      $t3, $zero, 0x8
    /* B466C 800C3E6C 1663030C */  jal        func_800D8C58
    /* B4670 800C3E70 3800ABAF */   sw        $t3, 0x38($sp)
    /* B4674 800C3E74 30001324 */  addiu      $s3, $zero, 0x30
    /* B4678 800C3E78 08001224 */  addiu      $s2, $zero, 0x8
    /* B467C 800C3E7C 21880000 */  addu       $s1, $zero, $zero
    /* B4680 800C3E80 21B80000 */  addu       $s7, $zero, $zero
    /* B4684 800C3E84 D00B848F */  lw         $a0, %gp_rel(D_801590A8)($gp)
    /* B4688 800C3E88 21A00000 */  addu       $s4, $zero, $zero
    /* B468C 800C3E8C 3000A0AF */  sw         $zero, 0x30($sp)
    /* B4690 800C3E90 7CD6030C */  jal        func_800F59F0
    /* B4694 800C3E94 5000A2AF */   sw        $v0, 0x50($sp)
    /* B4698 800C3E98 6000A2AF */  sw         $v0, 0x60($sp)
    /* B469C 800C3E9C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B46A0 800C3EA0 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B46A4 800C3EA4 00000000 */  nop
    /* B46A8 800C3EA8 8F004018 */  blez       $v0, .L800C40E8
    /* B46AC 800C3EAC 0A000924 */   addiu     $t1, $zero, 0xA
    /* B46B0 800C3EB0 5000AA8F */  lw         $t2, 0x50($sp)
    /* B46B4 800C3EB4 6000AB8F */  lw         $t3, 0x60($sp)
    /* B46B8 800C3EB8 1180083C */  lui        $t0, %hi(D_80113ED9)
    /* B46BC 800C3EBC D93E0825 */  addiu      $t0, $t0, %lo(D_80113ED9)
    /* B46C0 800C3EC0 8800A0AF */  sw         $zero, 0x88($sp)
    /* B46C4 800C3EC4 40100A00 */  sll        $v0, $t2, 1
    /* B46C8 800C3EC8 21104A00 */  addu       $v0, $v0, $t2
    /* B46CC 800C3ECC 00190200 */  sll        $v1, $v0, 4
    /* B46D0 800C3ED0 21104300 */  addu       $v0, $v0, $v1
    /* B46D4 800C3ED4 0C007E25 */  addiu      $fp, $t3, 0xC
    /* B46D8 800C3ED8 6800A2AF */  sw         $v0, 0x68($sp)
  .L800C3EDC:
    /* B46DC 800C3EDC 8800AA8F */  lw         $t2, 0x88($sp)
    /* B46E0 800C3EE0 4000AB8F */  lw         $t3, 0x40($sp)
    /* B46E4 800C3EE4 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B46E8 800C3EE8 21082A00 */  addu       $at, $at, $t2
    /* B46EC 800C3EEC D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* B46F0 800C3EF0 00000000 */  nop
    /* B46F4 800C3EF4 71004B14 */  bne        $v0, $t3, .L800C40BC
    /* B46F8 800C3EF8 00000000 */   nop
    /* B46FC 800C3EFC F8FFD68F */  lw         $s6, -0x8($fp)
    /* B4700 800C3F00 FCFFC48F */  lw         $a0, -0x4($fp)
    /* B4704 800C3F04 0000C58F */  lw         $a1, 0x0($fp)
    /* B4708 800C3F08 6000AA8F */  lw         $t2, 0x60($sp)
    /* B470C 800C3F0C 1000DE27 */  addiu      $fp, $fp, 0x10
    /* B4710 800C3F10 0000558D */  lw         $s5, 0x0($t2)
    /* B4714 800C3F14 10004A25 */  addiu      $t2, $t2, 0x10
    /* B4718 800C3F18 6000AAAF */  sw         $t2, 0x60($sp)
    /* B471C 800C3F1C 1680013C */  lui        $at, %hi(D_8015858C)
    /* B4720 800C3F20 8C8524AC */  sw         $a0, %lo(D_8015858C)($at)
    /* B4724 800C3F24 1680013C */  lui        $at, %hi(D_8015856C)
    /* B4728 800C3F28 6C8525AC */  sw         $a1, %lo(D_8015856C)($at)
    /* B472C 800C3F2C 00000381 */  lb         $v1, 0x0($t0)
    /* B4730 800C3F30 21800000 */  addu       $s0, $zero, $zero
    /* B4734 800C3F34 23107500 */  subu       $v0, $v1, $s5
    /* B4738 800C3F38 23105600 */  subu       $v0, $v0, $s6
    /* B473C 800C3F3C 23104400 */  subu       $v0, $v0, $a0
    /* B4740 800C3F40 23104500 */  subu       $v0, $v0, $a1
    /* B4744 800C3F44 5D006018 */  blez       $v1, .L800C40BC
    /* B4748 800C3F48 4800A2AF */   sw        $v0, 0x48($sp)
    /* B474C 800C3F4C 6800AB8F */  lw         $t3, 0x68($sp)
    /* B4750 800C3F50 5000AA8F */  lw         $t2, 0x50($sp)
    /* B4754 800C3F54 C0100B00 */  sll        $v0, $t3, 3
    /* B4758 800C3F58 23104A00 */  subu       $v0, $v0, $t2
    /* B475C 800C3F5C 80100200 */  sll        $v0, $v0, 2
    /* B4760 800C3F60 7000A2AF */  sw         $v0, 0x70($sp)
    /* B4764 800C3F64 2A101502 */  slt        $v0, $s0, $s5
  .L800C3F68:
    /* B4768 800C3F68 1F004014 */  bnez       $v0, .L800C3FE8
    /* B476C 800C3F6C 01002232 */   andi      $v0, $s1, 0x1
    /* B4770 800C3F70 4800AB8F */  lw         $t3, 0x48($sp)
    /* B4774 800C3F74 23181502 */  subu       $v1, $s0, $s5
    /* B4778 800C3F78 2A106B00 */  slt        $v0, $v1, $t3
    /* B477C 800C3F7C 03004010 */  beqz       $v0, .L800C3F8C
    /* B4780 800C3F80 01002232 */   andi      $v0, $s1, 0x1
    /* B4784 800C3F84 FA0F0308 */  j          .L800C3FE8
    /* B4788 800C3F88 02004224 */   addiu     $v0, $v0, 0x2
  .L800C3F8C:
    /* B478C 800C3F8C 4800AA8F */  lw         $t2, 0x48($sp)
    /* B4790 800C3F90 00000000 */  nop
    /* B4794 800C3F94 23206A00 */  subu       $a0, $v1, $t2
    /* B4798 800C3F98 2A109600 */  slt        $v0, $a0, $s6
    /* B479C 800C3F9C 03004010 */  beqz       $v0, .L800C3FAC
    /* B47A0 800C3FA0 01002232 */   andi      $v0, $s1, 0x1
    /* B47A4 800C3FA4 FA0F0308 */  j          .L800C3FE8
    /* B47A8 800C3FA8 04004224 */   addiu     $v0, $v0, 0x4
  .L800C3FAC:
    /* B47AC 800C3FAC 1680033C */  lui        $v1, %hi(D_8015856C)
    /* B47B0 800C3FB0 6C85638C */  lw         $v1, %lo(D_8015856C)($v1)
    /* B47B4 800C3FB4 23209600 */  subu       $a0, $a0, $s6
    /* B47B8 800C3FB8 2A108300 */  slt        $v0, $a0, $v1
    /* B47BC 800C3FBC 03004010 */  beqz       $v0, .L800C3FCC
    /* B47C0 800C3FC0 01002232 */   andi      $v0, $s1, 0x1
    /* B47C4 800C3FC4 FA0F0308 */  j          .L800C3FE8
    /* B47C8 800C3FC8 06004224 */   addiu     $v0, $v0, 0x6
  .L800C3FCC:
    /* B47CC 800C3FCC 23208300 */  subu       $a0, $a0, $v1
    /* B47D0 800C3FD0 9000A8AF */  sw         $t0, 0x90($sp)
    /* B47D4 800C3FD4 C351000C */  jal        func_8001470C
    /* B47D8 800C3FD8 9400A9AF */   sw        $t1, 0x94($sp)
    /* B47DC 800C3FDC 07004224 */  addiu      $v0, $v0, 0x7
    /* B47E0 800C3FE0 9400A98F */  lw         $t1, 0x94($sp)
    /* B47E4 800C3FE4 9000A88F */  lw         $t0, 0x90($sp)
  .L800C3FE8:
    /* B47E8 800C3FE8 01003126 */  addiu      $s1, $s1, 0x1
    /* B47EC 800C3FEC 2800A427 */  addiu      $a0, $sp, 0x28
    /* B47F0 800C3FF0 C0280200 */  sll        $a1, $v0, 3
    /* B47F4 800C3FF4 2128A200 */  addu       $a1, $a1, $v0
    /* B47F8 800C3FF8 80280500 */  sll        $a1, $a1, 2
    /* B47FC 800C3FFC 2128A200 */  addu       $a1, $a1, $v0
    /* B4800 800C4000 80280500 */  sll        $a1, $a1, 2
    /* B4804 800C4004 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* B4808 800C4008 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* B480C 800C400C 2128A200 */  addu       $a1, $a1, $v0
    /* B4810 800C4010 1280063C */  lui        $a2, %hi(D_80120D84)
    /* B4814 800C4014 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* B4818 800C4018 003C1200 */  sll        $a3, $s2, 16
    /* B481C 800C401C 033C0700 */  sra        $a3, $a3, 16
    /* B4820 800C4020 00141300 */  sll        $v0, $s3, 16
    /* B4824 800C4024 7000AB8F */  lw         $t3, 0x70($sp)
    /* B4828 800C4028 03140200 */  sra        $v0, $v0, 16
    /* B482C 800C402C 1000A2AF */  sw         $v0, 0x10($sp)
    /* B4830 800C4030 9000A8AF */  sw         $t0, 0x90($sp)
    /* B4834 800C4034 9400A9AF */  sw         $t1, 0x94($sp)
    /* B4838 800C4038 89EE030C */  jal        func_800FBA24
    /* B483C 800C403C 21286501 */   addu      $a1, $t3, $a1
    /* B4840 800C4040 1280023C */  lui        $v0, %hi(D_80120E58)
    /* B4844 800C4044 580E428C */  lw         $v0, %lo(D_80120E58)($v0)
    /* B4848 800C4048 1280033C */  lui        $v1, %hi(D_80120E60)
    /* B484C 800C404C 600E638C */  lw         $v1, %lo(D_80120E60)($v1)
    /* B4850 800C4050 9400A98F */  lw         $t1, 0x94($sp)
    /* B4854 800C4054 9000A88F */  lw         $t0, 0x90($sp)
    /* B4858 800C4058 21904902 */  addu       $s2, $s2, $t1
    /* B485C 800C405C 21104300 */  addu       $v0, $v0, $v1
    /* B4860 800C4060 E8FF4224 */  addiu      $v0, $v0, -0x18
    /* B4864 800C4064 2A105200 */  slt        $v0, $v0, $s2
    /* B4868 800C4068 0F004010 */  beqz       $v0, .L800C40A8
    /* B486C 800C406C 21A00000 */   addu      $s4, $zero, $zero
    /* B4870 800C4070 0100F726 */  addiu      $s7, $s7, 0x1
    /* B4874 800C4074 0100E332 */  andi       $v1, $s7, 0x1
    /* B4878 800C4078 42100900 */  srl        $v0, $t1, 1
    /* B487C 800C407C 18006200 */  mult       $v1, $v0
    /* B4880 800C4080 01001424 */  addiu      $s4, $zero, 0x1
    /* B4884 800C4084 09007326 */  addiu      $s3, $s3, 0x9
    /* B4888 800C4088 3800AA8F */  lw         $t2, 0x38($sp)
    /* B488C 800C408C 0700E22A */  slti       $v0, $s7, 0x7
    /* B4890 800C4090 12580000 */  mflo       $t3
    /* B4894 800C4094 17004010 */  beqz       $v0, .L800C40F4
    /* B4898 800C4098 21904B01 */   addu      $s2, $t2, $t3
    /* B489C 800C409C F100622A */  slti       $v0, $s3, 0xF1
    /* B48A0 800C40A0 14004010 */  beqz       $v0, .L800C40F4
    /* B48A4 800C40A4 00000000 */   nop
  .L800C40A8:
    /* B48A8 800C40A8 00000281 */  lb         $v0, 0x0($t0)
    /* B48AC 800C40AC 01001026 */  addiu      $s0, $s0, 0x1
    /* B48B0 800C40B0 2A100202 */  slt        $v0, $s0, $v0
    /* B48B4 800C40B4 ACFF4014 */  bnez       $v0, .L800C3F68
    /* B48B8 800C40B8 2A101502 */   slt       $v0, $s0, $s5
  .L800C40BC:
    /* B48BC 800C40BC 58000825 */  addiu      $t0, $t0, 0x58
    /* B48C0 800C40C0 8800AA8F */  lw         $t2, 0x88($sp)
    /* B48C4 800C40C4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B48C8 800C40C8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B48CC 800C40CC 3000AB8F */  lw         $t3, 0x30($sp)
    /* B48D0 800C40D0 58004A25 */  addiu      $t2, $t2, 0x58
    /* B48D4 800C40D4 01006B25 */  addiu      $t3, $t3, 0x1
    /* B48D8 800C40D8 2A106201 */  slt        $v0, $t3, $v0
    /* B48DC 800C40DC 8800AAAF */  sw         $t2, 0x88($sp)
    /* B48E0 800C40E0 7EFF4014 */  bnez       $v0, .L800C3EDC
    /* B48E4 800C40E4 3000ABAF */   sw        $t3, 0x30($sp)
  .L800C40E8:
    /* B48E8 800C40E8 D00B848F */  lw         $a0, %gp_rel(D_801590A8)($gp)
    /* B48EC 800C40EC 89D6030C */  jal        func_800F5A24
    /* B48F0 800C40F0 00000000 */   nop
  .L800C40F4:
    /* B48F4 800C40F4 03008012 */  beqz       $s4, .L800C4104
    /* B48F8 800C40F8 14007026 */   addiu     $s0, $s3, 0x14
    /* B48FC 800C40FC F7FF7326 */  addiu      $s3, $s3, -0x9
    /* B4900 800C4100 14007026 */  addiu      $s0, $s3, 0x14
  .L800C4104:
    /* B4904 800C4104 5800AB8F */  lw         $t3, 0x58($sp)
    /* B4908 800C4108 10000A24 */  addiu      $t2, $zero, 0x10
    /* B490C 800C410C 3A006011 */  beqz       $t3, .L800C41F8
    /* B4910 800C4110 3800AAAF */   sw        $t2, 0x38($sp)
    /* B4914 800C4114 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4918 800C4118 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B491C 800C411C CB1A030C */  jal        func_800C6B2C
    /* B4920 800C4120 00000000 */   nop
    /* B4924 800C4124 1680033C */  lui        $v1, %hi(D_8015887C)
    /* B4928 800C4128 7C88638C */  lw         $v1, %lo(D_8015887C)($v1)
    /* B492C 800C412C 01000224 */  addiu      $v0, $zero, 0x1
    /* B4930 800C4130 0C006210 */  beq        $v1, $v0, .L800C4164
    /* B4934 800C4134 00000000 */   nop
    /* B4938 800C4138 4000A48F */  lw         $a0, 0x40($sp)
    /* B493C 800C413C 8A54020C */  jal        func_80095228
    /* B4940 800C4140 00000000 */   nop
    /* B4944 800C4144 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4948 800C4148 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B494C 800C414C 9987030C */  jal        func_800E1E64
    /* B4950 800C4150 21284000 */   addu      $a1, $v0, $zero
    /* B4954 800C4154 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4958 800C4158 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B495C 800C415C CD1A030C */  jal        func_800C6B34
    /* B4960 800C4160 00000000 */   nop
  .L800C4164:
    /* B4964 800C4164 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4968 800C4168 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B496C 800C416C 731B030C */  jal        func_800C6DCC
    /* B4970 800C4170 93010524 */   addiu     $a1, $zero, 0x193
    /* B4974 800C4174 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4978 800C4178 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B497C 800C417C CD1A030C */  jal        func_800C6B34
    /* B4980 800C4180 00000000 */   nop
    /* B4984 800C4184 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4988 800C4188 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B498C 800C418C 151B030C */  jal        func_800C6C54
    /* B4990 800C4190 00000000 */   nop
    /* B4994 800C4194 1680053C */  lui        $a1, %hi(D_801590F0)
    /* B4998 800C4198 F090A58C */  lw         $a1, %lo(D_801590F0)($a1)
    /* B499C 800C419C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B49A0 800C41A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B49A4 800C41A4 9C1B030C */  jal        func_800C6E70
    /* B49A8 800C41A8 00000000 */   nop
    /* B49AC 800C41AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B49B0 800C41B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B49B4 800C41B4 1F1B030C */  jal        func_800C6C7C
    /* B49B8 800C41B8 00000000 */   nop
    /* B49BC 800C41BC 1280053C */  lui        $a1, %hi(D_80121340)
    /* B49C0 800C41C0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B49C4 800C41C4 1800A627 */  addiu      $a2, $sp, 0x18
    /* B49C8 800C41C8 10000724 */  addiu      $a3, $zero, 0x10
    /* B49CC 800C41CC 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* B49D0 800C41D0 24007026 */  addiu      $s0, $s3, 0x24
    /* B49D4 800C41D4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B49D8 800C41D8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B49DC 800C41DC 3800AA97 */  lhu        $t2, 0x38($sp)
    /* B49E0 800C41E0 40010224 */  addiu      $v0, $zero, 0x140
    /* B49E4 800C41E4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B49E8 800C41E8 20006226 */  addiu      $v0, $s3, 0x20
    /* B49EC 800C41EC 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B49F0 800C41F0 5511040C */  jal        func_80104554
    /* B49F4 800C41F4 1800AAA7 */   sh        $t2, 0x18($sp)
  .L800C41F8:
    /* B49F8 800C41F8 3E0C040C */  jal        func_801030F8
    /* B49FC 800C41FC 01000424 */   addiu     $a0, $zero, 0x1
    /* B4A00 800C4200 5800AB8F */  lw         $t3, 0x58($sp)
    /* B4A04 800C4204 00000000 */  nop
    /* B4A08 800C4208 34006011 */  beqz       $t3, .L800C42DC
    /* B4A0C 800C420C 00000000 */   nop
    /* B4A10 800C4210 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A14 800C4214 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A18 800C4218 CB1A030C */  jal        func_800C6B2C
    /* B4A1C 800C421C 00000000 */   nop
    /* B4A20 800C4220 4000A48F */  lw         $a0, 0x40($sp)
    /* B4A24 800C4224 8A54020C */  jal        func_80095228
    /* B4A28 800C4228 00000000 */   nop
    /* B4A2C 800C422C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A30 800C4230 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A34 800C4234 9987030C */  jal        func_800E1E64
    /* B4A38 800C4238 21284000 */   addu      $a1, $v0, $zero
    /* B4A3C 800C423C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A40 800C4240 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A44 800C4244 CD1A030C */  jal        func_800C6B34
    /* B4A48 800C4248 00000000 */   nop
    /* B4A4C 800C424C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A50 800C4250 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A54 800C4254 731B030C */  jal        func_800C6DCC
    /* B4A58 800C4258 94010524 */   addiu     $a1, $zero, 0x194
    /* B4A5C 800C425C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A60 800C4260 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A64 800C4264 CD1A030C */  jal        func_800C6B34
    /* B4A68 800C4268 00000000 */   nop
    /* B4A6C 800C426C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A70 800C4270 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A74 800C4274 151B030C */  jal        func_800C6C54
    /* B4A78 800C4278 00000000 */   nop
    /* B4A7C 800C427C 1680053C */  lui        $a1, %hi(D_801590F4)
    /* B4A80 800C4280 F490A58C */  lw         $a1, %lo(D_801590F4)($a1)
    /* B4A84 800C4284 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A88 800C4288 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A8C 800C428C 9C1B030C */  jal        func_800C6E70
    /* B4A90 800C4290 00000000 */   nop
    /* B4A94 800C4294 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4A98 800C4298 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4A9C 800C429C 1F1B030C */  jal        func_800C6C7C
    /* B4AA0 800C42A0 00000000 */   nop
    /* B4AA4 800C42A4 1280053C */  lui        $a1, %hi(D_80121340)
    /* B4AA8 800C42A8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B4AAC 800C42AC 1800A627 */  addiu      $a2, $sp, 0x18
    /* B4AB0 800C42B0 10000724 */  addiu      $a3, $zero, 0x10
    /* B4AB4 800C42B4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4AB8 800C42B8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B4ABC 800C42BC 3800AA97 */  lhu        $t2, 0x38($sp)
    /* B4AC0 800C42C0 40010224 */  addiu      $v0, $zero, 0x140
    /* B4AC4 800C42C4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B4AC8 800C42C8 0C000226 */  addiu      $v0, $s0, 0xC
    /* B4ACC 800C42CC 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* B4AD0 800C42D0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B4AD4 800C42D4 5511040C */  jal        func_80104554
    /* B4AD8 800C42D8 1800AAA7 */   sh        $t2, 0x18($sp)
  .L800C42DC:
    /* B4ADC 800C42DC 1680023C */  lui        $v0, %hi(D_801590F8)
    /* B4AE0 800C42E0 F890428C */  lw         $v0, %lo(D_801590F8)($v0)
    /* B4AE4 800C42E4 00000000 */  nop
    /* B4AE8 800C42E8 06004014 */  bnez       $v0, .L800C4304
    /* B4AEC 800C42EC 0C001026 */   addiu     $s0, $s0, 0xC
    /* B4AF0 800C42F0 1680023C */  lui        $v0, %hi(D_801590FC)
    /* B4AF4 800C42F4 FC90428C */  lw         $v0, %lo(D_801590FC)($v0)
    /* B4AF8 800C42F8 00000000 */  nop
    /* B4AFC 800C42FC 44004010 */  beqz       $v0, .L800C4410
    /* B4B00 800C4300 00000000 */   nop
  .L800C4304:
    /* B4B04 800C4304 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B08 800C4308 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B0C 800C430C CB1A030C */  jal        func_800C6B2C
    /* B4B10 800C4310 00000000 */   nop
    /* B4B14 800C4314 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B18 800C4318 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B1C 800C431C 731B030C */  jal        func_800C6DCC
    /* B4B20 800C4320 95010524 */   addiu     $a1, $zero, 0x195
    /* B4B24 800C4324 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B28 800C4328 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B2C 800C432C F71A030C */  jal        func_800C6BDC
    /* B4B30 800C4330 00000000 */   nop
    /* B4B34 800C4334 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B38 800C4338 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B3C 800C433C 151B030C */  jal        func_800C6C54
    /* B4B40 800C4340 00000000 */   nop
    /* B4B44 800C4344 1680053C */  lui        $a1, %hi(D_801590F8)
    /* B4B48 800C4348 F890A58C */  lw         $a1, %lo(D_801590F8)($a1)
    /* B4B4C 800C434C 00000000 */  nop
    /* B4B50 800C4350 0700A010 */  beqz       $a1, .L800C4370
    /* B4B54 800C4354 00000000 */   nop
    /* B4B58 800C4358 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B5C 800C435C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B60 800C4360 9C1B030C */  jal        func_800C6E70
    /* B4B64 800C4364 00000000 */   nop
    /* B4B68 800C4368 EE100308 */  j          .L800C43B8
    /* B4B6C 800C436C 00000000 */   nop
  .L800C4370:
    /* B4B70 800C4370 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B74 800C4374 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B78 800C4378 0180053C */  lui        $a1, %hi(D_800124E8)
    /* B4B7C 800C437C E824A524 */  addiu      $a1, $a1, %lo(D_800124E8)
    /* B4B80 800C4380 9987030C */  jal        func_800E1E64
    /* B4B84 800C4384 00000000 */   nop
    /* B4B88 800C4388 1680053C */  lui        $a1, %hi(D_801590FC)
    /* B4B8C 800C438C FC90A58C */  lw         $a1, %lo(D_801590FC)($a1)
    /* B4B90 800C4390 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4B94 800C4394 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4B98 800C4398 9C1B030C */  jal        func_800C6E70
    /* B4B9C 800C439C 00000000 */   nop
    /* B4BA0 800C43A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4BA4 800C43A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4BA8 800C43A8 1680053C */  lui        $a1, %hi(D_80159024)
    /* B4BAC 800C43AC 2490A524 */  addiu      $a1, $a1, %lo(D_80159024)
    /* B4BB0 800C43B0 9987030C */  jal        func_800E1E64
    /* B4BB4 800C43B4 00000000 */   nop
  .L800C43B8:
    /* B4BB8 800C43B8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4BBC 800C43BC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4BC0 800C43C0 1F1B030C */  jal        func_800C6C7C
    /* B4BC4 800C43C4 00000000 */   nop
    /* B4BC8 800C43C8 5800AB8F */  lw         $t3, 0x58($sp)
    /* B4BCC 800C43CC 00000000 */  nop
    /* B4BD0 800C43D0 0E006011 */  beqz       $t3, .L800C440C
    /* B4BD4 800C43D4 1800A627 */   addiu     $a2, $sp, 0x18
    /* B4BD8 800C43D8 1280053C */  lui        $a1, %hi(D_80121340)
    /* B4BDC 800C43DC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B4BE0 800C43E0 10000724 */  addiu      $a3, $zero, 0x10
    /* B4BE4 800C43E4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4BE8 800C43E8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B4BEC 800C43EC 3800AA97 */  lhu        $t2, 0x38($sp)
    /* B4BF0 800C43F0 40010224 */  addiu      $v0, $zero, 0x140
    /* B4BF4 800C43F4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B4BF8 800C43F8 0C000226 */  addiu      $v0, $s0, 0xC
    /* B4BFC 800C43FC 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* B4C00 800C4400 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B4C04 800C4404 5511040C */  jal        func_80104554
    /* B4C08 800C4408 1800AAA7 */   sh        $t2, 0x18($sp)
  .L800C440C:
    /* B4C0C 800C440C 0C001026 */  addiu      $s0, $s0, 0xC
  .L800C4410:
    /* B4C10 800C4410 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C14 800C4414 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C18 800C4418 CB1A030C */  jal        func_800C6B2C
    /* B4C1C 800C441C 21A00000 */   addu      $s4, $zero, $zero
    /* B4C20 800C4420 1680023C */  lui        $v0, %hi(D_80159100)
    /* B4C24 800C4424 0091428C */  lw         $v0, %lo(D_80159100)($v0)
    /* B4C28 800C4428 00000000 */  nop
    /* B4C2C 800C442C 1D004010 */  beqz       $v0, .L800C44A4
    /* B4C30 800C4430 00000000 */   nop
    /* B4C34 800C4434 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C38 800C4438 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C3C 800C443C 731B030C */  jal        func_800C6DCC
    /* B4C40 800C4440 7C010524 */   addiu     $a1, $zero, 0x17C
    /* B4C44 800C4444 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C48 800C4448 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C4C 800C444C CD1A030C */  jal        func_800C6B34
    /* B4C50 800C4450 01001424 */   addiu     $s4, $zero, 0x1
    /* B4C54 800C4454 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C58 800C4458 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C5C 800C445C 151B030C */  jal        func_800C6C54
    /* B4C60 800C4460 00000000 */   nop
    /* B4C64 800C4464 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C68 800C4468 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C6C 800C446C 1680053C */  lui        $a1, %hi(D_80159100)
    /* B4C70 800C4470 0091A58C */  lw         $a1, %lo(D_80159100)($a1)
    /* B4C74 800C4474 9C1B030C */  jal        func_800C6E70
    /* B4C78 800C4478 00000000 */   nop
    /* B4C7C 800C447C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C80 800C4480 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C84 800C4484 1F1B030C */  jal        func_800C6C7C
    /* B4C88 800C4488 00000000 */   nop
    /* B4C8C 800C448C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4C90 800C4490 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4C94 800C4494 1680053C */  lui        $a1, %hi(D_80159060)
    /* B4C98 800C4498 6090A524 */  addiu      $a1, $a1, %lo(D_80159060)
    /* B4C9C 800C449C 9987030C */  jal        func_800E1E64
    /* B4CA0 800C44A0 00000000 */   nop
  .L800C44A4:
    /* B4CA4 800C44A4 1280023C */  lui        $v0, %hi(D_8011A262)
    /* B4CA8 800C44A8 62A24284 */  lh         $v0, %lo(D_8011A262)($v0)
    /* B4CAC 800C44AC 00000000 */  nop
    /* B4CB0 800C44B0 C8004228 */  slti       $v0, $v0, 0xC8
    /* B4CB4 800C44B4 28004014 */  bnez       $v0, .L800C4558
    /* B4CB8 800C44B8 00000000 */   nop
    /* B4CBC 800C44BC 1680023C */  lui        $v0, %hi(D_80159104)
    /* B4CC0 800C44C0 0491428C */  lw         $v0, %lo(D_80159104)($v0)
    /* B4CC4 800C44C4 00000000 */  nop
    /* B4CC8 800C44C8 23004010 */  beqz       $v0, .L800C4558
    /* B4CCC 800C44CC 00000000 */   nop
    /* B4CD0 800C44D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4CD4 800C44D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4CD8 800C44D8 731B030C */  jal        func_800C6DCC
    /* B4CDC 800C44DC 96010524 */   addiu     $a1, $zero, 0x196
    /* B4CE0 800C44E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4CE4 800C44E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4CE8 800C44E8 F71A030C */  jal        func_800C6BDC
    /* B4CEC 800C44EC 01001424 */   addiu     $s4, $zero, 0x1
    /* B4CF0 800C44F0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4CF4 800C44F4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4CF8 800C44F8 151B030C */  jal        func_800C6C54
    /* B4CFC 800C44FC 00000000 */   nop
    /* B4D00 800C4500 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D04 800C4504 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D08 800C4508 1680053C */  lui        $a1, %hi(D_80159068)
    /* B4D0C 800C450C 6890A524 */  addiu      $a1, $a1, %lo(D_80159068)
    /* B4D10 800C4510 9987030C */  jal        func_800E1E64
    /* B4D14 800C4514 00000000 */   nop
    /* B4D18 800C4518 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D1C 800C451C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D20 800C4520 1680053C */  lui        $a1, %hi(D_80159104)
    /* B4D24 800C4524 0491A58C */  lw         $a1, %lo(D_80159104)($a1)
    /* B4D28 800C4528 9C1B030C */  jal        func_800C6E70
    /* B4D2C 800C452C 00000000 */   nop
    /* B4D30 800C4530 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D34 800C4534 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D38 800C4538 1F1B030C */  jal        func_800C6C7C
    /* B4D3C 800C453C 00000000 */   nop
    /* B4D40 800C4540 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D44 800C4544 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D48 800C4548 1680053C */  lui        $a1, %hi(D_80159060)
    /* B4D4C 800C454C 6090A524 */  addiu      $a1, $a1, %lo(D_80159060)
    /* B4D50 800C4550 9987030C */  jal        func_800E1E64
    /* B4D54 800C4554 00000000 */   nop
  .L800C4558:
    /* B4D58 800C4558 1680023C */  lui        $v0, %hi(D_80159108)
    /* B4D5C 800C455C 0891428C */  lw         $v0, %lo(D_80159108)($v0)
    /* B4D60 800C4560 00000000 */  nop
    /* B4D64 800C4564 1F004010 */  beqz       $v0, .L800C45E4
    /* B4D68 800C4568 00000000 */   nop
    /* B4D6C 800C456C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D70 800C4570 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D74 800C4574 1180053C */  lui        $a1, %hi(D_8010C830)
    /* B4D78 800C4578 30C8A58C */  lw         $a1, %lo(D_8010C830)($a1)
    /* B4D7C 800C457C 651B030C */  jal        func_800C6D94
    /* B4D80 800C4580 01001424 */   addiu     $s4, $zero, 0x1
    /* B4D84 800C4584 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D88 800C4588 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D8C 800C458C F71A030C */  jal        func_800C6BDC
    /* B4D90 800C4590 00000000 */   nop
    /* B4D94 800C4594 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4D98 800C4598 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4D9C 800C459C 151B030C */  jal        func_800C6C54
    /* B4DA0 800C45A0 00000000 */   nop
    /* B4DA4 800C45A4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4DA8 800C45A8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4DAC 800C45AC 1680053C */  lui        $a1, %hi(D_80159068)
    /* B4DB0 800C45B0 6890A524 */  addiu      $a1, $a1, %lo(D_80159068)
    /* B4DB4 800C45B4 9987030C */  jal        func_800E1E64
    /* B4DB8 800C45B8 00000000 */   nop
    /* B4DBC 800C45BC 1680053C */  lui        $a1, %hi(D_80159108)
    /* B4DC0 800C45C0 0891A58C */  lw         $a1, %lo(D_80159108)($a1)
    /* B4DC4 800C45C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4DC8 800C45C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4DCC 800C45CC 9C1B030C */  jal        func_800C6E70
    /* B4DD0 800C45D0 00000000 */   nop
    /* B4DD4 800C45D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4DD8 800C45D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4DDC 800C45DC 1F1B030C */  jal        func_800C6C7C
    /* B4DE0 800C45E0 00000000 */   nop
  .L800C45E4:
    /* B4DE4 800C45E4 07008012 */  beqz       $s4, .L800C4604
    /* B4DE8 800C45E8 00000000 */   nop
    /* B4DEC 800C45EC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4DF0 800C45F0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4DF4 800C45F4 1680053C */  lui        $a1, %hi(D_8015906C)
    /* B4DF8 800C45F8 6C90A524 */  addiu      $a1, $a1, %lo(D_8015906C)
    /* B4DFC 800C45FC 9987030C */  jal        func_800E1E64
    /* B4E00 800C4600 00000000 */   nop
  .L800C4604:
    /* B4E04 800C4604 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4E08 800C4608 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4E0C 800C460C 731B030C */  jal        func_800C6DCC
    /* B4E10 800C4610 0F000524 */   addiu     $a1, $zero, 0xF
    /* B4E14 800C4614 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4E18 800C4618 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4E1C 800C461C F71A030C */  jal        func_800C6BDC
    /* B4E20 800C4620 00000000 */   nop
    /* B4E24 800C4624 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4E28 800C4628 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4E2C 800C462C 151B030C */  jal        func_800C6C54
    /* B4E30 800C4630 00000000 */   nop
    /* B4E34 800C4634 1680023C */  lui        $v0, %hi(D_80159114)
    /* B4E38 800C4638 1491428C */  lw         $v0, %lo(D_80159114)($v0)
    /* B4E3C 800C463C 00000000 */  nop
    /* B4E40 800C4640 07004004 */  bltz       $v0, .L800C4660
    /* B4E44 800C4644 00000000 */   nop
    /* B4E48 800C4648 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4E4C 800C464C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4E50 800C4650 1680053C */  lui        $a1, %hi(D_80159068)
    /* B4E54 800C4654 6890A524 */  addiu      $a1, $a1, %lo(D_80159068)
    /* B4E58 800C4658 9987030C */  jal        func_800E1E64
    /* B4E5C 800C465C 00000000 */   nop
  .L800C4660:
    /* B4E60 800C4660 1680053C */  lui        $a1, %hi(D_80159114)
    /* B4E64 800C4664 1491A58C */  lw         $a1, %lo(D_80159114)($a1)
    /* B4E68 800C4668 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4E6C 800C466C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4E70 800C4670 9C1B030C */  jal        func_800C6E70
    /* B4E74 800C4674 00000000 */   nop
    /* B4E78 800C4678 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4E7C 800C467C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4E80 800C4680 1F1B030C */  jal        func_800C6C7C
    /* B4E84 800C4684 00000000 */   nop
    /* B4E88 800C4688 5800AB8F */  lw         $t3, 0x58($sp)
    /* B4E8C 800C468C 00000000 */  nop
    /* B4E90 800C4690 0E006011 */  beqz       $t3, .L800C46CC
    /* B4E94 800C4694 1800A627 */   addiu     $a2, $sp, 0x18
    /* B4E98 800C4698 1280053C */  lui        $a1, %hi(D_80121340)
    /* B4E9C 800C469C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B4EA0 800C46A0 10000724 */  addiu      $a3, $zero, 0x10
    /* B4EA4 800C46A4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B4EA8 800C46A8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B4EAC 800C46AC 3800AA97 */  lhu        $t2, 0x38($sp)
    /* B4EB0 800C46B0 40010224 */  addiu      $v0, $zero, 0x140
    /* B4EB4 800C46B4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B4EB8 800C46B8 0C000226 */  addiu      $v0, $s0, 0xC
    /* B4EBC 800C46BC 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* B4EC0 800C46C0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B4EC4 800C46C4 5511040C */  jal        func_80104554
    /* B4EC8 800C46C8 1800AAA7 */   sh        $t2, 0x18($sp)
  .L800C46CC:
    /* B4ECC 800C46CC 0C000B24 */  addiu      $t3, $zero, 0xC
    /* B4ED0 800C46D0 40100B00 */  sll        $v0, $t3, 1
    /* B4ED4 800C46D4 21800202 */  addu       $s0, $s0, $v0
    /* B4ED8 800C46D8 21880000 */  addu       $s1, $zero, $zero
    /* B4EDC 800C46DC 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B4EE0 800C46E0 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B4EE4 800C46E4 00000000 */  nop
    /* B4EE8 800C46E8 80004230 */  andi       $v0, $v0, 0x80
    /* B4EEC 800C46EC 0E004010 */  beqz       $v0, .L800C4728
    /* B4EF0 800C46F0 21900000 */   addu      $s2, $zero, $zero
    /* B4EF4 800C46F4 1280023C */  lui        $v0, %hi(D_8011A390)
    /* B4EF8 800C46F8 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* B4EFC 800C46FC 00000000 */  nop
    /* B4F00 800C4700 02004230 */  andi       $v0, $v0, 0x2
    /* B4F04 800C4704 08004010 */  beqz       $v0, .L800C4728
    /* B4F08 800C4708 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B4F0C 800C470C 01001124 */  addiu      $s1, $zero, 0x1
    /* B4F10 800C4710 1680033C */  lui        $v1, %hi(D_80159118)
    /* B4F14 800C4714 1891638C */  lw         $v1, %lo(D_80159118)($v1)
    /* B4F18 800C4718 1680013C */  lui        $at, %hi(D_8015910C)
    /* B4F1C 800C471C 0C9122AC */  sw         $v0, %lo(D_8015910C)($at)
    /* B4F20 800C4720 1680013C */  lui        $at, %hi(D_80159110)
    /* B4F24 800C4724 109123AC */  sw         $v1, %lo(D_80159110)($at)
  .L800C4728:
    /* B4F28 800C4728 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4F2C 800C472C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4F30 800C4730 CB1A030C */  jal        func_800C6B2C
    /* B4F34 800C4734 00000000 */   nop
    /* B4F38 800C4738 1680033C */  lui        $v1, %hi(D_8015910C)
    /* B4F3C 800C473C 0C91638C */  lw         $v1, %lo(D_8015910C)($v1)
    /* B4F40 800C4740 1680023C */  lui        $v0, %hi(D_80159110)
    /* B4F44 800C4744 1091428C */  lw         $v0, %lo(D_80159110)($v0)
    /* B4F48 800C4748 00000000 */  nop
    /* B4F4C 800C474C 2A104300 */  slt        $v0, $v0, $v1
    /* B4F50 800C4750 0D004010 */  beqz       $v0, .L800C4788
    /* B4F54 800C4754 00000000 */   nop
    /* B4F58 800C4758 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4F5C 800C475C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4F60 800C4760 731B030C */  jal        func_800C6DCC
    /* B4F64 800C4764 98010524 */   addiu     $a1, $zero, 0x198
    /* B4F68 800C4768 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4F6C 800C476C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4F70 800C4770 F71A030C */  jal        func_800C6BDC
    /* B4F74 800C4774 00000000 */   nop
    /* B4F78 800C4778 1680053C */  lui        $a1, %hi(D_8015910C)
    /* B4F7C 800C477C 0C91A58C */  lw         $a1, %lo(D_8015910C)($a1)
    /* B4F80 800C4780 EC110308 */  j          .L800C47B0
    /* B4F84 800C4784 00000000 */   nop
  .L800C4788:
    /* B4F88 800C4788 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4F8C 800C478C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4F90 800C4790 731B030C */  jal        func_800C6DCC
    /* B4F94 800C4794 97010524 */   addiu     $a1, $zero, 0x197
    /* B4F98 800C4798 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4F9C 800C479C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4FA0 800C47A0 F71A030C */  jal        func_800C6BDC
    /* B4FA4 800C47A4 00000000 */   nop
    /* B4FA8 800C47A8 1680053C */  lui        $a1, %hi(D_80159110)
    /* B4FAC 800C47AC 1091A58C */  lw         $a1, %lo(D_80159110)($a1)
  .L800C47B0:
    /* B4FB0 800C47B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4FB4 800C47B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4FB8 800C47B8 9C1B030C */  jal        func_800C6E70
    /* B4FBC 800C47BC 00000000 */   nop
    /* B4FC0 800C47C0 01000224 */  addiu      $v0, $zero, 0x1
    /* B4FC4 800C47C4 0A002216 */  bne        $s1, $v0, .L800C47F0
    /* B4FC8 800C47C8 00000000 */   nop
    /* B4FCC 800C47CC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B4FD0 800C47D0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B4FD4 800C47D4 AD87030C */  jal        func_800E1EB4
    /* B4FD8 800C47D8 00000000 */   nop
    /* B4FDC 800C47DC 40180200 */  sll        $v1, $v0, 1
    /* B4FE0 800C47E0 21186200 */  addu       $v1, $v1, $v0
    /* B4FE4 800C47E4 40180300 */  sll        $v1, $v1, 1
    /* B4FE8 800C47E8 0E120308 */  j          .L800C4838
    /* B4FEC 800C47EC 21904302 */   addu      $s2, $s2, $v1
  .L800C47F0:
    /* B4FF0 800C47F0 5800AA8F */  lw         $t2, 0x58($sp)
    /* B4FF4 800C47F4 00000000 */  nop
    /* B4FF8 800C47F8 0E004011 */  beqz       $t2, .L800C4834
    /* B4FFC 800C47FC 1800A627 */   addiu     $a2, $sp, 0x18
    /* B5000 800C4800 1280053C */  lui        $a1, %hi(D_80121340)
    /* B5004 800C4804 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B5008 800C4808 10000724 */  addiu      $a3, $zero, 0x10
    /* B500C 800C480C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B5010 800C4810 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B5014 800C4814 3800AB97 */  lhu        $t3, 0x38($sp)
    /* B5018 800C4818 40010224 */  addiu      $v0, $zero, 0x140
    /* B501C 800C481C 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* B5020 800C4820 0C000226 */  addiu      $v0, $s0, 0xC
    /* B5024 800C4824 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* B5028 800C4828 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* B502C 800C482C 5511040C */  jal        func_80104554
    /* B5030 800C4830 1800ABA7 */   sh        $t3, 0x18($sp)
  .L800C4834:
    /* B5034 800C4834 0C001026 */  addiu      $s0, $s0, 0xC
  .L800C4838:
    /* B5038 800C4838 01000224 */  addiu      $v0, $zero, 0x1
    /* B503C 800C483C 0B002216 */  bne        $s1, $v0, .L800C486C
    /* B5040 800C4840 02001124 */   addiu     $s1, $zero, 0x2
    /* B5044 800C4844 1280023C */  lui        $v0, %hi(D_80120E60)
    /* B5048 800C4848 600E428C */  lw         $v0, %lo(D_80120E60)($v0)
    /* B504C 800C484C 1280033C */  lui        $v1, %hi(D_80120E58)
    /* B5050 800C4850 580E638C */  lw         $v1, %lo(D_80120E58)($v1)
    /* B5054 800C4854 43100200 */  sra        $v0, $v0, 1
    /* B5058 800C4858 21186200 */  addu       $v1, $v1, $v0
    /* B505C 800C485C 43101200 */  sra        $v0, $s2, 1
    /* B5060 800C4860 23186200 */  subu       $v1, $v1, $v0
    /* B5064 800C4864 CA110308 */  j          .L800C4728
    /* B5068 800C4868 3800A3AF */   sw        $v1, 0x38($sp)
  .L800C486C:
    /* B506C 800C486C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B5070 800C4870 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B5074 800C4874 7D11040C */  jal        func_801045F4
    /* B5078 800C4878 00000000 */   nop
    /* B507C 800C487C BC00BF8F */  lw         $ra, 0xBC($sp)
    /* B5080 800C4880 B800BE8F */  lw         $fp, 0xB8($sp)
    /* B5084 800C4884 B400B78F */  lw         $s7, 0xB4($sp)
    /* B5088 800C4888 B000B68F */  lw         $s6, 0xB0($sp)
    /* B508C 800C488C AC00B58F */  lw         $s5, 0xAC($sp)
    /* B5090 800C4890 A800B48F */  lw         $s4, 0xA8($sp)
    /* B5094 800C4894 A400B38F */  lw         $s3, 0xA4($sp)
    /* B5098 800C4898 A000B28F */  lw         $s2, 0xA0($sp)
    /* B509C 800C489C 9C00B18F */  lw         $s1, 0x9C($sp)
    /* B50A0 800C48A0 9800B08F */  lw         $s0, 0x98($sp)
    /* B50A4 800C48A4 C000BD27 */  addiu      $sp, $sp, 0xC0
    /* B50A8 800C48A8 0800E003 */  jr         $ra
    /* B50AC 800C48AC 00000000 */   nop
endlabel func_800C3B5C
