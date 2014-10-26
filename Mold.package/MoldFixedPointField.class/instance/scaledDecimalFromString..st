private
scaledDecimalFromString: aString 
	"Ripped out of MockGemStone's implemetnation of ScaledDecimal class>>fromString:'"
	| rs ws scl |
	rs := aString readStream.
	ws := String new writeStream.
	rs atEnd ifTrue: [ ^ self error: 'incorrect format' ].
	('+-' includes: rs peek) ifTrue: 
		[ ws nextPut: rs next.
		rs atEnd ifTrue: [ ^ self error: 'incorrect format' ] ].
	[ rs atEnd not and: [ '0123456789' includes: rs peek ] ] whileTrue: [ ws nextPut: rs next ].
	scl := 0.
	(rs atEnd not and: [ rs peekFor: $. ]) ifTrue: 
		[ [ rs atEnd not and: [ '0123456789' includes: rs peek ] ] whileTrue: 
			[ ws nextPut: rs next.
			scl := scl + 1 ] ].
	^ ws contents asNumber / (10 raisedTo: scl) asScaledDecimal: scl