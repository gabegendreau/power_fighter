# Loading default stats

require_relative 'stats'

# Other variables you will need

require_relative 'variables'

# These are all the different ways your story can start

require_relative 'opening_story'

# This loads the controller code to make decisions

require_relative 'controller'

# These are your fighting actions

require_relative 'fight'

# This loads the search action

require_relative 'search'

# These are your other actions

require_relative 'actions'

# These are the secret actions you can discover

require_relative 'secret_actions'

# This is the part that starts the game

puts ""
puts "Voice: \"Hey\""
puts ""
puts "\"Hey. You.\""
puts ""
puts "You: mmmpppfff ughhh... \"What the fuck..?\" uughghhh \"Who are you? Where am I?\""
puts "..."
puts "\"Who am... I?\""
puts ""
opening_story