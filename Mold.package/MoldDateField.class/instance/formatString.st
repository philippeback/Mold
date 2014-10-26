accessing
formatString
	| ws |
	ws := String new writeStream.
	format do: [ :token | ws nextPutAll: token ].
	^ ws contents