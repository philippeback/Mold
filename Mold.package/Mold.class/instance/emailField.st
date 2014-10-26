fields
emailField
	^ self stringField
		addCondition: 
				[ :val | 
				val isNil or: [ val matchesRegex: '([-_\w]\.?)+@[-\w]+\.[-\w]+(\.\w+)*' ] ]
			labeled: 'Invalid email address';
		yourself