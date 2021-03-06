
*****************************
Information on Hardware-Parts
*****************************


Bill of Materials
=================

Prototype v1
------------

+---------------+--------+-------+-----------+
| part          | number | value | footprint |
+===============+========+=======+===========+
| LED           | 5      | blue  | 3528      |
+---------------+--------+-------+-----------+
| LED           | 5      | green | 3528      |
+---------------+--------+-------+-----------+
| LED           | 5      | red   | 0805      |
+---------------+--------+-------+-----------+
| capacitor     | 4      | 500nF | pth-small |
+---------------+--------+-------+-----------+
| resistors     | 1      | ???   | 0204      |
+---------------+--------+-------+-----------+
| resistors     | 1      | ???   | 0204      |
+---------------+--------+-------+-----------+
| potentiometer | 1      | ???   | 3165      |
+---------------+--------+-------+-----------+
| potentiometer | 1      | ???   | 3165      |
+---------------+--------+-------+-----------+

.. todo::

  update values/footprints for prototype v1 board

Prototype v2
------------

+----------------+--------+-------+------------+
| part           | number | value | footprint  |
+================+========+=======+============+
| Multi-LED      | 5      | RGB   | P-LCC-6    |
+----------------+--------+-------+------------+
| capacitor      | 3      | ?     | A/3216-18W |
+----------------+--------+-------+------------+
| resistor       | 1      | 2.2k  | 0204/7     |
+----------------+--------+-------+------------+
| resistor       | 1      | 5.6k  | 0204/7     |
+----------------+--------+-------+------------+
| resistor       | 1      | 22k   | 0204/7     |
+----------------+--------+-------+------------+
| trimm resistor | 1      | 10k   | RTRIM3165W |
+----------------+--------+-------+------------+
| trimm resistor | 1      | 50k   | RTRIM3165W |
+----------------+--------+-------+------------+
| trimm resistor | 1      | 100k  | RTRIM3165W |
+----------------+--------+-------+------------+
| CAT4016        | 3      | ?     | SOIC24W    |
+----------------+--------+-------+------------+


Costs
-----

+-------------+------------+-----+------+
| Merchant    | Part       | Qty | Cost |
+=============+============+=====+======+
| Goodluckbuy | Bluetooth  | 3   | 20.- |
+-------------+------------+-----+------+
| Reichelt    | Multi-LEDs | 50  | 68.- |
+-------------+------------+-----+------+
| Bastli      | CATs       | 5   | 12.- |
+-------------+------------+-----+------+
| Bastli      | PCB-prod   | 2   | 10.- |
+-------------+------------+-----+------+


Details from Datasheets
=======================

.. _TLC5940:

TLC5940
-------

:download:`download datasheet <datasheets/TLC5940.pdf>`


  - `TCL5940 at farnell`_
  - 16 channels
  - 12 bit PWM control
  - serial data interface (30 MHz data transfer rate)
  - drives up to 60 mA (with VCC<3.5 V) -- up to 120 mA (3.5<VCC<5 V)
  - error detection : open LED, thermal
  - reference current : ``IREF`` fixed to 1.24 V; multiplied with 31.5
  - voltage drop 0.5 V for 40 mA output current
  - linear dot correction (6bit for each channel)
  - serial interface

    - reads data on raising SCLK
    - MSB first, OUT15 first -- 192 bits for output registers
      ("GS mode" for grayscale)
    - XLAT high pulse latches data to output registers
    - VPRG=1 to set dot correction values ("DC mode") -- 96 bits
    - after XLAT pulse, internal SR is set with status information
      (LOD data, TEF data, DC values) -- can be read out via sout
      
  - GSCLK must be clocked externally; BLANK must be pulled high every
    4096 cycles to reset internal PWM counter -- else all outputs
    turn off

.. _TCL5940 at farnell: http://ch.farnell.com/texas-instruments/tlc5940pwp/led-treiberr-pwm-control-28-tssop/dp/1755256


