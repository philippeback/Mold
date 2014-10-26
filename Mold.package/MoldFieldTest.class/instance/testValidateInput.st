running
testValidateInput
	| field |
	field := MoldField new.
	field input: 'Foo Bar'.
	field validateInput.
	self assert: field input = 'Foo Bar'.
	field input: ''.
	field validateInput.
	self assert: field input = nil.
	field input: true.
	field validateInput.
	self assert: field input = true