set -e

VM=pharo
COMPILER_IMAGE_NAME=compiler

cd cache

rm -rf compiler.image
cp bootstrap.image compiler.image

${VM} "${COMPILER_IMAGE_NAME}.image" 
${VM} "${COMPILER_IMAGE_NAME}.image" loadHermes Kernel.hermes Collections-Abstract.hermes Collections-Sequenceable.hermes Collections-Native.hermes Collections-Unordered.hermes Collections-Strings.hermes Collections-Atomic.hermes Collections-Streams.hermes Collections-Arithmetic.hermes Collections-Weak.hermes Collections-Stack.hermes Collections-Support.hermes Announcements-Core.hermes Multilingual-Encodings.hermes Multilingual-Languages.hermes Multilingual-TextConversion.hermes Jobs.hermes Kernel-BytecodeEncoders.hermes InitializePackagesCommandLineHandler.hermes Random-Core.hermes System-BasicCommandLineHandler.hermes UIManager.hermes Transcript-NonInteractive.hermes System-Model.hermes Network-UUID.hermes PharoBootstrap-Initialization.hermes Files.hermes Traits.hermes Hermes.hermes RPackage-Core.hermes System-Support.hermes System-Sources.hermes Transcript-Core.hermes Transcript-NonInteractive.hermes UIManager.hermes System-Finalization.hermes FFI-Kernel.hermes FFI-Pools.hermes AST-Core.hermes Colors.hermes FileSystem-Path.hermes Hermes.hermes Slot.hermes System-Announcements.hermes System-Hashing.hermes System-Platforms.hermes System-SessionManager.hermes Zinc-Character-Encoding-Core.hermes System-CommandLineHandler.hermes System-CommandLine.hermes --save
${VM} "${COMPILER_IMAGE_NAME}.image" initializePackages --protocols=protocolsKernel.txt --packages=packagesKernel.txt --save
${VM} "${COMPILER_IMAGE_NAME}.image" loadHermes OpalCompiler-Core.hermes CodeExport.hermes CodeImport.hermes CodeImportCommandLineHandlers.hermes --save

${VM} "${COMPILER_IMAGE_NAME}.image" loadHermes PerformMessageCommandLineHandler.hermes --save
${VM} "${COMPILER_IMAGE_NAME}.image" perform PerformMessageCommandLineHandler answerUltimateQuestion

#{VM} "${COMPILER_IMAGE_NAME}.image" eval --save "CompilationContext initialize. OCASTTranslator initialize." 
