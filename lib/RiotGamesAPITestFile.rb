#Initial logic taken from http://chrisschell.de/2016/08/16/first_steps_with_the_league_of_legends_api_and_ruby.html
require 'net/http'
require "json"
require "date"


API_KEY = ENV['apikey']

@region = 'na'
@summoner_name = "affirmedwin123"

