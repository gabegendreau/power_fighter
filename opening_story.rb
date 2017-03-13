# This method selects a random story for the game opening, it's for fun

@a = "Man: \"I don't know who the fuck you are... but I know where you are... YOU'RE\nLAYING ON TOP OF MY GOD DAMNED RADISHES!\"\n\nYou look around and find that you are, in fact, laying in a small garden.\n\nMan: \"GET OUTTA HERE!\"\n\nYou barely manage to pull yourself up."
@b = "Man: \"You're the King of darn Belgium, now move along.\"\n...\n\"C'mon... get up.\"\n\nYou: \"Why am I in a phone booth?\"\n\nMan: \"How should I know? You're scaring away my customers! Beat it!\"\n\nTo your left you see a group of parents and their children lined up at an ice\ncream cart."
@c = "Woman: \"Oh... phew... you're not dead.\"\n\nYou: \"I'm not dead..?\"\n\nWoman: \"Oh my god, can you fucking move so I can get in my condo?\"\n\nYou vomit on the woman's shoes and she kicks you in the neck, causing you to\nfall down a small set of steps."
@d = "Woman: \"92nd and Flavel, last stop on the last bus of the night, time to move!\"\n\nYou: \"Huh..?\""
@e = "Dog: \"Woof\"\n\nYou: \"Were you just talking like a human?\"\n\nDog: \"Woof\""

def opening_story

	stories = [@a, @b, @c, @d, @e]
	story_number = rand(0...5)
	story = stories[story_number]
	puts story
	puts ""
	puts "You're in pain. You stumble down the block and into an alley."
	puts ""
	puts "*" * 78
	puts ""
	puts "WELCOME TO POWER FIGHTER 2017!!".center(78)
	puts ""
	puts "*" * 78
	puts ""
	puts "You are about to embark on an amazing journey, entirely in a dirty alleyway."
	puts "You will take control of a man who doesn't know who or where he is, but he"
	puts "knows that he wants to punch and kick!"
	puts ""
	puts "You can control your actions by typing the words that appear (in parenthesis)."
	puts ""
	puts "Your basic commands, which are available to you every turn, are:"
	puts ""
	puts format("%11s - %s", "(stats)", "displays information about your character")
	puts format("%11s - %s", "(rest)", "lets your character heal 5 health points")
	puts format("%11s - %s", "(inventory)", "see what you've collected, most of it doesn't matter")
	puts format("%11s - %s", "(search)", "look around the alley and see what you can find")
	puts format("%11s - %s", "(fight)", "find somebody or something to fight")
	puts format("%11s - %s", "(play game)", "it's a game within a game")	
	puts format("%11s - %s", "(die)", "for when you've just had enough of the alley")
	puts ""
	puts "Well, might as well get into it. Have a look around, pick a few fights, see"
	puts "what happens. Just remember to keep an eye on your health."
	puts ""
	controller
end