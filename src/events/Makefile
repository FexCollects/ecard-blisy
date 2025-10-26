REGION ?= EN

PAYLOADS := $(patsubst %.asm, build/$(REGION)/%.mev, $(filter-out payload/prologue.asm, $(wildcard payload/*.asm)))
CARDS := $(patsubst %.asm, build/$(REGION)/%-01.raw, $(wildcard 78-C*.asm))
	
all: $(CARDS) 

build/$(REGION)/payload/%.tx: payload/%.asm
	python3 ../scripts/regionalize.py $< $@ $(REGION) $(REGION)
build/$(REGION)/payload/%.o: build/$(REGION)/payload/%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -o $@ $<
build/$(REGION)/payload/%.gbc: build/$(REGION)/payload/%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/$(REGION)/payload/%.bin: build/$(REGION)/payload/%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/$(REGION)/payload/%.mev: build/$(REGION)/payload/%.bin
	python3 ../scripts/checksum.py $< $@

.PRECIOUS: build/$(REGION)/payload/%.tx build/$(REGION)/payload/%.bin build/$(REGION)/payload/%.mev

build/$(REGION)/78-C%.tx: 78-C%.asm build/$(REGION)/payload/prologue.bin $(PAYLOADS)
	python3 ../scripts/ereadertext.py $< $@ $(REGION)
build/$(REGION)/78-C%.o: build/$(REGION)/78-C%.tx
	../bin/rgbds/v0.9.1/rgbasm -M $@.d -I build -o $@ $<
build/$(REGION)/78-C%.gbc: build/$(REGION)/78-C%.o
	../bin/rgbds/v0.9.1/rgblink -o $@ $<
build/$(REGION)/78-C%.z80: build/$(REGION)/78-C%.gbc
	python3 ../scripts/stripgbc.py $< $@
build/$(REGION)/78-C%.vpk: build/$(REGION)/78-C%.z80
	../bin/nedc/v1.4/nevpk -c -i $< -o $@

# Sub maps 78-CXXX-01.raw -> 78-CXXX so the tool output matches what make is looking for
# TODO: Set fill and enable saving the program
build/$(REGION)/78-C%-01.raw: build/$(REGION)/78-C%.vpk
	../bin/nedc/v1.4/nedcmake -i $< -o $(subst -01.raw,,$@) -type 1 -region 1

.PRECIOUS: build/$(REGION)/78-C%.tx build/$(REGION)/78-C%.raw

# Automatically create build dirs if missing
# BUILD_DIRS=build build/payload/
# $(info $(shell mkdir -p $(BUILD_DIRS)))

.PHONY: clean
clean:
	rm -rf build # && mkdir -p $(BUILD_DIRS)

# Automatically generated dep files
-include build/EN/*.d
