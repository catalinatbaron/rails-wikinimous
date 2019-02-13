# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'creating articles!'
100.times do
  Article.create(
    title: Faker::Movies::HarryPotter.character,
    content: Faker::Movies::HarryPotter.quote
    )
end
puts 'Nice articles created!'
