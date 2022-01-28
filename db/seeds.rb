# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Restaurant.destroy_all
file = URI.open("https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
file1 = URI.open("https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60")
file2 = URI.open("https://images.unsplash.com/photo-1428515613728-6b4607e44363?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
file3 = URI.open("https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
restaurant = Restaurant.create(name: "Le poulet", address: "14 rue haxo", phone_number: "06 39 56 40 26", category: "japonais")
restaurant.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
restaurant1 = Restaurant.create(name: "Le Dindon", address: "14 rue du truc", phone_number: "06 34 56 43 26", category: "chinois")
restaurant1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
restaurant2 = Restaurant.create(name: "Le mouton", address: "14 rue de la laine", phone_number: "06 39 57 40 26", category: "japonais")
restaurant2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
restaurant3 = Restaurant.create(name: "Le renard", address: "14 rue des oeufs", phone_number: "06 34 56 43 29", category: "chinois")
restaurant3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
