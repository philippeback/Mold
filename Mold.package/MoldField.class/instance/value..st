accessing
value: anObject 
	value := anObject.
	input := anObject ifNotNil: [self infect: anObject].
	self valueChanged