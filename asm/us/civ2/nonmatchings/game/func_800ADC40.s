.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800ADC40, 0x488

glabel func_800ADC40
    /* 9E440 800ADC40 60FCBD27 */  addiu      $sp, $sp, -0x3A0
    /* 9E444 800ADC44 9C03BFAF */  sw         $ra, 0x39C($sp)
    /* 9E448 800ADC48 9803B2AF */  sw         $s2, 0x398($sp)
    /* 9E44C 800ADC4C 9403B1AF */  sw         $s1, 0x394($sp)
    /* 9E450 800ADC50 9003B0AF */  sw         $s0, 0x390($sp)
    /* 9E454 800ADC54 21908000 */  addu       $s2, $a0, $zero
    /* 9E458 800ADC58 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E45C 800ADC5C ADC5020C */  jal        func_800B16B4
    /* 9E460 800ADC60 00200524 */   addiu     $a1, $zero, 0x2000
    /* 9E464 800ADC64 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9E468 800ADC68 9AE0030C */  jal        func_800F8268
    /* 9E46C 800ADC6C 21200002 */   addu      $a0, $s0, $zero
    /* 9E470 800ADC70 EFE9030C */  jal        func_800FA7BC
    /* 9E474 800ADC74 F402A427 */   addiu     $a0, $sp, 0x2F4
    /* 9E478 800ADC78 0403A0AF */  sw         $zero, 0x304($sp)
    /* 9E47C 800ADC7C 0803A0AF */  sw         $zero, 0x308($sp)
    /* 9E480 800ADC80 0C03A0AF */  sw         $zero, 0x30C($sp)
    /* 9E484 800ADC84 1003A0AF */  sw         $zero, 0x310($sp)
    /* 9E488 800ADC88 1403A0AF */  sw         $zero, 0x314($sp)
    /* 9E48C 800ADC8C 1803A0AF */  sw         $zero, 0x318($sp)
    /* 9E490 800ADC90 1C03A0AF */  sw         $zero, 0x31C($sp)
    /* 9E494 800ADC94 2003A0AF */  sw         $zero, 0x320($sp)
    /* 9E498 800ADC98 2403A0AF */  sw         $zero, 0x324($sp)
    /* 9E49C 800ADC9C 2803A0AF */  sw         $zero, 0x328($sp)
    /* 9E4A0 800ADCA0 2C03A0AF */  sw         $zero, 0x32C($sp)
    /* 9E4A4 800ADCA4 3003A0AF */  sw         $zero, 0x330($sp)
    /* 9E4A8 800ADCA8 3403A0AF */  sw         $zero, 0x334($sp)
    /* 9E4AC 800ADCAC 3803A0AF */  sw         $zero, 0x338($sp)
    /* 9E4B0 800ADCB0 3C03A0AF */  sw         $zero, 0x33C($sp)
    /* 9E4B4 800ADCB4 4003A0AF */  sw         $zero, 0x340($sp)
    /* 9E4B8 800ADCB8 4403A0AF */  sw         $zero, 0x344($sp)
    /* 9E4BC 800ADCBC 4803A0AF */  sw         $zero, 0x348($sp)
    /* 9E4C0 800ADCC0 4C03A0AF */  sw         $zero, 0x34C($sp)
    /* 9E4C4 800ADCC4 5003A0AF */  sw         $zero, 0x350($sp)
    /* 9E4C8 800ADCC8 5403A0AF */  sw         $zero, 0x354($sp)
    /* 9E4CC 800ADCCC 5803A0AF */  sw         $zero, 0x358($sp)
    /* 9E4D0 800ADCD0 5C03A0AF */  sw         $zero, 0x35C($sp)
    /* 9E4D4 800ADCD4 6003A0A7 */  sh         $zero, 0x360($sp)
    /* 9E4D8 800ADCD8 6203A0A7 */  sh         $zero, 0x362($sp)
    /* 9E4DC 800ADCDC 00400224 */  addiu      $v0, $zero, 0x4000
    /* 9E4E0 800ADCE0 6403A2A7 */  sh         $v0, 0x364($sp)
    /* 9E4E4 800ADCE4 6603A2A7 */  sh         $v0, 0x366($sp)
    /* 9E4E8 800ADCE8 6E03A0A7 */  sh         $zero, 0x36E($sp)
    /* 9E4EC 800ADCEC 7003A0A7 */  sh         $zero, 0x370($sp)
    /* 9E4F0 800ADCF0 6803A0A7 */  sh         $zero, 0x368($sp)
    /* 9E4F4 800ADCF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E4F8 800ADCF8 6A03A2A7 */  sh         $v0, 0x36A($sp)
    /* 9E4FC 800ADCFC 6C03A2A7 */  sh         $v0, 0x36C($sp)
    /* 9E500 800ADD00 7803A0AF */  sw         $zero, 0x378($sp)
    /* 9E504 800ADD04 7C03A0AF */  sw         $zero, 0x37C($sp)
    /* 9E508 800ADD08 8003A0AF */  sw         $zero, 0x380($sp)
    /* 9E50C 800ADD0C 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E510 800ADD10 8403A2A3 */  sb         $v0, 0x384($sp)
    /* 9E514 800ADD14 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 9E518 800ADD18 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9E51C 800ADD1C F002A2AF */  sw         $v0, 0x2F0($sp)
    /* 9E520 800ADD20 7803A0AF */  sw         $zero, 0x378($sp)
    /* 9E524 800ADD24 8803A0AF */  sw         $zero, 0x388($sp)
    /* 9E528 800ADD28 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 9E52C 800ADD2C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9E530 800ADD30 F8000224 */  addiu      $v0, $zero, 0xF8
    /* 9E534 800ADD34 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9E538 800ADD38 BC000224 */  addiu      $v0, $zero, 0xBC
    /* 9E53C 800ADD3C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9E540 800ADD40 1180023C */  lui        $v0, %hi(D_8010CBE0)
    /* 9E544 800ADD44 E0CB4224 */  addiu      $v0, $v0, %lo(D_8010CBE0)
    /* 9E548 800ADD48 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 9E54C 800ADD4C 21200002 */  addu       $a0, $s0, $zero
    /* 9E550 800ADD50 1680053C */  lui        $a1, %hi(D_80158E64)
    /* 9E554 800ADD54 648EA524 */  addiu      $a1, $a1, %lo(D_80158E64)
    /* 9E558 800ADD58 21300000 */  addu       $a2, $zero, $zero
    /* 9E55C 800ADD5C B3DE030C */  jal        func_800F7ACC
    /* 9E560 800ADD60 24000724 */   addiu     $a3, $zero, 0x24
    /* 9E564 800ADD64 40101200 */  sll        $v0, $s2, 1
    /* 9E568 800ADD68 1280013C */  lui        $at, %hi(D_801200E4)
    /* 9E56C 800ADD6C 21082200 */  addu       $at, $at, $v0
    /* 9E570 800ADD70 E4003084 */  lh         $s0, %lo(D_801200E4)($at)
    /* 9E574 800ADD74 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E578 800ADD78 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E57C 800ADD7C CB1A030C */  jal        func_800C6B2C
    /* 9E580 800ADD80 00000000 */   nop
    /* 9E584 800ADD84 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E588 800ADD88 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E58C 800ADD8C 1680053C */  lui        $a1, %hi(D_80158E68)
    /* 9E590 800ADD90 688EA524 */  addiu      $a1, $a1, %lo(D_80158E68)
    /* 9E594 800ADD94 9987030C */  jal        func_800E1E64
    /* 9E598 800ADD98 00000000 */   nop
    /* 9E59C 800ADD9C 1E00022A */  slti       $v0, $s0, 0x1E
    /* 9E5A0 800ADDA0 07004010 */  beqz       $v0, .L800ADDC0
    /* 9E5A4 800ADDA4 3C00022A */   slti      $v0, $s0, 0x3C
    /* 9E5A8 800ADDA8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E5AC 800ADDAC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E5B0 800ADDB0 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9E5B4 800ADDB4 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9E5B8 800ADDB8 ACB70208 */  j          .L800ADEB0
    /* 9E5BC 800ADDBC 00000000 */   nop
  .L800ADDC0:
    /* 9E5C0 800ADDC0 07004010 */  beqz       $v0, .L800ADDE0
    /* 9E5C4 800ADDC4 5A00022A */   slti      $v0, $s0, 0x5A
    /* 9E5C8 800ADDC8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E5CC 800ADDCC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E5D0 800ADDD0 1680053C */  lui        $a1, %hi(D_80158E74)
    /* 9E5D4 800ADDD4 748EA524 */  addiu      $a1, $a1, %lo(D_80158E74)
    /* 9E5D8 800ADDD8 ACB70208 */  j          .L800ADEB0
    /* 9E5DC 800ADDDC 00000000 */   nop
  .L800ADDE0:
    /* 9E5E0 800ADDE0 07004010 */  beqz       $v0, .L800ADE00
    /* 9E5E4 800ADDE4 7800022A */   slti      $v0, $s0, 0x78
    /* 9E5E8 800ADDE8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E5EC 800ADDEC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E5F0 800ADDF0 1680053C */  lui        $a1, %hi(D_80158E78)
    /* 9E5F4 800ADDF4 788EA524 */  addiu      $a1, $a1, %lo(D_80158E78)
    /* 9E5F8 800ADDF8 ACB70208 */  j          .L800ADEB0
    /* 9E5FC 800ADDFC 00000000 */   nop
  .L800ADE00:
    /* 9E600 800ADE00 07004010 */  beqz       $v0, .L800ADE20
    /* 9E604 800ADE04 9600022A */   slti      $v0, $s0, 0x96
    /* 9E608 800ADE08 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E60C 800ADE0C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E610 800ADE10 1680053C */  lui        $a1, %hi(D_80158E7C)
    /* 9E614 800ADE14 7C8EA524 */  addiu      $a1, $a1, %lo(D_80158E7C)
    /* 9E618 800ADE18 ACB70208 */  j          .L800ADEB0
    /* 9E61C 800ADE1C 00000000 */   nop
  .L800ADE20:
    /* 9E620 800ADE20 07004010 */  beqz       $v0, .L800ADE40
    /* 9E624 800ADE24 B400022A */   slti      $v0, $s0, 0xB4
    /* 9E628 800ADE28 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E62C 800ADE2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E630 800ADE30 1680053C */  lui        $a1, %hi(D_80158E80)
    /* 9E634 800ADE34 808EA524 */  addiu      $a1, $a1, %lo(D_80158E80)
    /* 9E638 800ADE38 ACB70208 */  j          .L800ADEB0
    /* 9E63C 800ADE3C 00000000 */   nop
  .L800ADE40:
    /* 9E640 800ADE40 07004010 */  beqz       $v0, .L800ADE60
    /* 9E644 800ADE44 D200022A */   slti      $v0, $s0, 0xD2
    /* 9E648 800ADE48 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E64C 800ADE4C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E650 800ADE50 1680053C */  lui        $a1, %hi(D_80158E84)
    /* 9E654 800ADE54 848EA524 */  addiu      $a1, $a1, %lo(D_80158E84)
    /* 9E658 800ADE58 ACB70208 */  j          .L800ADEB0
    /* 9E65C 800ADE5C 00000000 */   nop
  .L800ADE60:
    /* 9E660 800ADE60 07004010 */  beqz       $v0, .L800ADE80
    /* 9E664 800ADE64 F000022A */   slti      $v0, $s0, 0xF0
    /* 9E668 800ADE68 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E66C 800ADE6C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E670 800ADE70 1680053C */  lui        $a1, %hi(D_80158E88)
    /* 9E674 800ADE74 888EA524 */  addiu      $a1, $a1, %lo(D_80158E88)
    /* 9E678 800ADE78 ACB70208 */  j          .L800ADEB0
    /* 9E67C 800ADE7C 00000000 */   nop
  .L800ADE80:
    /* 9E680 800ADE80 07004010 */  beqz       $v0, .L800ADEA0
    /* 9E684 800ADE84 00000000 */   nop
    /* 9E688 800ADE88 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E68C 800ADE8C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E690 800ADE90 1680053C */  lui        $a1, %hi(D_80158E8C)
    /* 9E694 800ADE94 8C8EA524 */  addiu      $a1, $a1, %lo(D_80158E8C)
    /* 9E698 800ADE98 ACB70208 */  j          .L800ADEB0
    /* 9E69C 800ADE9C 00000000 */   nop
  .L800ADEA0:
    /* 9E6A0 800ADEA0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E6A4 800ADEA4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E6A8 800ADEA8 1680053C */  lui        $a1, %hi(D_80158E90)
    /* 9E6AC 800ADEAC 908EA524 */  addiu      $a1, $a1, %lo(D_80158E90)
  .L800ADEB0:
    /* 9E6B0 800ADEB0 9987030C */  jal        func_800E1E64
    /* 9E6B4 800ADEB4 00000000 */   nop
    /* 9E6B8 800ADEB8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E6BC 800ADEBC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E6C0 800ADEC0 1680053C */  lui        $a1, %hi(D_80158E94)
    /* 9E6C4 800ADEC4 948EA524 */  addiu      $a1, $a1, %lo(D_80158E94)
    /* 9E6C8 800ADEC8 9987030C */  jal        func_800E1E64
    /* 9E6CC 800ADECC 00000000 */   nop
    /* 9E6D0 800ADED0 6400022A */  slti       $v0, $s0, 0x64
    /* 9E6D4 800ADED4 08004010 */  beqz       $v0, .L800ADEF8
    /* 9E6D8 800ADED8 0A00022A */   slti      $v0, $s0, 0xA
    /* 9E6DC 800ADEDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E6E0 800ADEE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E6E4 800ADEE4 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9E6E8 800ADEE8 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9E6EC 800ADEEC 9987030C */  jal        func_800E1E64
    /* 9E6F0 800ADEF0 00000000 */   nop
    /* 9E6F4 800ADEF4 0A00022A */  slti       $v0, $s0, 0xA
  .L800ADEF8:
    /* 9E6F8 800ADEF8 07004010 */  beqz       $v0, .L800ADF18
    /* 9E6FC 800ADEFC 00000000 */   nop
    /* 9E700 800ADF00 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E704 800ADF04 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E708 800ADF08 1680053C */  lui        $a1, %hi(D_80158E70)
    /* 9E70C 800ADF0C 708EA524 */  addiu      $a1, $a1, %lo(D_80158E70)
    /* 9E710 800ADF10 9987030C */  jal        func_800E1E64
    /* 9E714 800ADF14 00000000 */   nop
  .L800ADF18:
    /* 9E718 800ADF18 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E71C 800ADF1C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E720 800ADF20 9C1B030C */  jal        func_800C6E70
    /* 9E724 800ADF24 21280002 */   addu      $a1, $s0, $zero
    /* 9E728 800ADF28 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9E72C 800ADF2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9E730 800ADF30 1680053C */  lui        $a1, %hi(D_80158E9C)
    /* 9E734 800ADF34 9C8EA524 */  addiu      $a1, $a1, %lo(D_80158E9C)
    /* 9E738 800ADF38 9987030C */  jal        func_800E1E64
    /* 9E73C 800ADF3C 02001124 */   addiu     $s1, $zero, 0x2
    /* 9E740 800ADF40 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9E744 800ADF44 21200002 */  addu       $a0, $s0, $zero
    /* 9E748 800ADF48 1280053C */  lui        $a1, %hi(D_80121340)
    /* 9E74C 800ADF4C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 9E750 800ADF50 FDFF0624 */  addiu      $a2, $zero, -0x3
    /* 9E754 800ADF54 76E2030C */  jal        func_800F89D8
    /* 9E758 800ADF58 21380000 */   addu      $a3, $zero, $zero
    /* 9E75C 800ADF5C 800990AF */  sw         $s0, %gp_rel(D_80158E58)($gp)
    /* 9E760 800ADF60 0B80053C */  lui        $a1, %hi(func_800AB32C)
    /* 9E764 800ADF64 2CB3A524 */  addiu      $a1, $a1, %lo(func_800AB32C)
    /* 9E768 800ADF68 82DF030C */  jal        func_800F7E08
    /* 9E76C 800ADF6C 21200002 */   addu      $a0, $s0, $zero
    /* 9E770 800ADF70 8FB8020C */  jal        func_800AE23C
    /* 9E774 800ADF74 21800000 */   addu      $s0, $zero, $zero
    /* 9E778 800ADF78 3C00022A */  slti       $v0, $s0, 0x3C
  .L800ADF7C:
    /* 9E77C 800ADF7C 07004010 */  beqz       $v0, .L800ADF9C
    /* 9E780 800ADF80 00000000 */   nop
    /* 9E784 800ADF84 1680013C */  lui        $at, %hi(D_801584EC)
    /* 9E788 800ADF88 EC8431AC */  sw         $s1, %lo(D_801584EC)($at)
    /* 9E78C 800ADF8C 8E12040C */  jal        func_80104A38
    /* 9E790 800ADF90 01001026 */   addiu     $s0, $s0, 0x1
    /* 9E794 800ADF94 DFB70208 */  j          .L800ADF7C
    /* 9E798 800ADF98 3C00022A */   slti      $v0, $s0, 0x3C
  .L800ADF9C:
    /* 9E79C 800ADF9C 8BBA020C */  jal        func_800AEA2C
    /* 9E7A0 800ADFA0 00000000 */   nop
    /* 9E7A4 800ADFA4 18000224 */  addiu      $v0, $zero, 0x18
    /* 9E7A8 800ADFA8 03004216 */  bne        $s2, $v0, .L800ADFB8
    /* 9E7AC 800ADFAC 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 9E7B0 800ADFB0 F9B70208 */  j          .L800ADFE4
    /* 9E7B4 800ADFB4 0D001224 */   addiu     $s2, $zero, 0xD
  .L800ADFB8:
    /* 9E7B8 800ADFB8 03004216 */  bne        $s2, $v0, .L800ADFC8
    /* 9E7BC 800ADFBC 1E00422A */   slti      $v0, $s2, 0x1E
    /* 9E7C0 800ADFC0 F9B70208 */  j          .L800ADFE4
    /* 9E7C4 800ADFC4 16001224 */   addiu     $s2, $zero, 0x16
  .L800ADFC8:
    /* 9E7C8 800ADFC8 03004014 */  bnez       $v0, .L800ADFD8
    /* 9E7CC 800ADFCC 1900422A */   slti      $v0, $s2, 0x19
    /* 9E7D0 800ADFD0 F9B70208 */  j          .L800ADFE4
    /* 9E7D4 800ADFD4 FEFF5226 */   addiu     $s2, $s2, -0x2
  .L800ADFD8:
    /* 9E7D8 800ADFD8 03004014 */  bnez       $v0, .L800ADFE8
    /* 9E7DC 800ADFDC 80881200 */   sll       $s1, $s2, 2
    /* 9E7E0 800ADFE0 FFFF5226 */  addiu      $s2, $s2, -0x1
  .L800ADFE4:
    /* 9E7E4 800ADFE4 80881200 */  sll        $s1, $s2, 2
  .L800ADFE8:
    /* 9E7E8 800ADFE8 2800B027 */  addiu      $s0, $sp, 0x28
    /* 9E7EC 800ADFEC A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9E7F0 800ADFF0 1280013C */  lui        $at, %hi(D_80120478)
    /* 9E7F4 800ADFF4 21083100 */  addu       $at, $at, $s1
    /* 9E7F8 800ADFF8 7804268C */  lw         $a2, %lo(D_80120478)($at)
    /* 9E7FC 800ADFFC 4001023C */  lui        $v0, (0x1404001 >> 16)
    /* 9E800 800AE000 01404234 */  ori        $v0, $v0, (0x1404001 & 0xFFFF)
    /* 9E804 800AE004 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9E808 800AE008 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9E80C 800AE00C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9E810 800AE010 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9E814 800AE014 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9E818 800AE018 21200002 */  addu       $a0, $s0, $zero
    /* 9E81C 800AE01C 2CE0020C */  jal        func_800B80B0
    /* 9E820 800AE020 21380000 */   addu      $a3, $zero, $zero
    /* 9E824 800AE024 21200002 */  addu       $a0, $s0, $zero
    /* 9E828 800AE028 52DF020C */  jal        func_800B7D48
    /* 9E82C 800AE02C 21280000 */   addu      $a1, $zero, $zero
    /* 9E830 800AE030 0F270324 */  addiu      $v1, $zero, 0x270F
    /* 9E834 800AE034 06004314 */  bne        $v0, $v1, .L800AE050
    /* 9E838 800AE038 00000000 */   nop
    /* 9E83C 800AE03C 1280013C */  lui        $at, %hi(D_80120604)
    /* 9E840 800AE040 21083100 */  addu       $at, $at, $s1
    /* 9E844 800AE044 0406248C */  lw         $a0, %lo(D_80120604)($at)
    /* 9E848 800AE048 A2BA020C */  jal        func_800AEA88
    /* 9E84C 800AE04C 00000000 */   nop
  .L800AE050:
    /* 9E850 800AE050 16BA020C */  jal        func_800AE858
    /* 9E854 800AE054 00000000 */   nop
    /* 9E858 800AE058 7CEA030C */  jal        func_800FA9F0
    /* 9E85C 800AE05C F402A427 */   addiu     $a0, $sp, 0x2F4
    /* 9E860 800AE060 C802A427 */  addiu      $a0, $sp, 0x2C8
    /* 9E864 800AE064 21280000 */  addu       $a1, $zero, $zero
    /* 9E868 800AE068 A9E0030C */  jal        func_800F82A4
    /* 9E86C 800AE06C 21300000 */   addu      $a2, $zero, $zero
    /* 9E870 800AE070 8E12040C */  jal        func_80104A38
    /* 9E874 800AE074 00000000 */   nop
    /* 9E878 800AE078 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* 9E87C 800AE07C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 9E880 800AE080 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 9E884 800AE084 F002A2AF */  sw         $v0, 0x2F0($sp)
    /* 9E888 800AE088 F402A427 */  addiu      $a0, $sp, 0x2F4
    /* 9E88C 800AE08C F5E9030C */  jal        func_800FA7D4
    /* 9E890 800AE090 21280000 */   addu      $a1, $zero, $zero
    /* 9E894 800AE094 21200002 */  addu       $a0, $s0, $zero
    /* 9E898 800AE098 4CE1030C */  jal        func_800F8530
    /* 9E89C 800AE09C 02000524 */   addiu     $a1, $zero, 0x2
    /* 9E8A0 800AE0A0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E8A4 800AE0A4 0AC7020C */  jal        func_800B1C28
    /* 9E8A8 800AE0A8 02000524 */   addiu     $a1, $zero, 0x2
    /* 9E8AC 800AE0AC 9C03BF8F */  lw         $ra, 0x39C($sp)
    /* 9E8B0 800AE0B0 9803B28F */  lw         $s2, 0x398($sp)
    /* 9E8B4 800AE0B4 9403B18F */  lw         $s1, 0x394($sp)
    /* 9E8B8 800AE0B8 9003B08F */  lw         $s0, 0x390($sp)
    /* 9E8BC 800AE0BC A003BD27 */  addiu      $sp, $sp, 0x3A0
    /* 9E8C0 800AE0C0 0800E003 */  jr         $ra
    /* 9E8C4 800AE0C4 00000000 */   nop
endlabel func_800ADC40
