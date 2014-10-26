tests
testInfectUS
	field formatString: 'MM/DD/YYYY'.
	self assert: (field infect: (Date year: 1999 month: 12 day: 31)) = '12/31/1999'.
	self assert: (field infect: (Date year: 2009 month: 7 day: 8)) = '07/08/2009'