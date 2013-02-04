conversion
asDateAndTime
	^ LGitFFI uniqueInstance
				dateAndTimeFrom: self time
							  and: self offset
