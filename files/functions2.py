import numpy as np
import pylab

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

print
print 'define a function with a container argument'
print
def F2(x):
    print 'x=', x
    x[0] = 42
    return x.sum()

print 'outside C=', C
foo = F2(C)
print 'afterward C=', C

print
print 'how about global variables?'
print

def F3(y):
    return y * a

print 'global case F3 returns', F3(17)

print
print 'local variables'
print

def F4(y):
    a = 42
    return y * a

print 'local case F4 returns', F4(17)

print
print 'weird case with variable a'
print
def F5(y):
    b = y * a
    a = 42
    return b

#print 'weird case returns', F5(17)

print
print 'avoid weirdness'
print
def F6(y, a):
    b = y * a
    a = 42
    return b

print 'better case returns', F6(17, a)