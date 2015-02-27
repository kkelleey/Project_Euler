term = 1000000
elements = range(0,10)

def factorial(n):
	product = 1
	for i in range(1,n + 1):
		product *= i
	return product

def find_permutation(term_count, remaining_elements, result):
	if len(remaining_elements) == 0:
		print result
		return result
	else:
		new_permutation_count = factorial(len(remaining_elements) - 1)
		for element in remaining_elements:
			if (term_count + new_permutation_count) >= term:
				result += str(element)
				remaining_elements.remove(element)
				find_permutation(term_count, remaining_elements, result)
			else:
				term_count += new_permutation_count

if term > factorial(len(elements)):
	print "Term number exceeds number of possible permutations"
# print "The ", term, "th permutation of", elements, "is", find_permutation(0, elements, [])
find_permutation(0,elements, '')

