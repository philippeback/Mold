rendering
widgetOn: html 
	| tag |
	tag := html select.
	tag selected: input.
	onChange ifNotNil: [tag onChange: (onChange value: html)].
	self isRequired 
		ifTrue: 
			[tag list: list.
			tag labels: [:item | self labelFor: item]]
		ifFalse: 
			[tag list: #(nil ) , list.
			tag 
				labels: [:item | item ifNil: [optionalLabel] ifNotNil: [self labelFor: item]]].
	^ tag