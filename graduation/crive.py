# Projeto de testes de software 08-03-17: exemplo de defeito/erro/falha

def crive_until(limit):
	numbers = range(1, limit+1)
	for i in numbers[1:len(numbers)/2]:
		for num in xrange(2*i, limit+1, i):
			if num in numbers:
				numbers.remove(num)
	print numbers

crive_until(101)