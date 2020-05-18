
Star.destroy_all

# Stars
cersei = Star.create(name: 'Cersei', category: 'GoT', price: 100000)

tommy = Star.create(name: 'Thomas Shelby', category: 'Peaky Blinders', price: 50000)

tokyo = Star.create(name: 'Tokyo', category: 'Casa del Papel', price: 25000)

batman = Star.create(name: 'Batman', category: 'The Batman', price: 150000)

# Users

puts "#{cersei.name} created"

puts "#{tommy.name} created"

puts "#{tokyo.name} created"

puts "#{batman.name} created"

puts 'Creating users...'
User.destroy_all
jumaru = User.create(nickname: 'Jumaru', email: "chilling@gmail.com")
emil = User.create(nickname: "Mimil", email: "campagne@gmail.com")
hippo = User.create(nickname: "Popotame", email: "cruising@gmail.com")
claire = User.create(nickname: "babadji", email: "exquis@hotmail.fr")

puts 'Success'
