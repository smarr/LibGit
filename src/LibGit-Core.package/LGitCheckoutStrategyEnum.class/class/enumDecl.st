enum description
enumDecl
	^ #(
	GIT_CHECKOUT_NONE                     0  "default is a dry run, no actual updates "
	
	GIT_CHECKOUT_SAFE                     1  "Allow safe updates that cannot overwrite uncommitted data "
	GIT_CHECKOUT_SAFE_CREATE              2  "Allow safe updates plus creation of missing files "
	GIT_CHECKOUT_FORCE                    4  "Allow all updates to force working directory to look like index "

	GIT_CHECKOUT_ALLOW_CONFLICTS         16  "Allow checkout to make safe updates even if conflicts are found "
	GIT_CHECKOUT_REMOVE_UNTRACKED        32  "Remove untracked files not in index (that are not ignored)"
	GIT_CHECKOUT_REMOVE_IGNORED          64  "Remove ignored files not in index"
	GIT_CHECKOUT_UPDATE_ONLY            128  "Only update existing files, don't create new ones"
	GIT_CHECKOUT_DONT_UPDATE_INDEX      256  "Normally checkout updates index entries as it goes; this stops that"
   GIT_CHECKOUT_NO_REFRESH             512  "Don't refresh index/config/etc before doing checkout"

	GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH 8192 "Treat pathspec as simple list of exact match file paths"

	" THE FOLLOWING OPTIONS ARE NOT YET IMPLEMENTED "
	
	GIT_CHECKOUT_SKIP_UNMERGED          1024  "Allow checkout to skip unmerged files (NOT IMPLEMENTED)"
	GIT_CHECKOUT_USE_OURS               2048  "For unmerged files, checkout stage 2 from index (NOT IMPLEMENTED)"
	GIT_CHECKOUT_USE_THEIRS             4096  "For unmerged files, checkout stage 3 from index (NOT IMPLEMENTED)"
	GIT_CHECKOUT_UPDATE_SUBMODULES     65536 "Recursively checkout submodules with same options (NOT IMPLEMENTED)"
	GIT_CHECKOUT_UPDATE_SUBMODULES_IF_CHANGED 131072 "Recursively checkout submodules if HEAD moved in super repo (NOT IMPLEMENTED)"
)