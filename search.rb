# This file your search action

#################################

# This section finds a good object

def find_good
	item_file = File.open("good_items.txt")
	items = item_file.readlines
	puts "Oh wow! That's great! You found a #{items.sample.chomp}!"
	item_file.close
	if @health < 95
		@health += 5
	else
		@health = 100
	end
	puts ""
	puts "That's +5 to your health!"
end

# This section finds a bad object

def find_bad
	item_file = File.open("bad_items.txt")
	items = item_file.readlines
	puts "Aw bummer! Looks like you found a #{items.sample.chomp}..."
	item_file.close
	@health -= 5
	puts ""
	puts "Your health drops by 5"
end

# This section finds an object that you will add to your inventory

def find_inv
	item_file = File.open("inv_items.txt")
	items = item_file.readlines
	item = items.sample.chomp
	@inventory.push(item)
	puts "You found a #{item}. Might as well hold onto it, or whatever."
	item_file.close
end

# This section finds an item that increases luck

def luck_up
	luck_file = File.open("luck_up.txt")
	luck_items = luck_file.readlines
	puts "Ooooh! You found a lucky #{luck_items.sample.chomp}!\n\n+1 luck!"
	luck_file.close
	@luck += 1
	puts ""
end

# This section finds an item that decreases luck

def luck_down
	luck_file = File.open("luck_down.txt")
	luck_items = luck_file.readlines
	puts "Uh oh! You found an unlucky #{luck_items.sample.chomp}!\n\n-1 luck!"
	luck_file.close
	if @luck > 0
		@luck -= 1
		puts ""
	else
		@luck = 0
		puts ""
	end	
end

# This section finds an item that increases kick power

def find_kick
	kick_file = File.open("kick_power.txt")
	kick_items = kick_file.readlines
	puts "Cool! You found a #{kick_items.sample.chomp}!\n\n+1 kick!"
	kick_file.close
	@kick_bonus += 1
	puts ""
end

# This section finds an item that increases punch power

def find_punch
	punch_file = File.open("punch_power.txt")
	punch_items = punch_file.readlines
	puts "Sweet! You found a #{punch_items.sample.chomp}!\n\n+1 punch!"
	punch_file.close
	@punch_bonus += 1
	puts ""
end

# This section finds an item that increases defense

def defense
	defense_file = File.open("defense.txt")
	defense_items = defense_file.readlines
	puts "You found a #{defense_items.sample.chomp}!"
	puts ""
	puts "You feel fortified! +1 defense!"
	defense_file.close
	@defense += 1
	puts ""
end

# This section finds an item that increases power

def find_power
	power_file = File.open("power_items.txt")
	power_items = power_file.readlines
	puts "You found a #{power_items.sample.chomp}!"
	puts ""
	puts "You feel fired up! +1 power!"
	power_file.close
	@power += 1
	puts ""
end

# This section starts the search and decides what you find

def search
	puts ""
	puts "You pick an interesting section of the alley and start digging through trash."
	puts ""
	item_types = ['good', 'bad', 'inv', 'luck_up', 'luck_down', 'kick', 'punch', 'defense', 'power']
	item_type_number = rand(0...9)
	item_type = item_types[item_type_number]
	case item_type
		when "good"
			find_good
		when "bad"
			find_bad
		when "inv"
			find_inv
		when "luck_up"
			luck_up
		when "luck_down"
			luck_down
		when "kick"
			find_kick
		when "punch"
			find_punch
		when "defense"
			defense
		when "power"
			find_power
	end
	puts ""
	controller
end