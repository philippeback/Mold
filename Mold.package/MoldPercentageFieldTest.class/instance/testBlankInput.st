running
testBlankInput
	field
		input: '';
		validateInput.
	self assert: field isValid.
	field
		beRequired;
		input: '';
		validateInput.
	self deny: field isValid