accessing
at: aKey 
	^ fields detect: [:each | each key = aKey] ifNone: [nil]