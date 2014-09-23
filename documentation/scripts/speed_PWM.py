
from __future__ import division

bitPWM=4

vmax= 32 /3.6 # speed of axis
r=.4
rLEDmax=.35
dmax=.01

vLEDmax= vmax * r/rLEDmax # factor 2* removed because eye follows...
T= dmax / vLEDmax # period for 1 slot

mhz=( 1./T * 2**bitPWM )/1e6
mhzTLC = 1./T*4096/1e6 # gsclk

print 'single LED MHz >= %.3f'% mhz
print '16bit SR LED MHz >= %.3f'% (mhz*16)
print '3* 16bit SR LED MHz >= %.3f'% (mhz*16*3)
print 'gsclk: %.3f mhz'% (mhzTLC)

