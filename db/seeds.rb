require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Superadmin.create(name: Faker::Name.name , email: Faker::Internet.free_email ,
  password: Faker::Internet.password(8) , contact: "1239873129")
Superadmin.create(name: Faker::Name.name , email: Faker::Internet.free_email ,
  password: Faker::Internet.password(8) , contact: "1239873128")
Superadmin.create(name: Faker::Name.name , email: Faker::Internet.free_email ,
  password: Faker::Internet.password(8) , contact: "1239873127")
Superadmin.create(name: Faker::Name.name , email: Faker::Internet.free_email ,
  password: Faker::Internet.password(8) , contact: "1239873126")
Superadmin.create(name: Faker::Name.name , email: Faker::Internet.free_email ,
  password: Faker::Internet.password(8) , contact: "1239873125")
