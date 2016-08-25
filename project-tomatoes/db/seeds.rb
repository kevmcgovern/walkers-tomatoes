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
    cast: FFaker::Name.name(6),
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