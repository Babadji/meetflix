# Users

User.destroy_all
Star.destroy_all
puts 'Creating users...'
jumaru = User.create(nickname: 'Jumaru', email: "chilling@gmail.com", password: "123456")
emil = User.create(nickname: "Mimil", email: "campagne@gmail.com", password: "123456")
hippo = User.create(nickname: "Popotame", email: "cruising@gmail.com", password: "123456")
claire = User.create(nickname: "babadji", email: "exquis@hotmail.fr", password: "123456")
obama = User.create(nickname: "babama", email: "president@yahoo.com", password: "123456")
puts 'Success'
puts 'Creating characters (stars)...'

# # Stars

cersei = Star.new(name: 'Cersei', category: 'GoT', price: 50)
cersei.user = jumaru
cersei.save!
tommy = Star.new(name: 'Thomas Shelby', category: 'Peaky Blinders', price: 45)
tommy.user = emil
tommy.save!
tokyo = Star.new(name: 'Tokyo', category: 'Casa del Papel', price: 75)
tokyo.user = hippo
tokyo.save!
batman = Star.new(name: 'Batman', category: 'The Batman', price: 89,)
batman.user = claire
batman.save!
naruto = Star.new(name: 'Naruto', category: 'Naruto', price: 85)
naruto.user = hippo
naruto.save!
troy = Star.new(name: 'Troy Barnes', category: 'Community', price: 10)
troy.user = obama
troy.save!
barney = Star.new(name: 'Barney Stinson', category: 'How I met your mother', price: 90)
barney.user = emil
barney.save!
rick = Star.new(name: 'Rick', category: 'Rick and Morty', price: 60)
rick.user = jumaru
rick.save!
puts 'Success'




puts User.last
puts Star.last

# More seeds to come when other models are created.

puts 'Seeding complete'
