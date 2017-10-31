# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Game.destroy_all

games = Game.create([
  {name: "Super Mario Odyssey", release_date: 20171028, img: "Nintendo Switch", trailer: "x"},
  {name: "Dark Souls 3", release_date: 20160324, img: "PC, PS4, Xbox", trailer: "x"},
  {name: "Overwatch", release_date: 20150519, img: "PC, PS4, Xbox", trailer: "x"},
  {name: "Shovel Knight", release_date: 20150519, img: "PC, Nintendo Switch", trailer: "x"},
  {name: "Devil May Cry 4", release_date: 20150519, img: "PC, PS4, Xbox", trailer: "x"},
  {name: "The Legend of Zelda", release_date: 20150519, img: "Nintendo 64", trailer: "x"},
  {name: "Persona 5", release_date: 20150519, img: "PS4", trailer: "x"},
  {name: "Metroid Prime", release_date: 20150519, img: "Gamecube", trailer: "x"},
  {name: "Mark of the Ninja", release_date: 20150519, img: "PC", trailer: "x"},
  {name: "Bioshock", release_date: 20150519, img: "PC, PS4, Xbox", trailer: "x"},
  {name: "The Witcher 3", release_date: 20150519, img: "PC, PS4, Xbox", trailer: "x"},
  {name: "Star Fox 64", release_date: 20150519, img: "Nintendo 64", trailer: "x"},
  {name: "DOOM", release_date: 20150519, img: "PC, PS4, Xbox, Nintendo Switch", trailer: "x"},
  {name: "Hearthstone", release_date: 20150519, img: "PC", trailer: "x"},
  {name: "Halo 2", release_date: 20150519, img: "Xbox", trailer: "x"},
  {name: "Final Fantasy VII", release_date: 20150519, img: "PC", trailer: "x"},
  {name: "Mario Kart 8", release_date: 20150519, img: "Nintendo Switch", trailer: "x"},
  {name: "Ninja Gaiden", release_date: 20150519, img: "Xbox", trailer: "x"}
])