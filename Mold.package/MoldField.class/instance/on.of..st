accessing
on: aSelector of: anObject 
	key ifNil: [key := aSelector].
	self value: (anObject perform: aSelector).
	self 
		callback: [:val | anObject perform: (aSelector , ':') asSymbol with: val]