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

Game.create(park_id:277,  active:"active")
Game.create(park_id:550,  active:"active")
Game.create(park_id:551,  active:"active")
Game.create(park_id:552, active:"active")
Game.create(park_id:553,  active:"active")

Game.create(park_id:277,  active:"pending")
Game.create(park_id:277,  active:"pending")
Game.create(park_id:277,  active:"pending")
Game.create(park_id:277,  active:"pending")

Team.create(game_id:1,points:21)
Team.create(game_id:1, points:13)
Team.create(game_id:2)
Team.create(game_id:2)

Team.create(game_id:6) #5
Team.create(game_id:6) #6
Team.create(game_id:7) #7
Team.create(game_id:7) #8
Team.create(game_id:8) #9
Team.create(game_id:8) #10
Team.create(game_id:9) #11
Team.create(game_id:9) #12

User.create(name: "roman", email: "roman@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/11990450_10153653107337148_4802946396570030581_n.jpg?oh=df3c6863f87954e3f6c91d415c7a0dec&oe=5A642C02",team_id:1, park_id:277)
User.create(name: "daniel", email: "daniel@aol.com", password: "test", weight: "215", height: "6'2", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/10801674_10152832364004120_7388871342263016007_n.jpg?oh=e10c9590f58d8adcac09d7eb31abb2bb&oe=5A716267",team_id:1,park_id:277)
User.create(name: "gianpaul", email: "gianpaul@aol.com", password: "test", weight: "215", height: "6'2", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/206588_2036677436402_7995511_n.jpg?oh=2ac900691b9aace75b66f9cad7172ab8&oe=5A657011",team_id:1,park_id:277)
User.create(name: "luke", email: "luke@aol.com", password: "test", weight: "170", height: "5'8", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12512627_10153561333048791_2832326256253546907_n.jpg?oh=53378d72b595a64863f76cfd3f7cd080&oe=5A86C4C7",team_id:2,park_id:277)
User.create(name: "james", email: "james@aol.com", password: "test", weight: "150", height: "5'8", home: "Forest Hills", image_url: "dog.png",team_id:2,park_id:277)
User.create(name: "hui", email: "hui@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:2,park_id:277)

User.create(name: "neil", email: "neil@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:3, park_id:550)
User.create(name: "kenny", email: "kenny@aol.com", password: "test", weight: "160", height: "5'9", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/13450860_10154231390099166_365911433221179981_n.jpg?oh=276bcdfaa16ba7002820da97108083e5&oe=5A76B562",team_id:3, park_id:550)
User.create(name: "tim", email: "tim@aol.com", password: "test", weight: "190", height: "5'11", home: "Forest Hills", image_url: "dog.png",team_id:3, park_id:550)
User.create(name: "joe", email: "joe@aol.com", password: "test", weight: "150", height: "5'10", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/19113522_2881105070339_6702587556341058161_n.jpg?oh=4beaf71f112904fba12b99a67010fa33&oe=5A6B4D9B",team_id:4, park_id:550)
User.create(name: "josh", email: "josh@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:4, park_id:550)
User.create(name: "dean", email: "dean@aol.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "dog.png",team_id:4, park_id:550)

User.create(name: "LeBron", email:"lebron@aol.com", password:"test", weight:"270", height:"6'8", home: "Akron", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeTxguPU4GDZiqiMi8TbvhuDKQLdRjWtLOUS6nBIxnL5F1ML67x1ORFV9C")
User.create(name:"James Harden", email:"harden@aol.com", password:"test", weight:"230", height:"6'6", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT51_ON84QR8tPdzr1fQ-E0n_EVwjXc9IasM77xNK48YftqJr6RCQ")
User.create(name:"Chris Paul", email:"chris@aol.com", password:"test", weight:"210", height:"6'2", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY1QujodO9jTEc98owpgXlht4A8y9vtFhyk3OyhAkZ-NMm8lSRNA")
User.create(name:"John Mayer", email:"john@aol.com", password:"test", weight:"190", height:"6'2", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMKOKLwLhS2GA1RnehuqoEM7gQ6CzI1Z4vHqkoGVVCMH04taL6MQ")
User.create(name:"Britney Spears", email:"britney@aol.com", password:"test", weight:"115", height:"5'8", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGG5EOOG0ujWW1v6L2feE2aA5kAJ12Gddekous7ryF-b2gF3EK4Q")
User.create(name:"Katy Perry", email:"katy@aol.com", password:"test", weight:"120", height:"5'7", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQohBjom3XkrC7MeC9AlJIqNIR7CuwVJsE5zspOveiVce9CzWhNlw")

User.create(name:"Andrew", email:"andrew@aol.com", password:"test")
User.create(name:"Alex", email:"alex@aol.com", password:"test")
User.create(name:"Julie", email:"julie@aol.com", password:"test")
User.create(name:"mark", email:"mark@aol.com", password:"test")
User.create(name:"alan", email:"alan@aol.com", password:"test")
User.create(name:"michelle", email:"michelle@aol.com", password:"test")
User.create(name:"drew", email:"drew@aol.com", password:"test")
User.create(name:"Moron", email:"moron@aol.com", password:"test")
User.create(name:"Birdman", email:"birdman@aol.com", password:"test")
User.create(name:"Jordan", email:"jordan@aol.com", password:"test")
User.create(name:"Max", email:"max@aol.com", password:"test")
User.create(name:"Lola", email:"lola@aol.com", password:"test")

User.create(name: "Carl", email: "carl@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:5, park_id:277)
User.create(name: "Charles", email: "charles@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:5, park_id:277)
User.create(name: "Farl", email: "farl@aol.com", password: "test", weight: "130", height: "5'10", home: "Forest Hills", image_url: "",team_id:5, park_id:277)
User.create(name: "Narl", email: "narl@aol.com", password: "test", weight: "150", height: "5'10", home: "Forest Hills", image_url: "",team_id:6, park_id:277)
User.create(name: "Ace", email: "ace@aol.com", password: "test", weight: "160", height: "5'10", home: "Forest Hills", image_url: "",team_id:6, park_id:277)

User.create(name: "Abbey W", email: "abbey@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:7, park_id:277)
User.create(name: "Patrick", email: "case@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:7, park_id:277)
User.create(name: "Max", email: "max@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:7, park_id:277)
User.create(name: "Jack", email: "jack@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:8, park_id:277)
User.create(name: "Bird", email: "bird@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:8, park_id:277)

User.create(name: "Sue Bird", email: "sue@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/sue-bird-of-the-seattle-storm-moves-the-ball-against-the-news-photo/90609486",team_id:9, park_id:277)
User.create(name: "Gabrielle Union", email: "gab@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/host-gabrielle-union-at-essence-black-women-in-hollywood-news-photo/644702194",team_id:9, park_id:277)
User.create(name: "Yam", email: "yam@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:9, park_id:277)
User.create(name: "Fam", email: "fam@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:10, park_id:277)
User.create(name: "Van Dam", email: "vandam@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "",team_id:10, park_id:277)

User.create(name: "Ntilinka", email: "n@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/franck-ntilikina-of-strasbourg-during-the-final-match-news-photo/607714262",team_id:11, park_id:277)
User.create(name: "Porzingis", email: "porzingis@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/kristaps-porzingis-of-the-new-york-knicks-celebrates-after-news-photo/642757092",team_id:11, park_id:277)
User.create(name: "Aaron Gordon", email: "gordon@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/aaron-gordon-of-the-orlando-magic-dunks-over-stuff-the-news-photo/510112884",team_id:11, park_id:277)
User.create(name: "Karl Anthony Towns", email: "karl@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/karl-anthony-towns-of-the-minnesota-timberwolves-poses-for-news-photo/483656940",team_id:12, park_id:277)
User.create(name: "Jimmy Butler", email: "butler@aol.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.gettyimages.com/detail/news-photo/jimmy-butler-of-the-chicago-bulls-smiles-before-shooting-a-news-photo/630819834",team_id:12, park_id:277)


Stat.create(points: 10, assists: 2, rebounds: 2, blocks: 5, steals: 1, threes: 2, user_id: 1, game_id:1 )
Stat.create(points: 4, assists: 3, rebounds: 6, blocks: 5, steals: 2, threes: 1, user_id: 2, game_id:1 )
Stat.create(points: 7, assists: 4, rebounds: 7, blocks: 5, steals: 2, threes: 1, user_id: 3, game_id:1)
Stat.create(points: 15, assists: 4, rebounds: 8, blocks: 5, steals: 2, threes: 3, user_id: 4, game_id:1)
Stat.create(points: 5, assists: 8, rebounds: 9, blocks: 5, steals: 5, threes: 1, user_id: 5, game_id:1)
Stat.create(points: 4, assists: 2, rebounds: 10, blocks: 5, steals: 2, threes: 1, user_id: 6, game_id:1)
Stat.create(points: 8, assists: 0, rebounds: 7, blocks: 5, steals: 1, threes: 1, user_id: 1, game_id:2)
Stat.create(points: 5, assists: 4, rebounds: 6, blocks: 5, steals: 2, threes: 1, user_id: 2, game_id:2)
Stat.create(points: 8, assists: 5, rebounds: 4, blocks: 5, steals: 2, threes: 1, user_id: 3, game_id:2)
Stat.create(points: 9, assists: 4, rebounds: 5, blocks: 5, steals: 3, threes: 1, user_id: 4, game_id:2)
Stat.create(points: 5, assists: 7, rebounds: 6, blocks: 5, steals: 2, threes: 1, user_id: 5, game_id:2)
Stat.create(points: 7, assists: 2, rebounds: 8, blocks: 5, steals: 1, threes: 1, user_id: 6, game_id:2)
Stat.create(points: 5, assists: 0, rebounds: 2, blocks: 3, steals: 0, threes: 1, user_id: 13, game_id:3)
Stat.create(points: 7, assists: 3, rebounds: 3, blocks: 5, steals: 2, threes: 1, user_id: 13, game_id:4)
Stat.create(points: 9, assists: 7, rebounds: 7, blocks: 5, steals: 3, threes: 1, user_id: 13, game_id:5)
Stat.create(points: 5, assists: 3, rebounds: 3, blocks: 5, steals: 5, threes: 1, user_id: 13, game_id:5)
Stat.create(points: 15, assists: 7, rebounds: 4, blocks: 5, steals: 2, threes: 1, user_id: 13, game_id:5)
Stat.create(points: 4, assists: 2, rebounds: 6, blocks: 5, steals: 1, threes: 1, user_id: 13, game_id:5)
Stat.create(points: 3, assists: 3, rebounds: 3, blocks: 5, steals: 1, threes: 1, user_id: 13, game_id:5)
Stat.create(points: 7, assists: 7, rebounds: 5, blocks: 5, steals: 0, threes: 1, user_id: 1, game_id:5)
Stat.create(points: 9, assists: 4, rebounds: 3, blocks: 5, steals: 0, threes: 1, user_id: 1, game_id:5)
Stat.create(points: 7, assists: 1, rebounds: 4, blocks: 5, steals: 3, threes: 1, user_id: 1, game_id:5)
Stat.create(points: 10, assists: 3, rebounds: 2, blocks: 5, steals: 3, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 11, assists: 5, rebounds: 4, blocks: 5, steals: 2, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 4, assists: 1, rebounds: 8, blocks: 5, steals: 1, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 2, assists: 3, rebounds: 4, blocks: 5, steals: 0, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 6, assists: 3, rebounds: 3, blocks: 5, steals: 0, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 8, assists: 6, rebounds: 6, blocks: 5, steals: 3, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 4, assists: 8, rebounds: 7, blocks: 5, steals: 4, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 8, assists: 2, rebounds: 8, blocks: 5, steals: 2, threes: 2, user_id: 2, game_id:5)
Stat.create(points: 9, assists: 6, rebounds: 4, blocks: 5, steals: 4, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 3, assists: 7, rebounds: 5, blocks: 5, steals: 0, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 7, assists: 7, rebounds: 6, blocks: 5, steals: 0, threes: 1, user_id: 2, game_id:5)
Stat.create(points: 6, assists: 2, rebounds: 8, blocks: 5, steals: 3, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 3, assists: 4, rebounds: 4, blocks: 5, steals: 1, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 11, assists: 6, rebounds: 3, blocks: 5, steals: 0, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 14, assists: 3, rebounds: 2, blocks: 5, steals: 2, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 10, assists: 0, rebounds: 9, blocks: 5, steals: 1, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 3, assists: 4, rebounds: 7, blocks: 5, steals: 2, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 7, assists: 5, rebounds: 4, blocks: 5, steals: 1, threes: 2, user_id: 3, game_id:5)
Stat.create(points: 7, assists: 5, rebounds: 9, blocks: 5, steals: 2, threes: 2, user_id: 3, game_id:5)
Stat.create(points: 8, assists: 9, rebounds: 4, blocks: 5, steals: 3, threes: 1, user_id: 3, game_id:5)
Stat.create(points: 9, assists: 2, rebounds: 7, blocks: 5, steals: 5, threes: 2, user_id: 3, game_id:5)
