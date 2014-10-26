private
disinfect: aString 
	(aString reject: [:each | each isDigit]) notEmpty ifTrue: [^nil].
	^ [aString asNumber] on: Error do: [:ex | nil ]