# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'ffaker'

100.times do
  Movie.create(
    title: FFaker::Movie.title,
    summary: FFaker::HipsterIpsum.paragraph,
    cast: FFaker::Company.name,
    category: FFaker::Music.genre,
    poster_url: FFaker::Avatar.image,
    mpaa_rating: FFaker::Movie.rating,
  )
end

50.times do 
  User.create(
    name: FFaker::Name.name, 
    email: FFaker::Internet.email,
    password: FFaker::Internet.password
    )
end

50.times do 
  Star.create(
    movie_id: rand(1..100), 
    user_id: rand(1..50), 
    rating: rand(1..5)
    )
end

50.times do 
    Review.create(
    votes: rand(1..100),
    description: FFaker::LoremFR.sentence,
    user_id: rand(1..50), 
    movie_id: rand(1..100) 
  )
end