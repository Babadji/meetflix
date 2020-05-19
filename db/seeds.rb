


# Users
User.destroy_all
Star.destroy_all

puts 'Creating users...'

jumaru = User.create(nickname: 'Jumaru', email: "chilling@gmail.com")
emil = User.create(nickname: "Mimil", email: "campagne@gmail.com")
hippo = User.create(nickname: "Popotame", email: "cruising@gmail.com")
claire = User.create(nickname: "babadji", email: "exquis@hotmail.fr")
obama = User.create(nickname: "babama", email: "president@yahoo.com")

puts 'Success'

puts 'Creating characters (stars)...'

# Stars
cersei = Star.create(name: 'Cersei', category: 'GoT', price: 50, user_id: jumaru)

tommy = Star.create(name: 'Thomas Shelby', category: 'Peaky Blinders', price: 45, user_id: emil)

tokyo = Star.create(name: 'Tokyo', category: 'Casa del Papel', price: 75,user_id: hippo)

batman = Star.create(name: 'Batman', category: 'The Batman', price: 89, user_id: claire)

naruto = Star.create(name: 'Naruto', category: 'Naruto', price: 85, user_id: obama)

troy = Star.create(name: 'Troy Barnes', category: 'Community', price: 10, user_id: emil)

barney = Star.create(name: 'Barney Stinson', category: 'How I met your mother', price: 90, user_id: hippo)

rick = Star.create(name: 'Rick', category: 'Rick and Morty', price: 60, user_id: claire)
puts 'Success'


# More seeds to come when other models are created. 
puts 'Seeding complete'