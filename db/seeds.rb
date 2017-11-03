# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Tagging.destroy_all
Tag.destroy_all
Game.destroy_all

games = Game.create([
  {name: "Super Mario Odyssey", release_date: 20171028, image: "https://www.dualshockers.com/wp-content/uploads/2017/06/H2x1_NSwitch_SuperMarioOdyssey.jpg", trailer: "https://www.youtube.com/embed/wGQHQc_3ycE"},
  {name: "Dark Souls 3", release_date: 20160324, image: "https://d1r7xvmnymv7kg.cloudfront.net/sites_products/darksouls3/assets/img/DARKSOUL_facebook_mini.jpg", trailer: "https://www.youtube.com/embed/_zDZYrIUgKE"},
  {name: "Overwatch", release_date: 20150519, image: "https://cdn.vox-cdn.com/uploads/chorus_asset/file/6256265/overwatch_cast.0.jpg", trailer: "https://www.youtube.com/embed/dushZybUYnM"},
  {name: "Shovel Knight", release_date: 20150519, image: "https://media.playstation.com/is/image/SCEA/shovel-knight-listing-thumb-ps4-ps3-psv-us-20feb15?$Icon$", trailer: "https://www.youtube.com/embed/jo-uuawy9Ok"},
  {name: "Devil May Cry 4", release_date: 20150519, image: "http://cdn.edgecast.steamstatic.com/steam/apps/45700/header.jpg?t=1447352696", trailer: "https://www.youtube.com/embed/3ZJ_cqc7cSM"},
  {name: "The Legend of Zelda", release_date: 20150519, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCWhTTe8mof2XByt2YtVyYeZKUfiUj_KXIJyr1MjYNCYdpIDSO", trailer: "https://www.youtube.com/embed/_pdTOea3cOs"},
  {name: "Persona 5", release_date: 20150519, image: "https://www.destructoid.com/ul/424076-/AA2-noscale.jpg", trailer: "https://www.youtube.com/embed/wPqSkzNNPIg"},
  {name: "Metroid Prime", release_date: 20150519, image: "http://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/gamecube_12/SI_GCN_MetroidPrime.jpg", trailer: "https://www.youtube.com/embed/ewcljvJQAQA"},
  {name: "Mark of the Ninja", release_date: 20150519, image: "http://cdn.edgecast.steamstatic.com/steam/apps/214560/header.jpg?t=1478109132", trailer: "https://www.youtube.com/embed/vMm9j4b3jQg"},
  {name: "Bioshock", release_date: 20150519, image: "http://cdn.edgecast.steamstatic.com/steam/apps/7670/header.jpg?t=1503407147", trailer: "https://www.youtube.com/embed/Lmw78t8NgIE"},
  {name: "The Witcher 3", release_date: 20150519, image: "https://i.ytimg.com/vi/16cwAvQcW0E/maxresdefault.jpg", trailer: "https://www.youtube.com/embed/xt_65k-gv1U"},
  {name: "Star Fox 64", release_date: 20150519, image: "https://i.amz.mshcdn.com/MX1bGrqwZ0QC21Ld-9HrodGTNqg=/950x534/filters:quality(90)/https%3A%2F%2Fblueprint-api-production.s3.amazonaws.com%2Fuploads%2Fcard%2Fimage%2F458614%2F76411685-00b7-48d4-80c8-d95d7f38c10a.jpg", trailer: "https://www.youtube.com/embed/b_n0uJOiKG8"},
  {name: "DOOM", release_date: 20150519, image: "http://cdn.edgecast.steamstatic.com/steam/apps/379720/header.jpg?t=1500580744", trailer: "https://www.youtube.com/embed/RO90omga8D4"},
  {name: "Hearthstone", release_date: 20150519, image: "https://www.dualshockers.com/wp-content/uploads/2014/04/maxresdefault3.jpg", trailer: "https://www.youtube.com/embed/o84Y_cSjVyE"},
  {name: "Halo 2", release_date: 20150519, image: "https://i.ytimg.com/vi/O1ji-kyZTk8/maxresdefault.jpg", trailer: "https://www.youtube.com/embed/fkCgDIhUJmQ"},
  {name: "Final Fantasy VII", release_date: 20150519, image: "http://cdn.edgecast.steamstatic.com/steam/apps/39140/header.jpg?t=1447357577", trailer: "https://www.youtube.com/embed/utVE4aUKYuY"},
  {name: "Mario Kart 8", release_date: 20150519, image: "https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/wiiu_14/SI_WiiU_MarioKart8.jpg", trailer: "https://www.youtube.com/embed/mU7tXqYplA8"},
  {name: "Ninja Gaiden", release_date: 20150519, image: "http://wallpaper.pickywallpapers.com/2560x1440/ninja-gaiden.jpg", trailer: "https://www.youtube.com/embed/EDquy4cXSTg"}
])

tags = Tag.create([
  {keyword: "campaign"},
  {keyword: "multiplayer"},
  {keyword: "rpg"},
  {keyword: "fps"},
  {keyword: "indie"},
  {keyword: "nintendo"},
  {keyword: "xbox"},
  {keyword: "playstation"},
  {keyword: "pc"},
  {keyword: "mature"},
  {keyword: "family"}
])

@campaign = Tag.find_by(keyword: "campaign")
@multiplayer = Tag.find_by(keyword: "multiplayer")
@rpg = Tag.find_by(keyword: "rpg")
@fps = Tag.find_by(keyword: "fps")
@indie = Tag.find_by(keyword: "indie")
@nintendo = Tag.find_by(keyword: "nintendo")
@xbox = Tag.find_by(keyword: "xbox")
@playstation = Tag.find_by(keyword: "playstation")
@pc = Tag.find_by(keyword: "pc")
@mature = Tag.find_by(keyword: "mature")
@family = Tag.find_by(keyword: "family")

Game.find_by(name: "Super Mario Odyssey").tags << @campaign << @nintendo << @family
Game.find_by(name: "Dark Souls 3").tags << @campaign << @multiplayer << @rpg << @xbox << @playstation << @pc << @mature
Game.find_by(name: "Overwatch").tags << @multiplayer << @fps << @xbox << @playstation << @pc
Game.find_by(name: "Shovel Knight").tags << @campaign << @indie << @nintendo << @pc << @family
Game.find_by(name: "Devil May Cry 4").tags << @campaign << @xbox << @playstation << @pc << @mature
Game.find_by(name: "The Legend of Zelda").tags << @campaign << @nintendo << @family
Game.find_by(name: "Persona 5").tags << @campaign << @rpg << @playstation
Game.find_by(name: "Metroid Prime").tags << @campaign << @fps << @nintendo
Game.find_by(name: "Mark of the Ninja").tags << @campaign << @indie << @pc << @mature
Game.find_by(name: "Bioshock").tags << @campaign << @xbox << @playstation << @pc << @mature
Game.find_by(name: "The Witcher 3").tags << @campaign << @rpg << @xbox << @playstation << @pc << @mature
Game.find_by(name: "Star Fox 64").tags << @campaign << @nintendo << @family