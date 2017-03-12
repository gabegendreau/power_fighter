# These are secret actions that are not told ot the player

# Some people call them Easter Eggs

def smoke_weed
	if (@inventory.include?('marijuana') && @inventory.include?('bong') && @inventory.include?('lighter'))
		@health = 100
		@pointless_points += 50
		puts "You pack the bong full of weed and take a huge rip!"
		puts ""
		puts "Youre health is now at 100/100"
		puts "+50 points!"
		puts ""
		@inventory.slice!(@inventory.index('marijuana'))
	else
		puts "Maybe you can find somebody to help you out with that..."
		puts ""
	end
	controller
end

def tattoo
	if (@inventory.include?('safety-pin') && @inventory.include?('pen'))
		@health -= 5
		@pointless_points += 50
		puts "You break open the pen and dip the point of the safety-pin in the ink.\n\n"
		puts "You give yourself an awesome prison tattoo.\n\n"
		puts "+50 points!! -5 health..."
		puts ""
		@inventory.slice!(@inventory.index('pen'))
	else
		puts "Tattoos cost money, man..."
		puts ""
	end
	controller
end

def shiv
	if (@inventory.include?('toothbrush') && @inventory.include?('razorblade'))
		@power += 5
		@pointless_points += 50
		puts "You fashion the razorblade and toothbrush into a nice shiv.\n\n"
		puts "+50 points!! +5 power!"
		puts ""
		@inventory.slice!(@inventory.index('toothbrush'))
		@inventory.slice!(@inventory.index('razorblade'))
	else
		puts "What would you need a shiv for?"
		puts ""
	end
	controller
end

def smuggle_crack
	if (@inventory.include?('giant crack rock') && @inventory.include?('condom'))
		@health -= 15
		@power += 5
		@pointless_points += 1500
		puts "You put the crack rock in the condom and smuggle it into a local prison.\n\n"
		puts "You got some points... but was it worth it?\n\n"
		puts "+1,500 points!! +5 power!! -15 health..."
		puts ""
		@inventory.slice!(@inventory.index('giant crack rock'))
		@inventory.slice!(@inventory.index('condom'))
	else
		puts "What is wrong with you?"
		puts ""
	end
	controller
end

def shadow_puppets
	if (@inventory.include?('flashlight'))
		@health += 5
		@pointless_points += 10
		puts "You lay back in your garbage bed and make shadow puppets on the wall.\n\n"
		puts "That's quite nice.\n\n"
		puts "+10 points!! +5 health!"
		puts ""
	else
		puts "Like... how?"
		puts ""
	end
	controller
end

def meditate
	if (@inventory.include?('candle') && @inventory.include?('blanket'))
		@health += 1
		@defense += 1
		@power += 1
		@luck += 1
		@pointless_points += 1
		puts "You lay your blanket down and kneel before the candle.\n\n"
		puts "You feel one with everything.\n\n"
		puts "+1 health, +1 defense, +1 power, +1 luck, +1 point"
		puts ""
	else
		puts "If only this alley was a little more zen..."
		puts ""
	end
	controller
end

def have_sex
	if (@inventory.include?('condom'))
		break_chance = rand(18) + @luck
		if break_chance <= 8 
			puts "You have sex, you use a condom, it breaks, you die."
			puts ""
			@health = 0
		else
			puts "You find somebody or something willing to have sex with you.\n\n"
			puts "It's a really good thing you have a condom."
			@inventory.slice!(@inventory.index('condom'))
			puts "\n+1 luck\n\n"
			@luck += 1
		end
	else
		puts "You have unprotected sex (in the alley) and die."
		puts ""
		@health = 0
	end
	controller
end