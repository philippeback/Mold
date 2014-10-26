running
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = (5 asScaledDecimal: 2).
	field input: '-0.2'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = (-2 / 10 asScaledDecimal: 2).
	field input: 'asdf'.
	field validateInput.
	self deny: field isValid.
	field input: '0'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 0