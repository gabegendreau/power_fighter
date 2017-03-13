# These are your fighting actions
 
 def punch
 	@damage_to_enemy = @power + @punch_bonus + rand(10)
	@enemy_health -= @damage_to_enemy
	puts ""
 	puts "You punch the #{@enemy}, doing #{@damage_to_enemy} damage to it."
 	puts ""
 	being_attacked
 end

 def kick
 	@damage_to_enemy = @power + @kick_bonus + rand(10)
	@enemy_health -= @damage_to_enemy
	puts ""
 	puts "You kick the #{@enemy}, doing #{@damage_to_enemy} damage to it."
 	puts ""
 	being_attacked
 end
 
 # Determine what size enemy to fight

def pick_enemy_size
	enemy_sizes = ['small', 'med', 'big']
	enemy_size_number = rand(0...3)
	enemy_size = enemy_sizes[enemy_size_number]
	case enemy_size
		when "small"
			fight_small
		when "med"
			fight_med
		when "big"
			fight_big
	end
end

def fight_small
	@luck_points = 1
	@enemy_health = rand(20..35)
	@enemy_power = rand(20..35)
	enemy_file = File.open("small_enemies.txt")
	enemies = enemy_file.readlines
	@enemy = enemies.sample.chomp
	puts "You found a #{@enemy} to fight. It attacked you and did #{@enemy_power - @defense} damage."
	enemy_file.close
	@health -= (@enemy_power - @defense)
	puts ""
	fight
end

def fight_med
	@luck_points = 2
	@enemy_health = rand(35..50)
	@enemy_power = rand(35..50)
	enemy_file = File.open("med_enemies.txt")
	enemies = enemy_file.readlines
	@enemy = enemies.sample.chomp
	puts "You found a #{@enemy} to fight. It attacked you and did #{@enemy_power - @defense} damage."
	enemy_file.close
	@health -= (@enemy_power - @defense)
	puts ""
	fight
end

def fight_big
	@luck_points = 3
	@enemy_health = rand(45..60)
	@enemy_power = rand(45..60)
	enemy_file = File.open("big_enemies.txt")
	enemies = enemy_file.readlines
	@enemy = enemies.sample.chomp
	puts "You found a #{@enemy} to fight. It attacked you and did #{@enemy_power - @defense} damage."
	enemy_file.close
	@health -= (@enemy_power - @defense)
	puts ""
	fight
end

# When you are being attacked, but not the initial attack

def being_attacked
	if @enemy_health > 0
		@enemy_power -= 2
		puts "The #{@enemy} attacks again, doing #{@enemy_power - @defense} damage."
		@health -= (@enemy_power - @defense)
		fight
	else
		puts "You beat the #{@enemy}!"
		puts ""
		puts "+#{@enemy_power + (@luck * @luck_points)} pointless points!"
		@pointless_points += (@enemy_power + (@luck * @luck_points))
		controller
	end
end

# Decide how to attack the enemy

def fight
	if @health > 0
		puts "Would you like to (punch) or (kick) the #{@enemy}"
		puts ""
		attack_method = gets.chomp.downcase
		if attack_method == "punch"
			punch
		elsif attack_method == "kick"
			kick
		else
			puts "That is not a valid option."
			puts ""
			fight
		end
	else	
		controller
	end	
end
