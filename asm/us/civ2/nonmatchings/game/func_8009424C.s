.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009424C, 0x4C

glabel func_8009424C
    /* 84A4C 8009424C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 84A50 80094250 002C0500 */  sll        $a1, $a1, 16
    /* 84A54 80094254 032C0500 */  sra        $a1, $a1, 16
    /* 84A58 80094258 0500A228 */  slti       $v0, $a1, 0x5
    /* 84A5C 8009425C 0A004010 */  beqz       $v0, .L80094288
    /* 84A60 80094260 1000BFAF */   sw        $ra, 0x10($sp)
    /* 84A64 80094264 40110500 */  sll        $v0, $a1, 5
    /* 84A68 80094268 23104500 */  subu       $v0, $v0, $a1
    /* 84A6C 8009426C 40100200 */  sll        $v0, $v0, 1
    /* 84A70 80094270 04004224 */  addiu      $v0, $v0, 0x4
    /* 84A74 80094274 CC0182A4 */  sh         $v0, 0x1CC($a0)
    /* 84A78 80094278 30000224 */  addiu      $v0, $zero, 0x30
    /* 84A7C 8009427C CE0182A4 */  sh         $v0, 0x1CE($a0)
    /* 84A80 80094280 9424040C */  jal        func_80109250
    /* 84A84 80094284 C4008424 */   addiu     $a0, $a0, 0xC4
  .L80094288:
    /* 84A88 80094288 1000BF8F */  lw         $ra, 0x10($sp)
    /* 84A8C 8009428C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 84A90 80094290 0800E003 */  jr         $ra
    /* 84A94 80094294 00000000 */   nop
endlabel func_8009424C
