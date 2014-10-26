rendering
renderContentOn: html 
	self renderFormatChoicesOn: html.
	html paragraph: 'Mold is a tool for building forms. It can render the forms for you, or you can render them yourself.'.
	html form: 
		[ mold canvas: html.
		format = #table 
			ifTrue: [ html table: [ mold tableRows ] ]
			ifFalse: 
				[ format = #paragraphs 
					ifTrue: [ mold paragraphs ]
					ifFalse: [ self renderCustomOn: html ] ].
		html submitButton
			value: 'Submit Form';
			callback: [ mold isValid ifTrue: [ mold inspect ] ] ]