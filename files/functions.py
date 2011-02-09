import numpy as np
import pylab
import sys

# Defining our own functions

def FtoC(F):
    return (F - 32) * 5.0 / 9.0

def CtoF(C):
    return C * 9.0 / 5.0 + 32

print '32 degrees Fahrenheit is', FtoC(32), 'degrees Celsius'

print '100 degrees Celsius is', CtoF(100), 'degrees Fahrenheit'

temps = np.arange(0, 100, 10)
ctemps = FtoC(temps)
print ctemps

# now let's examine the scope of variables in functions

# create a few "global" variables
a = 1
b = 2
C = np.arange(10)

def F1(a):
    print 'inside a =', a
    a = 12
    print 'now inside a =', a

print 'outside a =', a
F1(2)
print 'outside a =', a
F1(a)
print 'outside a =', a
F1(b)
print 'outside a =', a

