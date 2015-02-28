term = 1000000
elements = range(0,10)

def factorial(n):
	product = 1
	for i in range(1,n + 1):
		product *= i
	return product

def add_next_digit(term_count, remaining_elements, result):
	if len(remaining_elements) == 0:
		print "The ", term, "th permutation is", result
		return
	else:
		new_permutation_count = factorial(len(remaining_elements) - 1)
		for element in remaining_elements:
			if (term_count + new_permutation_count) >= term:
				result += str(element)
				remaining_elements.remove(element)
				add_next_digit(term_count, remaining_elements, result)
			else:
				term_count += new_permutation_count

if term > factorial(len(elements)):
	print "Term number exceeds number of possible permutations"
add_next_digit(0,elements, '')

