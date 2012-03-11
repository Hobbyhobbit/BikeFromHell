
***********************
Various Notes & Remarks
***********************


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

