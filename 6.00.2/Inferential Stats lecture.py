import random

def stdDevOfLengths(L):
    #let's turn the the list of strings into a list of ints
    if not L:
        return(float('NaN'))
    Lnew = []
    for element in L:
        Lnew.append(len(element))
    average=sum(Lnew)/len(Lnew)
    xsum=0
    for element in Lnew:
        xsum += (element-average)**2
    return((xsum/len(L))**.5)
               

def stdDev(Lnew):
    average=sum(Lnew)/len(Lnew)
    xsum=0
    for element in Lnew:
        xsum += (element-average)**2
    return((xsum/len(Lnew))**.5)

def coefOfVar(List):
    std = stdDev(List)
    average =sum(List)/len(List)
    return std/average

#print(coefOfVar([10,4,12,15,20,5]))

def Hs():
    allH = []
    for i in range(1000):
        h=0
        for j in range(4):
            if random.random() < .3:
                h += 1
        allH.append(h)
    
    print(allH)
    print(stdDev(allH))

Hs()
                
