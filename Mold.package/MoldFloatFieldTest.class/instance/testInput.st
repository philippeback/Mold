running
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 5.
	field input: '0.2'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.2 within: 0.01.
	field input: 'asdf'.
	field validateInput.
	self deny: field isValid.
	field input: '.87'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.87 within: 0.001