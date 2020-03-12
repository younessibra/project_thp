# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all

20.times do |i|
  price = i + 0.99
  Item.create(title: "Chat#{i}", description: 'chat', price: price, image_url: 'https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-155455.jpg')
end