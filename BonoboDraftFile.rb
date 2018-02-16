# This simple bot responds to every "bonobo competitors?" message with a list of competitors trying to reach the top of bonobo mountain

require 'discordrb'

bot = Discordrb::Bot.new token: 'NDEzMjA2MjUwOTUyNzIwMzk0.DWi0qg.ihlWz76mDsWL9kjOrHvPTFODokk', client_id: 413206250952720394

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(with_text: 'bonobo competitors?') do |event|
  event.respond '<Affirmedwin123>, <AtlasPrym9x>, <VgSuper99>, <MagicMelon33>'
end

bot.run