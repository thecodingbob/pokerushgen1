UndergroundPathRoute7_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  7, ROUTE_7, 5
	warp_event  4,  7, ROUTE_7, 5
	warp_event  4,  4, LAVENDER_TOWN, 6

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_MIDDLE_AGED_MAN, STAY, NONE, 1 ; person

	def_warps_to UNDERGROUND_PATH_ROUTE_7
