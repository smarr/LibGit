baseline
baseline01: spec
    <version: '0.1-baseline'>
    
	spec for: #common do: [ 
	    spec blessing: #baseline.
	
	
	    "NativeBoost FFI"
	    spec project: 'NativeBoost' with: [
	        spec
	           className: 'ConfigurationOfNativeBoost';
	           repository: 'http://www.squeaksource.com/NativeBoost';
	           versionString: #bleedingEdge
	    ].

	    spec package: 'Phexample' with: [
		        spec repository: 'http://www.squeaksource.com/phexample' ].
	
	    spec repository: 'http://smalltalkhub.com/mc/StefanMarr/LibGit/main'.
	    spec package: 'LibGit-Core' with: [
			spec
				requires: #(NativeBoost Phexample);
				postLoadDoIt: #postLoadRecompile ]
	].