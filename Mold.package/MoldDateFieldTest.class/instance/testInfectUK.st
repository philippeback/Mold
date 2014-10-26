tests
testInfectUK
	field formatString: 'DD/MM/YYYY'.
	self assert: (field infect: (Date year: 1999 month: 12 day: 31)) = '31/12/1999'