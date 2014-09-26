import time
import math

start = time.time()

def d(n):
    sum_of_divisors = 1
    for i in range(2,int(math.sqrt(n)) + 1):
        if n%i == 0:
            sum_of_divisors += i
            sum_of_divisors += n /i
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
