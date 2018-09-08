# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do
    User.create!(
        name: Faker::FunnyName.name,
        email: Faker::Internet.email,
        username: Faker::Internet.username,
        password_digest: Faker::Internet.password
    )
end

200.times do
    Byte.create!(
        body: Faker::FamousLastWords.last_words,
        user_id: Faker::Number.between(1, 100)
    )
end 

400.times do
    Comment.create!(
        body: Faker::FamousLastWords.last_words,
        user_id: Faker::Number.between(1, 100),
        byte_id: Faker::Number.between(1, 200)
    )
end