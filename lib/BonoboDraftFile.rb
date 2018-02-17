# This simple bot responds to every "bonobo competitors?" message with a list of competitors trying to reach the top of bonobo mountain

require 'discordrb'



bot = Discordrb::Bot.new token: ENV['bonobo_discord_api_key'], client_id: ENV['discord_client_id']

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(with_text: 'bonobo competitors?') do |event|
  event.respond '<Affirmedwin123>, <AtlasPrym9x>, <VgSuper99>, <MagicMelon33>'
end

bot.run
