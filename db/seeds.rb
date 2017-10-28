# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all

games = Game.create([
  {name: "Jim's Jittery Java", release_date: "Medium", platform: "Bogota, Colombia"},
  {name: "Jon's Coldest of Brews", release_date: "Mind Bending", platform: "Lagos, Nigeria"}
])