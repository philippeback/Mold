fields
percentageField: anErrorMessage 
	^ fields 
		add: (MoldPercentageField new addCondition: 
					[:val | 
					val isNil or: 
							[(val matchesRegex: '(\d)+(.\d+)?%?') 
								or: [val matchesRegex: '(\d)*.(\d)+%?']]]
				labeled: anErrorMessage)