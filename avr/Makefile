
# using GNU make

## project specific; TARGET is name of product (without extension)
## SOURCES are .c files used to compile TARGET
#TARGET=
#SOURCES=

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
## alternatively, these can also be overriden on the command line
## $ make FREQ=8000000 PART=atmega328p
FREQ=16000000
PART=
MODEM=/dev/tty.usb*
PROGRAMMER=
BAUDRATE=

CFLAGS=-I$(INCLUDEDIR) -DF_CPU=$(FREQ) -mmcu=$(PART) -Os -Wall
LDFLAGS=-lm
AVRFLAGS=-v -p $(PART) -P $(MODEM) -c $(PROGRAMMER) -b $(BAUDRATE)
MOREAVRFLAGS=


# default target : build hex file
all: $(TARGET).hex


#$(TARGET).elf: $(addsuffix .o, $(basename $(SOURCES)))
$(TARGET).elf: $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

%.hex: %.elf
	$(OBJCOPY) -O ihex -R .eeprom $< $@
	$(SIZE) --target=ihex $@

upload: $(TARGET).hex
	$(AVRDUDE) $(AVRFLAGS) $(MOREAVRFLAGS) -U flash:w:$@:i

clean:
	rm *.elf *.hex *.o

.PHONY: clean upload

