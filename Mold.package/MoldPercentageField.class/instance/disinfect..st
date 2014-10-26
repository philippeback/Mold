private
disinfect: aString 
	^ (super disinfect: aString) ifNotNilDo: [ :number | (number / 100) asFloat ]