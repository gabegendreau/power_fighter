# These are the other actions you can do besides attacking

# More complicated actions, such as fight
# and search, are in their own file

def stats
	puts ""
	puts "Your health is at #{@health}/100 "
	puts "Your power is at #{@power}"
	puts "You have #{@defense} additional defense points"
	puts "You have #{@punch_bonus} additional punch power"
	puts "You have #{@kick_bonus} additional kick power"
	puts "You have #{@luck} additional luck"	
	puts "You have #{@pointless_points} Pointless Points, and they don't matter"
	puts ""
	controller
end

def rest
	if @health < 95
		@health += 5
	else
		@health = 100
	end
	puts "\nYou find a nice pile of garbage to rest in, you feel fantastic.\n\n"
	puts "Your health is at #{@health}/100.\n\n"
	controller
end

def inventory
	puts ""
	puts "You have the following items in your possession:\n\n"
	puts @inventory
	puts ""
	controller
end

def die
	puts "\n\n\n\n\n"
	puts "Later Gator\n\n"
	puts format("%10s", ":-)")
	puts ""
end

def play_game
	puts ""
	puts "You play your favorite game, it's the one where you try to steal a pizza crust\nfrom a rat and see if it bites you."
	puts ""
	rat_chance = rand(20) + @luck
	if rat_chance <= 12
		@health -=2
		puts ""
		puts "It bit you. -2 health"
		puts ""
	else 
		@pointless_points += 20
		puts ""
		puts "You got the pizza crust. Tight.\n\n"
		puts "+20 points! (They aren't real...)\n\n"
	end
	controller
end