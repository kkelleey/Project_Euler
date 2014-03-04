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
    if n % i == 0:
        if is_prime(i):
            print i," is a prime factor of n"
            # factor i out of n
            n = n / i
            print n,"is the new n"
            #do not increment i here, since we might be able to factor out multple i's
        else:
            #i is not prime, move on
            i += 1
    else:
        # i is not a factor
        i += 1            
        
# once i == n
print "The answer is", n
