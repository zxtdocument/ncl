#!/usr/bin/python

import os, sys, math, copy
import Image, ImageDraw

im2 = Image.open(sys.argv[1])

iW=im2.size[0]; iH=im2.size[1]
xl=iW;xr=0
yl=iH;yr=0

data=[]
for y in range(0,iH):
    for x in range(0,iW):
        color=im2.getpixel((x,y))
        R=color[0]; G=color[1]; B=color[2]
        bright=R*0.3 + G*0.6 + B*0.1
        print bright
