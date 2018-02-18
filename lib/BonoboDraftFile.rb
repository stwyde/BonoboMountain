# This simple bot responds to every "bonobo competitors?" message with a list of competitors trying to reach the top of bonobo mountain
require 'discordrb'
require 'json'
require 'net/http'

riot_api_key = ENV['riot_api_key']
bot = Discordrb::Commands::CommandBot.new token: ENV['discord_api_key'], client_id: ENV['discord_client_id'], prefix: '!'

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

$current_competitor_strings = ["Affirmedwin123", "AtlasPrym9x", "Vgsuper99", "MagicMelon33", "MattressPrym9x"].to_set


bot.message(with_text: 'bonobo competitors?') do |event|
  event.respond $current_competitor_strings.to_a.join(", ")
end

bot.command :addPlayer do |event, name|
  add_player_by_username(name)
end

bot.command :removePlayer do |event, name|
  remove_player_by_username(name)
end

bot.command :getID do |event, name|
  event.respond request_playerID_by_playername(name)
end

bot.command :goOffline do |event|
  bot.stop
end

def add_player_by_username(username)
   $current_competitor_strings.add(username)
end

def remove_player_by_username(username)
  $current_competitor_strings.delete(username)
end

def request_playerID_by_playername(username)
  base_url = "https://na1.api.riotgames.com/lol/summoner/v3/summoners/by-name/"
  url = base_url.concat(username)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  summoner_response = JSON.parse(response)
  return summoner_response['id']
end

bot.run