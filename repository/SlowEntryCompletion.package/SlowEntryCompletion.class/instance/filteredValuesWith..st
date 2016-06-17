as yet unclassified
filteredValuesWith: aToken
	| cacheLifetime |
	cacheLifetime := 500 milliseconds.
	DateAndTime now - self lastUpdate >= cacheLifetime ifTrue: [ self updateCacheFor: aToken ].
	 ^ self cache
			select: [:v | aToken isNil or: [v isNil or: [self filterBlock value: v value: aToken]]]