# This simple bot responds to every "bonobo competitors?" message with a list of competitors trying to reach the top of bonobo mountain

require 'discordrb'

#   bonobo_discord_api_key=NDEzMjA2MjUwOTUyNzIwMzk0.DWi0qg.ihlWz76mDsWL9kjOrHvPTFODokk ruby my_bot.rb


bot = Discordrb::Bot.new token: ENV['bonobo_discord_api_key'], client_id: 413206250952720394

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(with_text: 'bonobo competitors?') do |event|
  event.respond '<Affirmedwin123>, <AtlasPrym9x>, <VgSuper99>, <MagicMelon33>'
end

bot.run