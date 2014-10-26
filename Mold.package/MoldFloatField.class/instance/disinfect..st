private
disinfect: aString
	| trimmed rs |
	trimmed := aString withBlanksTrimmed select: [ :char | '1234567890.' includes: char ].
	trimmed isEmpty
		ifTrue: [ ^ nil ].
	(trimmed first = $. and: [ (trimmed occurrencesOf: $.) = 1 ])
		ifTrue: [ trimmed := '0' , trimmed ].
	rs := trimmed readStream.
	^ [ Number readFrom: rs ] on: Error do: [ :ex | nil ]