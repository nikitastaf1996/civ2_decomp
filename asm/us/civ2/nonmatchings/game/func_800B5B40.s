.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B5B40, 0x304

glabel func_800B5B40
    /* A6340 800B5B40 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A6344 800B5B44 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* A6348 800B5B48 2800B4AF */  sw         $s4, 0x28($sp)
    /* A634C 800B5B4C 2400B3AF */  sw         $s3, 0x24($sp)
    /* A6350 800B5B50 2000B2AF */  sw         $s2, 0x20($sp)
    /* A6354 800B5B54 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A6358 800B5B58 1800B0AF */  sw         $s0, 0x18($sp)
    /* A635C 800B5B5C 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A6360 800B5B60 00000000 */  nop
    /* A6364 800B5B64 AE006010 */  beqz       $v1, .L800B5E20
    /* A6368 800B5B68 21A08000 */   addu      $s4, $a0, $zero
    /* A636C 800B5B6C FF008432 */  andi       $a0, $s4, 0xFF
    /* A6370 800B5B70 1480013C */  lui        $at, %hi(D_8013DAB9)
    /* A6374 800B5B74 21082400 */  addu       $at, $at, $a0
    /* A6378 800B5B78 B9DA2290 */  lbu        $v0, %lo(D_8013DAB9)($at)
    /* A637C 800B5B7C 00000000 */  nop
    /* A6380 800B5B80 03004230 */  andi       $v0, $v0, 0x3
    /* A6384 800B5B84 A6004010 */  beqz       $v0, .L800B5E20
    /* A6388 800B5B88 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A638C 800B5B8C 2802638C */  lw         $v1, 0x228($v1)
    /* A6390 800B5B90 00000000 */  nop
    /* A6394 800B5B94 A2006214 */  bne        $v1, $v0, .L800B5E20
    /* A6398 800B5B98 00000000 */   nop
    /* A639C 800B5B9C BD87030C */  jal        func_800E1EF4
    /* A63A0 800B5BA0 00000000 */   nop
    /* A63A4 800B5BA4 21A04000 */  addu       $s4, $v0, $zero
    /* A63A8 800B5BA8 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A63AC 800B5BAC 00000000 */  nop
    /* A63B0 800B5BB0 3000828C */  lw         $v0, 0x30($a0)
    /* A63B4 800B5BB4 0400033C */  lui        $v1, (0x41000 >> 16)
    /* A63B8 800B5BB8 00106334 */  ori        $v1, $v1, (0x41000 & 0xFFFF)
    /* A63BC 800B5BBC 24104300 */  and        $v0, $v0, $v1
    /* A63C0 800B5BC0 00100324 */  addiu      $v1, $zero, 0x1000
    /* A63C4 800B5BC4 23004314 */  bne        $v0, $v1, .L800B5C54
    /* A63C8 800B5BC8 0200033C */   lui       $v1, (0x20000 >> 16)
    /* A63CC 800B5BCC 6801908C */  lw         $s0, 0x168($a0)
    /* A63D0 800B5BD0 21900000 */  addu       $s2, $zero, $zero
    /* A63D4 800B5BD4 21880000 */  addu       $s1, $zero, $zero
    /* A63D8 800B5BD8 FF009332 */  andi       $s3, $s4, 0xFF
  .L800B5BDC:
    /* A63DC 800B5BDC 0C00108E */  lw         $s0, 0xC($s0)
    /* A63E0 800B5BE0 00000000 */  nop
    /* A63E4 800B5BE4 04000016 */  bnez       $s0, .L800B5BF8
    /* A63E8 800B5BE8 00000000 */   nop
    /* A63EC 800B5BEC 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A63F0 800B5BF0 00000000 */  nop
    /* A63F4 800B5BF4 7001508C */  lw         $s0, 0x170($v0)
  .L800B5BF8:
    /* A63F8 800B5BF8 00000000 */  nop
    /* A63FC 800B5BFC 0800028E */  lw         $v0, 0x8($s0)
    /* A6400 800B5C00 00000000 */  nop
    /* A6404 800B5C04 00004490 */  lbu        $a0, 0x0($v0)
    /* A6408 800B5C08 BD87030C */  jal        func_800E1EF4
    /* A640C 800B5C0C 00000000 */   nop
    /* A6410 800B5C10 FF004230 */  andi       $v0, $v0, 0xFF
    /* A6414 800B5C14 02006216 */  bne        $s3, $v0, .L800B5C20
    /* A6418 800B5C18 00000000 */   nop
    /* A641C 800B5C1C 21900002 */  addu       $s2, $s0, $zero
  .L800B5C20:
    /* A6420 800B5C20 06004016 */  bnez       $s2, .L800B5C3C
    /* A6424 800B5C24 01003126 */   addiu     $s1, $s1, 0x1
    /* A6428 800B5C28 D007222A */  slti       $v0, $s1, 0x7D0
    /* A642C 800B5C2C EBFF4014 */  bnez       $v0, .L800B5BDC
    /* A6430 800B5C30 00000000 */   nop
    /* A6434 800B5C34 7A004012 */  beqz       $s2, .L800B5E20
    /* A6438 800B5C38 00000000 */   nop
  .L800B5C3C:
    /* A643C 800B5C3C 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A6440 800B5C40 21284002 */  addu       $a1, $s2, $zero
    /* A6444 800B5C44 6ED1020C */  jal        func_800B45B8
    /* A6448 800B5C48 01000624 */   addiu     $a2, $zero, 0x1
    /* A644C 800B5C4C 88D70208 */  j          .L800B5E20
    /* A6450 800B5C50 00000000 */   nop
  .L800B5C54:
    /* A6454 800B5C54 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A6458 800B5C58 00000000 */  nop
    /* A645C 800B5C5C 3000428C */  lw         $v0, 0x30($v0)
    /* A6460 800B5C60 00000000 */  nop
    /* A6464 800B5C64 24104300 */  and        $v0, $v0, $v1
    /* A6468 800B5C68 07004010 */  beqz       $v0, .L800B5C88
    /* A646C 800B5C6C 00000000 */   nop
    /* A6470 800B5C70 DAD1020C */  jal        func_800B4768
    /* A6474 800B5C74 00000000 */   nop
    /* A6478 800B5C78 88D70208 */  j          .L800B5E20
    /* A647C 800B5C7C 00000000 */   nop
  .L800B5C80:
    /* A6480 800B5C80 3ED70208 */  j          .L800B5CF8
    /* A6484 800B5C84 21982002 */   addu      $s3, $s1, $zero
  .L800B5C88:
    /* A6488 800B5C88 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A648C 800B5C8C 00000000 */  nop
    /* A6490 800B5C90 21184000 */  addu       $v1, $v0, $zero
    /* A6494 800B5C94 2800428C */  lw         $v0, 0x28($v0)
    /* A6498 800B5C98 00000000 */  nop
    /* A649C 800B5C9C 31004010 */  beqz       $v0, .L800B5D64
    /* A64A0 800B5CA0 FFFF1324 */   addiu     $s3, $zero, -0x1
    /* A64A4 800B5CA4 14004018 */  blez       $v0, .L800B5CF8
    /* A64A8 800B5CA8 21880000 */   addu      $s1, $zero, $zero
    /* A64AC 800B5CAC FF009032 */  andi       $s0, $s4, 0xFF
    /* A64B0 800B5CB0 80101100 */  sll        $v0, $s1, 2
  .L800B5CB4:
    /* A64B4 800B5CB4 21104300 */  addu       $v0, $v0, $v1
    /* A64B8 800B5CB8 3C02428C */  lw         $v0, 0x23C($v0)
    /* A64BC 800B5CBC 00000000 */  nop
    /* A64C0 800B5CC0 00004490 */  lbu        $a0, 0x0($v0)
    /* A64C4 800B5CC4 BD87030C */  jal        func_800E1EF4
    /* A64C8 800B5CC8 00000000 */   nop
    /* A64CC 800B5CCC FF004230 */  andi       $v0, $v0, 0xFF
    /* A64D0 800B5CD0 EBFF0212 */  beq        $s0, $v0, .L800B5C80
    /* A64D4 800B5CD4 00000000 */   nop
    /* A64D8 800B5CD8 01003126 */  addiu      $s1, $s1, 0x1
    /* A64DC 800B5CDC 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A64E0 800B5CE0 00000000 */  nop
    /* A64E4 800B5CE4 2800628C */  lw         $v0, 0x28($v1)
    /* A64E8 800B5CE8 00000000 */  nop
    /* A64EC 800B5CEC 2A102202 */  slt        $v0, $s1, $v0
    /* A64F0 800B5CF0 F0FF4014 */  bnez       $v0, .L800B5CB4
    /* A64F4 800B5CF4 80101100 */   sll       $v0, $s1, 2
  .L800B5CF8:
    /* A64F8 800B5CF8 1A006006 */  bltz       $s3, .L800B5D64
    /* A64FC 800B5CFC 00000000 */   nop
    /* A6500 800B5D00 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A6504 800B5D04 00000000 */  nop
    /* A6508 800B5D08 2400628C */  lw         $v0, 0x24($v1)
    /* A650C 800B5D0C 00000000 */  nop
    /* A6510 800B5D10 21102202 */  addu       $v0, $s1, $v0
    /* A6514 800B5D14 40200200 */  sll        $a0, $v0, 1
    /* A6518 800B5D18 21208200 */  addu       $a0, $a0, $v0
    /* A651C 800B5D1C 80200400 */  sll        $a0, $a0, 2
    /* A6520 800B5D20 23208200 */  subu       $a0, $a0, $v0
    /* A6524 800B5D24 80200400 */  sll        $a0, $a0, 2
    /* A6528 800B5D28 B801628C */  lw         $v0, 0x1B8($v1)
    /* A652C 800B5D2C 44D9030C */  jal        func_800F6510
    /* A6530 800B5D30 21208200 */   addu      $a0, $a0, $v0
    /* A6534 800B5D34 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A6538 800B5D38 64002326 */  addiu      $v1, $s1, 0x64
    /* A653C 800B5D3C 24004494 */  lhu        $a0, 0x24($v0)
    /* A6540 800B5D40 00000000 */  nop
    /* A6544 800B5D44 21208300 */  addu       $a0, $a0, $v1
    /* A6548 800B5D48 00240400 */  sll        $a0, $a0, 16
    /* A654C 800B5D4C 32D2020C */  jal        func_800B48C8
    /* A6550 800B5D50 03240400 */   sra       $a0, $a0, 16
    /* A6554 800B5D54 88D70208 */  j          .L800B5E20
    /* A6558 800B5D58 00000000 */   nop
  .L800B5D5C:
    /* A655C 800B5D5C 70D70208 */  j          .L800B5DC0
    /* A6560 800B5D60 21900002 */   addu      $s2, $s0, $zero
  .L800B5D64:
    /* A6564 800B5D64 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A6568 800B5D68 00000000 */  nop
    /* A656C 800B5D6C 1C00628C */  lw         $v0, 0x1C($v1)
    /* A6570 800B5D70 00000000 */  nop
    /* A6574 800B5D74 2A004010 */  beqz       $v0, .L800B5E20
    /* A6578 800B5D78 21900000 */   addu      $s2, $zero, $zero
    /* A657C 800B5D7C 7001708C */  lw         $s0, 0x170($v1)
    /* A6580 800B5D80 00000000 */  nop
    /* A6584 800B5D84 0E000012 */  beqz       $s0, .L800B5DC0
    /* A6588 800B5D88 21980000 */   addu      $s3, $zero, $zero
    /* A658C 800B5D8C FF009132 */  andi       $s1, $s4, 0xFF
  .L800B5D90:
    /* A6590 800B5D90 0800028E */  lw         $v0, 0x8($s0)
    /* A6594 800B5D94 00000000 */  nop
    /* A6598 800B5D98 00004490 */  lbu        $a0, 0x0($v0)
    /* A659C 800B5D9C BD87030C */  jal        func_800E1EF4
    /* A65A0 800B5DA0 00000000 */   nop
    /* A65A4 800B5DA4 FF004230 */  andi       $v0, $v0, 0xFF
    /* A65A8 800B5DA8 ECFF2212 */  beq        $s1, $v0, .L800B5D5C
    /* A65AC 800B5DAC 00000000 */   nop
    /* A65B0 800B5DB0 0C00108E */  lw         $s0, 0xC($s0)
    /* A65B4 800B5DB4 00000000 */  nop
    /* A65B8 800B5DB8 F5FF0016 */  bnez       $s0, .L800B5D90
    /* A65BC 800B5DBC 01007326 */   addiu     $s3, $s3, 0x1
  .L800B5DC0:
    /* A65C0 800B5DC0 17004012 */  beqz       $s2, .L800B5E20
    /* A65C4 800B5DC4 00000000 */   nop
    /* A65C8 800B5DC8 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A65CC 800B5DCC 00000000 */  nop
    /* A65D0 800B5DD0 3000628C */  lw         $v0, 0x30($v1)
    /* A65D4 800B5DD4 00000000 */  nop
    /* A65D8 800B5DD8 00104230 */  andi       $v0, $v0, 0x1000
    /* A65DC 800B5DDC 08004010 */  beqz       $v0, .L800B5E00
    /* A65E0 800B5DE0 002C1300 */   sll       $a1, $s3, 16
    /* A65E4 800B5DE4 BC01628C */  lw         $v0, 0x1BC($v1)
    /* A65E8 800B5DE8 00000000 */  nop
    /* A65EC 800B5DEC 1400448C */  lw         $a0, 0x14($v0)
    /* A65F0 800B5DF0 135D020C */  jal        func_8009744C
    /* A65F4 800B5DF4 032C0500 */   sra       $a1, $a1, 16
    /* A65F8 800B5DF8 88D70208 */  j          .L800B5E20
    /* A65FC 800B5DFC 00000000 */   nop
  .L800B5E00:
    /* A6600 800B5E00 3000628C */  lw         $v0, 0x30($v1)
    /* A6604 800B5E04 00000000 */  nop
    /* A6608 800B5E08 04004230 */  andi       $v0, $v0, 0x4
    /* A660C 800B5E0C 04004014 */  bnez       $v0, .L800B5E20
    /* A6610 800B5E10 00000000 */   nop
    /* A6614 800B5E14 AC01628C */  lw         $v0, 0x1AC($v1)
    /* A6618 800B5E18 00000000 */  nop
    /* A661C 800B5E1C 300053A4 */  sh         $s3, 0x30($v0)
  .L800B5E20:
    /* A6620 800B5E20 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* A6624 800B5E24 2800B48F */  lw         $s4, 0x28($sp)
    /* A6628 800B5E28 2400B38F */  lw         $s3, 0x24($sp)
    /* A662C 800B5E2C 2000B28F */  lw         $s2, 0x20($sp)
    /* A6630 800B5E30 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A6634 800B5E34 1800B08F */  lw         $s0, 0x18($sp)
    /* A6638 800B5E38 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A663C 800B5E3C 0800E003 */  jr         $ra
    /* A6640 800B5E40 00000000 */   nop
endlabel func_800B5B40
