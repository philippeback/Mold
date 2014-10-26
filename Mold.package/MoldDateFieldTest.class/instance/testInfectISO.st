tests
testInfectISO
	field formatString: 'YYYY-MM-DD'.
	self assert: (field infect: (Date year: 1999 month: 12 day: 31)) = '1999-12-31'