.DEFAULT_GOAL := all

TOOLCHAIN ?= mipsel-linux-gnu-
CPP := $(TOOLCHAIN)cpp
AS := $(TOOLCHAIN)as
LD := $(TOOLCHAIN)ld
OBJCOPY := $(TOOLCHAIN)objcopy

PYTHON := python3
SPLAT := $(PYTHON) -m splat split

CC1 := bin/gcc-2.7.2-psx/cc1
MASPSX := $(PYTHON) external/maspsx/maspsx.py

INC := -Iinclude -Iexternal/psyq_headers/psyq_lib47/include
CPPFLAGS := $(INC) -undef -nostdinc \
	-D__GNUC__=2 -Dmips -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx \
	-D_PSYQ -D__EXTENSIONS__ -D_MIPSEL -D_LANGUAGE_C -DLANGUAGE_C \
	-DVERSION_US
CC1FLAGS := -quiet -w -O1 -G8 -mips1 -mcpu=3000 -mgas -msoft-float \
	-fgnu-linker
MASPSX_WRAP := $(PYTHON) tools/maspsx_wrap.py
ASFLAGS := --defsym GLOBAL_JLABELS=1 -EL -march=r3000 -mtune=r3000 -no-pad-sections -O1 -G0 $(INC)

SLUS_C_OBJ := build/us/slus/src/slus/game.c.o
SLUS_ASM_SRC := $(shell find asm/us/slus -name '*.s' -not -path '*/nonmatchings/*' -not -path '*/matchings/*' -not -name 'game.s' 2>/dev/null)
SLUS_ASM_OBJ := $(SLUS_ASM_SRC:%.s=build/us/slus/%.s.o)

CIV2_C_OBJ := build/us/civ2/src/civ2/game.c.o
CIV2_ASM_SRC := $(shell find asm/us/civ2 -name '*.s' -not -path '*/nonmatchings/*' -not -path '*/matchings/*' -not -name 'game.s' 2>/dev/null)
CIV2_ASM_OBJ := $(CIV2_ASM_SRC:%.s=build/us/civ2/%.s.o)

all: build/us/SLUS_007.92 build/us/CIV2.EXE

compare: all
	@sha1sum -c config/us/SLUS_007.92.sha1 config/us/CIV2.EXE.sha1
	@cmp disks/us/SLUS_007.92 build/us/SLUS_007.92 && echo "build/us/SLUS_007.92: BYTE-FOR-BYTE IDENTICAL"
	@cmp disks/us/CIV2.EXE build/us/CIV2.EXE && echo "build/us/CIV2.EXE: BYTE-FOR-BYTE IDENTICAL"

build/us/SLUS_007.92: build/us/SLUS_007.92.elf
	$(OBJCOPY) -O binary $< $@
	@truncate -s %2048 $@

build/us/SLUS_007.92.elf: $(SLUS_C_OBJ) $(SLUS_ASM_OBJ) build/us/generated/slus.ld
	$(LD) -nostdlib --no-check-sections -Map build/us/SLUS_007.92.map \
		-T build/us/generated/slus.ld \
		-T build/us/generated/undefined_syms_auto_slus.txt \
		-T build/us/generated/undefined_funcs_auto_slus.txt \
		-o $@

build/us/CIV2.EXE: build/us/CIV2.EXE.elf
	$(OBJCOPY) -O binary $< $@
	@truncate -s %2048 $@

build/us/CIV2.EXE.elf: $(CIV2_C_OBJ) $(CIV2_ASM_OBJ) build/us/generated/civ2.ld
	$(LD) -nostdlib --no-check-sections -Map build/us/CIV2.EXE.map \
		-T build/us/generated/civ2.ld \
		-T build/us/generated/undefined_syms_auto_civ2.txt \
		-T build/us/generated/undefined_funcs_auto_civ2.txt \
		-o $@

build/us/slus/%.c.o: %.c
	@mkdir -p $(dir $@)
	$(CPP) $(CPPFLAGS) $< -o $(@:.o=.i)
	$(CC1) $(CC1FLAGS) -o $(@:.o=.cc1.s) $(@:.o=.i)
	$(MASPSX_WRAP) --bin slus --c-file $< --in-s $(@:.o=.cc1.s) --out-s $(@:.o=.s)
	$(AS) $(ASFLAGS) -o $@ $(@:.o=.s)
	@$(OBJCOPY) --set-section-alignment .rodata=4 --set-section-alignment .data=4 --set-section-alignment .bss=4 $@

build/us/civ2/%.c.o: %.c
	@mkdir -p $(dir $@)
	$(CPP) $(CPPFLAGS) $< -o $(@:.o=.i)
	$(CC1) $(CC1FLAGS) -o $(@:.o=.cc1.s) $(@:.o=.i)
	$(MASPSX_WRAP) --bin civ2 --c-file $< --in-s $(@:.o=.cc1.s) --out-s $(@:.o=.s)
	$(AS) $(ASFLAGS) -o $@ $(@:.o=.s)
	@$(OBJCOPY) --set-section-alignment .rodata=4 --set-section-alignment .data=4 --set-section-alignment .bss=4 $@

build/us/slus/%.s.o: %.s
	@mkdir -p $(dir $@)
	$(AS) $(ASFLAGS) -o $@ $<
	@$(OBJCOPY) --set-section-alignment .text=4 --set-section-alignment .rodata=4 --set-section-alignment .data=4 --set-section-alignment .bss=4 $@

build/us/civ2/%.s.o: %.s
	@mkdir -p $(dir $@)
	$(AS) $(ASFLAGS) -o $@ $<
	@$(OBJCOPY) --set-section-alignment .text=4 --set-section-alignment .rodata=4 --set-section-alignment .data=4 --set-section-alignment .bss=4 $@
