rendering
renderWidgetId: id on: html
	| tag |
	tag := self widgetOn: html.
	tag
		id: id;
		title: title;
		callback: [ :val | self input: val ].
	dynamicLabel
		ifNotNil: [ 
			| labelId |
			labelId := self dynamicLabelIdFor: id.
			tag
				onFocus: 'if(this.value=="") $("' , labelId , '").className="active"';
				onKeyPress: '$("' , labelId , '").className="hidden"';
				onKeyUp: 'if(this.value=="") $("' , labelId , '").className="active"';
				onBlur: 'if(this.value=="") $("' , labelId , '").className="inactive"' ].
	self isValid
		ifFalse: [ tag class: 'error' ].
	modifyBlock
		ifNotNil: [ 
			modifyBlock numArgs = 2
				ifTrue: [ modifyBlock value: tag value: html ]
				ifFalse: [ 
					modifyBlock numArgs = 1
						ifTrue: [ modifyBlock value: tag ]
						ifFalse: [ modifyBlock value ] ] ].
	^ tag