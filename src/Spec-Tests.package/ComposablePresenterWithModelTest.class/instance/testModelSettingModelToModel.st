testing
testModelSettingModelToModel

	"we had a Model, new model is another Model"
	| model model2 presenter |
	model := TestingPointModel new x: 1; y: 2; yourself.
	model2 := TestingPointModel new x: 4; y: 5; yourself.
	presenter := TestingComposablePresenterWithModel on: model.
	self assert: presenter specCompatibleModel isSpecCompatibleModel.
	self deny: presenter specCompatibleModel isValueHolder.
	self assert: model2 isSpecCompatibleModel.
	self deny: model2 isValueHolder.
	presenter model: model2.
	self assert: presenter specCompatibleModel isSpecCompatibleModel.
	self deny: presenter specCompatibleModel isValueHolder.
	self assert: presenter specCompatibleModel == model2.
	self assert: presenter specCompatibleModel announcer numberOfSubscriptions > 0.
