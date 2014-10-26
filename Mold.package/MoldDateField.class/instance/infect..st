private
infect: aDate
	| ws |
	ws := String new writeStream.
	format do: [ :token | self format: aDate token: token on: ws ].
	^ ws contents