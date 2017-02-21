# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Clan.create([{title: "NYCDA",motto:"Coding is Fun!"}])

User.create([
  {fname: 'Cam', lname:'Crews', username: 'camerican',clan_id: 1},
  {fname: 'James', lname:'Sullivan', username: 'jamessullivan77',clan_id: 1}])





