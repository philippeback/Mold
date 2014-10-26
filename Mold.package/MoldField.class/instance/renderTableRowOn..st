rendering
renderTableRowOn: html 
	html tableRow: 
		[ | id |
		id := self deriveWidgetID: html.
		html tableData: 
			[ self 
				renderLabelFor: id
				on: html ].
		html tableData: 
			[ self 
				renderWidgetId: id
				on: html.
			self renderExampleOn: html ].
		self isValid ifFalse: [ html tableData: [ self renderErrorsOn: html ] ] ]