testing
isValid
	self validate.
	^ fields allSatisfy: #isValid