running
assertValueEquals: aFloat within: aTolerance
	self assert: (field value - aFloat) abs < aTolerance