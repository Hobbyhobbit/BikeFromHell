
TARGET=blink

# goto __END__

### for compiling/converting
MCU = atmega328p
F_CPU = 16000000
CDEFS = -DF_CPU=$(F_CPU)
CSTANDARD = #-std=gnu99
CDEBUG = -g$(DEBUG)
CWARN = -Wall #-Wstrict-prototypes
CTUNING = -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums
#CEXTRA = -Wa,-adhlns=$(<:.c=.lst)
CFLAGS = $(CDEBUG) $(CDEFS) $(CINCS) -O$(OPT) $(CWARN) $(CSTANDARD) $(CEXTRA)
#ASFLAGS = -Wa,-adhlns=$(<:.S=.lst),-gstabs 
LDFLAGS = -lm
ALL_CFLAGS = -mmcu=$(MCU) -I. $(CFLAGS)
ALL_ASFLAGS = -mmcu=$(MCU) -I. -x assembler-with-cpp $(ASFLAGS)
FORMAT = ihex

# Program settings
AVR_TOOLS_PATH=/usr/local/CrossPack-AVR/bin
CC = $(AVR_TOOLS_PATH)/avr-gcc
CXX = $(AVR_TOOLS_PATH)/avr-g++
OBJCOPY = $(AVR_TOOLS_PATH)/avr-objcopy
OBJDUMP = $(AVR_TOOLS_PATH)/avr-objdump
AR  = $(AVR_TOOLS_PATH)/avr-ar
SIZE = $(AVR_TOOLS_PATH)/avr-size
NM = $(AVR_TOOLS_PATH)/avr-nm
AVRDUDE = $(AVR_TOOLS_PATH)/avrdude
REMOVE = rm -f
MV = mv -f


### for programming
PORT = /dev/tty.usbserial-A600ad00
UPLOAD_RATE = 57600
AVRDUDE_PROGRAMMER = stk500v1
PYTHON = /usr/bin/python
PULSEDTR = $(PYTHON) $(dir $(firstword $(MAKEFILE_LIST)))../pulsedtr.py
AVRDUDE_PORT = $(PORT)
AVRDUDE_WRITE_FLASH = -U flash:w:$(TARGET).hex
#AVRDUDE_FLAGS = -V -F -C $(INSTALL_DIR)/hardware/tools/avrdude.conf 
AVRDUDE_FLAGS = -V -F \
-p $(MCU) -P $(AVRDUDE_PORT) -c $(AVRDUDE_PROGRAMMER) \
-b $(UPLOAD_RATE) -v #-v -v -v
# those are :
#  -V : disable automatic verify check
#  -F : disable device signature check
#  -C : use our own config file...
#  -p : type of the MCU connected to the programmer
#  -P : port to use
#  -c : programmer to use (pin arrangement)
#  -b : baudrate


#OBJ = $(SRC:.c=.o) $(CXXSRC:.cpp=.o) $(ASRC:.S=.o) 
#ASS = $(SRC:.c=.s) $(CXXSRC:.cpp=.s)
#LST = $(ASRC:.S=.lst) $(CXXSRC:.cpp=.lst) $(SRC:.c=.lst)


.SUFFIXES: .elf .hex .eep .lss .sym

.elf.hex:
	$(OBJCOPY) -O $(FORMAT) -R .eeprom $< $@

.elf.eep:
	-$(OBJCOPY) -j .eeprom --set-section-flags=.eeprom="alloc,load" \
	--change-section-lma .eeprom=0 -O $(FORMAT) $< $@

# Create extended listing file from ELF output file.
.elf.lss:
	$(OBJDUMP) -h -S $< > $@

# Create a symbol table from ELF output file.
.elf.sym:
	$(NM) -n $< > $@

# Compile: create object files from C++ source files.
.cpp.o:
	$(CXX) -c $(ALL_CXXFLAGS) $< -o $@ 

# Compile: create object files from C source files.
.c.o:
	$(CC) -c $(ALL_CFLAGS) $< -o $@ 

# Compile: create assembler files from C++ source files.
.cpp.s:
	$(CXX) -S $(ALL_CXXFLAGS) $< -o $@ 

# Compile: create assembler files from C source files.
.c.s:
	$(CC) -S $(ALL_CFLAGS) $< -o $@

# Assemble: create object files from assembler source files.
.S.o:
	$(CC) -c $(ALL_ASFLAGS) $< -o $@


all: $(TARGET).hex

clean:
	rm *.o *.hex *.elf 2>/dev/null

blink.elf: blink.o flash.o
	$(CC) -o $@ $(ALL_CFLAGS) $(LDFLAGS) $^

test_flash.elf: test_flash.o flash.o
	$(CC) -o $@ $(ALL_CFLAGS) $(LDFLAGS) $^

test_uart_ISR.elf: test_uart_ISR.o flash.o uart.o
	$(CC) -o $@ $(ALL_CFLAGS) $(LDFLAGS) $^

test_protocol.elf: test_protocol.o flash.o uart.o util.o timer.o
	$(CC) -o $@ $(ALL_CFLAGS) $(LDFLAGS) $^

test_timer.elf: test_timer.o flash.o timer.o
	$(CC) -o $@ $(ALL_CFLAGS) $(LDFLAGS) $^

test_uart_link.elf: test_uart_link.o uart.o
	$(CC) -o $@ $(ALL_CFLAGS) $(LDFLAGS) $^

upload: $(TARGET).hex
	$(PULSEDTR) $(PORT)
	$(AVRDUDE) $(AVRDUDE_FLAGS) $(AVRDUDE_WRITE_FLASH)

