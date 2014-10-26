private
deriveWidgetID: html 
	^ key ifNil: [html nextId]