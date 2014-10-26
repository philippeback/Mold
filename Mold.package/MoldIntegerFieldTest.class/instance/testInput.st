running
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 5.
	field input: '0.2'.
	field validateInput.
	self deny: field isValid.
	field input: '.9'.
	field validateInput.
	self deny: field isValid