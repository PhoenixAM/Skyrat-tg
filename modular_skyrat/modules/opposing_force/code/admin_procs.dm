/client/proc/request_more_opfor()
	set category = "Admin.fun"
	set name = "Request OPFOR"
	set desc = "Request players sign up for opfor if they have antag on."

	for(var/mob/living/carbon/human/human in GLOB.alive_player_list)
		if(human.client?.prefs?.read_preference(/datum/preference/toggle/be_antag))
			to_chat(human, examine_block(span_greentext("The admins are looking for OPFOR players, if you're interested, sign up in the OOC tab!")))
	message_admins("[ADMIN_LOOKUP(usr)] has requested more OPFOR players!")

