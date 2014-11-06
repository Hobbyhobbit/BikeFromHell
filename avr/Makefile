
# using GNU make

## project specific; TARGET is name of product (without extension)
## SOURCES are .c files used to compile TARGET
## define these values BEFORE including the makefile
TARGET := $(TARGET)
SOURCES := $(SOURCES)

## where to find executables -- this setup uses avrdude installed
## locally and the other tools from the default OSX installation
AVRDUDE=avrdude
AVRBASE= /Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr
INCLUDEDIR=$(BASE)/avr/include
CC=$(AVRBASE)/bin/avr-gcc
OBJCOPY=$(AVRBASE)/bin/avr-objcopy
SIZE=$(AVRBASE)/bin/avr-size


## board specific settings -- best to write a "Makefile.board" that
## defines these values and includes the current Makefile
## make sure to re-define these values AFTER including the makefile
## alternatively, these can also be overriden on the command line
## $ make FREQ=8000000 PART=atmega328p
FREQ=16000000
MODEM=/dev/tty.usb*
PART=
BOARD=
PROGRAMMER=
BAUDRATE=

CFLAGS=-I$(INCLUDEDIR) -I. -DF_CPU=$(FREQ) -DBOARD_$(BOARD) -mmcu=$(PART) -Os -Wall
LDFLAGS=-lm
AVRFLAGS=-v -p $(PART) -P $(MODEM) -c $(PROGRAMMER) -b $(BAUDRATE)
MOREAVRFLAGS=


# default target : build hex file
all: $(TARGET).hex


$(TARGET).elf: $(addsuffix .o, $(basename $(SOURCES)))
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

%.hex: %.elf
	$(OBJCOPY) -O ihex -R .eeprom $< $@
	$(SIZE) --target=ihex $@

upload: $(TARGET).hex
	$(AVRDUDE) $(AVRFLAGS) $(MOREAVRFLAGS) -U flash:w:$<:i

clean:
	rm *.elf *.hex *.o

.PHONY: clean upload

