
# defaults; use set('...',value) to change
padwidth = 30
clearance = 30
mask = 50

# sets variable for use in arguments
def set(name,value):
    globals()[name]= value
    return ''

# draw rectangle
def Rectangle(x1,y1,x2,y2,width):
    return '''
ElementLine(%5d %5d %5d %5d %d)
ElementLine(%5d %5d %5d %5d %d)
ElementLine(%5d %5d %5d %5d %d)
ElementLine(%5d %5d %5d %5d %d)
'''%(
        x1,y1,x2,y1,width,
        x2,y1,x2,y2,width,
        x2,y2,x1,y2,width,
        x1,y2,x1,y1,width
    )

# make serie of pads
#  - start with coordinates specified
#  - add (dx,dy) for consecutive pads
#  - update pad-name accordingly to (i0, ..., i0+n-1)
def Pads(i0,n,x1,y1,x2,y2,dx,dy):
    ret= ''
    for i in range(n):

        # x1 y1 x2 y2 width clearance mask
        # 0x100 : rectangular, 0x800 octagon -- default round
        # note that clearance, width, mask will appear 50% _on each side_
        ret+= 'Pad(%5d %5d %5d %5d %d %d %d "pad %d" "%d" 0x00000100)\n'%(
                x1+i*dx,y1+i*dy,x2+i*dx,y2+i*dy,
                padwidth,clearance,mask,
                i+i0,i+i0
            )

    return ret



################# "parser"

import argparse
parser = argparse.ArgumentParser(description='PCB Footprint Compiler -- write geda-PCB footprints without (so much) pain')
parser.add_argument('template',nargs='+',help='PCB footprint "source" file; extension will be replaced with ".fp"')
args= parser.parse_args()


import re
comment_re = re.compile('\\s*#.*')
command_re = re.compile('\\s*!(\\w+\\s*\(.*\))')
metrics_re = re.compile('(\\d+(\\.\\d*)?|\\.\\d+)\\s*mm')


for fname in args.template:
    
    with open(fname,'r') as f:

        with open(fname[:fname.rindex('.')] + '.fp','w') as fout:

            for l in f.readlines():

                if comment_re.match(l):
                    next
                l= re.sub(metrics_re,lambda x:str(int(39.37*float(x.group(1)))),l)
                m= command_re.match(l)
                if m: l= eval(m.group(1))

                fout.write(l)

