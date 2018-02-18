# This simple bot responds to every "bonobo competitors?" message with a list of competitors trying to reach the top of bonobo mountain
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: ENV['discord_api_key'], client_id: ENV['discord_client_id'], prefix: '!'

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

$currentCompetitors = ["Affirmedwin123", "AtlasPrym9x", "Vgsuper99", "MagicMelon33", "MattressPrym9x"]

bot.message(with_text: 'bonobo competitors?') do |event|
  event.respond $currentCompetitors.join(", ")
end

bot.command :addPlayer do |event, name|
  add_player_by_username(name)
end

bot.command :removePlayer do |event, name|
  remove_player_by_username(name)
end


def add_player_by_username(username)
   $currentCompetitors.push(username)
end

def remove_player_by_username(username)
  $currentCompetitors.delete(username)
end

bot.run
