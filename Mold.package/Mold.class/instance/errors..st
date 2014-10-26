rendering
errors: aKeyOrCollection 
	((aKeyOrCollection isKindOf: Collection) 
		and: [aKeyOrCollection isString not]) 
			ifFalse: [^ (self at: aKeyOrCollection) renderErrorsOn: html].
	MoldField renderErrors: (self combinedErrorsFrom: aKeyOrCollection) on: html