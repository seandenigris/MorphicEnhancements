as yet unclassified
updateCacheFor: aToken
	cache := self dataSourceBlock value: aToken.
	lastUpdate := DateAndTime now