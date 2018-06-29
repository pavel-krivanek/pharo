"
Baseline to load the Fuel serialization framework
"
Class {
	#name : #BaselineOfFuel,
	#superclass : #BaselineOf,
	#instVars : [
		'initializersEnabled'
	],
	#classVars : [
		'Initialized'
	],
	#category : #BaselineOfFuel
}

{ #category : #baselines }
BaselineOfFuel >> baseline: spec [ 
    
	<baseline>
        
	spec for: #common do: [
		spec preLoadDoIt: #'preload:package:'.
		spec postLoadDoIt: #'postload:package:'.

		spec 
			package: 'Fuel-Core';
			package: 'Fuel-Platform-Core';
			package: 'Fuel-Platform-Pharo-Core';
			package: 'Fuel-Platform-Pharo-07';	
			package: 'Fuel-Tools-Pharo'.
			
		spec 
			package: 'Fuel-Tests-Core';
			package: 'Fuel-Tools-Pharo'.
	
		spec 
			group: 'default' with: #('Fuel-Core' 'Fuel-Platform-Core' 'Fuel-Platform-Pharo-Core' 'Fuel-Platform-Pharo-07' 'Fuel-Tools-Pharo');
			
			group: 'fuel-tests' with: #('Fuel-Tests-Core' 'Fuel-Tools-Pharo').
	].

]

{ #category : #actions }
BaselineOfFuel >> postload: loader package: packageSpec [
	
	"Ignore pre and post loads if already executed"
	Initialized = true ifTrue: [ ^ self ].
	
	FLLargeIdentityHashedCollection initialize.
	FLPlatform classPool at: #Current put: FLPharo7Platform new.
	FLCompiledMethodCluster initialize.
	FLLargeIdentityHashedCollection initialize.
	FLPlatform initialize.
	
	MCMethodDefinition initializersEnabled: initializersEnabled.
	Initialized := true.
]

{ #category : #actions }
BaselineOfFuel >> preload: loader package: packageSpec [

	"Ignore pre and post loads if already executed"
	Initialized = true ifTrue: [ ^ self ].
	
	initializersEnabled := MCMethodDefinition initializersEnabled.
	MCMethodDefinition initializersEnabled: false.
	
]
