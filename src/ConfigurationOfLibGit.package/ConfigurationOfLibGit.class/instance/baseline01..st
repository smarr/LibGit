baseline
baseline01: spec
    <version: '0.1-baseline'>
    
	spec for: #common do: [ 
	    spec blessing: #baseline.

	    "NativeBoost FFI"
	    spec project: 'NativeBoost' with: [
	        spec
	           className: 'ConfigurationOfNativeBoost';
	           repository: 'http://smalltalkhub.com/mc/Pharo/NativeBoost/main';
	           versionString: #bleedingEdge
	    ].

	    spec package: 'Phexample' with: [
		        spec repository: 'http://smalltalkhub.com/mc/Phexample/Phexample/main' ].
	
	    spec repository: 'http://smalltalkhub.com/mc/StefanMarr/LibGit/main'.
	    spec package: 'LibGit-Core' with: [
			spec
				requires: #(NativeBoost Phexample);
				postLoadDoIt: #postLoadRecompile ]
	].