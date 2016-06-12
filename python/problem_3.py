# Problem: What is the largest prime factor of the number 600851475143 ? 

def largest_prime_factor(n):
    i = 2
    while i * i <= n:
        if n % i:
            i += 1
        else:
            n //= i
    return n

print largest_prime_factor(600851475143)
