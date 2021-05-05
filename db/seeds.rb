# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Riley', password_digest: 'password', bio: 'Long time hunter, famous for discovering the phantom of Fargos Pizza')

Ghost.create(name: 'Phantom of Fargos Pizza', kind: 'Phantom', notes: 'Prefers pepperoni pizza', user_id: 1)

House.create(location: 'Fargos Pizza', kind: 'Restaurant', notes: 'Recently shuttered due to Covid-19', user_id: 1)