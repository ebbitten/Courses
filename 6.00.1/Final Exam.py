def dict_invert(d):
    '''
    d: dict
    Returns an inverted dictionary according to the instructions above
    '''
    keys=d.keys()
    e={}
    for key in keys:
        e[d[key]]=[]
    for key in keys:
        e[d[key]].append(key)
        e[d[key]].sort()
    return(e)

# d={8: 6, 2: 6, 4: 6, 6: 6}
# e=dict_invert((d))
# print(e)

def getSublists(L, n):
    iters=(len(L)-n)+1
    masterList=[]
    for i in range(iters):
        subList=L[i:(i+n)]
        masterList.append(subList)
    return(masterList)

# L = [10, 4, 6, 8, 3, 4, 5, 7, 7, 2]
# n = 4
# print(getSublists(L,n))

def longestRun(L):
    n=len(L)
    found=False
    while not found:
        masterList=getSublists(L,n)
        for subList in masterList:
            increasing=True
            for i in range(1,len(subList)):
                if subList[i]<subList[i-1]:
                    increasing=False
            if increasing:
                found=True
                longestR=subList
                break
        n-=1
    return(len(longestR))

# L = [10, 4, 6, 8, 3, 4, 5, 7, 7, 2]
# print(longestRun((L)))

## DO NOT MODIFY THE IMPLEMENTATION OF THE Person CLASS ##
'''
class Person(object):
    def __init__(self, name):
        # create a person with name name
        self.name = name
        try:
            firstBlank = name.rindex(' ')
            self.lastName = name[firstBlank + 1:]
        except:
            self.lastName = name
        self.age = None

    def getLastName(self):
        # return self's last name
        return self.lastName

    def setAge(self, age):
        # assumes age is an int greater than 0
        # sets self's age to age (in years)
        self.age = age

    def getAge(self):
        # assumes that self's age has been set
        # returns self's current age in years
        if self.age == None:
            raise ValueError
        return self.age

    def __lt__(self, other):
        # return True if self's name is lexicographically less
        # than other's name, and False otherwise
        if self.lastName == other.lastName:
            return self.name < other.name
        return self.lastName < other.lastName

    def __str__(self):
        # return self's name
        return self.name


class USResident(Person):
    """
    A Person who resides in the US.
    """

    def __init__(self, name, status):
        """
        Initializes a Person object. A USResident object inherits
        from Person and has one additional attribute:
        status: a string, one of "citizen", "legal_resident", "illegal_resident"
        Raises a ValueError if status is not one of those 3 strings
        """
        super(USResident, self).__init__(name)
        if status in ('citizen','legal_resident','illegal_resident'):
            self.status=status
        else:
            raise ValueError

    def getStatus(self):
        """
        Returns the status
        """
        return self.status

# a = USResident('Tim Beaver', 'citizen')
# print a.getStatus()
# b = USResident('Tim Horton','citizen')
# print b.name
'''

class Person(object):
    def __init__(self, name):
        self.name = name
    def say(self, stuff):
        return self.name + ' says: ' + stuff
    def __str__(self):
        return self.name

class Lecturer(Person):
    def lecture(self, stuff):
        return 'I believe that ' + Person.say(self, stuff)

class Professor(Lecturer):
    def say(self, stuff):
        return 'Prof. '+self.name + ' says: ' + self.lecture(stuff)

class ArrogantProfessor(Professor):
    def say(self, stuff):
        return self.name+ ' says: It is obvious that ' + super(Professor,self).lecture(stuff)
    def lecture(self, stuff):
        return 'It is obvious that ' + super(Professor,self).lecture(stuff)

e = Person('eric')
le = Lecturer('eric')
pe = Professor('eric')
ae = ArrogantProfessor('eric')
print(ae.say('The sky is blue'))
print(ae.lecture('the sky is blue'))

'''
'>>> ae.say('the sky is blue')
eric says: It is obvious that I believe that eric says: the sky is blue

>>> ae.lecture('the sky is blue')
It is obvious that I believe that eric says: the sky is blue'
'''
'''
>>> pe.say('the sky is blue')
Prof. eric says: I believe that eric says: the sky is blue

>>> ae.say('the sky is blue')
Prof. eric says: It is obvious that I believe that eric says: the sky is blue
'''