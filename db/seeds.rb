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
  Cupcake.create(bakery_id:Bakery.all.sample.id, name:Faker::Dessert.unique.flavor, description:"cupcake", price:rand(5..20), pairing:"wine")
end

Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Moda", grape:"Montepulciano", origin:"Italy", price:rand(25-100), pairing:"cupcake", img_url:"wines/Moda.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Niel Joubert", grape:"Shiraz", origin:"South Africa", price:rand(25-100), pairing:"cupcake", img_url:"wines/Niel.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Roche Mazet", grape: "Chardonnay", origin: "France", price: rand(25..100), pairing: "cupcake", img_url: "wines/Roche.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Grand Barossa", grape: "Shiraz", origin: "Australia", price: rand(25..100), pairing: "cupcake", img_url: "wines/Barossa.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "La Fleur Baron", grape: "Merlot-Cabernet Sauvignon", origin: "France", price: rand(25..100), pairing: "cupcake", img_url: "wines/LaFleur.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Marlborough", grape: "Sauvignon Blanc", origin: "New Zealand", price: rand(25..100), pairing: "cupcake", img_url: "wines/Marlborough.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Cantina Di Negrar", grape: "Amarone", origin: "Italy", price: rand(25..100), pairing: "cupcake", img_url: "wines/Amarone.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Ata Rangi",	grape: "Riesling", origin: "New Zealand", price: rand(25..100), pairing: "cupcake", img_url: "wines/Martinborough.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Dreaming Tree",	grape: "Red Blend", origin: "California", price: rand(25..100), pairing: "cupcake", img_url: "wines/Dreaming Tree.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Jacob's Creek - Double Barrel Matured",	grape: "Shiraz",	origin: "Australia", price: rand(25..100), pairing: "cupcake", img_url: "wines/Jacobs Creek.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Bicicleta",	grape: "Sauvignon Blanc", origin: "Chile", price: rand(25..100), pairing: "cupcake", img_url: "wines/Bicicleta.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Kooliburra", grape: "Malbec", origin: "Australia", price: rand(25..100), pairing: "cupcake", img_url: "wines/Kooliburra.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Campo Viejo",	grape: "Rioja (red blend)", origin: "Spain", price: rand(25..100), pairing: "cupcake", img_url: "wines/Campo Viejo.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Villa Lucia", grape: "Sangiovese",	origin: "Italy", price: rand(25..100), pairing: "cupcake", img_url: "wines/Villa Lucia.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Los Monteros", grape: "Cava", origin: "Spain", price: rand(25..100), pairing: "cupcake", img_url: "wines/Los Monteros.jpg")

# "this is a test"