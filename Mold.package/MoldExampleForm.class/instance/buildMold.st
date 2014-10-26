initialization
buildMold
	| name email confirmEmail |
	mold := Mold new.
	name := mold stringField
		key: #name;
		label: 'Your Name:';
		beRequired;
		addCondition: [ :val | val matchesRegex: '\w+ \w+' ]
			labeled: 
				[ :wrong | 
				'Please enter your first and last name. I couldn''t find a space in <1s>' expandMacrosWith: wrong ].
	email := mold emailField
		key: #email;
		label: 'Email Address:'.
	confirmEmail := mold emailField
		key: #confirmEmail;
		label: 'Confirm Email:'.
	email 
		addCondition: [ :input | input = confirmEmail input ]
		labeled: 'Email addresses did not match.'.
	confirmEmail 
		addCondition: [ :input | input = email input ]
		labeled: 'Email addresses did not match.'.
	mold textField
		key: #about;
		label: 'Please tell us more about yourself.';
		beRequired;
		customize: 
			[ :textarea | 
			textarea
				rows: 5;
				columns: 60 ].
	mold checkboxField
		key: #spamMe;
		label: 'Yes, please sign me up for the email newsletter!';
		addCondition: [ :val | name isValid not or: [ val or: [ name value first = $K ] ] ]
			labeled: 'Sorry, you may not opt out of our spam unless your first name starts with K.';
		value: true