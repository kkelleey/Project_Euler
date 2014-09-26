#Problem: What is the largest prime factor of the number 600851475143 ?


n = 600851475143
upper_bound = int(n**0.5) #squre root
prime_factors = []

for i in range(2,upper_bound):
    if n % i == 0:
        is_prime = True
        for prime in prime_factors:
            if i % prime == 0:
                prime = False
                break
        if is_prime:
            prime_factors.append(i)

print prime_factors[-1]
