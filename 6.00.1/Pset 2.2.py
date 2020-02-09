found=False
monthly=0
while not found:
    monthly+=10
    testB=balance
    for i in range(12):
        testB=testB-monthly
        testB=testB*(1+annualInterestRate/12)
    if testB<=0:
        found=True
print('Lowest Payment: '+str(monthly))
