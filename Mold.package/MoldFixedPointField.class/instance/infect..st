private
infect: aFixedPoint 
	^ ((aFixedPoint asScaledDecimal: scale) printString findTokens: 's') first