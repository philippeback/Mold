tests
testDisinfectUK
	field formatString: 'DD/MM/YYYY'.
	self assert: (field disinfect: '09/08/2010') = (Date year: 2010 month: 8 day: 9).
	self shouldnt: [ field disinfect: '09/13/2010' ] raise: Error "invalid, but some implementations just jump to the next month"