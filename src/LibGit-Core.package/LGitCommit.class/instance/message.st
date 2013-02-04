accessing
message
	| msg encoding |
	encoding := LGitFFI uniqueInstance commit_message_encoding: handle.
	msg := LGitFFI uniqueInstance commit_message: handle.
	
	self flag: 'use encoding to properly read the message'.
	^ msg readString