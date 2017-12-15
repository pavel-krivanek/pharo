Metacello new
  baseline: 'Calypso';
  repository: 'github://dionisiydk/Calypso:v0.7.18';
  load.

"ClyBrowser beAllDefault."


[ 
Metacello new
  baseline: 'Ring2';
  repository: 'github://pavel-krivanek/Ring2/src';
  load: (#all);
  load.

] on: Warning do: #resume.

!

'From Pharo6.0 of 13 May 2016 [Latest update: #60508] on 7 December 2017 at 1:00:41.915623 pm'!

!RG2WeakLayoutDefinition methodsFor: '*Ring2-Hermes' stamp: 'PavelKrivanek 12/7/2017 13:00'!
layoutName

	^ #WeakLayout! !
