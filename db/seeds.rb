# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative("../lib/tasks/scrape")
require "open-uri"


puts "deleting all fake products"
Product.destroy_all

products = scraper("https://de.gymshark.com/collections/t-shirts-tops/mens")


products.each do |product|
  item = Product.new(
    name: product[:name],
    link: product[:link],
    colour: product[:colour],
    price: product[:price],
    brand: product[:brand],
    product_type: "t-shirt",
  )
  file = product[:photo]
  fileOpen = URI.open(file)
  item.photo.attach(io: fileOpen, filename: product[:name] + '.jpg', content_type: 'image/jpg')
  puts item.photo.attached?
  item.save
  puts item.photo.attached?
end



=begin
puts "creating some fake products"
10.times do
  product = Product.new(
    link: "test",
    product_type: "t-shirt",
    colour: "red",
    price: 20,
    description: "test description",
    brand: "nike"
    )
  product.save!
end
=end

puts "Created 10 prodcts"
