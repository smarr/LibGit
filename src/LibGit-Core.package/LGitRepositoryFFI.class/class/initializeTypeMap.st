NativeBoost-Core
initializeTypeMap
	" self initializeTypeMap "
	TypeMap := Dictionary newFromPairs: #(
		git_repository_ptr NBExternalObject
		git_reference_ptr  NBExternalObject
		git_object_ptr     NBExternalObject
		git_commit_ptr     git_object_ptr
		git_oid            LG2GitOidStruct
		git_oid_ptr        NBExternalAddress
		git_time           LGitTimeStruct
		git_time_t         NBInt64
		git_signature      LGitSignatureStruct
	)