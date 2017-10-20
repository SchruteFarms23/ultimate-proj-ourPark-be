# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read('db/data.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
   borough = ""
  case row[0][0].downcase
  when "x"
    borough = "Bronx"
  when "b"
    borough = "Queens"
  when "m"
    borough = "Manhattan"
  when "q"
    borough = "Queens"
  when "r"
    borough = "Staten Island"
  end
  Park.create(name: row[1], location: row[2], lat: row[5].to_f, long: row[6].to_f, borough: borough )


end

Game.create(park_id:277, score:"21-16")
Game.create(park_id:550, score:"21-13")
Team.create(game_id:1)
Team.create(game_id:1)
Team.create(game_id:2)
Team.create(game_id:2)
User.create(name: "roman", email: "roman@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "dog.png",team_id:1, park_id:277)
User.create(name: "daniel", email: "daniel@aol.com", password: "test", weight: "215", height: "6'2", home: "Forest Hills", image_url: "dog.png",team_id:1,park_id:277)
User.create(name: "gianpaul", email: "gianpaul@aol.com", password: "test", weight: "215", height: "6'2", home: "Forest Hills", image_url: "dog.png",team_id:1,park_id:277)
User.create(name: "luke", email: "luke@aol.com", password: "test", weight: "170", height: "5'8", home: "Forest Hills", image_url: "dog.png",team_id:2,park_id:277)
User.create(name: "james", email: "james@aol.com", password: "test", weight: "150", height: "5'8", home: "Forest Hills", image_url: "dog.png",team_id:2,park_id:277)
User.create(name: "hui", email: "hui@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:2,park_id:277)

User.create(name: "neil", email: "neil@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:3, park_id:550)
User.create(name: "kenny", email: "kenny@aol.com", password: "test", weight: "160", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:3, park_id:550)
User.create(name: "tim", email: "tim@aol.com", password: "test", weight: "190", height: "5'11", home: "Forest Hills", image_url: "dog.png",team_id:3, park_id:550)
User.create(name: "joe", email: "joe@aol.com", password: "test", weight: "150", height: "5'10", home: "Forest Hills", image_url: "dog.png",team_id:4, park_id:550)
User.create(name: "josh", email: "josh@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:4, park_id:550)
User.create(name: "dean", email: "dean@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:4, park_id:550)
Stat.create(points: 10, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 1, game_id:1 )
Stat.create(points: 4, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 2, game_id:1 )
Stat.create(points: 7, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 3, game_id:1)
Stat.create(points: 15, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 4, game_id:1)
Stat.create(points: 5, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 5, game_id:1)
Stat.create(points: 1, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 6, game_id:1)
Stat.create(points: 8, assists: 2, rebounds: 3, blocks: 5, steals: 1, user_id: 1, game_id:2)
Stat.create(points: 5, assists: 2, rebounds: 3, blocks: 5, steals: 2, user_id: 2, game_id:2)
Stat.create(points: 8, assists: 2, rebounds: 3, blocks: 5, steals: 2, user_id: 3, game_id:2)
Stat.create(points: 9, assists: 2, rebounds: 3, blocks: 5, steals: 2, user_id: 4, game_id:2)
Stat.create(points: 5, assists: 2, rebounds: 3, blocks: 5, steals: 2, user_id: 5, game_id:2)
Stat.create(points: 7, assists: 2, rebounds: 3, blocks: 5, steals: 2, user_id: 6, game_id:2)
