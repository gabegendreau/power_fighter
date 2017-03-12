# This is the controller that handles your decisions on what action to take

 def controller
	if @health > 0
		puts "What would you like to do?"
		puts ""
		action = gets.chomp.downcase
		puts ""
		puts "*" * 78
		case action
			when "stats"
				stats
			when "rest"
				rest
			when "inventory"
				inventory
			when "fight"
				pick_enemy_size
			when "search"
				search
			when "smoke weed"
				smoke_weed
			when "tattoo"
				tattoo
			when "smuggle crack"
				smuggle_crack
			when "shiv"
				shiv
			when "shadow puppets"
				shadow_puppets
			when "meditate"
				meditate
			when "play game"
				play_game
			when "have sex"
				have_sex
			when "die"
				die
		else
			puts "I only know so many tricks, try again..."
			puts ""
			controller
		end
	else
		die
	end
end