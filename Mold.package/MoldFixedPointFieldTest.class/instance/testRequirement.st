tests
testRequirement
	field beRequired.
	field input: ''.
	field validateInput.
	self deny: field isValid.
	self assert: field errors size = 1.
	field input: '234.567'.
	field validateInput.
	self assert: field isValid