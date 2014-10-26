rendering
renderParagraphOn: html 
	| id |
	id := self deriveWidgetID: html.
	self isValid ifTrue: 
		[ html paragraph: 
			[ self 
				renderLabelFor: id
				on: html.
			label ifNotNil: [ html break ].
			self 
				renderWidgetId: id
				on: html.
			self renderExampleOn: html ].
		^ self ].
	errors size = 1 
		ifTrue: 
			[ html paragraph: 
				[ self 
					renderLabelFor: id
					on: html.
				html space.
				html span
					class: 'errors';
					with: errors first.
				html break.
				self 
					renderWidgetId: id
					on: html.
				self renderExampleOn: html ] ]
		ifFalse: 
			[ html paragraph: 
				[ self 
					renderLabelFor: id
					on: html ].
			self renderErrorsOn: html.
			html paragraph: 
				[ self 
					renderWidgetId: id
					on: html.
				self renderExampleOn: html ] ]