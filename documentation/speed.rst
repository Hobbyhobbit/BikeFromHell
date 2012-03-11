
***********
About Speed
***********

Loading Data into LEDs
======================

It is crucial that data is loaded into the :ref:`CAT4016` shift
register fast enough to realize the desired pictures. Especially, if
``PWM`` is to work properly, the shift registers must be loaded
fast enough that every "pixel" actually achieves the desired ``PWM``
resolution.


The following examples were calculated by  :download:`a python script <scripts/speed_PWM.py>`

  - ``16 RGB`` LEDs with ``4bit PWM`` need a shift-register update-rate
    of ``0.78 MHz`` at ``30km/h``


arduino-bit-banging
-------------------

bit-banging the values manually to the digital I/O port using the
library function `digitalWrite`

.. sourcecode:: cpp

  for (int i=0; i<16; i++) {
    digitalWrite(CLK1,LOW);
    digitalWrite(CLK2,LOW);
    tinynap();
   
    // Faint LEDs
    if ( reg[0][i] ) {
      digitalWrite(SIN2,HIGH);
    }
    else {
      digitalWrite(SIN2,LOW);
    }
    
    // Bright LEDs
    if ( reg[1][i] ) {
      digitalWrite(SIN1,HIGH);
    }
    else {
      digitalWrite(SIN1,LOW);
    }
    
    digitalWrite(CLK1,HIGH); digitalWrite(CLK2,HIGH);
    tinynap();
  }


even before considering the generated assembler code, it becomes
obvious pretty fast that this is not a particularly efficient
implementation; let's first have a look at the implementation of
`digitalWrite` which can be found in `$CORE/wiring_digital.c`


.. sourcecode:: cpp

  void digitalWrite(uint8_t pin, uint8_t val)
  {
    uint8_t timer = digitalPinToTimer(pin);
    uint8_t bit = digitalPinToBitMask(pin);
    uint8_t port = digitalPinToPort(pin);
    volatile uint8_t* out;

    if (port == NOT_A_PIN) return;

    // If the pin that support PWM output, we need to turn it off
    // before doing a digital write.
    if (timer != NOT_ON_TIMER) turnOffPWM(timer);

    out = portOutputRegister(port);

    uint8_t oldSREG = SREG;
    cli();

    if (val == LOW) {
      * out &= ~bit;
    } else {
      * out | = bit;
    }

    SREG = oldSREG;
  }

all these tests are obviously not necessary if you know what you're
doing; the above code translates to 55 assembler instructions that
are executed every time the output pin is set/cleared...


iterating through const int[][][]
---------------------------------

before every write the array is "translated" in a nested for-loop

.. sourcecode:: cpp

  for (int i=0; i<15; i++){
    reg[0][ pin_set[0][i/3][i%3]-1 ] = LED_val[4-i/3][i%3] % 2;
    reg[1][ pin_set[1][i/3][i%3]-1 ] = LED_val[4-i/3][i%3] / 2;
  }

only the implementation of the loop translates to 83 instructions;
moreover, the `i/3` and `i%3` cannot be calculated directly by
the AVR, but are implemented by the compiler that performs a quite
tedious nested algorithm each time...

