# 1

fibber := method(n,
	a := 1
	b := 1
	c := a + b
	counter := 3
	if(n <= 2, return 1)
	while(counter < n, a = b; b = c; c = a + b; counter = counter + 1)
	return c
)
# fibber(4) println

# 2
divide := Number getSlot("/")
Number / := method (i, 
	if (i != 0, self divide(i), 0)
)
# (10 / 0) println

# 3
twoDimArray := list(list(2, 3), list(4, 5))
twoDimSum := method(set,
	totalCount := 0
	i := 0
	for(i, 0, (set size) - 1, totalCount = totalCount + (set at(i) sum))
	return totalCount
)

# twoDimSum(twoDimArray) println

# 4
List myAverage := method(
	(self sum) / (self size)
)
# list(1, 3, 5) myAverage println

# 5
twoDimmer := Object clone
twoDimmer internalList := list()
twoDimmer dim := method(x, y,
	self internalList := list()
	for(i, 1, y,
		newList := list()
		for(n, 1, x,
			newList append(nil)
		)
		internalList append(newList)
	)
)
twoDimmer set := method(x, y, n,
	self internalList at(y) atPut(x, n)
)
twoDimmer get := method(x, y, 
	return self internalList at(y) at(x)
)
# twoDimmer dim(2, 3)
# twoDimmer set(1, 1, "whatever")
# twoDimmer get(1, 1) println