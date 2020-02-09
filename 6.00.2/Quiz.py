# Paste your code here
def song_playlist(songs, max_size):
    """
    songs: list of tuples, ('song_name', song_len, song_size)
    max_size: float, maximum size of total songs that you can fit

    Start with the song first in the 'songs' list, then pick the next
    song to be the one with the lowest file size not already picked, repeat

    Returns: a list of a subset of songs fitting in 'max_size' in the order
    in which they were chosen.
    """
    songList = songs[:]
    currentSize = 0
    returnList = []
    nextSongEntry = songList.pop(0)
    nextSongName = nextSongEntry[0]
    nextSongSize = nextSongEntry[2]
    currentSize += nextSongSize
    nextSongName = nextSongEntry[0]
    while currentSize < max_size:
        returnList.append(nextSongName)
        if songList:
            nextSongEntry = findNextSong(songList)
        else:
            break
        nextSongName = nextSongEntry[0]
        nextSongSize = nextSongEntry[2]
        currentSize += nextSongSize
    return returnList


def findNextSong(songList):
    minSize = -1
    minSizeIndex = ""
    for index in range(len(songList)):
        if songList[index][2] < minSize or minSizeIndex == "":
            minSizeIndex = int(index)
            minSize = songList[index][2]
    return songList.pop(minSizeIndex)


#print(song_playlist([('a', 4.4, 4.0), ('b', 3.5, 7.7), ('c', 5.1, 6.9), ('d', 2.7, 1.2)], 20))

def greedySum(L, s):
    """ input: s, positive integer, what the sum should add up to
               L, list of unique positive integers sorted in descending order
        Use the greedy approach where you find the largest multiplier for
        the largest value in L then for the second largest, and so on to
        solve the equation s = L[0]*m_0 + L[1]*m_1 + ... + L[n-1]*m_(n-1)
        return: the sum of the multipliers or "no solution" if greedy approach does
                not yield a set of multipliers such that the equation sums to 's'
    """
    if not L:
        return("no solution")
    Lcopy=L[:]
    multipliers=[]
    xsum=0
    for i in range(len(L)):
        Lnext=findNextL(Lcopy)
        maxM=(s-xsum)//Lnext
        multipliers.append(maxM)
        xsum+=maxM*Lnext
    if xsum==s:
        return(sum(multipliers))
    else:
        return("no solution")

def findNextL(Lcopy):
    currentMaxL=0
    for possibleL in Lcopy:
        if possibleL>currentMaxL:
            currentMaxL=possibleL
    Lcopy.remove(currentMaxL)
    return currentMaxL

def max_contig_sum(L):
    """ L, a list of integers, at least one positive
    Returns the maximum sum of a contiguous subsequence in L """
    #YOUR CODE HERE
    bestSum=0
    currentSum=0
    for listLength in range(1,len(L)+1):
        for startingPos in range(0,len(L)+1 -listLength):
            currentSum=0
            for index in range(startingPos,startingPos+listLength):
                currentSum += L[index]
            if currentSum>bestSum:
                bestSum=currentSum
    return bestSum