.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A1428, 0x50

glabel func_800A1428
    /* 91C28 800A1428 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 91C2C 800A142C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 91C30 800A1430 35DE030C */  jal        func_800F78D4
    /* 91C34 800A1434 00000000 */   nop
    /* 91C38 800A1438 02004014 */  bnez       $v0, .L800A1444
    /* 91C3C 800A143C D4FF4424 */   addiu     $a0, $v0, -0x2C
    /* 91C40 800A1440 21200000 */  addu       $a0, $zero, $zero
  .L800A1444:
    /* 91C44 800A1444 28028284 */  lh         $v0, 0x228($a0)
    /* 91C48 800A1448 00000000 */  nop
    /* 91C4C 800A144C 05004014 */  bnez       $v0, .L800A1464
    /* 91C50 800A1450 01000224 */   addiu     $v0, $zero, 0x1
    /* 91C54 800A1454 83EB030C */  jal        func_800FAE0C
    /* 91C58 800A1458 2C008424 */   addiu     $a0, $a0, 0x2C
    /* 91C5C 800A145C 1A850208 */  j          .L800A1468
    /* 91C60 800A1460 21100000 */   addu      $v0, $zero, $zero
  .L800A1464:
    /* 91C64 800A1464 2A0280A4 */  sh         $zero, 0x22A($a0)
  .L800A1468:
    /* 91C68 800A1468 1000BF8F */  lw         $ra, 0x10($sp)
    /* 91C6C 800A146C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 91C70 800A1470 0800E003 */  jr         $ra
    /* 91C74 800A1474 00000000 */   nop
endlabel func_800A1428
