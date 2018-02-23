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

#demo seeds ###############################################################################
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

User.create(name: "Roman", email: "roman@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/26904256_10156133856197148_2519706831923004639_n.jpg?oh=08ce476e6d8856d920f17f1f25e6c8a1&oe=5B042FBF",team_id:1, park_id:277)
User.create(name: "Daniel", email: "daniel@wow.com", password: "test", weight: "215", height: "6'2", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/10801674_10152832364004120_7388871342263016007_n.jpg?oh=a4203208524b9e749a4cb8fc478952ae&oe=5B0F9667",team_id:1,park_id:277)
User.create(name: "Gianpaul", email: "gianpaul@wow.com", password: "test", weight: "215", height: "6'2", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/206588_2036677436402_7995511_n.jpg?oh=4c7019f699c1aa1b017f1bbb83d79625&oe=5B03A411",team_id:1,park_id:277)
User.create(name: "Luke", email: "luke@wow.com", password: "test", weight: "170", height: "5'8", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12512627_10153561333048791_2832326256253546907_n.jpg?oh=ba40fe9f69fc24fe2a78c716e5495019&oe=5B24F8C7",team_id:2,park_id:277)
User.create(name: "James", email: "james@wow.com", password: "test", weight: "150", height: "5'8", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/1890340_10152033986778520_1004456144_o.jpg?oh=1a42e6632e450f63f75626917455dd3e&oe=5B07EF3E",team_id:2,park_id:277)
User.create(name: "Hui", email: "hui@wow.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/18738749_10154908376488369_4016707938573692042_o.jpg?oh=7063b764eb38be0f9d75529e90cb079f&oe=5B02BFBA",team_id:2,park_id:277)

User.create(name: "Neil", email: "neil@wow.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/14567336_10211114089547288_8900335124975173412_o.jpg?oh=f4b349301b0df01d699c7439e23ffcf6&oe=5B14B518",team_id:3, park_id:550)
User.create(name: "Kenny", email: "kenny@wow.com", password: "test", weight: "160", height: "5'9", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/13450860_10154231390099166_365911433221179981_n.jpg?oh=276bcdfaa16ba7002820da97108083e5&oe=5A76B562",team_id:3, park_id:550)
User.create(name: "Tim", email: "tim@wow.com", password: "test", weight: "190", height: "5'11", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/13887055_10102194813358620_4158862330196189472_n.jpg?oh=57514944fc11d4b5d65142d3fa57ba37&oe=5B067863",team_id:3, park_id:550)
User.create(name: "Joe", email: "joe@wow.com", password: "test", weight: "150", height: "5'10", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/19113522_2881105070339_6702587556341058161_n.jpg?oh=bc2eebbdb753c111c08d43b428212f88&oe=5B09819B",team_id:4, park_id:550)
User.create(name: "Josh", email: "josh@wow.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/18671019_3486686561906_1031142412040616387_n.jpg?oh=d2e05d4468a3e2c19decbb05e2f22c82&oe=5B126BBB",team_id:4, park_id:550)
User.create(name: "Dean", email: "dean@wow.com", password: "test", weight: "150", height: "5'9", home: "Forest Hills", image_url: "https://www.wbkidsgo.com/Portals/4/Images/Content/Characters/Scooby/characterArt-scooby-SD.png",team_id:4, park_id:550)

User.create(name: "LeBron", email:"lebron@wow.com", password:"test", weight:"270", height:"6'8", home: "Akron", image_url:"https://cavsnation.com/wp-content/uploads/2017/08/Jordan-Lebron.png",team_id:5, park_id:277)
User.create(name:"James Harden", email:"harden@wow.com", password:"test", weight:"230", height:"6'6", image_url:"https://usatftw.files.wordpress.com/2017/11/harden-rockets.jpg?w=1000&h=600&crop=1",team_id:5, park_id:277)
User.create(name:"Chris Paul", email:"chris@wow.com", password:"test", weight:"210", height:"6'2", image_url:"https://s.hdnux.com/photos/67/50/10/14582277/3/rawImage.jpg",team_id:5, park_id:277)
User.create(name:"Kevin Durant", email:"kd@wow.com", password:"test", weight:"190", height:"6'2", image_url:"https://www.mercurynews.com/wp-content/uploads/2017/02/warriorsthunder-04.jpg?w=620",team_id:6, park_id:277)
User.create(name:"Stephen Curry", email:"steph@wow.com", password:"test", weight:"115", height:"5'8", image_url:"https://usatthebiglead.files.wordpress.com/2017/10/stephen-curry-china.jpg?w=1000&h=600&crop=1",team_id:6, park_id:277)

User.create(name:"Jim", email:"jim@wow.com", password:"test", weight:"120", height:"5'7", image_url:"https://i.pinimg.com/736x/fb/0a/d6/fb0ad6cec46b09561f788dd8ddf2667b--jim-halpert-to-read.jpg",team_id:7, park_id:277)
User.create(name: "Michael Scott", email: "scott@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://images-production.global.ssl.fastly.net/uploads/photos/file/117262/michae-scott-quotes-5.jpg?auto=compress&crop=top&fit=clip&h=500&q=55&w=698",team_id:7, park_id:277)
User.create(name: "Dwight", email: "dwight@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://curiousgeorge2015.files.wordpress.com/2016/02/rainn-wilson-dwight-schrute-the-office2.jpg?w=680",team_id:7, park_id:277)
User.create(name: "Kevin", email: "kevin@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://vignette.wikia.nocookie.net/the-office/images/8/8d/0_5169f76e4b579_kevin-500x500.jpg/revision/latest?cb=20150809165055",team_id:8, park_id:277)
User.create(name: "Toby", email: "toby@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://pbs.twimg.com/media/CXZH59_UkAAYi_q.jpg:large",team_id:8, park_id:277)

User.create(name: "Maya Moore", email: "maya@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://www.gannett-cdn.com/-mm-/0375ca5c29df707c08118447acfc2b8f888063bb/c=0-17-2680-3590&r=537&c=0-0-534-712/local/-/media/2016/10/16/USATODAY/USATODAY/636122550052176812-AP-WNBA-Finals-Sparks-Lynx-Basketball.jpg",team_id:9, park_id:277)
User.create(name: "Candace Parker", email: "parker@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://frostsnow.com/assets/thumbnails/24/24a2beee4c2aac06d6749c9fc5271319.jpg",team_id:9, park_id:277)
User.create(name: "Britney Griner", email: "britney@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://www.blackenterprise.com/wp-content/blogs.dir/1/files/2013/07/Brittney+Griner+Japan+v+Phoenix+Mercury+Bd2URhme0QZx.jpg",team_id:9, park_id:277)
User.create(name: "Diana Taurasi", email: "diana@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://marriedwiki.com/uploads/bio/diana-taurasi.jpg",team_id:10, park_id:277)
User.create(name: "Sue Bird", email: "bird@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "http://d279m997dpfwgl.cloudfront.net/wp/2015/05/149657237.jpg",team_id:10, park_id:277)

User.create(name: "Ntilinka", email: "n@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://clutchpoints.com/wp-content/uploads/2018/02/Frank-Ntilikina-says-_starting-would-be-a-goal-for-me-in-the-future_.jpg",team_id:11, park_id:277)
User.create(name: "Porzingis", email: "porzingis@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://clutchpoints.com/wp-content/uploads/2018/02/Kristaps-Porzingis-says-New-York-does-not-know-how-to-finish-games.jpg",team_id:11, park_id:277)
User.create(name: "Aaron Gordon", email: "gordon@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://clutchpoints.com/wp-content/uploads/2018/02/e10.jpg",team_id:11, park_id:277)
User.create(name: "Karl Towns", email: "karl@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://clutchpoints.com/wp-content/uploads/2018/02/a29.jpg",team_id:12, park_id:277)
User.create(name: "Jimmy Butler", email: "butler@wow.com", password: "test", weight: "140", height: "5'10", home: "Forest Hills", image_url: "https://clutchpoints.com/wp-content/uploads/2018/02/jimmy-butler-smile.jpg",team_id:12, park_id:277)


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
