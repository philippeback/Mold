private
evaluate: aBlockOrString withPossibleArguments: anArray
	| args |
	aBlockOrString isBlock
		ifFalse: [ ^ aBlockOrString asString ].
	anArray size == aBlockOrString numArgs
		ifTrue: [ ^ aBlockOrString valueWithArguments: anArray ].
	args := Array new: aBlockOrString numArgs.
	args
		replaceFrom: 1
		to: (anArray size min: args size)
		with: anArray
		startingAt: 1.
	^ aBlockOrString valueWithArguments: args