
# some calculaions 

# electrical resistivity copper (src : wikipedia)
rho_cu = 16.78e-9
# thickness
t = 35e-6
# maximal length
l = 10e-2
# maximal current
Imax = 35e-3

print 'rho=%s t=%f l=%f I=%f'%(str(rho_cu),t,l,Imax)

for wmil in [8,10,16,32]:

    # width
    w = wmil * 2.54e-5

    R= rho_cu * l / (t*w)
    P= R * Imax**2

    print '\twmil=%f R=%f P=%f'% (wmil,R,P)


