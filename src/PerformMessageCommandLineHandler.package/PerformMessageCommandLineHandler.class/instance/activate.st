activation
activate
	| aClass aMessage arguments messageArguments |
	self activateHelp
		ifTrue: [ ^ self ].
	arguments := self commandLine arguments.
	(arguments size <= 2)
		ifFalse: [ ^ self exitFailure: 'Not enough arguments' ].
		
	aClass := Smalltalk globals at: arguments first asSymbol ifAbsent: [ 
		  ^ self exitFailure: 'Unknown class' ].
	aMessage := arguments second  asSymbol.
	messageArguments := arguments allButFirst: 2.
	
	messageArguments 
		ifEmpty: [ aClass perform: aMessage ]
		ifNotEmpty: [  aClass perform: aMessage withArguments: messageArguments ].
	
	(self hasOption: 'save')
		ifTrue: [ Smalltalk snapshot: true andQuit: false ].
	self exitSuccess