conversion
asDateAndTime
	^ LGitRepositoryFFI uniqueInstance
				dateAndTimeFrom: self time
							  and: self offset
