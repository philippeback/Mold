tests
testValidationOnDate
	field beRequired.
	field addCondition: [ :input :disinfected | disinfected >= (Date year: 2010 month: 1 day: 1) ].
	field input: '12/31/2009'.
	field validateInput.
	self deny: field isValid.
	field input: '01/01/2010'.
	field validateInput.
	self assert: field isValid