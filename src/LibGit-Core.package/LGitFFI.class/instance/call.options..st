utils
call: fnSpec options: options
	" you can override this method if you need to"

	^ (self nbCalloutIn: thisContext sender)
		cdecl;	
		options: options;
		function: fnSpec module: self libraryNameOrHandle
