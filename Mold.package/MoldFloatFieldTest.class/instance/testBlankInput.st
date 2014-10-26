running
testBlankInput
	field input: ''.
	field validateInput.
	self assert: field isValid.
	field beRequired.
	field input: ''.
	field validateInput.
	self deny: field isValid