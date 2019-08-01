# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Movie.destroy_all

genre_movie = ["action", "horreur", "comédie", "drame"]

100.times do
rate = rand(0..5)
rating = rand(0..10)
	movie = Movie.create!(name: Faker::Movie.quote ,year: rand(1900..2020) ,genre: genre_movie[rand(0..3)],director: Faker::Artist.name ,synopsis: Faker::Quote.yoda ,allocine_rating: "#{rate}.#{rating}", my_rating: nil,already_seen: false)

end

puts "film fantastique"