running
testRequired
	| field |
	field := MoldStringField new.
	field beRequired.
	field input: ''.
	field validateInput.
	self deny: field isValid.
	field beOptional.
	field input: ''.
	field validateInput.
	self assert: field isValid.
	self assert: field value isNil.
	field beRequired.
	field input: 'text'.
	field validateInput.
	self assert: field isValid.
	self assert: field value = 'text'