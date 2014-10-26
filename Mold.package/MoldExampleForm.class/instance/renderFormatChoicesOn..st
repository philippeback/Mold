rendering
renderFormatChoicesOn: html
	html
		paragraph:
			[(html anchor)
				callback: [format := #table];
				with: 'Table'.
			html space.
			(html anchor)
				callback: [format := #paragraphs];
				with: 'Paragraphs'.
			html space.
			(html anchor)
				callback: [format := #custom];
				with: 'Custom']