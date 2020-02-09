def recurPower(base, exp):
    '''
    base: int or float.
    exp: int >= 0

    returns: int or float, base^exp
    '''
    # Your code here
    if exp==0:
        return 1
    elif exp>0:
        return base*recurPower(base,(exp-1))
    else:
        return (1/base)*recurPower(base,(exp+1))

print(recurPower(4,2))
