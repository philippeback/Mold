removing
remove: aKey
	| field |
	field := self at: aKey.
	fields remove: field