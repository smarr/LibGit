fields description
fieldsDesc
	^ #(
	uint32_t                        version;
	git_checkout_opts               checkout_opts;
	int32_t                         bare;
	git_transfer_progress_cb        fetch_progress_cb;
	void *                          fetch_progress_payload;
	char_ptr                        remote_name;
	char_ptr                        pushurl;
	char_ptr                        fetch_spec;
	char_ptr                        push_spec;
	git_cred_acquire_cb             cred_acquire_cb;
	void *                          cred_acquire_payload;
	git_transport *                 transport;
	git_remote_callbacks *          remote_callbacks;
	git_remote_autotag_option_t     remote_autotag;
	char_ptr                        checkout_branch;  )