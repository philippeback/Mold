accessing
combinedErrorsFrom: aCollectionOfKeys 
	^(fields select: [:field | aCollectionOfKeys includes: field key]) 
		inject: Array new
		into: [:errors :each | errors , each errors]