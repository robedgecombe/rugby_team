require 'faker'

Team.destroy_all
Player.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['All Blacks', 'Springboks'].each do |team_name|
  team = Team.create(name: team_name)

  15.times do
    team.players.create(
      name: "#{Faker::Name.name}",
      position: "#{Faker::Lorem.word}",
      age: rand(20..33),
      speed: rand(4..9),
      power: rand(4..9)
    )
  end
end
