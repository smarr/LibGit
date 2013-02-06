private
composeOptions
	| options |
	options := LGitCloneOptionsStruct new.
	options useDefaults.
	"options fetch_progress_cb: (LGitTransferProgressCb on: [:stats :payload |
		| statsData |
		statsData := LGitTransferProgressStruct fromPointer: stats.
		Transcript crShow: 	'idxObj: ', statsData indexed_objects asString,
								'rcvdBytes: ', statsData received_bytes asString,
								'totalObj:', statsData total_objects asString.] )."
	
	^ options