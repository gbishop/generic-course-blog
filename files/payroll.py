import numpy as np

p = np.loadtxt('payroll.csv', delimiter=',')
payrate = p[:,0]
hours = p[:,1]

stdhours = np.clip(hours, 0, 40)
othours = hours - stdhours

pay = stdhours * payrate + othours * (payrate * 1.5)

print "pay =", pay
