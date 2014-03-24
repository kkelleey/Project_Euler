# Elegant Solution
##import time
##start = time.time()
##def d(n):
##    sum_of_divisors = 0
##    for i in range(1,n):
##        if n%i == 0:
##            sum_of_divisors += i 
##    return sum_of_divisors
##
##total = 0
##for i in range(1, 10000):
##    if i == d(d(i)) and i != d(i):
##        print i,',',d(i)
##        total += i
##
##print "The total is",total
##end = time.time()
##print end - start


#Efficient Solution
import time

start = time.time()

def d(n):
    sum_of_divisors = 0
    for i in range(1,n):
        if n%i == 0:
            sum_of_divisors += i 
    return sum_of_divisors

total = 0
for i in range(1, 10000):
    num = d(i)
    if num != 1 and num != i and i == d(num):
        print i,',',d(i)
        total += i

print "The total is",total

end = time.time()

print end - start
