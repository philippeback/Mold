accessing
input: val 
	| trimmed |
	trimmed := ((val respondsTo: #withBlanksTrimmed) and: [ val isSymbol not ]) 
		ifTrue: [ val withBlanksTrimmed ]
		ifFalse: [ val ].
	input := ((trimmed respondsTo: #isEmpty) and: [ trimmed isEmpty ]) 
		ifTrue: [ nil ]
		ifFalse: [ trimmed ]