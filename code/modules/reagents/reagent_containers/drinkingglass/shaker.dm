
/obj/item/chems/drinks/glass2/fitnessflask
	name = "fitness shaker"
	base_name = "shaker"
	desc = "Big enough to contain enough protein to get perfectly swole. Don't mind the bits."
	icon_state = "fitness-cup_black"
	base_icon = "fitness-cup"
	icon = 'icons/obj/drink_glasses/fitness.dmi'
	volume = 100
	material = /decl/material/solid/organic/plastic
	filling_states = @"[10,20,30,40,50,60,70,80,90,100]"
	possible_transfer_amounts = @"[5,10,15,25]"
	rim_pos = null // no fruit slices
	var/lid_color = "black"

/obj/item/chems/drinks/glass2/fitnessflask/Initialize()
	. = ..()
	lid_color = pick("black", "red", "blue")
	update_icon()

/obj/item/chems/drinks/glass2/fitnessflask/on_update_icon()
	..()
	icon_state = "[base_icon]_[lid_color]"

/obj/item/chems/drinks/glass2/fitnessflask/proteinshake
	name = "protein shake"

/obj/item/chems/drinks/glass2/fitnessflask/proteinshake/populate_reagents()
	reagents.add_reagent(/decl/material/liquid/nutriment,         30)
	reagents.add_reagent(/decl/material/solid/metal/iron,         10)
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 15)
	reagents.add_reagent(/decl/material/liquid/water,             45)

