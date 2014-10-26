accessing
formatString: aString
	"aString should be some combination of MM, DD, and YYYY (use whatever separator you want).
	Note that the input parser doesn't require leading zeros like 'MM' or 'DD' implies, but it prints them in its output.
	
	Examples:
		(ISO format): YYYY-MM-DD
		(USA format): MM/DD/YYYY
		(British): DD/MM/YYYY
		(Swiss) DD.MM.YY
	"

	| chunks |
	chunks := OrderedCollection with: aString.
	#('MM' 'DD' 'YYYY')
		do: [ :placeholder | 
			| tokens |
			tokens := OrderedCollection new.
			chunks
				do: [ :each | 
					| index |
					index := each indexOfSubCollection: placeholder.
					index = 0
						ifTrue: [ tokens add: each ]
						ifFalse: [ 
							| pre post |
							pre := each copyFrom: 1 to: index - 1.
							pre isEmpty
								ifFalse: [ tokens add: pre ].
							tokens add: placeholder.
							post := each copyFrom: index + placeholder size to: each size.
							post isEmpty
								ifFalse: [ tokens add: post ] ] ].
			chunks := tokens ].
	format := chunks asArray