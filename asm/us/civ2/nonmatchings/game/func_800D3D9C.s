.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D3D9C, 0x330

glabel func_800D3D9C
    /* C459C 800D3D9C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* C45A0 800D3DA0 2800BFAF */  sw         $ra, 0x28($sp)
    /* C45A4 800D3DA4 2400B3AF */  sw         $s3, 0x24($sp)
    /* C45A8 800D3DA8 2000B2AF */  sw         $s2, 0x20($sp)
    /* C45AC 800D3DAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C45B0 800D3DB0 21888000 */  addu       $s1, $a0, $zero
    /* C45B4 800D3DB4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C45B8 800D3DB8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C45BC 800D3DBC CB1A030C */  jal        func_800C6B2C
    /* C45C0 800D3DC0 1800B0AF */   sw        $s0, 0x18($sp)
    /* C45C4 800D3DC4 40801100 */  sll        $s0, $s1, 1
    /* C45C8 800D3DC8 21801102 */  addu       $s0, $s0, $s1
    /* C45CC 800D3DCC 80801000 */  sll        $s0, $s0, 2
    /* C45D0 800D3DD0 21801102 */  addu       $s0, $s0, $s1
    /* C45D4 800D3DD4 40801000 */  sll        $s0, $s0, 1
    /* C45D8 800D3DD8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* C45DC 800D3DDC 21083000 */  addu       $at, $at, $s0
    /* C45E0 800D3DE0 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* C45E4 800D3DE4 8A54020C */  jal        func_80095228
    /* C45E8 800D3DE8 00000000 */   nop
    /* C45EC 800D3DEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C45F0 800D3DF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C45F4 800D3DF4 9987030C */  jal        func_800E1E64
    /* C45F8 800D3DF8 21284000 */   addu      $a1, $v0, $zero
    /* C45FC 800D3DFC 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* C4600 800D3E00 21083000 */  addu       $at, $at, $s0
    /* C4604 800D3E04 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* C4608 800D3E08 00000000 */  nop
    /* C460C 800D3E0C 00204230 */  andi       $v0, $v0, 0x2000
    /* C4610 800D3E10 09004010 */  beqz       $v0, .L800D3E38
    /* C4614 800D3E14 00000000 */   nop
    /* C4618 800D3E18 1280043C */  lui        $a0, %hi(D_80121340)
    /* C461C 800D3E1C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4620 800D3E20 CD1A030C */  jal        func_800C6B34
    /* C4624 800D3E24 00000000 */   nop
    /* C4628 800D3E28 1280043C */  lui        $a0, %hi(D_80121340)
    /* C462C 800D3E2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4630 800D3E30 731B030C */  jal        func_800C6DCC
    /* C4634 800D3E34 0D000524 */   addiu     $a1, $zero, 0xD
  .L800D3E38:
    /* C4638 800D3E38 1280043C */  lui        $a0, %hi(D_80121340)
    /* C463C 800D3E3C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4640 800D3E40 CD1A030C */  jal        func_800C6B34
    /* C4644 800D3E44 40801100 */   sll       $s0, $s1, 1
    /* C4648 800D3E48 21801102 */  addu       $s0, $s0, $s1
    /* C464C 800D3E4C 80801000 */  sll        $s0, $s0, 2
    /* C4650 800D3E50 21801102 */  addu       $s0, $s0, $s1
    /* C4654 800D3E54 40801000 */  sll        $s0, $s0, 1
    /* C4658 800D3E58 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* C465C 800D3E5C 21083000 */  addu       $at, $at, $s0
    /* C4660 800D3E60 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* C4664 800D3E64 00000000 */  nop
    /* C4668 800D3E68 80100300 */  sll        $v0, $v1, 2
    /* C466C 800D3E6C 21104300 */  addu       $v0, $v0, $v1
    /* C4670 800D3E70 80100200 */  sll        $v0, $v0, 2
    /* C4674 800D3E74 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4678 800D3E78 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C467C 800D3E7C 1180013C */  lui        $at, %hi(D_8010D27C)
    /* C4680 800D3E80 21082200 */  addu       $at, $at, $v0
    /* C4684 800D3E84 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* C4688 800D3E88 651B030C */  jal        func_800C6D94
    /* C468C 800D3E8C 00000000 */   nop
    /* C4690 800D3E90 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* C4694 800D3E94 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* C4698 800D3E98 1280053C */  lui        $a1, %hi(D_80121340)
    /* C469C 800D3E9C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* C46A0 800D3EA0 A587030C */  jal        func_800E1E94
    /* C46A4 800D3EA4 00000000 */   nop
    /* C46A8 800D3EA8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C46AC 800D3EAC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C46B0 800D3EB0 CB1A030C */  jal        func_800C6B2C
    /* C46B4 800D3EB4 00000000 */   nop
    /* C46B8 800D3EB8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C46BC 800D3EBC 21083000 */  addu       $at, $at, $s0
    /* C46C0 800D3EC0 B4D63384 */  lh         $s3, %lo(D_8010D6B4)($at)
    /* C46C4 800D3EC4 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C46C8 800D3EC8 21083000 */  addu       $at, $at, $s0
    /* C46CC 800D3ECC B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* C46D0 800D3ED0 21206002 */  addu       $a0, $s3, $zero
    /* C46D4 800D3ED4 1E26020C */  jal        func_80089878
    /* C46D8 800D3ED8 21284002 */   addu      $a1, $s2, $zero
    /* C46DC 800D3EDC 21804000 */  addu       $s0, $v0, $zero
    /* C46E0 800D3EE0 0F000006 */  bltz       $s0, .L800D3F20
    /* C46E4 800D3EE4 40281000 */   sll       $a1, $s0, 1
    /* C46E8 800D3EE8 2128B000 */  addu       $a1, $a1, $s0
    /* C46EC 800D3EEC 80280500 */  sll        $a1, $a1, 2
    /* C46F0 800D3EF0 2328B000 */  subu       $a1, $a1, $s0
    /* C46F4 800D3EF4 C0280500 */  sll        $a1, $a1, 3
    /* C46F8 800D3EF8 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* C46FC 800D3EFC F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* C4700 800D3F00 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4704 800D3F04 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4708 800D3F08 9987030C */  jal        func_800E1E64
    /* C470C 800D3F0C 2128A200 */   addu      $a1, $a1, $v0
    /* C4710 800D3F10 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4714 800D3F14 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4718 800D3F18 CD1A030C */  jal        func_800C6B34
    /* C471C 800D3F1C 00000000 */   nop
  .L800D3F20:
    /* C4720 800D3F20 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4724 800D3F24 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4728 800D3F28 151B030C */  jal        func_800C6C54
    /* C472C 800D3F2C 00000000 */   nop
    /* C4730 800D3F30 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4734 800D3F34 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4738 800D3F38 9C1B030C */  jal        func_800C6E70
    /* C473C 800D3F3C 21286002 */   addu      $a1, $s3, $zero
    /* C4740 800D3F40 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4744 800D3F44 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4748 800D3F48 ED1A030C */  jal        func_800C6BB4
    /* C474C 800D3F4C 00000000 */   nop
    /* C4750 800D3F50 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4754 800D3F54 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4758 800D3F58 9C1B030C */  jal        func_800C6E70
    /* C475C 800D3F5C 21284002 */   addu      $a1, $s2, $zero
    /* C4760 800D3F60 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4764 800D3F64 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4768 800D3F68 1F1B030C */  jal        func_800C6C7C
    /* C476C 800D3F6C 00000000 */   nop
    /* C4770 800D3F70 29000106 */  bgez       $s0, .L800D4018
    /* C4774 800D3F74 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* C4778 800D3F78 1000A2AF */  sw         $v0, 0x10($sp)
    /* C477C 800D3F7C 21206002 */  addu       $a0, $s3, $zero
    /* C4780 800D3F80 21284002 */  addu       $a1, $s2, $zero
    /* C4784 800D3F84 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* C4788 800D3F88 6026020C */  jal        func_80089980
    /* C478C 800D3F8C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* C4790 800D3F90 21804000 */  addu       $s0, $v0, $zero
    /* C4794 800D3F94 20000006 */  bltz       $s0, .L800D4018
    /* C4798 800D3F98 00000000 */   nop
    /* C479C 800D3F9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C47A0 800D3FA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C47A4 800D3FA4 CD1A030C */  jal        func_800C6B34
    /* C47A8 800D3FA8 00000000 */   nop
    /* C47AC 800D3FAC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C47B0 800D3FB0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C47B4 800D3FB4 151B030C */  jal        func_800C6C54
    /* C47B8 800D3FB8 00000000 */   nop
    /* C47BC 800D3FBC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C47C0 800D3FC0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C47C4 800D3FC4 731B030C */  jal        func_800C6DCC
    /* C47C8 800D3FC8 B2000524 */   addiu     $a1, $zero, 0xB2
    /* C47CC 800D3FCC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C47D0 800D3FD0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C47D4 800D3FD4 CD1A030C */  jal        func_800C6B34
    /* C47D8 800D3FD8 00000000 */   nop
    /* C47DC 800D3FDC 40281000 */  sll        $a1, $s0, 1
    /* C47E0 800D3FE0 2128B000 */  addu       $a1, $a1, $s0
    /* C47E4 800D3FE4 80280500 */  sll        $a1, $a1, 2
    /* C47E8 800D3FE8 2328B000 */  subu       $a1, $a1, $s0
    /* C47EC 800D3FEC C0280500 */  sll        $a1, $a1, 3
    /* C47F0 800D3FF0 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* C47F4 800D3FF4 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* C47F8 800D3FF8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C47FC 800D3FFC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4800 800D4000 9987030C */  jal        func_800E1E64
    /* C4804 800D4004 2128A200 */   addu      $a1, $a1, $v0
    /* C4808 800D4008 1280043C */  lui        $a0, %hi(D_80121340)
    /* C480C 800D400C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4810 800D4010 1F1B030C */  jal        func_800C6C7C
    /* C4814 800D4014 00000000 */   nop
  .L800D4018:
    /* C4818 800D4018 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* C481C 800D401C 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* C4820 800D4020 1280053C */  lui        $a1, %hi(D_80121340)
    /* C4824 800D4024 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* C4828 800D4028 A587030C */  jal        func_800E1E94
    /* C482C 800D402C 00000000 */   nop
    /* C4830 800D4030 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4834 800D4034 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C4838 800D4038 CB1A030C */  jal        func_800C6B2C
    /* C483C 800D403C 00000000 */   nop
    /* C4840 800D4040 40101100 */  sll        $v0, $s1, 1
    /* C4844 800D4044 21105100 */  addu       $v0, $v0, $s1
    /* C4848 800D4048 80100200 */  sll        $v0, $v0, 2
    /* C484C 800D404C 21105100 */  addu       $v0, $v0, $s1
    /* C4850 800D4050 40280200 */  sll        $a1, $v0, 1
    /* C4854 800D4054 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C4858 800D4058 21082500 */  addu       $at, $at, $a1
    /* C485C 800D405C C4D62380 */  lb         $v1, %lo(D_8010D6C4)($at)
    /* C4860 800D4060 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* C4864 800D4064 06006210 */  beq        $v1, $v0, .L800D4080
    /* C4868 800D4068 00000000 */   nop
    /* C486C 800D406C 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C4870 800D4070 21082500 */  addu       $at, $at, $a1
    /* C4874 800D4074 C4D62590 */  lbu        $a1, %lo(D_8010D6C4)($at)
    /* C4878 800D4078 21500308 */  j          .L800D4084
    /* C487C 800D407C 00000000 */   nop
  .L800D4080:
    /* C4880 800D4080 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L800D4084:
    /* C4884 800D4084 1280043C */  lui        $a0, %hi(D_80121340)
    /* C4888 800D4088 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C488C 800D408C A331020C */  jal        func_8008C68C
    /* C4890 800D4090 00000000 */   nop
    /* C4894 800D4094 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* C4898 800D4098 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* C489C 800D409C 1280053C */  lui        $a1, %hi(D_80121340)
    /* C48A0 800D40A0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* C48A4 800D40A4 A587030C */  jal        func_800E1E94
    /* C48A8 800D40A8 00000000 */   nop
    /* C48AC 800D40AC 2800BF8F */  lw         $ra, 0x28($sp)
    /* C48B0 800D40B0 2400B38F */  lw         $s3, 0x24($sp)
    /* C48B4 800D40B4 2000B28F */  lw         $s2, 0x20($sp)
    /* C48B8 800D40B8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* C48BC 800D40BC 1800B08F */  lw         $s0, 0x18($sp)
    /* C48C0 800D40C0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* C48C4 800D40C4 0800E003 */  jr         $ra
    /* C48C8 800D40C8 00000000 */   nop
endlabel func_800D3D9C
