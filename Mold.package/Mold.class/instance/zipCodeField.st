fields
zipCodeField
	^fields add: (MoldStringField new 
				addCondition: [:val | val isNil or: [val matchesRegex: '(\d\d\d\d\d)(-\d\d\d\d)?']]
				labeled: 'Invalid zip code')