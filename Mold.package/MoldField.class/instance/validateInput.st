private
validateInput
	errors := OrderedCollection new.
	self validateConditions.
	self isValid ifTrue: [ self value: (input ifNotNil: [ self disinfect: input ]) ]