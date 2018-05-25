# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Product.create(name: "1929 Indian Head Nickle", description: "Denver Minted", image_url: "indian.jpg", grade: "Uncirculated", price: "49")

  Product.create(name: "1879 Morgan Silver Dollar", description: "Carson City minted", image_url: "morgan.jpg", grade: "Uncirculated", price: "70")

  Product.create(name: "1955 Double Die Cent", description: "Philadelphia Minted", image_url: "ddpenny.jpg", grade: "Very Good", price: "700")
