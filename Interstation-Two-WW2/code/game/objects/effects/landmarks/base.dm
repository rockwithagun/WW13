var/area/partisan_stockpile = null

/obj/effect/landmark
	name = "landmark"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	anchored = 1.0
	unacidable = 1
	simulated = 0
	invisibility = 101
	var/delete_me = 0

/obj/effect/landmark/New()
	..()
	tag = text("landmark*[]", name)

	switch(name)			//some of these are probably obsolete
		if("monkey")
			monkeystart += loc
			delete_me = 1
			return
		if("start")
			newplayer_start += loc
			delete_me = 1
			return
		if("JoinLate")
			latejoin += loc
			delete_me = 1
			return
		if("JoinLateGhost")
			if(!latejoin_turfs["Ghost"])
				latejoin_turfs["Ghost"] = list()
			latejoin_turfs["Ghost"] += loc
			qdel(src)
			return
		if("JoinLateGateway")
			latejoin_gateway += loc
			delete_me = 1
			return
		if("JoinLateCryo")
			latejoin_cryo += loc
			delete_me = 1
			return
		if("JoinLateCyborg")
			latejoin_cyborg += loc
			delete_me = 1
			return
		if("prisonwarp")
			prisonwarp += loc
			delete_me = 1
			return
		if("Holding Facility")
			holdingfacility += loc
		if("tdome1")
			tdome1 += loc
		if("tdome2")
			tdome2 += loc
		if("tdomeadmin")
			tdomeadmin += loc
		if("tdomeobserve")
			tdomeobserve += loc
		if("prisonsecuritywarp")
			prisonsecuritywarp += loc
			delete_me = 1
			return
		if("xeno_spawn")
			xeno_spawn += loc
			delete_me = 1
			return
		if("endgame_exit")
			endgame_safespawns += loc
			delete_me = 1
			return
		if("bluespacerift")
			endgame_exits += loc
			delete_me = 1
			return
		if("monkey")
			monkeystart += loc
			qdel(src)
			return
		if("start")
			newplayer_start += loc
			qdel(src)

		if("JoinLate")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRussia")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateNATO")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateNATO-commander")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateNATO-officer")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if ("JoinLateRussia-FALLBACK")
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if ("JoinLateRussia-NATO")
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRussia-commander")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRussia-officer")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateSS")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateSS-Officer")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		// NEW GERMAN LANDMARKS

		if("JoinLateHeer")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateHeerChef")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateHeerCO")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateHeerSO")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateHeerDr")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateHeerQM")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateHeerSL")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		// NEW RUSSIAN LANDMARKS

		if("JoinLateRA")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRAChef")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRACO")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRASO")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRADr")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRAQM")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if("JoinLateRASL")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		// PARTISAN LANDMARKS

		if ("JoinLatePartisan")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if ("JoinLatePartisanLeader")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if ("TownStockpile")
			var/turf/turf = loc
			var/i = rand(1,3)
			switch (i)
				if (1) // meds
					for (var/v in 1 to rand(2,3))
						if (prob(33))
							new/obj/item/weapon/pill_pack/antitox(turf)
						if (prob(33))
							new/obj/item/weapon/pill_pack/tramadol(turf)
						if (prob(33))
							new/obj/item/weapon/pill_pack/dexalin(turf)
						if (prob(33))
							new/obj/item/weapon/pill_pack/bicaridine(turf)
						if (prob(33))
							new/obj/item/weapon/pill_pack/inaprovaline(turf)
						if (prob(33))
							new/obj/item/weapon/pill_pack/pervitin(turf)
						if (prob(33))
							new/obj/item/weapon/gauze_pack/bint(turf)
				if (2) // tools
					for (var/v in 1 to rand(2,3))
						if (prob(50))
							new/obj/item/weapon/wrench(turf)
						if (prob(50))
							new/obj/item/weapon/crowbar(turf)
						if (prob(50))
							new/obj/item/weapon/weldingtool(turf)
						if (prob(50))
							new/obj/item/weapon/screwdriver(turf)
				if (3) // materials
					var/type = pick(/obj/item/stack/material/steel, /obj/item/stack/material/wood)
					var/obj/item/stack/sheets = new type (turf)
					sheets.amount = rand(10,30)


			qdel(src)
			return

		if ("JoinLateCivilian")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return

		if ("PartisanStockpile")
			var/turf/turf = get_turf(loc)
			for (var/v in 1 to 5)
				if (prob(50))
					new/obj/item/weapon/gun/projectile/pistol/luger(turf)
				if (prob(75))
					new/obj/item/ammo_magazine/luger(turf)
				if (prob(60))
					new/obj/item/attachment/bayonet(turf)
				if (prob(50))
					new/obj/item/weapon/melee/classic_baton/mp_baton/russian_baton/old(turf)
			partisan_stockpile = get_area(turf)
			qdel(src)
			return

		if("JoinLateGRU")
			if(!latejoin_turfs[name])
				latejoin_turfs[name] = list()
			latejoin_turfs[name] += loc
			qdel(src)
			return
		if("Fallschirm")
			fallschirm_landmarks += loc
			qdel(src)
			return
		if("prisonwarp")
			prisonwarp += loc
			qdel(src)
			return
		if("Holding Facility")
			holdingfacility += loc
		if("tdome1")
			tdome1 += loc
		if("tdome2")
			tdome2 += loc
		if("tdomeadmin")
			tdomeadmin += loc
		if("tdomeobserve")
			tdomeobserve += loc
		if("prisonsecuritywarp")
			prisonsecuritywarp += loc
			qdel(src)
			return
		if("xeno_spawn")
			xeno_spawn += loc
			qdel(src)
			return
		if("endgame_exit")
			endgame_safespawns += loc
			qdel(src)
			return
		if ("artillery_spawn")
			new/obj/machinery/artillery(loc, null, SOUTH)
			qdel(src)
			return
		if ("nebel_artillery_spawn")
			new/obj/machinery/artillery/nebel(loc, null, SOUTH)
			qdel(src)
			return
		if("bluespacerift")
			endgame_exits += loc
			qdel(src)
			return

	landmarks_list += src
	return 1

