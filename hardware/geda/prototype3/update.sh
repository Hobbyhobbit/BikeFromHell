#!/bin/bash
#gsch2pcb -f -d ../footprints -d /usr/local/Cellar/pcb/20110908/share/pcb/pcblib-newlib/ prototype3.sch
gsch2pcb -f -d ../footprints prototype3.sch
#gnetlist -g geda prototype3.sch -o prototype3.net

