tests
testDisinfectISO
	field formatString: 'YYYY-MM-DD'.
	self assert: (field disinfect: '2010-08-06') = (Date year: 2010 month: 8 day: 6).
	self assert: (field disinfect: '1234-11-22') = (Date year: 1234 month: 11 day: 22).
	self assert: (field disinfect: '2009-1-14') = (Date year: 2009 month: 1 day: 14).
	self assert: (field disinfect: '2009-10-2') = (Date year: 2009 month: 10 day: 2).
	self shouldnt: [ field disinfect: '1234-11-32' ] raise: Error.	"invalid, but some implementations just jump to the next month"
	self assert: (field disinfect: '1-1') isNil.
	self assert: (field disinfect: 'blah') isNil