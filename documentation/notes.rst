
***********************
Various Notes & Remarks
***********************

The Other Guys
==============


Adafruit SpokePOV
-----------------

some data from `their product website <http://www.adafruit.com/products/5>`_ (v1.1)

  - 60 LEDs, double-sided
  - $37.50 for the kit (additional $7.50 for the dongle and $2.50 for the magnet)
  - 4k memory, can save four custom images


RGBike POV (Instructables)
--------------------------

see `RGBike POV <http://www.instructables.com/id/RGBike-POV-Open-project/>`_

  - uses :ref:`TLC5940`


Monkey Electric
---------------

  - (discontinued) `m133s <http://www.monkeylectric.com/m133s-discontinued/>`_
  - the professional `m464q <http://www.monkeylectric.com/video_pro_wheel_screen/>`_
    system : very expensive, displays video and has wireless channel; available
    Mai 2012


Dimension Circuit Parameters
============================

.. _calculating-cat4016-current:

Calculating CAT4016 Current
---------------------------

The current for the different :ref:`CAT4016` should be dimensioned
in a way that guarantees that every chip sinks a current that is
"significantly" bigger than the current sunk by the next smaller
chip. Unfortunately it does not make sense to *add* the individual
currents because our eye perceives luminosity **logarithmically**
(and the intensity is linearly depend on the current).

The following plot shows some possible values where each CAT4016
can be fine-tuned with a potentiometer to manually set a precise
current that fulfills the above-mentioned criteria.

.. plot:: scripts/CAT4016_prototype2_currents.py


Why Not Sell it?
================

  - imagine `Lily's <http://www.lilys.ch/>`_ would spell
    ``L-I-L-Y-S`` when the bike messenger drives through
    Langstrasse by night

