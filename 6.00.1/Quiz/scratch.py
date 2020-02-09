def isPalindrome(aString):
    '''
    aString: a string
    '''
    # Your code here
    palin=True
    for i in range(len(aString)):
        if aString[i]!=aString[len(aString)-i-1]:
            palin=False
    return palin
