# Find the first Fibonacci number that is 1000 digits

# Start Fibonacci sequence at third Fibonacci number
third_to_last = 1
second_to_last = 1
fibonacci_number = 2
n = 3

while len(str(fibonacci_number)) < 1000:
    third_to_last = second_to_last
    second_to_last = fibonacci_number
    fibonacci_number = third_to_last + second_to_last
    n += 1

print "The first term in the Fibonacci sequence to contain at least",len(str(fibonacci_number)),"digits is",n
