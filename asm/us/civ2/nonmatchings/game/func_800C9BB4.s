.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C9BB4, 0x554

glabel func_800C9BB4
    /* BA3B4 800C9BB4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BA3B8 800C9BB8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* BA3BC 800C9BBC 2800B6AF */  sw         $s6, 0x28($sp)
    /* BA3C0 800C9BC0 2400B5AF */  sw         $s5, 0x24($sp)
    /* BA3C4 800C9BC4 2000B4AF */  sw         $s4, 0x20($sp)
    /* BA3C8 800C9BC8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BA3CC 800C9BCC 1800B2AF */  sw         $s2, 0x18($sp)
    /* BA3D0 800C9BD0 1400B1AF */  sw         $s1, 0x14($sp)
    /* BA3D4 800C9BD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* BA3D8 800C9BD8 21988000 */  addu       $s3, $a0, $zero
    /* BA3DC 800C9BDC 21A0A000 */  addu       $s4, $a1, $zero
    /* BA3E0 800C9BE0 0422030C */  jal        func_800C8810
    /* BA3E4 800C9BE4 21280000 */   addu      $a1, $zero, $zero
    /* BA3E8 800C9BE8 4BDF010C */  jal        func_80077D2C
    /* BA3EC 800C9BEC 21206002 */   addu      $a0, $s3, $zero
    /* BA3F0 800C9BF0 3A014014 */  bnez       $v0, .L800CA0DC
    /* BA3F4 800C9BF4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* BA3F8 800C9BF8 0F270424 */  addiu      $a0, $zero, 0x270F
    /* BA3FC 800C9BFC 01001124 */  addiu      $s1, $zero, 0x1
    /* BA400 800C9C00 1280053C */  lui        $a1, %hi(D_8011A275)
    /* BA404 800C9C04 75A2A590 */  lbu        $a1, %lo(D_8011A275)($a1)
    /* BA408 800C9C08 00000000 */  nop
    /* BA40C 800C9C0C 07102502 */  srav       $v0, $a1, $s1
  .L800C9C10:
    /* BA410 800C9C10 01004230 */  andi       $v0, $v0, 0x1
    /* BA414 800C9C14 10004010 */  beqz       $v0, .L800C9C58
    /* BA418 800C9C18 40101100 */   sll       $v0, $s1, 1
    /* BA41C 800C9C1C 21105100 */  addu       $v0, $v0, $s1
    /* BA420 800C9C20 80100200 */  sll        $v0, $v0, 2
    /* BA424 800C9C24 23105100 */  subu       $v0, $v0, $s1
    /* BA428 800C9C28 00110200 */  sll        $v0, $v0, 4
    /* BA42C 800C9C2C 23105100 */  subu       $v0, $v0, $s1
    /* BA430 800C9C30 C0100200 */  sll        $v0, $v0, 3
    /* BA434 800C9C34 1180013C */  lui        $at, %hi(D_80117A76)
    /* BA438 800C9C38 21082200 */  addu       $at, $at, $v0
    /* BA43C 800C9C3C 767A2384 */  lh         $v1, %lo(D_80117A76)($at)
    /* BA440 800C9C40 00000000 */  nop
    /* BA444 800C9C44 04006018 */  blez       $v1, .L800C9C58
    /* BA448 800C9C48 2A106400 */   slt       $v0, $v1, $a0
    /* BA44C 800C9C4C 02004010 */  beqz       $v0, .L800C9C58
    /* BA450 800C9C50 00000000 */   nop
    /* BA454 800C9C54 21206000 */  addu       $a0, $v1, $zero
  .L800C9C58:
    /* BA458 800C9C58 01003126 */  addiu      $s1, $s1, 0x1
    /* BA45C 800C9C5C 0800222A */  slti       $v0, $s1, 0x8
    /* BA460 800C9C60 EBFF4014 */  bnez       $v0, .L800C9C10
    /* BA464 800C9C64 07102502 */   srav      $v0, $a1, $s1
    /* BA468 800C9C68 40101300 */  sll        $v0, $s3, 1
    /* BA46C 800C9C6C 21105300 */  addu       $v0, $v0, $s3
    /* BA470 800C9C70 80100200 */  sll        $v0, $v0, 2
    /* BA474 800C9C74 23105300 */  subu       $v0, $v0, $s3
    /* BA478 800C9C78 00110200 */  sll        $v0, $v0, 4
    /* BA47C 800C9C7C 23105300 */  subu       $v0, $v0, $s3
    /* BA480 800C9C80 C0100200 */  sll        $v0, $v0, 3
    /* BA484 800C9C84 1180013C */  lui        $at, %hi(D_80117A76)
    /* BA488 800C9C88 21082200 */  addu       $at, $at, $v0
    /* BA48C 800C9C8C 767A2384 */  lh         $v1, %lo(D_80117A76)($at)
    /* BA490 800C9C90 00000000 */  nop
    /* BA494 800C9C94 09006010 */  beqz       $v1, .L800C9CBC
    /* BA498 800C9C98 21A80000 */   addu      $s5, $zero, $zero
    /* BA49C 800C9C9C 1280023C */  lui        $v0, %hi(D_8011A264)
    /* BA4A0 800C9CA0 64A24284 */  lh         $v0, %lo(D_8011A264)($v0)
    /* BA4A4 800C9CA4 00000000 */  nop
    /* BA4A8 800C9CA8 23106200 */  subu       $v0, $v1, $v0
    /* BA4AC 800C9CAC 0F004228 */  slti       $v0, $v0, 0xF
    /* BA4B0 800C9CB0 02004010 */  beqz       $v0, .L800C9CBC
    /* BA4B4 800C9CB4 00000000 */   nop
    /* BA4B8 800C9CB8 2AA86400 */  slt        $s5, $v1, $a0
  .L800C9CBC:
    /* BA4BC 800C9CBC 1D008016 */  bnez       $s4, .L800C9D34
    /* BA4C0 800C9CC0 21880000 */   addu      $s1, $zero, $zero
    /* BA4C4 800C9CC4 21206002 */  addu       $a0, $s3, $zero
    /* BA4C8 800C9CC8 C821030C */  jal        func_800C8720
    /* BA4CC 800C9CCC 02000524 */   addiu     $a1, $zero, 0x2
    /* BA4D0 800C9CD0 21804000 */  addu       $s0, $v0, $zero
    /* BA4D4 800C9CD4 21206002 */  addu       $a0, $s3, $zero
    /* BA4D8 800C9CD8 5721030C */  jal        func_800C855C
    /* BA4DC 800C9CDC 02000524 */   addiu     $a1, $zero, 0x2
    /* BA4E0 800C9CE0 2A800202 */  slt        $s0, $s0, $v0
    /* BA4E4 800C9CE4 07000012 */  beqz       $s0, .L800C9D04
    /* BA4E8 800C9CE8 00000000 */   nop
    /* BA4EC 800C9CEC 4D270308 */  j          .L800C9D34
    /* BA4F0 800C9CF0 01001124 */   addiu     $s1, $zero, 0x1
  .L800C9CF4:
    /* BA4F4 800C9CF4 C0270308 */  j          .L800C9F00
    /* BA4F8 800C9CF8 21A02002 */   addu      $s4, $s1, $zero
  .L800C9CFC:
    /* BA4FC 800C9CFC 37280308 */  j          .L800CA0DC
    /* BA500 800C9D00 01000224 */   addiu     $v0, $zero, 0x1
  .L800C9D04:
    /* BA504 800C9D04 0B00A016 */  bnez       $s5, .L800C9D34
    /* BA508 800C9D08 21206002 */   addu      $a0, $s3, $zero
    /* BA50C 800C9D0C C821030C */  jal        func_800C8720
    /* BA510 800C9D10 01000524 */   addiu     $a1, $zero, 0x1
    /* BA514 800C9D14 21804000 */  addu       $s0, $v0, $zero
    /* BA518 800C9D18 21206002 */  addu       $a0, $s3, $zero
    /* BA51C 800C9D1C 5721030C */  jal        func_800C855C
    /* BA520 800C9D20 01000524 */   addiu     $a1, $zero, 0x1
    /* BA524 800C9D24 2A800202 */  slt        $s0, $s0, $v0
    /* BA528 800C9D28 02000012 */  beqz       $s0, .L800C9D34
    /* BA52C 800C9D2C 00000000 */   nop
    /* BA530 800C9D30 01001124 */  addiu      $s1, $zero, 0x1
  .L800C9D34:
    /* BA534 800C9D34 33002016 */  bnez       $s1, .L800C9E04
    /* BA538 800C9D38 21900000 */   addu      $s2, $zero, $zero
    /* BA53C 800C9D3C 01000224 */  addiu      $v0, $zero, 0x1
    /* BA540 800C9D40 03008216 */  bne        $s4, $v0, .L800C9D50
    /* BA544 800C9D44 21206002 */   addu      $a0, $s3, $zero
    /* BA548 800C9D48 2E00A016 */  bnez       $s5, .L800C9E04
    /* BA54C 800C9D4C 00000000 */   nop
  .L800C9D50:
    /* BA550 800C9D50 C821030C */  jal        func_800C8720
    /* BA554 800C9D54 21288002 */   addu      $a1, $s4, $zero
    /* BA558 800C9D58 21804000 */  addu       $s0, $v0, $zero
    /* BA55C 800C9D5C 21206002 */  addu       $a0, $s3, $zero
    /* BA560 800C9D60 5721030C */  jal        func_800C855C
    /* BA564 800C9D64 21288002 */   addu      $a1, $s4, $zero
    /* BA568 800C9D68 2A800202 */  slt        $s0, $s0, $v0
    /* BA56C 800C9D6C 25000012 */  beqz       $s0, .L800C9E04
    /* BA570 800C9D70 21880000 */   addu      $s1, $zero, $zero
    /* BA574 800C9D74 21206002 */  addu       $a0, $s3, $zero
    /* BA578 800C9D78 9621030C */  jal        func_800C8658
    /* BA57C 800C9D7C 21288002 */   addu      $a1, $s4, $zero
    /* BA580 800C9D80 21804000 */  addu       $s0, $v0, $zero
    /* BA584 800C9D84 21206002 */  addu       $a0, $s3, $zero
    /* BA588 800C9D88 5721030C */  jal        func_800C855C
    /* BA58C 800C9D8C 21288002 */   addu      $a1, $s4, $zero
    /* BA590 800C9D90 2A800202 */  slt        $s0, $s0, $v0
    /* BA594 800C9D94 0100103A */  xori       $s0, $s0, 0x1
    /* BA598 800C9D98 06000012 */  beqz       $s0, .L800C9DB4
    /* BA59C 800C9D9C 21206002 */   addu      $a0, $s3, $zero
    /* BA5A0 800C9DA0 9621030C */  jal        func_800C8658
    /* BA5A4 800C9DA4 21288002 */   addu      $a1, $s4, $zero
    /* BA5A8 800C9DA8 14004014 */  bnez       $v0, .L800C9DFC
    /* BA5AC 800C9DAC 00000000 */   nop
    /* BA5B0 800C9DB0 21206002 */  addu       $a0, $s3, $zero
  .L800C9DB4:
    /* BA5B4 800C9DB4 9621030C */  jal        func_800C8658
    /* BA5B8 800C9DB8 21288002 */   addu      $a1, $s4, $zero
    /* BA5BC 800C9DBC 21804000 */  addu       $s0, $v0, $zero
    /* BA5C0 800C9DC0 7F21030C */  jal        func_800C85FC
    /* BA5C4 800C9DC4 21208002 */   addu      $a0, $s4, $zero
    /* BA5C8 800C9DC8 2A800202 */  slt        $s0, $s0, $v0
    /* BA5CC 800C9DCC 0100103A */  xori       $s0, $s0, 0x1
    /* BA5D0 800C9DD0 0A000016 */  bnez       $s0, .L800C9DFC
    /* BA5D4 800C9DD4 23008226 */   addiu     $v0, $s4, 0x23
    /* BA5D8 800C9DD8 C0100200 */  sll        $v0, $v0, 3
    /* BA5DC 800C9DDC 1180013C */  lui        $at, %hi(D_8010D06A)
    /* BA5E0 800C9DE0 21082200 */  addu       $at, $at, $v0
    /* BA5E4 800C9DE4 6AD02580 */  lb         $a1, %lo(D_8010D06A)($at)
    /* BA5E8 800C9DE8 8ACA010C */  jal        func_80072A28
    /* BA5EC 800C9DEC 21206002 */   addu      $a0, $s3, $zero
    /* BA5F0 800C9DF0 02004010 */  beqz       $v0, .L800C9DFC
    /* BA5F4 800C9DF4 00000000 */   nop
    /* BA5F8 800C9DF8 01001124 */  addiu      $s1, $zero, 0x1
  .L800C9DFC:
    /* BA5FC 800C9DFC 02002016 */  bnez       $s1, .L800C9E08
    /* BA600 800C9E00 00000000 */   nop
  .L800C9E04:
    /* BA604 800C9E04 01001224 */  addiu      $s2, $zero, 0x1
  .L800C9E08:
    /* BA608 800C9E08 3D004012 */  beqz       $s2, .L800C9F00
    /* BA60C 800C9E0C 02001124 */   addiu     $s1, $zero, 0x2
  .L800C9E10:
    /* BA610 800C9E10 05008016 */  bnez       $s4, .L800C9E28
    /* BA614 800C9E14 00000000 */   nop
    /* BA618 800C9E18 0500201E */  bgtz       $s1, .L800C9E30
    /* BA61C 800C9E1C 21900000 */   addu      $s2, $zero, $zero
    /* BA620 800C9E20 C0270308 */  j          .L800C9F00
    /* BA624 800C9E24 00000000 */   nop
  .L800C9E28:
    /* BA628 800C9E28 35002006 */  bltz       $s1, .L800C9F00
    /* BA62C 800C9E2C 21900000 */   addu      $s2, $zero, $zero
  .L800C9E30:
    /* BA630 800C9E30 21206002 */  addu       $a0, $s3, $zero
    /* BA634 800C9E34 9621030C */  jal        func_800C8658
    /* BA638 800C9E38 21282002 */   addu      $a1, $s1, $zero
    /* BA63C 800C9E3C 21804000 */  addu       $s0, $v0, $zero
    /* BA640 800C9E40 21206002 */  addu       $a0, $s3, $zero
    /* BA644 800C9E44 5721030C */  jal        func_800C855C
    /* BA648 800C9E48 21282002 */   addu      $a1, $s1, $zero
    /* BA64C 800C9E4C 2A800202 */  slt        $s0, $s0, $v0
    /* BA650 800C9E50 0100103A */  xori       $s0, $s0, 0x1
    /* BA654 800C9E54 06000012 */  beqz       $s0, .L800C9E70
    /* BA658 800C9E58 21206002 */   addu      $a0, $s3, $zero
    /* BA65C 800C9E5C 9621030C */  jal        func_800C8658
    /* BA660 800C9E60 21282002 */   addu      $a1, $s1, $zero
    /* BA664 800C9E64 14004014 */  bnez       $v0, .L800C9EB8
    /* BA668 800C9E68 00000000 */   nop
    /* BA66C 800C9E6C 21206002 */  addu       $a0, $s3, $zero
  .L800C9E70:
    /* BA670 800C9E70 9621030C */  jal        func_800C8658
    /* BA674 800C9E74 21282002 */   addu      $a1, $s1, $zero
    /* BA678 800C9E78 21804000 */  addu       $s0, $v0, $zero
    /* BA67C 800C9E7C 7F21030C */  jal        func_800C85FC
    /* BA680 800C9E80 21202002 */   addu      $a0, $s1, $zero
    /* BA684 800C9E84 2A800202 */  slt        $s0, $s0, $v0
    /* BA688 800C9E88 0100103A */  xori       $s0, $s0, 0x1
    /* BA68C 800C9E8C 0A000016 */  bnez       $s0, .L800C9EB8
    /* BA690 800C9E90 23002226 */   addiu     $v0, $s1, 0x23
    /* BA694 800C9E94 C0100200 */  sll        $v0, $v0, 3
    /* BA698 800C9E98 1180013C */  lui        $at, %hi(D_8010D06A)
    /* BA69C 800C9E9C 21082200 */  addu       $at, $at, $v0
    /* BA6A0 800C9EA0 6AD02580 */  lb         $a1, %lo(D_8010D06A)($at)
    /* BA6A4 800C9EA4 8ACA010C */  jal        func_80072A28
    /* BA6A8 800C9EA8 21206002 */   addu      $a0, $s3, $zero
    /* BA6AC 800C9EAC 02004010 */  beqz       $v0, .L800C9EB8
    /* BA6B0 800C9EB0 00000000 */   nop
    /* BA6B4 800C9EB4 01001224 */  addiu      $s2, $zero, 0x1
  .L800C9EB8:
    /* BA6B8 800C9EB8 0F004012 */  beqz       $s2, .L800C9EF8
    /* BA6BC 800C9EBC 01000224 */   addiu     $v0, $zero, 0x1
    /* BA6C0 800C9EC0 03002216 */  bne        $s1, $v0, .L800C9ED0
    /* BA6C4 800C9EC4 00000000 */   nop
    /* BA6C8 800C9EC8 0B00A016 */  bnez       $s5, .L800C9EF8
    /* BA6CC 800C9ECC 00000000 */   nop
  .L800C9ED0:
    /* BA6D0 800C9ED0 21206002 */  addu       $a0, $s3, $zero
    /* BA6D4 800C9ED4 C821030C */  jal        func_800C8720
    /* BA6D8 800C9ED8 21282002 */   addu      $a1, $s1, $zero
    /* BA6DC 800C9EDC 21804000 */  addu       $s0, $v0, $zero
    /* BA6E0 800C9EE0 21206002 */  addu       $a0, $s3, $zero
    /* BA6E4 800C9EE4 5721030C */  jal        func_800C855C
    /* BA6E8 800C9EE8 21282002 */   addu      $a1, $s1, $zero
    /* BA6EC 800C9EEC 2A800202 */  slt        $s0, $s0, $v0
    /* BA6F0 800C9EF0 80FF0016 */  bnez       $s0, .L800C9CF4
    /* BA6F4 800C9EF4 00000000 */   nop
  .L800C9EF8:
    /* BA6F8 800C9EF8 84270308 */  j          .L800C9E10
    /* BA6FC 800C9EFC FFFF3126 */   addiu     $s1, $s1, -0x1
  .L800C9F00:
    /* BA700 800C9F00 50008016 */  bnez       $s4, .L800CA044
    /* BA704 800C9F04 21880000 */   addu      $s1, $zero, $zero
    /* BA708 800C9F08 01001124 */  addiu      $s1, $zero, 0x1
    /* BA70C 800C9F0C 40101300 */  sll        $v0, $s3, 1
    /* BA710 800C9F10 21105300 */  addu       $v0, $v0, $s3
    /* BA714 800C9F14 80100200 */  sll        $v0, $v0, 2
    /* BA718 800C9F18 23105300 */  subu       $v0, $v0, $s3
    /* BA71C 800C9F1C 00B10200 */  sll        $s6, $v0, 4
    /* BA720 800C9F20 23B0D302 */  subu       $s6, $s6, $s3
    /* BA724 800C9F24 40101300 */  sll        $v0, $s3, 1
    /* BA728 800C9F28 21105300 */  addu       $v0, $v0, $s3
    /* BA72C 800C9F2C 80100200 */  sll        $v0, $v0, 2
    /* BA730 800C9F30 23105300 */  subu       $v0, $v0, $s3
    /* BA734 800C9F34 00A90200 */  sll        $s5, $v0, 4
    /* BA738 800C9F38 23A8B302 */  subu       $s5, $s5, $s3
  .L800C9F3C:
    /* BA73C 800C9F3C 0800222A */  slti       $v0, $s1, 0x8
    /* BA740 800C9F40 3F004010 */  beqz       $v0, .L800CA040
    /* BA744 800C9F44 00000000 */   nop
    /* BA748 800C9F48 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BA74C 800C9F4C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BA750 800C9F50 00000000 */  nop
    /* BA754 800C9F54 07102202 */  srav       $v0, $v0, $s1
    /* BA758 800C9F58 01004230 */  andi       $v0, $v0, 0x1
    /* BA75C 800C9F5C 36004010 */  beqz       $v0, .L800CA038
    /* BA760 800C9F60 00000000 */   nop
    /* BA764 800C9F64 4BDF010C */  jal        func_80077D2C
    /* BA768 800C9F68 21202002 */   addu      $a0, $s1, $zero
    /* BA76C 800C9F6C 32004010 */  beqz       $v0, .L800CA038
    /* BA770 800C9F70 40101100 */   sll       $v0, $s1, 1
    /* BA774 800C9F74 21105100 */  addu       $v0, $v0, $s1
    /* BA778 800C9F78 80100200 */  sll        $v0, $v0, 2
    /* BA77C 800C9F7C 23105100 */  subu       $v0, $v0, $s1
    /* BA780 800C9F80 00110200 */  sll        $v0, $v0, 4
    /* BA784 800C9F84 23105100 */  subu       $v0, $v0, $s1
    /* BA788 800C9F88 C0100200 */  sll        $v0, $v0, 3
    /* BA78C 800C9F8C 1180013C */  lui        $at, %hi(D_80117A76)
    /* BA790 800C9F90 21082200 */  addu       $at, $at, $v0
    /* BA794 800C9F94 767A2384 */  lh         $v1, %lo(D_80117A76)($at)
    /* BA798 800C9F98 B40C828F */  lw         $v0, %gp_rel(D_8015918C)($gp)
    /* BA79C 800C9F9C 00000000 */  nop
    /* BA7A0 800C9FA0 2A104300 */  slt        $v0, $v0, $v1
    /* BA7A4 800C9FA4 24004014 */  bnez       $v0, .L800CA038
    /* BA7A8 800C9FA8 21900000 */   addu      $s2, $zero, $zero
    /* BA7AC 800C9FAC 21206002 */  addu       $a0, $s3, $zero
    /* BA7B0 800C9FB0 9621030C */  jal        func_800C8658
    /* BA7B4 800C9FB4 01000524 */   addiu     $a1, $zero, 0x1
    /* BA7B8 800C9FB8 21804000 */  addu       $s0, $v0, $zero
    /* BA7BC 800C9FBC 7F21030C */  jal        func_800C85FC
    /* BA7C0 800C9FC0 01000424 */   addiu     $a0, $zero, 0x1
    /* BA7C4 800C9FC4 2A800202 */  slt        $s0, $s0, $v0
    /* BA7C8 800C9FC8 0100103A */  xori       $s0, $s0, 0x1
    /* BA7CC 800C9FCC 06000016 */  bnez       $s0, .L800C9FE8
    /* BA7D0 800C9FD0 00000000 */   nop
    /* BA7D4 800C9FD4 1180053C */  lui        $a1, %hi(D_8010D18A)
    /* BA7D8 800C9FD8 8AD1A580 */  lb         $a1, %lo(D_8010D18A)($a1)
    /* BA7DC 800C9FDC 8ACA010C */  jal        func_80072A28
    /* BA7E0 800C9FE0 21206002 */   addu      $a0, $s3, $zero
    /* BA7E4 800C9FE4 2B900200 */  sltu       $s2, $zero, $v0
  .L800C9FE8:
    /* BA7E8 800C9FE8 13004012 */  beqz       $s2, .L800CA038
    /* BA7EC 800C9FEC C0101600 */   sll       $v0, $s6, 3
    /* BA7F0 800C9FF0 1180013C */  lui        $at, %hi(D_80117A7E)
    /* BA7F4 800C9FF4 21082200 */  addu       $at, $at, $v0
    /* BA7F8 800C9FF8 7E7A3084 */  lh         $s0, %lo(D_80117A7E)($at)
    /* BA7FC 800C9FFC 21206002 */  addu       $a0, $s3, $zero
    /* BA800 800CA000 F520030C */  jal        func_800C83D4
    /* BA804 800CA004 01000524 */   addiu     $a1, $zero, 0x1
    /* BA808 800CA008 2A105000 */  slt        $v0, $v0, $s0
    /* BA80C 800CA00C 3BFF4010 */  beqz       $v0, .L800C9CFC
    /* BA810 800CA010 C0101500 */   sll       $v0, $s5, 3
    /* BA814 800CA014 1180013C */  lui        $at, %hi(D_80117A80)
    /* BA818 800CA018 21082200 */  addu       $at, $at, $v0
    /* BA81C 800CA01C 807A3084 */  lh         $s0, %lo(D_80117A80)($at)
    /* BA820 800CA020 21206002 */  addu       $a0, $s3, $zero
    /* BA824 800CA024 F520030C */  jal        func_800C83D4
    /* BA828 800CA028 02000524 */   addiu     $a1, $zero, 0x2
    /* BA82C 800CA02C 2A105000 */  slt        $v0, $v0, $s0
    /* BA830 800CA030 2A004010 */  beqz       $v0, .L800CA0DC
    /* BA834 800CA034 01000224 */   addiu     $v0, $zero, 0x1
  .L800CA038:
    /* BA838 800CA038 CF270308 */  j          .L800C9F3C
    /* BA83C 800CA03C 01003126 */   addiu     $s1, $s1, 0x1
  .L800CA040:
    /* BA840 800CA040 21880000 */  addu       $s1, $zero, $zero
  .L800CA044:
    /* BA844 800CA044 21206002 */  addu       $a0, $s3, $zero
    /* BA848 800CA048 9621030C */  jal        func_800C8658
    /* BA84C 800CA04C 21288002 */   addu      $a1, $s4, $zero
    /* BA850 800CA050 21804000 */  addu       $s0, $v0, $zero
    /* BA854 800CA054 21206002 */  addu       $a0, $s3, $zero
    /* BA858 800CA058 5721030C */  jal        func_800C855C
    /* BA85C 800CA05C 21288002 */   addu      $a1, $s4, $zero
    /* BA860 800CA060 2A800202 */  slt        $s0, $s0, $v0
    /* BA864 800CA064 0100103A */  xori       $s0, $s0, 0x1
    /* BA868 800CA068 06000012 */  beqz       $s0, .L800CA084
    /* BA86C 800CA06C 21206002 */   addu      $a0, $s3, $zero
    /* BA870 800CA070 9621030C */  jal        func_800C8658
    /* BA874 800CA074 21288002 */   addu      $a1, $s4, $zero
    /* BA878 800CA078 15004014 */  bnez       $v0, .L800CA0D0
    /* BA87C 800CA07C 00000000 */   nop
    /* BA880 800CA080 21206002 */  addu       $a0, $s3, $zero
  .L800CA084:
    /* BA884 800CA084 9621030C */  jal        func_800C8658
    /* BA888 800CA088 21288002 */   addu      $a1, $s4, $zero
    /* BA88C 800CA08C 21804000 */  addu       $s0, $v0, $zero
    /* BA890 800CA090 7F21030C */  jal        func_800C85FC
    /* BA894 800CA094 21208002 */   addu      $a0, $s4, $zero
    /* BA898 800CA098 2A800202 */  slt        $s0, $s0, $v0
    /* BA89C 800CA09C 0100103A */  xori       $s0, $s0, 0x1
    /* BA8A0 800CA0A0 0B000016 */  bnez       $s0, .L800CA0D0
    /* BA8A4 800CA0A4 00000000 */   nop
    /* BA8A8 800CA0A8 23008226 */  addiu      $v0, $s4, 0x23
    /* BA8AC 800CA0AC C0100200 */  sll        $v0, $v0, 3
    /* BA8B0 800CA0B0 1180013C */  lui        $at, %hi(D_8010D06A)
    /* BA8B4 800CA0B4 21082200 */  addu       $at, $at, $v0
    /* BA8B8 800CA0B8 6AD02580 */  lb         $a1, %lo(D_8010D06A)($at)
    /* BA8BC 800CA0BC 8ACA010C */  jal        func_80072A28
    /* BA8C0 800CA0C0 21206002 */   addu      $a0, $s3, $zero
    /* BA8C4 800CA0C4 02004010 */  beqz       $v0, .L800CA0D0
    /* BA8C8 800CA0C8 00000000 */   nop
    /* BA8CC 800CA0CC 01001124 */  addiu      $s1, $zero, 0x1
  .L800CA0D0:
    /* BA8D0 800CA0D0 02002012 */  beqz       $s1, .L800CA0DC
    /* BA8D4 800CA0D4 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* BA8D8 800CA0D8 21108002 */  addu       $v0, $s4, $zero
  .L800CA0DC:
    /* BA8DC 800CA0DC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* BA8E0 800CA0E0 2800B68F */  lw         $s6, 0x28($sp)
    /* BA8E4 800CA0E4 2400B58F */  lw         $s5, 0x24($sp)
    /* BA8E8 800CA0E8 2000B48F */  lw         $s4, 0x20($sp)
    /* BA8EC 800CA0EC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BA8F0 800CA0F0 1800B28F */  lw         $s2, 0x18($sp)
    /* BA8F4 800CA0F4 1400B18F */  lw         $s1, 0x14($sp)
    /* BA8F8 800CA0F8 1000B08F */  lw         $s0, 0x10($sp)
    /* BA8FC 800CA0FC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* BA900 800CA100 0800E003 */  jr         $ra
    /* BA904 800CA104 00000000 */   nop
endlabel func_800C9BB4
