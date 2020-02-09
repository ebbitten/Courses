def flatten(aList):
    ''' 
    aList: a list 
    Returns a copy of aList, which is a flattened version of aList 
    '''
    fList=[]
    helperF(aList,fList)
    return fList
        
  
def helperF(cList,fList):
    for ele in cList:
        if type(ele)!=list:
            fList.append(ele)
        else:
            helperF(ele,fList)

aList=[[1,'a',['cat'],2],[[[3]],'dog'],4,5]
print(flatten(aList))
    
