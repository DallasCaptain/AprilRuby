# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
washington_players = Nokogiri::HTML(open("https://www.espn.com/nba/team/roster/_/name/wsh/washington-wizards")).css("figure div img")['title']

puts '*'*100
puts washington_players
