.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B428, 0x60

glabel func_8001B428
    /* BC28 8001B428 0D80023C */  lui        $v0, %hi(D_800CC1F2)
    /* BC2C 8001B42C F2C14290 */  lbu        $v0, %lo(D_800CC1F2)($v0)
    /* BC30 8001B430 00000000 */  nop
    /* BC34 8001B434 12004010 */  beqz       $v0, .L8001B480
    /* BC38 8001B438 00000000 */   nop
    /* BC3C 8001B43C 09000324 */  addiu      $v1, $zero, 0x9
    /* BC40 8001B440 20000424 */  addiu      $a0, $zero, 0x20
    /* BC44 8001B444 2D000524 */  addiu      $a1, $zero, 0x2D
  .L8001B448:
    /* BC48 8001B448 0D80013C */  lui        $at, %hi(D_800CC1E8)
    /* BC4C 8001B44C 21082300 */  addu       $at, $at, $v1
    /* BC50 8001B450 E8C12290 */  lbu        $v0, %lo(D_800CC1E8)($at)
    /* BC54 8001B454 00000000 */  nop
    /* BC58 8001B458 06004414 */  bne        $v0, $a0, .L8001B474
    /* BC5C 8001B45C 00000000 */   nop
    /* BC60 8001B460 0D80013C */  lui        $at, %hi(D_800CC1E8)
    /* BC64 8001B464 21082300 */  addu       $at, $at, $v1
    /* BC68 8001B468 E8C125A0 */  sb         $a1, %lo(D_800CC1E8)($at)
    /* BC6C 8001B46C 206D0008 */  j          .L8001B480
    /* BC70 8001B470 00000000 */   nop
  .L8001B474:
    /* BC74 8001B474 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* BC78 8001B478 F3FF6104 */  bgez       $v1, .L8001B448
    /* BC7C 8001B47C 00000000 */   nop
  .L8001B480:
    /* BC80 8001B480 0800E003 */  jr         $ra
    /* BC84 8001B484 00000000 */   nop
endlabel func_8001B428
