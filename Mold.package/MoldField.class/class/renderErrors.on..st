common
renderErrors: aCollection on: html 
	aCollection isEmpty ifTrue: [^self].
	(html unorderedList)
		class: 'errors';
		list: aCollection