# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Order.create(user_id: 1, product_id: 1, total: 10.0)
  
  Order.create(user_id: 1, product_id: 2, total: 5.0)

  Product.create(name: "1929 Indian Head nickel", description: "Denver Minted", image_url: "indian.jpg", quality: "Uncirculated", price: "49")

  Product.create(name: "1879 Morgan Silver Dollar", description: "Carson City minted", image_url: "morgan.jpg", quality: "Uncirculated", price: "70")

  Product.create(name: "1955 Double Die Cent", description: "Philadelphia Minted", image_url: "ddpenny.jpg", quality: "Very Good", price: "700")
