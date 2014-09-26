#Problem 21
#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

#Evaluate the sum of all the amicable numbers under 10000.

import time #for calculating runtime
import math

start = time.time()

def d(n):
    sum_of_divisors = 1
    for i in range(2,int(math.sqrt(n)) + 1):
        if n % i == 0:
            sum_of_divisors += i
            sum_of_divisors += n / i
    return sum_of_divisors

total = 0
for i in range(1, 10000):
    num = d(i)
    if num != 1 and num != i and i == d(num):
        #print i,',',d(i)
        total += i

print "The total is",total

end = time.time()

print end - start
