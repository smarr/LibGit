NativeBoost-Core
initializeTypeMap
	" self initializeTypeMap "
	TypeMap := Dictionary newFromPairs: #(
		git_repository_ptr NBExternalObject
		git_reference_ptr  NBExternalObject
		git_object_ptr     NBExternalObject
		git_commit_ptr     git_object_ptr
		git_tree_ptr       git_object_ptr
		git_blob_ptr       git_object_ptr
		git_tree_entry_ptr NBExternalObject
	
		git_clone_options  LGitCloneOptionsStruct
		
		git_oid            LG2GitOidStruct
		git_oid_ptr        NBExternalAddress
		git_time           LGitTimeStruct
		git_time_t         NBInt64
		git_off_t          NBInt64
		git_signature      LGitSignatureStruct
		git_ref_t          LGitRefTypeEnum
		git_strarray       LGitStrarrayStruct
		git_branch_t       LGitBranchTypeEnum
		git_return_t       LGitReturnCodeEnum
		char_ptr           NBExternalString
		git_otype          LGitObjectTypeEnum
		git_remote_autotag_option_t  LGitRemoteAutotagOptionEnum
		
		git_checkout_opts        LGitCheckoutOptsStruct
		git_checkout_notify_cb   LGitCheckoutNotifyCb

		git_checkout_progress_cb LGitCheckoutProgressCb
		git_transfer_progress_cb LGitTransferProgressCb
		git_cred_acquire_cb      LGitCredAcquireCb
		
		git_transfer_progress    LGitTransferProgressStruct
		git_transport            LGitTransportStruct
		git_remote_callbacks     LGitRemoteCallbacksStruct
		
		uint32_t           NBUInt32
		 int32_t           NBInt32
	)