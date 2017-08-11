accessing
randomValue

	"For every call return different value. Not really random but we do not want to create
	dependency on random number generators."

	lastValue ifNil: [ lastValue := 2 ].
	
	lastValue = 1 
		ifTrue: [ lastValue := 2 ]
		ifFalse: [ lastValue := 1 ].
		
	^ lastValue.