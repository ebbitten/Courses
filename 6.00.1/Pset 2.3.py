balance=320000
annualInterestRate=.2

lowerBound=float(balance)/12
upperBound=(balance*((1+float(annualInterestRate)/12))**12)
while True:
    monthly=(((lowerBound+upperBound)/2))
    testB=balance
    for i in range(12):
        testB=testB-monthly
        testB=testB*(1+annualInterestRate/12)
    if abs(testB)<=.01:
        break
    if testB<.01:
        upperBound=monthly
    elif testB>(-.01):
        lowerBound=monthly
print('Lowest Payment: '+str(round(monthly,2)))
