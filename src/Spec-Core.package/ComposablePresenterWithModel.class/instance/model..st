accessing
model: aDomainObject

	(aDomainObject isSpecCompatibleModel not and: [ self specCompatibleModel isValueHolder ])
		ifTrue: [ self specCompatibleModel value: aDomainObject ]
		ifFalse: [ self specCompatibleModel: aDomainObject ]
	