This class is little more than a composite of Fields, where Fields do most of the work. It provides a canvas-like API for creating fields and a convenience API for rendering fields on an HTML canvas.

To use a Mold, you typically create and store it in an instance variable of your component. This is part of the object's initialization

buildMold
	mold := Mold new.
	(mold stringField)
		on: #name of: self;
		beRequired.
		 
When rendering the form, you hand it the canvas it will render itself on, and then tell it to render its fields:

renderContentOn: html
	html form:
		[ mold canvas: html.
		html table:
			[ mold renderTableRows. ] ]

