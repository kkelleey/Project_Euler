# We want to find the largest prime factor of n = 600851475143
#Theory:
# We know that n has a unique prime power decomposition: 
# prime_1 * prime_2 * prime_3 *...*prime_(k-1)* prime_k = n
# Let prime_1 <= prime_2 <= ... <= prime_k
# Let m = n / (prime_1 * prime_2 * ...* prime _j)
# i.e. the remainder once j primes are factored out
# We want to factor primes out of n until m = prime_k



n = 600851475143


def is_prime(n):
    if n == 2 or n == 3: return True
    if n < 2 or n%2 == 0: return False
    if n < 9: return True
    if n%3 == 0: return False
    r = int(n**0.5)
    f = 5
    while f <= r:
        if n%f == 0: return False
        if n%(f+2) == 0: return False
        f +=6
    return True  

#Factor out primes
i = 2

while i < n:
    if n % i == 0 and is_prime(i):
        print i," is a prime factor of n"
        # factor i out of n
        n = n / i
        print n,"is the new n"
        #do not increment i here, since we might be able to factor out multple i's
    else:
        # i is not a factor
        i += 1            
        
# once i == n
print "The answer is", n
