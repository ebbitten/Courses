def gcdRecur(a, b):
    '''
    a, b: positive integers

    returns: a positive integer, the greatest common divisor of a & b.
    '''
    # Your code here
    small=min(a,b)
    if (a%small+b%small)==0 or small==1:
        return small
    else:
        return gcdRecur(b,a%b)

print(gcdRecur(6,12))