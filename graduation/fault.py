# Projeto de testes de software 08-03-17: defeito (fault) - erro (error) - falha (failure)

def add(vector):
	soma = 0
	for elem in vector:
		if elem == 0:
			break # IT SHOULD BE "continue" INSTEAD OF "break"
		soma += elem
	return soma

print add([2, 5, 3, 9]) # The fault is present but neither errors or failures happen
print add([2, 4, 9, 0]) # The fault causes an error but the failure doesnt happen
print add([2, 0, 5, 8]) # The fault causes an error and a failure happens