preparation
prepareBootstrap
	
	self
		exportKernelProtocols;
		exportSUnitProtocols;
		exportAllPackagesIntoMcz;
		exportMonticelloInStFile;
		exportSUnitInStFile;
		exportCoreTestsInStFile;
		exportFileSystemInStFile;
		exportDeprecatedInStFile;
		exportJenkinsToolsInStFile.