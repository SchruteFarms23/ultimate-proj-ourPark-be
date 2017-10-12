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
