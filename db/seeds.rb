# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Users..."
User.create!(first_name: 'London', last_name: 'Rosemary', username: 'london_rosemary', email: 'london.rosemary@gmail.com', password: 'squilliam123')

User.create!(first_name: 'Yaneizy', last_name: 'Castillo', username: 'yanyan', email: 'yccastillo18@gmail.com', password: 'tiger21')

User.create!(first_name: 'Michelle', last_name: 'Rios', username: 'michelle_says_hi', email: 'michelle@etsy.com', password:'coolbeans')

puts "Seeding Dreams..."
Dream.create!(name: 'Skateboard Summer', date: Time.new(2021, 10, 10), description: 'I was skateboarding down the side of a building and on the highway with all my friends. It was amazing!', rating: 8, mood: 'happy', image_url: 'https://i.ytimg.com/vi/pvnpLQ04vSo/maxresdefault.jpg', user_id: 1)

Dream.create!(name: 'Chased by Michael Myers', date: Time.new(2021, 10, 12), description: 'It was my birthday, and I left my party.. All of a sudden Michael Myers was chasing me!! I beat him up tho 😎', rating: 7.5, mood: 'happily scared', image_url: 'https://pbs.twimg.com/media/EkssKxJW0AEHfDZ.jpg', user_id: 2)

puts "Seeding complete!"