defaults
useDefaults
	"based on:
	 #define GIT_CLONE_OPTIONS_INIT {GIT_CLONE_OPTIONS_VERSION, {GIT_CHECKOUT_OPTS_VERSION, GIT_CHECKOUT_SAFE_CREATE}}"
	
	| checkoutOpts |
	checkoutOpts := LGitCheckoutOptsStruct new.
	
	self version: 1.
	checkoutOpts version: 1.
	checkoutOpts checkout_strategy: GIT_CHECKOUT_SAFE_CREATE value.
	
	self checkout_opts: checkoutOpts.