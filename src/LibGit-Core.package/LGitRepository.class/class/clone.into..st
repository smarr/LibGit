as yet unclassified
clone: url into: localFolder
	| clone |
	clone := LGitRepositoryCloneRequest new.
	clone url: url.
	clone localFolder: localFolder.
	^ clone execute