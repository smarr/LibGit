traversing
subTreeEntries
	^ self entries select: [:entry |
		entry type = GIT_OBJ_TREE ]