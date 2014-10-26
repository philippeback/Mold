tests
testValidateInput
	field input: String new.
	field validateInput.
	self assert: field isValid.
	field beRequired.
	field validateInput.
	self deny: field isValid.
	field input: ''