.. _CAT4016:

CAT4016
-------

:download:`download datasheet <datasheets/CAT4016-D.PDF>`

a 16 channel constant current LED driver. The current sunk into 
each of the 16 pins can be set by an external resistor. The
individual channels are then read in via a SPI compatible interface
and can then be latched from the internal shift register to the
output.

some characteristics

  - serial interface up to 25 MHz
  - current 2-100 mA
  - supply current <10 mA

the current *on each pin* is equal to 50x the current drawn from
pin ``RSET`` -- see :ref:`calculating-cat4016-current`


Other Microcontrollers From Atmel
---------------------------------

  - `AT32UC3B064 <http://ch.farnell.com/atmel/at32uc3b064-a2ut/mcu-32bit-64k-flash-uc3b-64qfp/dp/1841641>`_

    - 16k SRAM
    - 10 sfr

  - `ATXMEGA192A3U <http://ch.farnell.com/atmel/atxmega192a3u-au/mcu-8bit-avr-64tqfp/dp/2066303?in_merch=New%20Products>`_

    - 16k SRAM
    - 13 sfr


.. _ATMEGA328P:

ATMEGA328P
-----------

:download:`download datasheet <datasheets/ATMEGA328P.pdf>`

you might also want to have a look at the
:download:`arduino duemilanove schematics <datasheets/arduino-duemilanove-schematic.pdf>`

CPU :

  - 16Mhz (up to 20Mhz); most instructions single cycle
  - 8bit data bus
  - 32 general purpose working registers

accessing memory :

  - program memory (10k+ cycles)

    - boot-loader (highest addresses), application memory
    - 32k 
    - e.g. constants accessed via `LPM` instruction

  - data memory

    - 2k
    - ``0000-001F`` : GP registers
    - ``0020-005F`` : i/o registers (`IN`, `OUT` instructions)
    - ``0060-00FF`` : extended i/o registers (`ST/STS/STD`, `LD/LDS/LDT` instructions)
    - ``0100-08FF`` : internal SRAM
    - direct addressing : entire space
    - indirect addressing : Y/Z-reg + 63 bytes
    - accessed in two cycles

  - EEPROM (100k+ cycles)
    - 1k

interrupts :

  - every interrupt must be enabled in status register
  - interrupt vector : 0000-0067 (26x 4 bytes)

    - the lower the addresse the higher the priority (RESET, INT0, INT1, ...)
    - 26 vectors, each 2 words (4 bytes)

  - global flag cleared when interrupt executed; set on `RETI`
  - on hardware interrupt corresponding interrupt disabled
  - interrupts remembered (flags set) when global/specific disabled; executed
    upon re-enabling of interrupts (in order of priority)
  - 2nd type of interrupts upon "condition"; will not be executed if condition
    disappeared before flags re-enabled
  - always >=1 instruction between two interrupts
  - SR must be (re-) stored in ISR
  - timing : 4+3 instructions before ISR execution, 4 instructions on return

SPI

  - maximum speed : ``f_osc/4`` in slave mode and ``f_osc/2`` in master mode
    (when ``SPI2X`` double speed bit is set logic one)

LEDs
----

  - :download:`LRTB G6TG (OSRAM) <datasheets/LRTBG6TG.pdf>`
  - :download:`ASMT-YTC2 (avago) <datasheets/ASMT-YTC2.pdf>`

    - 120 degree viewing angle
    - max DC current 50 mA (peak 100 mA), recommended 20 mA

  - :download:`OVSRRGBCC3 (OPTEK) <datasheets/OVSRRGBCC3.pdf>`

Hall sensors
------------

:download:`TLE49X5 (Siemens) <datasheets/TLE49X5.pdf>`

  - with schmitt triggers
  - open collector output
  - ``TLE4905`` switches between 0 // 10 mT
  - ``TLE4935`` switches between -10 // +10 mT

