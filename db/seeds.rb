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
cersei_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589971797/amusedcersei_k9gpes.jpg')
cersei.photo.attach(io: cersei_photo, filename: 'cersei_photo.jpg', content_type: 'image/jpg')
cersei.save!

tommy = Star.new(name: 'Thomas Shelby', category: 'Peaky Blinders', price: 45, description: "Après une expérience traumatisante durant la Première Guerre mondiale où il a notamment combattu lors de la Bataille de Verdun et de la Somme, Thomas reprend en main le business familial : racket et protection, contrebande de tabac et d'alcool, paris illégaux... De par sa nature ambitieuse et son sens des affaires, Thomas transforme rapidement le petit gang de Birmingham en un véritable empire, en créant la Shelby Company Limited, en s'étendant vers Londres et par la suite en rivalisant avec la mafia new-yorkaise lors de la prohibition sur l'alcool." )
tommy.user = emil
tommy_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589926470/peakyblinders3003a_zh1xex.jpg')
tommy.photo.attach(io: tommy_photo, filename: 'tommy_photo.jpg', content_type: 'image/jpg')
tommy.save!

tokyo = Star.new(name: 'Tokyo', category: 'Casa del Papel', price: 75)
tokyo.user = hippo
tokyo_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589926194/tokyo_tn2xc0.webp')
tokyo.photo.attach(io: tokyo_photo, filename: 'tokyo_photo.webp', content_type: 'image/webp')
tokyo.save!

harvey = Star.new(name: 'Harvey', category: 'Suits', price: 89)
harvey.user = claire
harvey_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589928878/120801mag-gabriel-macht-suits1_v7ojh1.jpg')
harvey.photo.attach(io: harvey_photo, filename: 'harvey_photo.jpg', content_type: 'image/jpg')
harvey.save!

jane = Star.new(name: 'Jane', category: 'Jane', price: 85)
jane.user = hippo
jane_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589928646/jane-the-virgin-netflix-intrigues-casting-date-de-sortie-toutes-les-infos-sur-la-saison-5_yuwqd0.jpg')
jane.photo.attach(io: jane_photo, filename: 'jane_photo.jpg', content_type: 'image/jpg')
jane.save!

jamie = Star.new(name: 'Jamie', category: 'Outlander', price: 10)
jamie.user = obama
jamie_photo = URI.open('https://res.cloudinary.com/dnzggrpqe/image/upload/v1589928725/outlander_niyj3j.jpg')
jamie.photo.attach(io: jamie_photo, filename: 'jamie_photo.jpg', content_type: 'image/jpg')
jamie.save!


puts 'Success'




puts User.last
puts Star.last

# More seeds to come when other models are created.

puts 'Seeding complete'
