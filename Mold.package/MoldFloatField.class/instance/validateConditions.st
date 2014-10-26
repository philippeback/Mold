private
validateConditions
	super validateConditions.
	self isValid ifFalse: [ ^ self ].
	input ifNil: [ ^ self ].
	(self disinfect: input) ifNil: [ errors add: 'Invalid number.' ]