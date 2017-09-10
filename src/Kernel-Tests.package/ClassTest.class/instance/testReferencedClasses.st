testing - navigation
testReferencedClasses
	{(RBLintRuleTest -> { Object. Array. WriteStream. String}). 
	 (RBBasicLintRuleTest -> {RBSelectorEnvironment}).
	 (RBCompositeLintRuleTest -> {OrderedCollection})
	}
		do: [ :assoc | 
			self assert: assoc key referencedClasses notEmpty.
			self assert: (assoc key referencedClasses asSet includesAll: assoc value asSet)]