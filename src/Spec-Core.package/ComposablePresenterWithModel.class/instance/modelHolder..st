accessing - private
modelHolder: aValueHolder

	modelHolder := aValueHolder.
	modelHolder whenChangedDo: [ self modelChanged ].
	