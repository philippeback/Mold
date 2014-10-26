running
testInput
	field input: '5'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.05 within: 0.001.
	field input: '0.2'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.002 within: 0.0001.
	field input: '.9'.
	field validateInput.
	self assert: field isValid.
	self assertValueEquals: 0.009 within: 0.0001