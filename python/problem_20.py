# Find the sum of the digits in the number 100!

product = 1
n = 100

for i in range(1,n):
    product *= i

print "100! is ",product

sum = 0

for j in range(len(str(product))):
    string = str(product)
    sum += int(string[j])
    

print "The answer is:", sum
