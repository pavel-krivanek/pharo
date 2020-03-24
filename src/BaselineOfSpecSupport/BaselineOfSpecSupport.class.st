Class {
	#name : #BaselineOfSpecSupport,
	#superclass : #BaselineOf,
	#category : #BaselineOfSpecSupport
}

{ #category : #baseline }
BaselineOfSpecSupport >> baseline: spec [ 
    
	<baseline>

	| repository | 
	
	repository := self packageRepositoryURL.

	spec for: #common do: [
		spec baseline: 'TelePharoSupport' with: [spec repository: repository].

		spec package: 'Text-Core'.
		spec package: 'Fonts-Abstract'.
		spec package: 'Fonts-Infrastructure'.
		spec package: 'MenuRegistration'.
		spec package: 'Keymapping-Core'.
		spec package: 'Keymapping-KeyCombinations'.
		spec package: 'Keymapping-Pragmas'.
		spec package: 'System-Localization'.
	].
]
