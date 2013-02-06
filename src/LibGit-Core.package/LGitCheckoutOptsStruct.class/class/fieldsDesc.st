fields description
fieldsDesc
	^#(
	uint32_t   version;
	uint32_t   checkout_strategy;
	 int32_t   disable_filters;
	uint32_t   dir_mode;
	uint32_t   file_mode;
	 int32_t   file_open_flags;
	uint32_t   notify_flags;
	git_checkout_notify_cb    notify_cb;
	void *                    notify_payload;
	git_checkout_progress_cb  progress_cb;
	void *                    progress_payload;
	git_strarray   paths;
	git_tree_ptr   baseline;
)