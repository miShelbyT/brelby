# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Cupcake.destroy_all
Wine.destroy_all
Bakery.destroy_all
WineShop.destroy_all

15.times do
  Customer.create(name:Faker::TvShows::TwinPeaks.character, age:rand(15..75), email:Faker::Internet.email)
end

WineShop.create(name:"The Juice Box Wine & Spirits", address:"1289 Prospect Ave, Brooklyn, NY 11218")

Bakery.create(name:"Two Little Red Hens", address:"1112 8th Ave, Brooklyn, NY 11215")

15.times do
  Cupcake.create(bakery_id:Bakery.all.sample.id, name:Faker::Dessert.flavor, description:"cupcake", price:rand(5..20), pairing:"wine")
end

# country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]

# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end

# wine_list = [
#   ["Moda", grape, origin, price, pairing] 
#   ["Niel Joubert"]
#   ["Roche Mazet"]
#   ["Grand Barossa"]
#   ["La Fleur Baron"]
#   ["Marlborough"]
#   ["Cantina Di Negrar"] 
#   ["Ata Rangi"] 
#   ["Dreaming Tree"] 
#   ["Jacob’s Creek"] 
#   ["Bicicleta"] 
#   ["Kooliburra"] 
#   ["Camp Viejo"] 
#   ["Villa Lucia"] 
#   ["Los Monteros"] 

# ]

15.times do
  Wine.create(wine_shop_id:WineShop.all.sample.id, name:"wine", grape:"grape", origin:"country", price:rand(25..100), pairing:"cupcake")
end

# Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Moda", grape:"Montepulciano", origin:"Italy", price:81, pairing:"cupcake", img_url:"https://unsplash.com/photos/yqAk8NyqN3Y")
# Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Niel Joubert", grape:"Shiraz", origin:"South Africa", price:100, pairing:"cupcake", img_url:"https://unsplash.com/photos/CEUfg4Q8cFM")
  



