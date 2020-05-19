require "open-uri"
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
cersei_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
cersei.photo.attach(io: cersei_photo, filename: 'cersei_photo.jpg', content_type: 'image/jpg')
cersei.save!

tommy = Star.new(name: 'Thomas Shelby', category: 'Peaky Blinders', price: 45, description: "Après une expérience traumatisante durant la Première Guerre mondiale où il a notamment combattu lors de la Bataille de Verdun et de la Somme, Thomas reprend en main le business familial : racket et protection, contrebande de tabac et d'alcool, paris illégaux... De par sa nature ambitieuse et son sens des affaires, Thomas transforme rapidement le petit gang de Birmingham en un véritable empire, en créant la Shelby Company Limited, en s'étendant vers Londres et par la suite en rivalisant avec la mafia new-yorkaise lors de la prohibition sur l'alcool." )
tommy.user = emil
tommy_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
tommy.photo.attach(io: tommy_photo, filename: 'tommy_photo.jpg', content_type: 'image/jpg')
tommy.save!

tokyo = Star.new(name: 'Tokyo', category: 'Casa del Papel', price: 75)
tokyo.user = hippo
tokyo_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
tokyo.photo.attach(io: tokyo_photo, filename: 'tokyo_photo.jpg', content_type: 'image/jpg')
tokyo.save!

batman = Star.new(name: 'Batman', category: 'The Batman', price: 89,)
batman.user = claire
batman_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
batman.photo.attach(io: batman_photo, filename: 'batman_photo.jpg', content_type: 'image/jpg')
batman.save!

naruto = Star.new(name: 'Naruto', category: 'Naruto', price: 85)
naruto.user = hippo
naruto_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
naruto.photo.attach(io: naruto_photo, filename: 'naruto_photo.jpg', content_type: 'image/jpg')
naruto.save!

troy = Star.new(name: 'Troy Barnes', category: 'Community', price: 10)
troy.user = obama
troy_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
troy.photo.attach(io: troy_photo, filename: 'troy_photo.jpg', content_type: 'image/jpg')
troy.save!

barney = Star.new(name: 'Barney Stinson', category: 'How I met your mother', price: 90)
barney.user = emil
barney_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
barney.photo.attach(io: barney_photo, filename: 'barney_photo.jpg', content_type: 'image/jpg')
barney.save!

rick = Star.new(name: 'Rick', category: 'Rick and Morty', price: 60)
rick.user = jumaru
rick_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589904359/pk50kkz8pb8ejtpfoxdgv92d615m.jpg')
rick.photo.attach(io: rick_photo, filename: 'rick_photo.jpg', content_type: 'image/jpg')
rick.save!
puts 'Success'




puts User.last
puts Star.last

# More seeds to come when other models are created.

puts 'Seeding complete'
