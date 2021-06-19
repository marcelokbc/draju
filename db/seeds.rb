# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "admin@admin.com",
  password: "123456"
)

User.create!(
  email: "johndoe@doe.com",
  password: '123456'
)

Animal.create!(
  name: "Toto",
  age: 10,
  specie: "Cachorro - Pastor Alemão",
  user_id: 2
)

Animal.create!(
  name: "Lola",
  age: 5,
  specie: "Cachorro - Pastor Alemão",
  user_id: 2
)