/obj/effect/landmark/proc/delete()
	delete_me = 1

/obj/effect/landmark/initialize()
	..()
	if(delete_me)
		qdel(src)

/obj/effect/landmark/Destroy()
	landmarks_list -= src
	return ..()

/obj/effect/landmark/start
	name = "start"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x"
	anchored = 1.0
	invisibility = 101

/obj/effect/landmark/start/New()
	..()
	tag = "start*[name]"
	return 1

//Costume spawner landmarks
/obj/effect/landmark/costume/New() //costume spawner, selects a random subclass and disappears

	var/list/options = typesof(/obj/effect/landmark/costume)
	var/PICK= options[rand(1,options.len)]
	new PICK(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/gladiator/New()
	new /obj/item/clothing/under/gladiator(src.loc)
	new /obj/item/clothing/head/helmet/gladiator(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/madscientist/New()
	//new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/glasses/gglasses(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/elpresidente/New()
	//new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/mask/smokable/cigarette/cigar/havana(src.loc)
	new /obj/item/clothing/shoes/jackboots(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/nyangirl/New()
	new /obj/item/clothing/under/schoolgirl(src.loc)
	new /obj/item/clothing/head/kitty(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/maid/New()
	var/CHOICE = pick( /obj/item/clothing/head/beret , /obj/item/clothing/head/rabbitears )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/sunglasses/blindfold(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/plaguedoctor/New()
	new /obj/item/clothing/suit/bio_suit/plaguedoctorsuit(src.loc)
	new /obj/item/clothing/head/plaguedoctorhat(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/nightowl/New()
	new /obj/item/clothing/under/owl(src.loc)
	new /obj/item/clothing/mask/gas/owl_mask(src.loc)
	delete_me = 1

/obj/effect/landmark/costume/commie/New()
	new /obj/item/clothing/under/soviet(src.loc)
	new /obj/item/clothing/head/ushanka(src.loc)
	delete_me = 1
