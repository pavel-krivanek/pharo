"
I am an abstract superclass for collections that have a well-defined order associated with their elements. Thus each element is externally-named by integers referred to as indices.
"
Class {
	#name : #SequenceableCollection2,
	#superclass : #Collection,
	#category : #'A1'
}

{ #category : #converting }
SequenceableCollection2 >> readStream [
	^ ReadStream2 on: self
]
