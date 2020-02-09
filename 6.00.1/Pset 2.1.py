xsum=0
for i in range(1,13):
    month=i
    minimumMonthly=(monthlyPaymentRate*balance)
    balance=balance-minimumMonthly
    balance=balance*(1+annualInterestRate/12)
    print('Month: '+str(month))
    print('Minimum monthly payment: '+str(round(minimumMonthly,2)))
    print('Remaining balance: '+str(round(balance,2)))
    xsum+=minimumMonthly
print('Total paid: '+str(round(xsum,2)))
print('Remaining balance: '+str(round(balance,2)))

    
