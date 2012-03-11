
from __future__ import division

bitPWM=4

vmax= 32 /3.6
r=.4
rLEDmax=.35
dmax=.01

vLEDmax= vmax * r/rLEDmax # factor 2* removed because eye follows...
T= dmax / vLEDmax

mhz=( 1./T * 2**bitPWM )/1e6

print 'single LED MHz >= %.3f'% mhz
print '16bit SR LED MHz >= %.3f'% (mhz*16)
print '3* 16bit SR LED MHz >= %.3f'% (mhz*16*3)

