rendering
renderCustomOn: html 
	html table: 
		[ mold tableRow: #name.
		html tableRow: 
			[ html
				tableData: [ mold label: #email ];
				tableData: [ mold widget: #email ];
				tableData: [ mold label: #confirmEmail ];
				tableData: [ mold widget: #confirmEmail ];
				tableData: [ mold errors: #email ] ] ].
	mold paragraph: #about.
	mold paragraph: #spamMe