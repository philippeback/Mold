removing
remove: aKey ifAbsent: exceptionBlock 
	| field |
	field := self at: aKey.
	fields remove: field ifAbsent: exceptionBlock