private
validateConditions
	(input notNil and: [ (input matchesRegex: '([-]?)\d+(.\d+)?') not ]) ifTrue: [ errors add: 'Invalid number.' ].
	super validateConditions