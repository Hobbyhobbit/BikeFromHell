
from pylab import *

# series resistance
Rmin=[2.2e3,5.6e3,22e3]
# potentiometers
Rpot=[10e3,50e3,100e3]

current= lambda R: 50* 1.2/R

figure()
title('CAT4016 current')
x= linspace(0,100,200) # in percent
for i in range(len(Rmin)):
    # semilogy makes sense because light intensity is perceived
    # logarithmically...
    R= Rmin[i] + linspace(0,Rpot[i],len(x))
    semilogy( x,1e3*current(R),
            label="Rmin=%.1fk,Rpot=%.1fk"%(Rmin[i]/1e3,Rpot[i]/1e3))
xlabel('R_pot [%]')
ylabel('I [mA]')
legend(loc=0)

show()

