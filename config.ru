$LOAD_PATH.unshift(File.dirname(__FILE__ ))

require 'dotenv'
Dotenv.load

require 'test'

Test::Bot.run
