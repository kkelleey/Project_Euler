import time

term = 1000000
elements = range(0,10)

def factorial(n):
	product = 1
	for i in range(1,n + 1):
		product *= i
	return product

def add_next_digit_v1(term_count, remaining_elements, result):
	if len(remaining_elements) == 0:
		print "The ", term, "th permutation is", result
		return
	else:
		new_permutation_count = factorial(len(remaining_elements) - 1)
		for element in remaining_elements:
			if (term_count + new_permutation_count) >= term:
				result += str(element)
				remaining_elements.remove(element)
				add_next_digit_v1(term_count, remaining_elements, result)
			else:
				term_count += new_permutation_count

def add_next_digit_v2(term_count, remaining_elements, result):
	if len(remaining_elements) == 0:
		print "The ", term, "th permutation is", result
		return
	else:
		new_permutation_count = factorial(len(remaining_elements) - 1)
		difference = term - term_count - 1
		next_digit_index = difference / new_permutation_count
		result += str(remaining_elements[next_digit_index])
		remaining_elements.pop(next_digit_index)
		term_count += next_digit_index * new_permutation_count
		add_next_digit_v2(term_count, remaining_elements, result)

if term > factorial(len(elements)):
	print "Term number exceeds number of possible permutations"

start = time.time()
add_next_digit_v1(0,elements, '')
end = time.time()
time1 = end - start

print "Time 1", time1

start = time.time()
add_next_digit_v2(0,elements, '')
end = time.time()
time2 = end - start

print "Time 2", time2

if time1 > time2:
	print "Version 2 was faster by", time1 - time2, "seconds"
	pct = (time1 - time2) * 100 / time1
	print "A ", pct, "percent difference"
else:
	print "Version 1 was faster by ", time2 - time1, "seconds"
	pct = (time2 - time1) * 100 / time2
	print "A ", pct, "percent difference"

