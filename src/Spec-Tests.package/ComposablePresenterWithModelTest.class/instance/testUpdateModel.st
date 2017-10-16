testing
testUpdateModel

	| aPoint presenter |
	
	aPoint := 40@54.
	presenter := TestingComposablePresenterWithModel on: aPoint.
	
	self assert: presenter x text equals: aPoint x asString.
	self assert: presenter y text equals: aPoint y asString.
	
	aPoint setX: 1 setY: 2.
	aPoint changed.
	
	"the point itself is not subscribed to the presenter"

	self deny: (presenter x text = aPoint x asString).
	self deny: (presenter y text = aPoint y asString).
	
	
	