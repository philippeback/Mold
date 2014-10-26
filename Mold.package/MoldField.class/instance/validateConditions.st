private
validateConditions
	| disinfected arguments |
	disinfected := [ self disinfect: input ] on: Error do: [ :ex | nil ].
	arguments := Array with: input with: disinfected.
	conditions
		do: [ :each | 
			(self evaluate: each value withPossibleArguments: arguments)
				ifFalse: [ 
					errors add: (self evaluate: each key withPossibleArguments: arguments).
					each = self requirementCondition
						ifTrue: [ ^ self ] ] ]