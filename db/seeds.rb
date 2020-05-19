


# Users


puts 'Creating users...'
User.destroy_all
jumaru = User.create(nickname: 'Jumaru', email: "chilling@gmail.com")
emil = User.create(nickname: "Mimil", email: "campagne@gmail.com")
hippo = User.create(nickname: "Popotame", email: "cruising@gmail.com")
claire = User.create(nickname: "babadji", email: "exquis@hotmail.fr")
obama = User.create(nickname: "babama", email: "president@yahoo.com")

puts 'Success'

puts 'Creating characters (stars)...'
Star.destroy_all
# Stars
cersei = Star.create(name: 'Cersei', category: 'GoT', price: 50, user: jumaru)

tommy = Star.create(name: 'Thomas Shelby', category: 'Peaky Blinders', price: 45, user: emil)

tokyo = Star.create(name: 'Tokyo', category: 'Casa del Papel', price: 75, user: hippo)

batman = Star.create(name: 'Batman', category: 'The Batman', price: 89, user: claire)

naruto = Star.create(name: 'Naruto', category: 'Naruto', price: 85, user: obama)

troy = Star.create(name: 'Troy Barnes', category: 'Community', price: 10, user: emil)

barney = Star.create(name: 'Barney Stinson', category: 'How I met your mother', price: 90, user: hippo)

rick = Star.create(name: 'Rick', category: 'Rick and Morty', price: 60, user: claire)
puts 'Success'


# More seeds to come when other models are created. 
puts 'Seeding complete'