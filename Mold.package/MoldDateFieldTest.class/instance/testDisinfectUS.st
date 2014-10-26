tests
testDisinfectUS
	field formatString: 'MM/DD/YYYY'.
	self assert: (field disinfect: '08/09/2010') = (Date year: 2010 month: 8 day: 9)