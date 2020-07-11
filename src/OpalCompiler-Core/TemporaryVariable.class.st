"
I model temp variables. With Closures, there are two kinds: Copying and those that are stored in a so called temp vector, a heap allocated array that itself is stored in a copying temp variable.
"
Class {
	#name : #TemporaryVariable,
	#superclass : #LocalVariable,
	#category : #'OpalCompiler-Core-Semantics'
}

{ #category : #accessing }
TemporaryVariable class >> semanticNodeClass [

	^RBTemporaryNode 
]

{ #category : #testing }
TemporaryVariable >> isTemp [

	^ true
]