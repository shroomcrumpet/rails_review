# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = [
  "Fantasy",
  "Romance",
  "Horror",
  "Non-Fiction",
  "Biography"
]

genres.each { |g| Genre.create(name: g) }

authors = [
  "Eddard Stark",
  "Jon Snow",
  "Tyrion Lannister",
  "Jamie Lannister"
]

authors.each { |a| Author.create(name: a) }


Book.create(title: "Winter is Coming", author: Author.first, genre_ids: [1,2,3])
