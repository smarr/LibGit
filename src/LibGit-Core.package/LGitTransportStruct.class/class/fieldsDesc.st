as yet unclassified
fieldsDesc
	self flag: 'needs work!!'.
	^ #(
	uint32_t version;
	LG2CloneHCb127 set_callbacks;
	LG2CloneHCb131 connect;
	LG2CloneHCb134 ls;
	LG2CloneHCb135 push;
	LG2CloneHCb136 negotiate_fetch;
	LG2CloneHCb138 download_pack;
	LG2CloneHCb139 is_connected;
	LG2CloneHCb140 read_flags;
	LG2CloneHCb141 cancel;
	LG2CloneHCb139 close;
	LG2CloneHCb141 free; )