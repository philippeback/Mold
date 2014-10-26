private
disinfect: aString
	| year month day rs |
	rs := aString readStream.
	^ [ 
	format
		do: [ :token | 
			(#('YYYY' 'MM' 'DD') includes: token)
				ifTrue: [ 
					token = 'YYYY'
						ifTrue: [ year := Number readFrom: rs ].
					token = 'MM'
						ifTrue: [ 
							month := Number readFrom: rs.
							month = 0
								ifTrue: [ ^ nil ] ].
					token = 'DD'
						ifTrue: [ 
							day := Number readFrom: rs.
							day = 0
								ifTrue: [ ^ nil ] ] ]
				ifFalse: [ rs next: token size ] ].
	Date year: year month: month day: day ] on: Error do: [ :ex | nil ]