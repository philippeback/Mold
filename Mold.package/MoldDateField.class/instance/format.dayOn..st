private
format: aDate dayOn: ws
	ws nextPutAll: (aDate dayOfMonth printPaddedWith: $0 to: 2)