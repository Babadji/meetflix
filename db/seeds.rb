# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating users...'
User.destroy_all
jumaru = User.create(nickname: 'Jumaru', email: "chilling@gmail.com")
emil = User.create(nickname: "Mimil", email: "campagne@gmail.com")
hippo = User.create(nickname: "Popotame", email: "cruising@gmail.com")
claire = User.create(nickname: "babadji", email: "exquis@hotmail.fr")
puts 'Success'
