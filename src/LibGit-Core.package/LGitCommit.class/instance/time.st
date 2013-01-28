accessing
time
	| ffi time offset |
	ffi := LGitRepositoryFFI uniqueInstance.
	time   := ffi commit_time: handle.
	offset := ffi commit_time_offset: handle.
	^ ffi dateAndTimeFrom: time and: offset