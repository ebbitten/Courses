def yieldAllCombos(items):
	"""
		Generates all combinations of N items into two bags, whereby each 
		item is in one or zero bags.
		Yields a tuple, (bag1, bag2), where each bag is represented as a list 
		of which item(s) are in each bag.
	"""
	# Your code here
	N = len(items)
	# enumerate the 2**N possible combinations
	for i in range(2**N):
		for l in range(2**N):
			bag1 = []
			bag2 = []
			for j in range(N):
				# test bit jth of integer i and l
				if (i >> j) % 2 == 1:
					bag1.append(items[j])
				elif (l >> j) % 2 ==1:
					bag2.append(items[j])
				combo = (bag1,bag2)
				yield combo