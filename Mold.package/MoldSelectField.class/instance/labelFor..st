private
labelFor: anObject
	^labels ifNil: [anObject] ifNotNil: [labels value: anObject]