private
format: aDate monthOn: ws
	ws nextPutAll: (aDate monthIndex printPaddedWith: $0 to: 2)