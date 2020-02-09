import random, pylab

# You are given this function
def getMeanAndStd(X):
    mean = sum(X)/float(len(X))
    tot = 0.0
    for x in X:
        tot += (x - mean)**2
    std = (tot/len(X))**0.5
    return mean, std

# You are given this class
class Die(object):
    def __init__(self, valList):
        """ valList is not empty """
        self.possibleVals = valList[:]
    def roll(self):
        return random.choice(self.possibleVals)

def drawing_without_replacement_sim(numTrials):
    '''
    Runs numTrials trials of a Monte Carlo simulation
    of drawing 3 balls out of a bucket containing
    4 red and 4 green balls. Balls are not replaced once
    drawn. Returns a float - the fraction of times 3
    balls of the same color were drawn in the first 3 draws.
    '''
    # Your code here
    import random
    ballsInBag = ['g','g','g','g','r','r','r','r']
    numSuccess = 0
    for i in range(numTrials):
        possibleBalls = ballsInBag[:]
        ballsDrawn=[]
        for j in range(3):
            drawnBall = random.choice(possibleBalls)
            ballsDrawn.append(drawnBall)
            possibleBalls.remove(drawnBall)
        if len(set(ballsDrawn)) == 1:
            numSuccess += 1
    return numSuccess/numTrials

import pylab
import random

def makeHistogram(values, numBins, xLabel, yLabel, title=None):
    """
      - values, a list of numbers
      - numBins, a positive int
      - xLabel, yLabel, title, are strings
      - Produces a histogram of values with numBins bins and the indicated labels
        for the x and y axes
      - If title is provided by caller, puts that title on the figure and otherwise
        does not title the figure
    """
    pylab.hist(values,numBins)
    if title:
        pylab.title(title)
    pylab.xlabel(xLabel)
    pylab.ylabel(yLabel)
    pylab.show()

def getAverage(die, numRolls, numTrials):
    """
      - die, a Die
      - numRolls, numTrials, are positive ints
      - Calculates the expected mean value of the longest run of a number
        over numTrials runs of numRolls rolls.
      - Calls makeHistogram to produce a histogram of the longest runs for all
        the trials. There should be 10 bins in the histogram
      - Choose appropriate labels for the x and y axes.
      - Returns the mean calculated to 3 decimal places
    """
    longestRuns = []
    # possibleRolls = random[1, 2, 3, 4, 5, 6]
    for t in range(numTrials):
        longestRun = 1
        previousRoll = -1
        currentRoll = -1
        currentRun = 1
        for n in range(numRolls):
            currentRoll = die.roll()
            if currentRoll == previousRoll:
                currentRun += 1
            else:
                currentRun = 1
            if currentRun>longestRun:
                longestRun = currentRun
            previousRoll = currentRoll
        longestRuns.append(longestRun)
    makeHistogram(longestRuns,10,"Number of roles","longest run","Longest runs as a function of number of rolls")
    return(sum(longestRuns)/numTrials)

# test = getAverage(Die([1,2,3,4,5,6]), 50, 1000)
# print(test)


def find_combination(choices, total):
    """
    choices: a non-empty list of ints
    total: a positive int

    Returns result, a numpy.array of length len(choices)
    such that
        * each element of result is 0 or 1
        * sum(result*choices) == total
        * sum(result) is as small as possible
    In case of ties, returns any result that works.
    If there is no result that gives the exact total,
    pick the one that gives sum(result*choices) closest
    to total without going over.
    """
    import numpy as np
    bestArray = []
    bestTotalLeft = total
    bestMinSum =total
    for b in range(1,2**(len(choices))):
        #Setup the inner loop
        #Use the b that you're iterating through to decide which one to try
        choiceModifier = str('{0:b}'.format(b))
        while len(choiceModifier)<len(choices):
            choiceModifier = '0'+choiceModifier
        # print(choiceModifier)
        currentChoices = choices[:]
        for c in range(len(currentChoices)):
            if choiceModifier[c] == '0':
                currentChoices[c] = 0
        # print(currentChoices)
        totalLeft = total
        answerDict = {}
        while totalLeft>0 and currentChoices:
            maxChoice = max(currentChoices)
            if maxChoice>0 and maxChoice<=totalLeft:
                maxChoiceTimes = 1
                maxChoiceIndex = choices.index(maxChoice)
            else:
                maxChoiceTimes = 0
            if maxChoiceTimes>0:
                answerDict[maxChoiceIndex]=[maxChoiceTimes,maxChoice]
            currentChoices.remove(maxChoice)
            totalLeft -= maxChoice*maxChoiceTimes
        print(answerDict)
        returnList = []
        for i in range(len(choices)):
            if i in answerDict.keys():
                returnList.append(answerDict[i][0])
            else:
                returnList.append(0)
        if totalLeft<bestTotalLeft:
            minSum = sum(returnList)
            bestArray=np.array(returnList)
            bestTotalLeft=totalLeft
            bestMinSum=minSum
        elif totalLeft==bestTotalLeft:
           minSum = sum(returnList)
           if minSum<bestMinSum:
                bestArray = np.array(returnList)
                bestTotalLeft = totalLeft
                bestMinSum = minSum
    print('best total left',bestTotalLeft,'best min sum',bestMinSum)
    return(bestArray)

print(find_combination([10, 10, 11, 11, 11], 20))