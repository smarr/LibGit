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
		
		uint32_t           NBUInt32
	)