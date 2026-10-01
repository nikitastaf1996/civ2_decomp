.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008C68C, 0x54

glabel func_8008C68C
    /* 7CE8C 8008C68C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7CE90 8008C690 2110A000 */  addu       $v0, $a1, $zero
    /* 7CE94 8008C694 05004104 */  bgez       $v0, .L8008C6AC
    /* 7CE98 8008C698 1000BFAF */   sw        $ra, 0x10($sp)
    /* 7CE9C 8008C69C 731B030C */  jal        func_800C6DCC
    /* 7CEA0 8008C6A0 0E000524 */   addiu     $a1, $zero, 0xE
    /* 7CEA4 8008C6A4 B4310208 */  j          .L8008C6D0
    /* 7CEA8 8008C6A8 00000000 */   nop
  .L8008C6AC:
    /* 7CEAC 8008C6AC 40280200 */  sll        $a1, $v0, 1
    /* 7CEB0 8008C6B0 2128A200 */  addu       $a1, $a1, $v0
    /* 7CEB4 8008C6B4 80280500 */  sll        $a1, $a1, 2
    /* 7CEB8 8008C6B8 2328A200 */  subu       $a1, $a1, $v0
    /* 7CEBC 8008C6BC C0280500 */  sll        $a1, $a1, 3
    /* 7CEC0 8008C6C0 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 7CEC4 8008C6C4 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 7CEC8 8008C6C8 801B030C */  jal        func_800C6E00
    /* 7CECC 8008C6CC 2128A200 */   addu      $a1, $a1, $v0
  .L8008C6D0:
    /* 7CED0 8008C6D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7CED4 8008C6D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7CED8 8008C6D8 0800E003 */  jr         $ra
    /* 7CEDC 8008C6DC 00000000 */   nop
endlabel func_8008C68C
