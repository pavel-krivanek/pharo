accessing - private
modelHolder: aValueHolder

	modelHolder := aValueHolder asSpecCompatibleModel.
	modelHolder whenChangedDo: [ self modelChanged ].
	