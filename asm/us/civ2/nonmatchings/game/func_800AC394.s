.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AC394, 0xC7C

glabel func_800AC394
    /* 9CB94 800AC394 60FCBD27 */  addiu      $sp, $sp, -0x3A0
    /* 9CB98 800AC398 9C03BFAF */  sw         $ra, 0x39C($sp)
    /* 9CB9C 800AC39C 9803B2AF */  sw         $s2, 0x398($sp)
    /* 9CBA0 800AC3A0 9403B1AF */  sw         $s1, 0x394($sp)
    /* 9CBA4 800AC3A4 9003B0AF */  sw         $s0, 0x390($sp)
    /* 9CBA8 800AC3A8 21908000 */  addu       $s2, $a0, $zero
    /* 9CBAC 800AC3AC 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CBB0 800AC3B0 ADC5020C */  jal        func_800B16B4
    /* 9CBB4 800AC3B4 00200524 */   addiu     $a1, $zero, 0x2000
    /* 9CBB8 800AC3B8 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9CBBC 800AC3BC 9AE0030C */  jal        func_800F8268
    /* 9CBC0 800AC3C0 21200002 */   addu      $a0, $s0, $zero
    /* 9CBC4 800AC3C4 EFE9030C */  jal        func_800FA7BC
    /* 9CBC8 800AC3C8 F402A427 */   addiu     $a0, $sp, 0x2F4
    /* 9CBCC 800AC3CC 0403A0AF */  sw         $zero, 0x304($sp)
    /* 9CBD0 800AC3D0 0803A0AF */  sw         $zero, 0x308($sp)
    /* 9CBD4 800AC3D4 0C03A0AF */  sw         $zero, 0x30C($sp)
    /* 9CBD8 800AC3D8 1003A0AF */  sw         $zero, 0x310($sp)
    /* 9CBDC 800AC3DC 1403A0AF */  sw         $zero, 0x314($sp)
    /* 9CBE0 800AC3E0 1803A0AF */  sw         $zero, 0x318($sp)
    /* 9CBE4 800AC3E4 1C03A0AF */  sw         $zero, 0x31C($sp)
    /* 9CBE8 800AC3E8 2003A0AF */  sw         $zero, 0x320($sp)
    /* 9CBEC 800AC3EC 2403A0AF */  sw         $zero, 0x324($sp)
    /* 9CBF0 800AC3F0 2803A0AF */  sw         $zero, 0x328($sp)
    /* 9CBF4 800AC3F4 2C03A0AF */  sw         $zero, 0x32C($sp)
    /* 9CBF8 800AC3F8 3003A0AF */  sw         $zero, 0x330($sp)
    /* 9CBFC 800AC3FC 3403A0AF */  sw         $zero, 0x334($sp)
    /* 9CC00 800AC400 3803A0AF */  sw         $zero, 0x338($sp)
    /* 9CC04 800AC404 3C03A0AF */  sw         $zero, 0x33C($sp)
    /* 9CC08 800AC408 4003A0AF */  sw         $zero, 0x340($sp)
    /* 9CC0C 800AC40C 4403A0AF */  sw         $zero, 0x344($sp)
    /* 9CC10 800AC410 4803A0AF */  sw         $zero, 0x348($sp)
    /* 9CC14 800AC414 4C03A0AF */  sw         $zero, 0x34C($sp)
    /* 9CC18 800AC418 5003A0AF */  sw         $zero, 0x350($sp)
    /* 9CC1C 800AC41C 5403A0AF */  sw         $zero, 0x354($sp)
    /* 9CC20 800AC420 5803A0AF */  sw         $zero, 0x358($sp)
    /* 9CC24 800AC424 5C03A0AF */  sw         $zero, 0x35C($sp)
    /* 9CC28 800AC428 6003A0A7 */  sh         $zero, 0x360($sp)
    /* 9CC2C 800AC42C 6203A0A7 */  sh         $zero, 0x362($sp)
    /* 9CC30 800AC430 00400224 */  addiu      $v0, $zero, 0x4000
    /* 9CC34 800AC434 6403A2A7 */  sh         $v0, 0x364($sp)
    /* 9CC38 800AC438 6603A2A7 */  sh         $v0, 0x366($sp)
    /* 9CC3C 800AC43C 6E03A0A7 */  sh         $zero, 0x36E($sp)
    /* 9CC40 800AC440 7003A0A7 */  sh         $zero, 0x370($sp)
    /* 9CC44 800AC444 6803A0A7 */  sh         $zero, 0x368($sp)
    /* 9CC48 800AC448 01000224 */  addiu      $v0, $zero, 0x1
    /* 9CC4C 800AC44C 6A03A2A7 */  sh         $v0, 0x36A($sp)
    /* 9CC50 800AC450 6C03A2A7 */  sh         $v0, 0x36C($sp)
    /* 9CC54 800AC454 7803A0AF */  sw         $zero, 0x378($sp)
    /* 9CC58 800AC458 7C03A0AF */  sw         $zero, 0x37C($sp)
    /* 9CC5C 800AC45C 8003A0AF */  sw         $zero, 0x380($sp)
    /* 9CC60 800AC460 01000224 */  addiu      $v0, $zero, 0x1
    /* 9CC64 800AC464 8403A2A3 */  sb         $v0, 0x384($sp)
    /* 9CC68 800AC468 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 9CC6C 800AC46C BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9CC70 800AC470 F002A2AF */  sw         $v0, 0x2F0($sp)
    /* 9CC74 800AC474 7803A0AF */  sw         $zero, 0x378($sp)
    /* 9CC78 800AC478 8803A0AF */  sw         $zero, 0x388($sp)
    /* 9CC7C 800AC47C 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 9CC80 800AC480 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9CC84 800AC484 F8000224 */  addiu      $v0, $zero, 0xF8
    /* 9CC88 800AC488 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9CC8C 800AC48C BC000224 */  addiu      $v0, $zero, 0xBC
    /* 9CC90 800AC490 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9CC94 800AC494 1180023C */  lui        $v0, %hi(D_8010CBE0)
    /* 9CC98 800AC498 E0CB4224 */  addiu      $v0, $v0, %lo(D_8010CBE0)
    /* 9CC9C 800AC49C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 9CCA0 800AC4A0 21200002 */  addu       $a0, $s0, $zero
    /* 9CCA4 800AC4A4 1680053C */  lui        $a1, %hi(D_80158E64)
    /* 9CCA8 800AC4A8 648EA524 */  addiu      $a1, $a1, %lo(D_80158E64)
    /* 9CCAC 800AC4AC 21300000 */  addu       $a2, $zero, $zero
    /* 9CCB0 800AC4B0 B3DE030C */  jal        func_800F7ACC
    /* 9CCB4 800AC4B4 24000724 */   addiu     $a3, $zero, 0x24
    /* 9CCB8 800AC4B8 40101200 */  sll        $v0, $s2, 1
    /* 9CCBC 800AC4BC 1280013C */  lui        $at, %hi(D_8012007C)
    /* 9CCC0 800AC4C0 21082200 */  addu       $at, $at, $v0
    /* 9CCC4 800AC4C4 7C003084 */  lh         $s0, %lo(D_8012007C)($at)
    /* 9CCC8 800AC4C8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CCCC 800AC4CC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CCD0 800AC4D0 CB1A030C */  jal        func_800C6B2C
    /* 9CCD4 800AC4D4 00000000 */   nop
    /* 9CCD8 800AC4D8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CCDC 800AC4DC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CCE0 800AC4E0 1680053C */  lui        $a1, %hi(D_80158E68)
    /* 9CCE4 800AC4E4 688EA524 */  addiu      $a1, $a1, %lo(D_80158E68)
    /* 9CCE8 800AC4E8 9987030C */  jal        func_800E1E64
    /* 9CCEC 800AC4EC 00000000 */   nop
    /* 9CCF0 800AC4F0 1E00022A */  slti       $v0, $s0, 0x1E
    /* 9CCF4 800AC4F4 07004010 */  beqz       $v0, .L800AC514
    /* 9CCF8 800AC4F8 3C00022A */   slti      $v0, $s0, 0x3C
    /* 9CCFC 800AC4FC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CD00 800AC500 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CD04 800AC504 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9CD08 800AC508 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9CD0C 800AC50C 81B10208 */  j          .L800AC604
    /* 9CD10 800AC510 00000000 */   nop
  .L800AC514:
    /* 9CD14 800AC514 07004010 */  beqz       $v0, .L800AC534
    /* 9CD18 800AC518 5A00022A */   slti      $v0, $s0, 0x5A
    /* 9CD1C 800AC51C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CD20 800AC520 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CD24 800AC524 1680053C */  lui        $a1, %hi(D_80158E74)
    /* 9CD28 800AC528 748EA524 */  addiu      $a1, $a1, %lo(D_80158E74)
    /* 9CD2C 800AC52C 81B10208 */  j          .L800AC604
    /* 9CD30 800AC530 00000000 */   nop
  .L800AC534:
    /* 9CD34 800AC534 07004010 */  beqz       $v0, .L800AC554
    /* 9CD38 800AC538 7800022A */   slti      $v0, $s0, 0x78
    /* 9CD3C 800AC53C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CD40 800AC540 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CD44 800AC544 1680053C */  lui        $a1, %hi(D_80158E78)
    /* 9CD48 800AC548 788EA524 */  addiu      $a1, $a1, %lo(D_80158E78)
    /* 9CD4C 800AC54C 81B10208 */  j          .L800AC604
    /* 9CD50 800AC550 00000000 */   nop
  .L800AC554:
    /* 9CD54 800AC554 07004010 */  beqz       $v0, .L800AC574
    /* 9CD58 800AC558 9600022A */   slti      $v0, $s0, 0x96
    /* 9CD5C 800AC55C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CD60 800AC560 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CD64 800AC564 1680053C */  lui        $a1, %hi(D_80158E7C)
    /* 9CD68 800AC568 7C8EA524 */  addiu      $a1, $a1, %lo(D_80158E7C)
    /* 9CD6C 800AC56C 81B10208 */  j          .L800AC604
    /* 9CD70 800AC570 00000000 */   nop
  .L800AC574:
    /* 9CD74 800AC574 07004010 */  beqz       $v0, .L800AC594
    /* 9CD78 800AC578 B400022A */   slti      $v0, $s0, 0xB4
    /* 9CD7C 800AC57C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CD80 800AC580 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CD84 800AC584 1680053C */  lui        $a1, %hi(D_80158E80)
    /* 9CD88 800AC588 808EA524 */  addiu      $a1, $a1, %lo(D_80158E80)
    /* 9CD8C 800AC58C 81B10208 */  j          .L800AC604
    /* 9CD90 800AC590 00000000 */   nop
  .L800AC594:
    /* 9CD94 800AC594 07004010 */  beqz       $v0, .L800AC5B4
    /* 9CD98 800AC598 D200022A */   slti      $v0, $s0, 0xD2
    /* 9CD9C 800AC59C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CDA0 800AC5A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CDA4 800AC5A4 1680053C */  lui        $a1, %hi(D_80158E84)
    /* 9CDA8 800AC5A8 848EA524 */  addiu      $a1, $a1, %lo(D_80158E84)
    /* 9CDAC 800AC5AC 81B10208 */  j          .L800AC604
    /* 9CDB0 800AC5B0 00000000 */   nop
  .L800AC5B4:
    /* 9CDB4 800AC5B4 07004010 */  beqz       $v0, .L800AC5D4
    /* 9CDB8 800AC5B8 F000022A */   slti      $v0, $s0, 0xF0
    /* 9CDBC 800AC5BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CDC0 800AC5C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CDC4 800AC5C4 1680053C */  lui        $a1, %hi(D_80158E88)
    /* 9CDC8 800AC5C8 888EA524 */  addiu      $a1, $a1, %lo(D_80158E88)
    /* 9CDCC 800AC5CC 81B10208 */  j          .L800AC604
    /* 9CDD0 800AC5D0 00000000 */   nop
  .L800AC5D4:
    /* 9CDD4 800AC5D4 07004010 */  beqz       $v0, .L800AC5F4
    /* 9CDD8 800AC5D8 00000000 */   nop
    /* 9CDDC 800AC5DC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CDE0 800AC5E0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CDE4 800AC5E4 1680053C */  lui        $a1, %hi(D_80158E8C)
    /* 9CDE8 800AC5E8 8C8EA524 */  addiu      $a1, $a1, %lo(D_80158E8C)
    /* 9CDEC 800AC5EC 81B10208 */  j          .L800AC604
    /* 9CDF0 800AC5F0 00000000 */   nop
  .L800AC5F4:
    /* 9CDF4 800AC5F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CDF8 800AC5F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CDFC 800AC5FC 1680053C */  lui        $a1, %hi(D_80158E90)
    /* 9CE00 800AC600 908EA524 */  addiu      $a1, $a1, %lo(D_80158E90)
  .L800AC604:
    /* 9CE04 800AC604 9987030C */  jal        func_800E1E64
    /* 9CE08 800AC608 00000000 */   nop
    /* 9CE0C 800AC60C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CE10 800AC610 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CE14 800AC614 1680053C */  lui        $a1, %hi(D_80158E94)
    /* 9CE18 800AC618 948EA524 */  addiu      $a1, $a1, %lo(D_80158E94)
    /* 9CE1C 800AC61C 9987030C */  jal        func_800E1E64
    /* 9CE20 800AC620 00000000 */   nop
    /* 9CE24 800AC624 6400022A */  slti       $v0, $s0, 0x64
    /* 9CE28 800AC628 08004010 */  beqz       $v0, .L800AC64C
    /* 9CE2C 800AC62C 0A00022A */   slti      $v0, $s0, 0xA
    /* 9CE30 800AC630 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CE34 800AC634 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CE38 800AC638 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9CE3C 800AC63C 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9CE40 800AC640 9987030C */  jal        func_800E1E64
    /* 9CE44 800AC644 00000000 */   nop
    /* 9CE48 800AC648 0A00022A */  slti       $v0, $s0, 0xA
  .L800AC64C:
    /* 9CE4C 800AC64C 07004010 */  beqz       $v0, .L800AC66C
    /* 9CE50 800AC650 00000000 */   nop
    /* 9CE54 800AC654 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CE58 800AC658 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CE5C 800AC65C 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9CE60 800AC660 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9CE64 800AC664 9987030C */  jal        func_800E1E64
    /* 9CE68 800AC668 00000000 */   nop
  .L800AC66C:
    /* 9CE6C 800AC66C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CE70 800AC670 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CE74 800AC674 9C1B030C */  jal        func_800C6E70
    /* 9CE78 800AC678 21280002 */   addu      $a1, $s0, $zero
    /* 9CE7C 800AC67C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CE80 800AC680 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CE84 800AC684 1680053C */  lui        $a1, %hi(D_80158E9C)
    /* 9CE88 800AC688 9C8EA524 */  addiu      $a1, $a1, %lo(D_80158E9C)
    /* 9CE8C 800AC68C 9987030C */  jal        func_800E1E64
    /* 9CE90 800AC690 00000000 */   nop
    /* 9CE94 800AC694 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9CE98 800AC698 21200002 */  addu       $a0, $s0, $zero
    /* 9CE9C 800AC69C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9CEA0 800AC6A0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9CEA4 800AC6A4 FDFF0624 */  addiu      $a2, $zero, -0x3
    /* 9CEA8 800AC6A8 76E2030C */  jal        func_800F89D8
    /* 9CEAC 800AC6AC 21380000 */   addu      $a3, $zero, $zero
    /* 9CEB0 800AC6B0 800990AF */  sw         $s0, %gp_rel(D_80158E58)($gp)
    /* 9CEB4 800AC6B4 0B80053C */  lui        $a1, %hi(func_800AB32C)
    /* 9CEB8 800AC6B8 2CB3A524 */  addiu      $a1, $a1, %lo(func_800AB32C)
    /* 9CEBC 800AC6BC 82DF030C */  jal        func_800F7E08
    /* 9CEC0 800AC6C0 21200002 */   addu      $a0, $s0, $zero
    /* 9CEC4 800AC6C4 8FB8020C */  jal        func_800AE23C
    /* 9CEC8 800AC6C8 21800000 */   addu      $s0, $zero, $zero
    /* 9CECC 800AC6CC 3C00022A */  slti       $v0, $s0, 0x3C
  .L800AC6D0:
    /* 9CED0 800AC6D0 05004010 */  beqz       $v0, .L800AC6E8
    /* 9CED4 800AC6D4 00000000 */   nop
    /* 9CED8 800AC6D8 8E12040C */  jal        func_80104A38
    /* 9CEDC 800AC6DC 01001026 */   addiu     $s0, $s0, 0x1
    /* 9CEE0 800AC6E0 B4B10208 */  j          .L800AC6D0
    /* 9CEE4 800AC6E4 3C00022A */   slti      $v0, $s0, 0x3C
  .L800AC6E8:
    /* 9CEE8 800AC6E8 8BBA020C */  jal        func_800AEA2C
    /* 9CEEC 800AC6EC 80881200 */   sll       $s1, $s2, 2
    /* 9CEF0 800AC6F0 21883202 */  addu       $s1, $s1, $s2
    /* 9CEF4 800AC6F4 80881100 */  sll        $s1, $s1, 2
    /* 9CEF8 800AC6F8 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 9CEFC 800AC6FC 21083100 */  addu       $at, $at, $s1
    /* 9CF00 800AC700 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 9CF04 800AC704 ABAC020C */  jal        func_800AB2AC
    /* 9CF08 800AC708 21200000 */   addu      $a0, $zero, $zero
    /* 9CF0C 800AC70C 2800B027 */  addiu      $s0, $sp, 0x28
    /* 9CF10 800AC710 A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9CF14 800AC714 4001023C */  lui        $v0, (0x1404001 >> 16)
    /* 9CF18 800AC718 01404234 */  ori        $v0, $v0, (0x1404001 & 0xFFFF)
    /* 9CF1C 800AC71C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9CF20 800AC720 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9CF24 800AC724 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9CF28 800AC728 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9CF2C 800AC72C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9CF30 800AC730 21200002 */  addu       $a0, $s0, $zero
    /* 9CF34 800AC734 B0030624 */  addiu      $a2, $zero, 0x3B0
    /* 9CF38 800AC738 2CE0020C */  jal        func_800B80B0
    /* 9CF3C 800AC73C 21380000 */   addu      $a3, $zero, $zero
    /* 9CF40 800AC740 21200002 */  addu       $a0, $s0, $zero
    /* 9CF44 800AC744 3BC9020C */  jal        func_800B24EC
    /* 9CF48 800AC748 08000524 */   addiu     $a1, $zero, 0x8
    /* 9CF4C 800AC74C C0281200 */  sll        $a1, $s2, 3
    /* 9CF50 800AC750 2128B200 */  addu       $a1, $a1, $s2
    /* 9CF54 800AC754 80280500 */  sll        $a1, $a1, 2
    /* 9CF58 800AC758 2128B200 */  addu       $a1, $a1, $s2
    /* 9CF5C 800AC75C 80280500 */  sll        $a1, $a1, 2
    /* 9CF60 800AC760 1380023C */  lui        $v0, %hi(D_8012BF80)
    /* 9CF64 800AC764 80BF4224 */  addiu      $v0, $v0, %lo(D_8012BF80)
    /* 9CF68 800AC768 21200002 */  addu       $a0, $s0, $zero
    /* 9CF6C 800AC76C 2128A200 */  addu       $a1, $a1, $v0
    /* 9CF70 800AC770 21300000 */  addu       $a2, $zero, $zero
    /* 9CF74 800AC774 3DC9020C */  jal        func_800B24F4
    /* 9CF78 800AC778 21380000 */   addu      $a3, $zero, $zero
    /* 9CF7C 800AC77C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CF80 800AC780 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CF84 800AC784 CB1A030C */  jal        func_800C6B2C
    /* 9CF88 800AC788 00000000 */   nop
    /* 9CF8C 800AC78C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CF90 800AC790 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CF94 800AC794 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9CF98 800AC798 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9CF9C 800AC79C 9987030C */  jal        func_800E1E64
    /* 9CFA0 800AC7A0 00000000 */   nop
    /* 9CFA4 800AC7A4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CFA8 800AC7A8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CFAC 800AC7AC 731B030C */  jal        func_800C6DCC
    /* 9CFB0 800AC7B0 7E000524 */   addiu     $a1, $zero, 0x7E
    /* 9CFB4 800AC7B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CFB8 800AC7B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CFBC 800AC7BC F71A030C */  jal        func_800C6BDC
    /* 9CFC0 800AC7C0 00000000 */   nop
    /* 9CFC4 800AC7C4 1180013C */  lui        $at, %hi(D_8010D28F)
    /* 9CFC8 800AC7C8 21083100 */  addu       $at, $at, $s1
    /* 9CFCC 800AC7CC 8FD22280 */  lb         $v0, %lo(D_8010D28F)($at)
    /* 9CFD0 800AC7D0 00000000 */  nop
    /* 9CFD4 800AC7D4 07004104 */  bgez       $v0, .L800AC7F4
    /* 9CFD8 800AC7D8 80101200 */   sll       $v0, $s2, 2
    /* 9CFDC 800AC7DC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9CFE0 800AC7E0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9CFE4 800AC7E4 731B030C */  jal        func_800C6DCC
    /* 9CFE8 800AC7E8 0E000524 */   addiu     $a1, $zero, 0xE
    /* 9CFEC 800AC7EC 0BB20208 */  j          .L800AC82C
    /* 9CFF0 800AC7F0 00000000 */   nop
  .L800AC7F4:
    /* 9CFF4 800AC7F4 21105200 */  addu       $v0, $v0, $s2
    /* 9CFF8 800AC7F8 80100200 */  sll        $v0, $v0, 2
    /* 9CFFC 800AC7FC 1180013C */  lui        $at, %hi(D_8010D28F)
    /* 9D000 800AC800 21082200 */  addu       $at, $at, $v0
    /* 9D004 800AC804 8FD22280 */  lb         $v0, %lo(D_8010D28F)($at)
    /* 9D008 800AC808 00000000 */  nop
    /* 9D00C 800AC80C 00110200 */  sll        $v0, $v0, 4
    /* 9D010 800AC810 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D014 800AC814 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D018 800AC818 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 9D01C 800AC81C 21082200 */  addu       $at, $at, $v0
    /* 9D020 800AC820 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 9D024 800AC824 651B030C */  jal        func_800C6D94
    /* 9D028 800AC828 00000000 */   nop
  .L800AC82C:
    /* 9D02C 800AC82C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D030 800AC830 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D034 800AC834 69C7020C */  jal        func_800B1DA4
    /* 9D038 800AC838 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D03C 800AC83C 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D040 800AC840 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D044 800AC844 69C7020C */  jal        func_800B1DA4
    /* 9D048 800AC848 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D04C 800AC84C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D050 800AC850 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D054 800AC854 CB1A030C */  jal        func_800C6B2C
    /* 9D058 800AC858 00000000 */   nop
    /* 9D05C 800AC85C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D060 800AC860 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D064 800AC864 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D068 800AC868 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D06C 800AC86C 9987030C */  jal        func_800E1E64
    /* 9D070 800AC870 00000000 */   nop
    /* 9D074 800AC874 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D078 800AC878 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D07C 800AC87C 731B030C */  jal        func_800C6DCC
    /* 9D080 800AC880 7F000524 */   addiu     $a1, $zero, 0x7F
    /* 9D084 800AC884 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D088 800AC888 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D08C 800AC88C F71A030C */  jal        func_800C6BDC
    /* 9D090 800AC890 00000000 */   nop
    /* 9D094 800AC894 80101200 */  sll        $v0, $s2, 2
    /* 9D098 800AC898 21105200 */  addu       $v0, $v0, $s2
    /* 9D09C 800AC89C 80880200 */  sll        $s1, $v0, 2
    /* 9D0A0 800AC8A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D0A4 800AC8A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D0A8 800AC8A8 1180013C */  lui        $at, %hi(D_8010D288)
    /* 9D0AC 800AC8AC 21083100 */  addu       $at, $at, $s1
    /* 9D0B0 800AC8B0 88D22580 */  lb         $a1, %lo(D_8010D288)($at)
    /* 9D0B4 800AC8B4 9C1B030C */  jal        func_800C6E70
    /* 9D0B8 800AC8B8 00000000 */   nop
    /* 9D0BC 800AC8BC 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D0C0 800AC8C0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D0C4 800AC8C4 69C7020C */  jal        func_800B1DA4
    /* 9D0C8 800AC8C8 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D0CC 800AC8CC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D0D0 800AC8D0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D0D4 800AC8D4 CB1A030C */  jal        func_800C6B2C
    /* 9D0D8 800AC8D8 00000000 */   nop
    /* 9D0DC 800AC8DC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D0E0 800AC8E0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D0E4 800AC8E4 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D0E8 800AC8E8 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D0EC 800AC8EC 9987030C */  jal        func_800E1E64
    /* 9D0F0 800AC8F0 00000000 */   nop
    /* 9D0F4 800AC8F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D0F8 800AC8F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D0FC 800AC8FC 731B030C */  jal        func_800C6DCC
    /* 9D100 800AC900 80000524 */   addiu     $a1, $zero, 0x80
    /* 9D104 800AC904 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D108 800AC908 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D10C 800AC90C F71A030C */  jal        func_800C6BDC
    /* 9D110 800AC910 00000000 */   nop
    /* 9D114 800AC914 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D118 800AC918 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D11C 800AC91C 1180013C */  lui        $at, %hi(D_8010D289)
    /* 9D120 800AC920 21083100 */  addu       $at, $at, $s1
    /* 9D124 800AC924 89D22580 */  lb         $a1, %lo(D_8010D289)($at)
    /* 9D128 800AC928 9C1B030C */  jal        func_800C6E70
    /* 9D12C 800AC92C 00000000 */   nop
    /* 9D130 800AC930 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D134 800AC934 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D138 800AC938 69C7020C */  jal        func_800B1DA4
    /* 9D13C 800AC93C 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D140 800AC940 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D144 800AC944 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D148 800AC948 CB1A030C */  jal        func_800C6B2C
    /* 9D14C 800AC94C 00000000 */   nop
    /* 9D150 800AC950 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D154 800AC954 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D158 800AC958 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D15C 800AC95C A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D160 800AC960 9987030C */  jal        func_800E1E64
    /* 9D164 800AC964 00000000 */   nop
    /* 9D168 800AC968 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D16C 800AC96C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D170 800AC970 731B030C */  jal        func_800C6DCC
    /* 9D174 800AC974 81000524 */   addiu     $a1, $zero, 0x81
    /* 9D178 800AC978 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D17C 800AC97C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D180 800AC980 F71A030C */  jal        func_800C6BDC
    /* 9D184 800AC984 00000000 */   nop
    /* 9D188 800AC988 1180013C */  lui        $at, %hi(D_8010D286)
    /* 9D18C 800AC98C 21083100 */  addu       $at, $at, $s1
    /* 9D190 800AC990 86D22580 */  lb         $a1, %lo(D_8010D286)($at)
    /* 9D194 800AC994 1280103C */  lui        $s0, %hi(D_8011A5C8)
    /* 9D198 800AC998 C8A51026 */  addiu      $s0, $s0, %lo(D_8011A5C8)
    /* 9D19C 800AC99C 00000292 */  lbu        $v0, 0x0($s0)
    /* 9D1A0 800AC9A0 00000000 */  nop
    /* 9D1A4 800AC9A4 1A00A200 */  div        $zero, $a1, $v0
    /* 9D1A8 800AC9A8 02004014 */  bnez       $v0, .L800AC9B4
    /* 9D1AC 800AC9AC 00000000 */   nop
    /* 9D1B0 800AC9B0 0D000700 */  break      7
  .L800AC9B4:
    /* 9D1B4 800AC9B4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9D1B8 800AC9B8 04004114 */  bne        $v0, $at, .L800AC9CC
    /* 9D1BC 800AC9BC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9D1C0 800AC9C0 0200A114 */  bne        $a1, $at, .L800AC9CC
    /* 9D1C4 800AC9C4 00000000 */   nop
    /* 9D1C8 800AC9C8 0D000600 */  break      6
  .L800AC9CC:
    /* 9D1CC 800AC9CC 12280000 */  mflo       $a1
    /* 9D1D0 800AC9D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D1D4 800AC9D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D1D8 800AC9D8 9C1B030C */  jal        func_800C6E70
    /* 9D1DC 800AC9DC 00000000 */   nop
    /* 9D1E0 800AC9E0 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D1E4 800AC9E4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D1E8 800AC9E8 69C7020C */  jal        func_800B1DA4
    /* 9D1EC 800AC9EC 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D1F0 800AC9F0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D1F4 800AC9F4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D1F8 800AC9F8 CB1A030C */  jal        func_800C6B2C
    /* 9D1FC 800AC9FC 00000000 */   nop
    /* 9D200 800ACA00 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D204 800ACA04 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D208 800ACA08 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D20C 800ACA0C A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D210 800ACA10 9987030C */  jal        func_800E1E64
    /* 9D214 800ACA14 00000000 */   nop
    /* 9D218 800ACA18 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D21C 800ACA1C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D220 800ACA20 731B030C */  jal        func_800C6DCC
    /* 9D224 800ACA24 82000524 */   addiu     $a1, $zero, 0x82
    /* 9D228 800ACA28 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D22C 800ACA2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D230 800ACA30 F71A030C */  jal        func_800C6BDC
    /* 9D234 800ACA34 00000000 */   nop
    /* 9D238 800ACA38 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 9D23C 800ACA3C 21083100 */  addu       $at, $at, $s1
    /* 9D240 800ACA40 8AD22290 */  lbu        $v0, %lo(D_8010D28A)($at)
    /* 9D244 800ACA44 00000000 */  nop
    /* 9D248 800ACA48 00160200 */  sll        $v0, $v0, 24
    /* 9D24C 800ACA4C 03260200 */  sra        $a0, $v0, 24
    /* 9D250 800ACA50 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* 9D254 800ACA54 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 9D258 800ACA58 18008300 */  mult       $a0, $v1
    /* 9D25C 800ACA5C 10400000 */  mfhi       $t0
    /* 9D260 800ACA60 83280800 */  sra        $a1, $t0, 2
    /* 9D264 800ACA64 C3170200 */  sra        $v0, $v0, 31
    /* 9D268 800ACA68 2328A200 */  subu       $a1, $a1, $v0
    /* 9D26C 800ACA6C 002E0500 */  sll        $a1, $a1, 24
    /* 9D270 800ACA70 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D274 800ACA74 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D278 800ACA78 9C1B030C */  jal        func_800C6E70
    /* 9D27C 800ACA7C 032E0500 */   sra       $a1, $a1, 24
    /* 9D280 800ACA80 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D284 800ACA84 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D288 800ACA88 69C7020C */  jal        func_800B1DA4
    /* 9D28C 800ACA8C 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D290 800ACA90 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D294 800ACA94 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D298 800ACA98 CB1A030C */  jal        func_800C6B2C
    /* 9D29C 800ACA9C 00000000 */   nop
    /* 9D2A0 800ACAA0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D2A4 800ACAA4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D2A8 800ACAA8 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D2AC 800ACAAC A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D2B0 800ACAB0 9987030C */  jal        func_800E1E64
    /* 9D2B4 800ACAB4 00000000 */   nop
    /* 9D2B8 800ACAB8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D2BC 800ACABC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D2C0 800ACAC0 731B030C */  jal        func_800C6DCC
    /* 9D2C4 800ACAC4 83000524 */   addiu     $a1, $zero, 0x83
    /* 9D2C8 800ACAC8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D2CC 800ACACC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D2D0 800ACAD0 F71A030C */  jal        func_800C6BDC
    /* 9D2D4 800ACAD4 00000000 */   nop
    /* 9D2D8 800ACAD8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D2DC 800ACADC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D2E0 800ACAE0 1180013C */  lui        $at, %hi(D_8010D28B)
    /* 9D2E4 800ACAE4 21083100 */  addu       $at, $at, $s1
    /* 9D2E8 800ACAE8 8BD22580 */  lb         $a1, %lo(D_8010D28B)($at)
    /* 9D2EC 800ACAEC 9C1B030C */  jal        func_800C6E70
    /* 9D2F0 800ACAF0 00000000 */   nop
    /* 9D2F4 800ACAF4 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D2F8 800ACAF8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D2FC 800ACAFC 69C7020C */  jal        func_800B1DA4
    /* 9D300 800ACB00 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D304 800ACB04 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D308 800ACB08 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D30C 800ACB0C CB1A030C */  jal        func_800C6B2C
    /* 9D310 800ACB10 00000000 */   nop
    /* 9D314 800ACB14 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D318 800ACB18 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D31C 800ACB1C 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D320 800ACB20 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D324 800ACB24 9987030C */  jal        func_800E1E64
    /* 9D328 800ACB28 00000000 */   nop
    /* 9D32C 800ACB2C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D330 800ACB30 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D334 800ACB34 0180053C */  lui        $a1, %hi(D_80012144)
    /* 9D338 800ACB38 4421A524 */  addiu      $a1, $a1, %lo(D_80012144)
    /* 9D33C 800ACB3C 9987030C */  jal        func_800E1E64
    /* 9D340 800ACB40 00000000 */   nop
    /* 9D344 800ACB44 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D348 800ACB48 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D34C 800ACB4C F71A030C */  jal        func_800C6BDC
    /* 9D350 800ACB50 00000000 */   nop
    /* 9D354 800ACB54 1180013C */  lui        $at, %hi(D_8010D28C)
    /* 9D358 800ACB58 21083100 */  addu       $at, $at, $s1
    /* 9D35C 800ACB5C 8CD22280 */  lb         $v0, %lo(D_8010D28C)($at)
    /* 9D360 800ACB60 04000592 */  lbu        $a1, 0x4($s0)
    /* 9D364 800ACB64 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9D368 800ACB68 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9D36C 800ACB6C 18004500 */  mult       $v0, $a1
    /* 9D370 800ACB70 12280000 */  mflo       $a1
    /* 9D374 800ACB74 9C1B030C */  jal        func_800C6E70
    /* 9D378 800ACB78 00000000 */   nop
    /* 9D37C 800ACB7C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D380 800ACB80 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D384 800ACB84 69C7020C */  jal        func_800B1DA4
    /* 9D388 800ACB88 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D38C 800ACB8C 1680053C */  lui        $a1, %hi(D_80158EA4)
    /* 9D390 800ACB90 A48EA524 */  addiu      $a1, $a1, %lo(D_80158EA4)
    /* 9D394 800ACB94 69C7020C */  jal        func_800B1DA4
    /* 9D398 800ACB98 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D39C 800ACB9C A008848F */  lw         $a0, %gp_rel(D_80158D78)($gp)
    /* 9D3A0 800ACBA0 FCA0020C */  jal        func_800A83F0
    /* 9D3A4 800ACBA4 F0030524 */   addiu     $a1, $zero, 0x3F0
    /* 9D3A8 800ACBA8 F1004014 */  bnez       $v0, .L800ACF70
    /* 9D3AC 800ACBAC 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9D3B0 800ACBB0 58A1020C */  jal        func_800A8560
    /* 9D3B4 800ACBB4 00000000 */   nop
    /* 9D3B8 800ACBB8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D3BC 800ACBBC 21083100 */  addu       $at, $at, $s1
    /* 9D3C0 800ACBC0 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D3C4 800ACBC4 00000000 */  nop
    /* 9D3C8 800ACBC8 01004230 */  andi       $v0, $v0, 0x1
    /* 9D3CC 800ACBCC 05004010 */  beqz       $v0, .L800ACBE4
    /* 9D3D0 800ACBD0 00000000 */   nop
    /* 9D3D4 800ACBD4 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D3D8 800ACBD8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D3DC 800ACBDC 69C7020C */  jal        func_800B1DA4
    /* 9D3E0 800ACBE0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACBE4:
    /* 9D3E4 800ACBE4 58A1020C */  jal        func_800A8560
    /* 9D3E8 800ACBE8 00000000 */   nop
    /* 9D3EC 800ACBEC 80101200 */  sll        $v0, $s2, 2
    /* 9D3F0 800ACBF0 21105200 */  addu       $v0, $v0, $s2
    /* 9D3F4 800ACBF4 80100200 */  sll        $v0, $v0, 2
    /* 9D3F8 800ACBF8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D3FC 800ACBFC 21082200 */  addu       $at, $at, $v0
    /* 9D400 800ACC00 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D404 800ACC04 00000000 */  nop
    /* 9D408 800ACC08 02004230 */  andi       $v0, $v0, 0x2
    /* 9D40C 800ACC0C 05004010 */  beqz       $v0, .L800ACC24
    /* 9D410 800ACC10 00000000 */   nop
    /* 9D414 800ACC14 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D418 800ACC18 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D41C 800ACC1C 69C7020C */  jal        func_800B1DA4
    /* 9D420 800ACC20 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACC24:
    /* 9D424 800ACC24 58A1020C */  jal        func_800A8560
    /* 9D428 800ACC28 00000000 */   nop
    /* 9D42C 800ACC2C 80101200 */  sll        $v0, $s2, 2
    /* 9D430 800ACC30 21105200 */  addu       $v0, $v0, $s2
    /* 9D434 800ACC34 80100200 */  sll        $v0, $v0, 2
    /* 9D438 800ACC38 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D43C 800ACC3C 21082200 */  addu       $at, $at, $v0
    /* 9D440 800ACC40 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D444 800ACC44 00000000 */  nop
    /* 9D448 800ACC48 04004230 */  andi       $v0, $v0, 0x4
    /* 9D44C 800ACC4C 05004010 */  beqz       $v0, .L800ACC64
    /* 9D450 800ACC50 00000000 */   nop
    /* 9D454 800ACC54 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D458 800ACC58 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D45C 800ACC5C 69C7020C */  jal        func_800B1DA4
    /* 9D460 800ACC60 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACC64:
    /* 9D464 800ACC64 58A1020C */  jal        func_800A8560
    /* 9D468 800ACC68 00000000 */   nop
    /* 9D46C 800ACC6C 80101200 */  sll        $v0, $s2, 2
    /* 9D470 800ACC70 21105200 */  addu       $v0, $v0, $s2
    /* 9D474 800ACC74 80100200 */  sll        $v0, $v0, 2
    /* 9D478 800ACC78 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D47C 800ACC7C 21082200 */  addu       $at, $at, $v0
    /* 9D480 800ACC80 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D484 800ACC84 00000000 */  nop
    /* 9D488 800ACC88 08004230 */  andi       $v0, $v0, 0x8
    /* 9D48C 800ACC8C 05004010 */  beqz       $v0, .L800ACCA4
    /* 9D490 800ACC90 00000000 */   nop
    /* 9D494 800ACC94 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D498 800ACC98 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D49C 800ACC9C 69C7020C */  jal        func_800B1DA4
    /* 9D4A0 800ACCA0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACCA4:
    /* 9D4A4 800ACCA4 58A1020C */  jal        func_800A8560
    /* 9D4A8 800ACCA8 00000000 */   nop
    /* 9D4AC 800ACCAC 80101200 */  sll        $v0, $s2, 2
    /* 9D4B0 800ACCB0 21105200 */  addu       $v0, $v0, $s2
    /* 9D4B4 800ACCB4 80100200 */  sll        $v0, $v0, 2
    /* 9D4B8 800ACCB8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D4BC 800ACCBC 21082200 */  addu       $at, $at, $v0
    /* 9D4C0 800ACCC0 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D4C4 800ACCC4 00000000 */  nop
    /* 9D4C8 800ACCC8 10004230 */  andi       $v0, $v0, 0x10
    /* 9D4CC 800ACCCC 05004010 */  beqz       $v0, .L800ACCE4
    /* 9D4D0 800ACCD0 00000000 */   nop
    /* 9D4D4 800ACCD4 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D4D8 800ACCD8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D4DC 800ACCDC 69C7020C */  jal        func_800B1DA4
    /* 9D4E0 800ACCE0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACCE4:
    /* 9D4E4 800ACCE4 58A1020C */  jal        func_800A8560
    /* 9D4E8 800ACCE8 00000000 */   nop
    /* 9D4EC 800ACCEC 80101200 */  sll        $v0, $s2, 2
    /* 9D4F0 800ACCF0 21105200 */  addu       $v0, $v0, $s2
    /* 9D4F4 800ACCF4 80100200 */  sll        $v0, $v0, 2
    /* 9D4F8 800ACCF8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D4FC 800ACCFC 21082200 */  addu       $at, $at, $v0
    /* 9D500 800ACD00 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D504 800ACD04 00000000 */  nop
    /* 9D508 800ACD08 20004230 */  andi       $v0, $v0, 0x20
    /* 9D50C 800ACD0C 05004010 */  beqz       $v0, .L800ACD24
    /* 9D510 800ACD10 00000000 */   nop
    /* 9D514 800ACD14 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D518 800ACD18 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D51C 800ACD1C 69C7020C */  jal        func_800B1DA4
    /* 9D520 800ACD20 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACD24:
    /* 9D524 800ACD24 58A1020C */  jal        func_800A8560
    /* 9D528 800ACD28 00000000 */   nop
    /* 9D52C 800ACD2C 80101200 */  sll        $v0, $s2, 2
    /* 9D530 800ACD30 21105200 */  addu       $v0, $v0, $s2
    /* 9D534 800ACD34 80100200 */  sll        $v0, $v0, 2
    /* 9D538 800ACD38 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D53C 800ACD3C 21082200 */  addu       $at, $at, $v0
    /* 9D540 800ACD40 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D544 800ACD44 00000000 */  nop
    /* 9D548 800ACD48 40004230 */  andi       $v0, $v0, 0x40
    /* 9D54C 800ACD4C 05004010 */  beqz       $v0, .L800ACD64
    /* 9D550 800ACD50 00000000 */   nop
    /* 9D554 800ACD54 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D558 800ACD58 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D55C 800ACD5C 69C7020C */  jal        func_800B1DA4
    /* 9D560 800ACD60 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACD64:
    /* 9D564 800ACD64 58A1020C */  jal        func_800A8560
    /* 9D568 800ACD68 00000000 */   nop
    /* 9D56C 800ACD6C 80101200 */  sll        $v0, $s2, 2
    /* 9D570 800ACD70 21105200 */  addu       $v0, $v0, $s2
    /* 9D574 800ACD74 80100200 */  sll        $v0, $v0, 2
    /* 9D578 800ACD78 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D57C 800ACD7C 21082200 */  addu       $at, $at, $v0
    /* 9D580 800ACD80 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D584 800ACD84 00000000 */  nop
    /* 9D588 800ACD88 80004230 */  andi       $v0, $v0, 0x80
    /* 9D58C 800ACD8C 05004010 */  beqz       $v0, .L800ACDA4
    /* 9D590 800ACD90 00000000 */   nop
    /* 9D594 800ACD94 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D598 800ACD98 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D59C 800ACD9C 69C7020C */  jal        func_800B1DA4
    /* 9D5A0 800ACDA0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACDA4:
    /* 9D5A4 800ACDA4 58A1020C */  jal        func_800A8560
    /* 9D5A8 800ACDA8 00000000 */   nop
    /* 9D5AC 800ACDAC 80101200 */  sll        $v0, $s2, 2
    /* 9D5B0 800ACDB0 21105200 */  addu       $v0, $v0, $s2
    /* 9D5B4 800ACDB4 80100200 */  sll        $v0, $v0, 2
    /* 9D5B8 800ACDB8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D5BC 800ACDBC 21082200 */  addu       $at, $at, $v0
    /* 9D5C0 800ACDC0 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D5C4 800ACDC4 00000000 */  nop
    /* 9D5C8 800ACDC8 00014230 */  andi       $v0, $v0, 0x100
    /* 9D5CC 800ACDCC 05004010 */  beqz       $v0, .L800ACDE4
    /* 9D5D0 800ACDD0 00000000 */   nop
    /* 9D5D4 800ACDD4 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D5D8 800ACDD8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D5DC 800ACDDC 69C7020C */  jal        func_800B1DA4
    /* 9D5E0 800ACDE0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACDE4:
    /* 9D5E4 800ACDE4 58A1020C */  jal        func_800A8560
    /* 9D5E8 800ACDE8 00000000 */   nop
    /* 9D5EC 800ACDEC 80101200 */  sll        $v0, $s2, 2
    /* 9D5F0 800ACDF0 21105200 */  addu       $v0, $v0, $s2
    /* 9D5F4 800ACDF4 80100200 */  sll        $v0, $v0, 2
    /* 9D5F8 800ACDF8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D5FC 800ACDFC 21082200 */  addu       $at, $at, $v0
    /* 9D600 800ACE00 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D604 800ACE04 00000000 */  nop
    /* 9D608 800ACE08 00024230 */  andi       $v0, $v0, 0x200
    /* 9D60C 800ACE0C 05004010 */  beqz       $v0, .L800ACE24
    /* 9D610 800ACE10 00000000 */   nop
    /* 9D614 800ACE14 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D618 800ACE18 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D61C 800ACE1C 69C7020C */  jal        func_800B1DA4
    /* 9D620 800ACE20 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACE24:
    /* 9D624 800ACE24 58A1020C */  jal        func_800A8560
    /* 9D628 800ACE28 00000000 */   nop
    /* 9D62C 800ACE2C 80101200 */  sll        $v0, $s2, 2
    /* 9D630 800ACE30 21105200 */  addu       $v0, $v0, $s2
    /* 9D634 800ACE34 80100200 */  sll        $v0, $v0, 2
    /* 9D638 800ACE38 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D63C 800ACE3C 21082200 */  addu       $at, $at, $v0
    /* 9D640 800ACE40 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D644 800ACE44 00000000 */  nop
    /* 9D648 800ACE48 00044230 */  andi       $v0, $v0, 0x400
    /* 9D64C 800ACE4C 05004010 */  beqz       $v0, .L800ACE64
    /* 9D650 800ACE50 00000000 */   nop
    /* 9D654 800ACE54 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D658 800ACE58 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D65C 800ACE5C 69C7020C */  jal        func_800B1DA4
    /* 9D660 800ACE60 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACE64:
    /* 9D664 800ACE64 58A1020C */  jal        func_800A8560
    /* 9D668 800ACE68 00000000 */   nop
    /* 9D66C 800ACE6C 80101200 */  sll        $v0, $s2, 2
    /* 9D670 800ACE70 21105200 */  addu       $v0, $v0, $s2
    /* 9D674 800ACE74 80100200 */  sll        $v0, $v0, 2
    /* 9D678 800ACE78 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D67C 800ACE7C 21082200 */  addu       $at, $at, $v0
    /* 9D680 800ACE80 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D684 800ACE84 00000000 */  nop
    /* 9D688 800ACE88 00084230 */  andi       $v0, $v0, 0x800
    /* 9D68C 800ACE8C 05004010 */  beqz       $v0, .L800ACEA4
    /* 9D690 800ACE90 00000000 */   nop
    /* 9D694 800ACE94 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D698 800ACE98 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D69C 800ACE9C 69C7020C */  jal        func_800B1DA4
    /* 9D6A0 800ACEA0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACEA4:
    /* 9D6A4 800ACEA4 58A1020C */  jal        func_800A8560
    /* 9D6A8 800ACEA8 00000000 */   nop
    /* 9D6AC 800ACEAC 80101200 */  sll        $v0, $s2, 2
    /* 9D6B0 800ACEB0 21105200 */  addu       $v0, $v0, $s2
    /* 9D6B4 800ACEB4 80100200 */  sll        $v0, $v0, 2
    /* 9D6B8 800ACEB8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D6BC 800ACEBC 21082200 */  addu       $at, $at, $v0
    /* 9D6C0 800ACEC0 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D6C4 800ACEC4 00000000 */  nop
    /* 9D6C8 800ACEC8 00104230 */  andi       $v0, $v0, 0x1000
    /* 9D6CC 800ACECC 05004010 */  beqz       $v0, .L800ACEE4
    /* 9D6D0 800ACED0 00000000 */   nop
    /* 9D6D4 800ACED4 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D6D8 800ACED8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D6DC 800ACEDC 69C7020C */  jal        func_800B1DA4
    /* 9D6E0 800ACEE0 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACEE4:
    /* 9D6E4 800ACEE4 58A1020C */  jal        func_800A8560
    /* 9D6E8 800ACEE8 00000000 */   nop
    /* 9D6EC 800ACEEC 80101200 */  sll        $v0, $s2, 2
    /* 9D6F0 800ACEF0 21105200 */  addu       $v0, $v0, $s2
    /* 9D6F4 800ACEF4 80100200 */  sll        $v0, $v0, 2
    /* 9D6F8 800ACEF8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D6FC 800ACEFC 21082200 */  addu       $at, $at, $v0
    /* 9D700 800ACF00 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D704 800ACF04 00000000 */  nop
    /* 9D708 800ACF08 00204230 */  andi       $v0, $v0, 0x2000
    /* 9D70C 800ACF0C 05004010 */  beqz       $v0, .L800ACF24
    /* 9D710 800ACF10 00000000 */   nop
    /* 9D714 800ACF14 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D718 800ACF18 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D71C 800ACF1C 69C7020C */  jal        func_800B1DA4
    /* 9D720 800ACF20 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACF24:
    /* 9D724 800ACF24 58A1020C */  jal        func_800A8560
    /* 9D728 800ACF28 00000000 */   nop
    /* 9D72C 800ACF2C 80101200 */  sll        $v0, $s2, 2
    /* 9D730 800ACF30 21105200 */  addu       $v0, $v0, $s2
    /* 9D734 800ACF34 80100200 */  sll        $v0, $v0, 2
    /* 9D738 800ACF38 1180013C */  lui        $at, %hi(D_8010D280)
    /* 9D73C 800ACF3C 21082200 */  addu       $at, $at, $v0
    /* 9D740 800ACF40 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 9D744 800ACF44 00000000 */  nop
    /* 9D748 800ACF48 00404230 */  andi       $v0, $v0, 0x4000
    /* 9D74C 800ACF4C 05004010 */  beqz       $v0, .L800ACF64
    /* 9D750 800ACF50 00000000 */   nop
    /* 9D754 800ACF54 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9D758 800ACF58 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9D75C 800ACF5C 69C7020C */  jal        func_800B1DA4
    /* 9D760 800ACF60 2800A427 */   addiu     $a0, $sp, 0x28
  .L800ACF64:
    /* 9D764 800ACF64 E9A0020C */  jal        func_800A83A4
    /* 9D768 800ACF68 00000000 */   nop
    /* 9D76C 800ACF6C 2800A427 */  addiu      $a0, $sp, 0x28
  .L800ACF70:
    /* 9D770 800ACF70 52DF020C */  jal        func_800B7D48
    /* 9D774 800ACF74 21280000 */   addu      $a1, $zero, $zero
    /* 9D778 800ACF78 0F270324 */  addiu      $v1, $zero, 0x270F
    /* 9D77C 800ACF7C 06004314 */  bne        $v0, $v1, .L800ACF98
    /* 9D780 800ACF80 80101200 */   sll       $v0, $s2, 2
    /* 9D784 800ACF84 1280013C */  lui        $at, %hi(D_801207EC)
    /* 9D788 800ACF88 21082200 */  addu       $at, $at, $v0
    /* 9D78C 800ACF8C EC07248C */  lw         $a0, %lo(D_801207EC)($at)
    /* 9D790 800ACF90 A2BA020C */  jal        func_800AEA88
    /* 9D794 800ACF94 00000000 */   nop
  .L800ACF98:
    /* 9D798 800ACF98 16BA020C */  jal        func_800AE858
    /* 9D79C 800ACF9C 00000000 */   nop
    /* 9D7A0 800ACFA0 7CEA030C */  jal        func_800FA9F0
    /* 9D7A4 800ACFA4 F402A427 */   addiu     $a0, $sp, 0x2F4
    /* 9D7A8 800ACFA8 C802A427 */  addiu      $a0, $sp, 0x2C8
    /* 9D7AC 800ACFAC 21280000 */  addu       $a1, $zero, $zero
    /* 9D7B0 800ACFB0 A9E0030C */  jal        func_800F82A4
    /* 9D7B4 800ACFB4 21300000 */   addu      $a2, $zero, $zero
    /* 9D7B8 800ACFB8 8E12040C */  jal        func_80104A38
    /* 9D7BC 800ACFBC 00000000 */   nop
    /* 9D7C0 800ACFC0 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9D7C4 800ACFC4 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 9D7C8 800ACFC8 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9D7CC 800ACFCC F002A2AF */  sw         $v0, 0x2F0($sp)
    /* 9D7D0 800ACFD0 F402A427 */  addiu      $a0, $sp, 0x2F4
    /* 9D7D4 800ACFD4 F5E9030C */  jal        func_800FA7D4
    /* 9D7D8 800ACFD8 21280000 */   addu      $a1, $zero, $zero
    /* 9D7DC 800ACFDC 21200002 */  addu       $a0, $s0, $zero
    /* 9D7E0 800ACFE0 4CE1030C */  jal        func_800F8530
    /* 9D7E4 800ACFE4 02000524 */   addiu     $a1, $zero, 0x2
    /* 9D7E8 800ACFE8 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9D7EC 800ACFEC 0AC7020C */  jal        func_800B1C28
    /* 9D7F0 800ACFF0 02000524 */   addiu     $a1, $zero, 0x2
    /* 9D7F4 800ACFF4 9C03BF8F */  lw         $ra, 0x39C($sp)
    /* 9D7F8 800ACFF8 9803B28F */  lw         $s2, 0x398($sp)
    /* 9D7FC 800ACFFC 9403B18F */  lw         $s1, 0x394($sp)
    /* 9D800 800AD000 9003B08F */  lw         $s0, 0x390($sp)
    /* 9D804 800AD004 A003BD27 */  addiu      $sp, $sp, 0x3A0
    /* 9D808 800AD008 0800E003 */  jr         $ra
    /* 9D80C 800AD00C 00000000 */   nop
endlabel func_800AC394
