private
format: aDate token: aToken on: ws
	| map function |
	map := Dictionary new.
	map
		at: 'MM' put: #format:monthOn:;
		at: 'DD' put: #format:dayOn:;
		at: 'YYYY' put: #format:yearOn:.
	function := map at: aToken ifAbsent: [ ^ ws nextPutAll: aToken ].
	self perform: function with: aDate with: ws