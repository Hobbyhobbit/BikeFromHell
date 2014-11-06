
**********
Prototypes
**********

Version 1
=========

  - a single :ref:`CAT4016`
  - 5 RGB LEDs


Version 2
=========

  - three :ref:`CAT4016` to achieve different intensities
  - 5 RGB LEDs


Version 3
=========

  - two :ref:`TLC5940`
  - 10 RGB LEDs

Modified fuses
--------------

Original Fuses on Arduino Uno:

  - L: FF
  - H: D6
  - E: 05

Fuses required for hardware clock:

  - L: BF

::
    avrdude -c usbasp - atmega328p -U lfuse:w:0xBF:m

