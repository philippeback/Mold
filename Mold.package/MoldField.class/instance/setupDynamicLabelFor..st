private
setupDynamicLabelFor: anID 
	| labelID |
	labelID := self dynamicLabelIdFor: anID.
	self label: 
		[ :html | 
		html span
			id: labelID;
			class: (self input 
					ifNil: [ 'inactive' ]
					ifNotNil: [ 'hidden' ]);
			onClick: '$("' , anID , '").focus()';
			with: dynamicLabel ]