rendering
renderExampleOn: html 
	^ example ifNotNil: 
		[ html span
			class: 'example';
			with: example ]