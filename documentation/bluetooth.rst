***************************************
On Bluetooth Hardware and Communitation
***************************************


CSR BC417
=========

where to buy
  - `Deal Extreme <http://www.dealextreme.com/p/wireless-bluetooth-rs232-ttl-transceiver-module-80711>`_  
    ``$ 6.60``
  - `Goodluck Buy <http://www.goodluckbuy.com/serial-bluetooth-rf-transceiver-module-rs232.html>`_
    ``$ 6.77``

the pinout of the board as advertised on `Goodluck Buy <http://www.goodluckbuy.com/serial-bluetooth-rf-transceiver-module-rs232.html>`_

..img 

+-----+----------+
| PIN | function |
+=====+==========+
| 1   | TX       |
+-----+----------+
| 2   | RX       |
+-----+----------+
| 12  | 3.3V     |
+-----+----------+
| 13  | GND      |
+-----+----------+
| 21  | GND      |
+-----+----------+
| 22  | GND      |
+-----+----------+
| 24  | LED      |
+-----+----------+


some blogs about it
  - `endasmedia <http://endasmedia.ch/projects/bluetooth_telemetrie.php?start_from=5&ucat=&archive=&subaction=&id=&>`_
    - German
    - different firmwares with different AT command sets
    - two different hardware versions
    - CSR BlueSuite on CD (with BlueFlash for new firmware)
  - `Byron's Blog <http://byron76.blogspot.com/2011/09/one-board-several-firmwares.html>`_
    - PIN-out
      - ``PIN1`` (upper left) : tx
      - ``PIN2`` : rx
      - ``PIN12`` : 3.3V
      - ``PIN13`` : gnd
      - ``PIN24`` : LED
      - ``PIN26`` : "key" (?)
    - ``AT`` commands : with ``CR``/``LF``, must be sent at once, wait one sec between; can
      be sent when device is not paired
    - ``HC06`` firmware (a.k.a. Linvor1.5)
      - change baud settings ``1200-1382400``
      - change name (20 characters)
      - set PIN (``1234`` by default)
  - `Zonemike'ls Blog <http://www.zonemikel.com/wordpress/?p=788>`_
    - 
