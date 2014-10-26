accessing
save
	callback
		ifNotNil: [ 
			callback numArgs = 1
				ifTrue: [ callback value: value ]
				ifFalse: [ callback value ] ]