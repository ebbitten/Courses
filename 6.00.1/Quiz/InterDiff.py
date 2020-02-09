def dict_interdiff(d1, d2):
    '''
    d1, d2: dicts whose keys and values are integers
    Returns a tuple of dictionaries according to the instructions above
    '''
    # Your code here
    #Initialize any parameters that you'll populate
    sharedKeys=[]
    d1Only=[]
    d2Only=[]
    interS={}
    diffS={}
    # Lets find all the keys
    for key in d1:
        if key in d2.keys():
            sharedKeys.append(key)
        else:
            d1Only.append(key)
    for key in d2:
        if key not in sharedKeys:
            d2Only.append(key)
    #print(sharedKeys,d1Only,d2Only,type(interS))
    for key in sharedKeys:
        interS[key]=f(d1[key],d2[key])
    for key in d1Only:
        diffS[key]=d1[key]
    for key in d2Only:
        diffS[key]=d2[key]
    returnVal=(interS,diffS)
    return returnVal



def f(a,b):
    return a+b
d1 = {1:30, 2:20, 3:30, 5:80}
d2 = {1:40, 2:50, 3:60, 4:70, 6:90}
print(dict_interdiff(d1,d2))

