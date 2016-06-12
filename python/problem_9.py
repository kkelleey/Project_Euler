# Problem 9

# We want to find a and b such that a**2 + b**2 = c**2
# and a + b + c = 1000

# Theory:
# For any a, we can calculate an upper and lower bound for b
# Lower bound:
# a + 1 <= b, since b < a
# Upper bound:
# Suppose b > (1000 - a) / 2 (i.e. b is more than half of 1000 - a)
# Then c must be < (1000 - a) /2, since they can't both be greater than half of 1000 - a
# but then c < (1000 - a) / 2 < b, which contradicts b < c
# So (1000 - a) / 2 is an upper bound for b




def a_b_c(n):
    a = 0
    while True:
        a += 1
        b = a + 1
        while b <= (n - a)/2:
            c = n - b - a
            if a**2 + b**2 == c**2:
                return a,b,c
            else:
                b+=1

a,b,c = a_b_c(1000)
print "a=", a
print "b=", b
print "c=", c

print "a**2+b**2=", a**2 + b**2
print "c**2=", c**2
print "a+b+c=", a + b + c
print a * b * c
