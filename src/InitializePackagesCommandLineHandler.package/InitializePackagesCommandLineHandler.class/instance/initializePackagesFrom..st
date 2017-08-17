activation
initializePackagesFrom: aFileName

	| packages |

	Behavior initialize.
	
	packages := OrderedCollection new.
	(File named: aFileName) readStreamDo: [:binaryStream | | stream |
		stream := ZnCharacterReadStream on: binaryStream encoding: 'utf8'.
		[stream atEnd] whileFalse: [ 
			packages add: (stream upTo: Character cr)]].
	
	RPackageOrganizer default basicInitializeFromPackagesList: packages.
	RPackageOrganizer registerInterestToSystemAnnouncement.