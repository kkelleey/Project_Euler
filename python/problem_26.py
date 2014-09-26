# Find the value of d < 1000 for which 1/d contains the longest
#recurring cycle in its decimal fraction part

for i in range(1,11):
    decimal = float(1)/i
    print decimal, len(str(decimal))
