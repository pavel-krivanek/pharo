preparation
prepareBootstrap
	
	self
		exportKernelProtocols;
		exportSUnitProtocols;
		exportAllPackagesIntoMcz;
		exportMonticelloInStFile;
		exportMultilingualInStFile;
		exportSUnitInStFile;
		exportCoreTestsInStFile;
		exportFileSystemInStFile;
		exportDeprecatedInStFile;
		exportJenkinsToolsInStFile.