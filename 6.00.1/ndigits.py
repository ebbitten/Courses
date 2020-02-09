def ndigits(x):
	if len(str(x))==1:
		return 1
	else:
		return 1+ndigits(abs(x)/10)
	
x=10
print(x)
print(ndigits(x))
x=(-11)
print(x)
print(ndigits(x))
x=12345
print(x)
print(ndigits(x))
