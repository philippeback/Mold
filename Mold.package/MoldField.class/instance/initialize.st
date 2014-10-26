initialize-release
initialize
	conditions := OrderedCollection new.
	errors := OrderedCollection new.
	isRequired := false.
	self addRequirementCondition