.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB094, 0x5C

glabel func_800CB094
    /* BB894 800CB094 1000AA8F */  lw         $t2, 0x10($sp)
    /* BB898 800CB098 1400A38F */  lw         $v1, 0x14($sp)
    /* BB89C 800CB09C 1800AB8F */  lw         $t3, 0x18($sp)
    /* BB8A0 800CB0A0 800C888C */  lw         $t0, 0xC80($a0)
    /* BB8A4 800CB0A4 00000000 */  nop
    /* BB8A8 800CB0A8 C8000229 */  slti       $v0, $t0, 0xC8
    /* BB8AC 800CB0AC 0E004010 */  beqz       $v0, .L800CB0E8
    /* BB8B0 800CB0B0 FFFF0924 */   addiu     $t1, $zero, -0x1
    /* BB8B4 800CB0B4 01000225 */  addiu      $v0, $t0, 0x1
    /* BB8B8 800CB0B8 800C82AC */  sw         $v0, 0xC80($a0)
    /* BB8BC 800CB0BC 21480001 */  addu       $t1, $t0, $zero
    /* BB8C0 800CB0C0 00110900 */  sll        $v0, $t1, 4
    /* BB8C4 800CB0C4 21104400 */  addu       $v0, $v0, $a0
    /* BB8C8 800CB0C8 000047A4 */  sh         $a3, 0x0($v0)
    /* BB8CC 800CB0CC 02004AA4 */  sh         $t2, 0x2($v0)
    /* BB8D0 800CB0D0 2118E300 */  addu       $v1, $a3, $v1
    /* BB8D4 800CB0D4 040043A4 */  sh         $v1, 0x4($v0)
    /* BB8D8 800CB0D8 21184B01 */  addu       $v1, $t2, $t3
    /* BB8DC 800CB0DC 060043A4 */  sh         $v1, 0x6($v0)
    /* BB8E0 800CB0E0 0C0045AC */  sw         $a1, 0xC($v0)
    /* BB8E4 800CB0E4 080046AC */  sw         $a2, 0x8($v0)
  .L800CB0E8:
    /* BB8E8 800CB0E8 0800E003 */  jr         $ra
    /* BB8EC 800CB0EC 21102001 */   addu      $v0, $t1, $zero
endlabel func_800CB094
