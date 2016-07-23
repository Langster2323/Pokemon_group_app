# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
720.times do
  Pokemon.create!(name: "pokemon", types: "water", height: 0, weight: 0)
end

users = ["Ahkeem", "Rob", "Kate", "Matt", "Mark", "Dane", "Justin", "Deon", "Al", "Max"]

users.each do |username|
  User.create!(username: username, password: "password")
end
