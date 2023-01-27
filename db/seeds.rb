# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Type.create(name: "Rent")
Type.create(name: "Buy")
Type.create(name: "Exchange")
Type.create(name: "Donation")

Building.create(name: "House")
Building.create(name: "Duplex")
Building.create(name: "Apartment")
Building.create(name: "Block")

Level.create(name: "Basement")
Level.create(name: "Semi-basement")
Level.create(name: "Ground floor")
Level.create(name: "Elevated")
Level.create(name: "Mezzanine")
Level.create(name: "1st")
Level.create(name: "2nd")
Level.create(name: "3rd")
Level.create(name: "4th")
Level.create(name: "5th")
Level.create(name: "6th")
Level.create(name: "7th")
Level.create(name: "8th+")
