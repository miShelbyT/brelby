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
Order.destroy_all

15.times do
  Customer.create(name:Faker::TvShows::TwinPeaks.character, age:rand(15..75), email:Faker::Internet.email)
end

WineShop.create(name:"The Juice Box Wine & Spirits", address:"1289 Prospect Ave, Brooklyn, NY 11218")

Bakery.create(name:"Two Little Red Hens", address:"1112 8th Ave, Brooklyn, NY 11215")

# 15.times do
#   Cupcake.create(bakery_id:Bakery.all.sample.id, name:Faker::Dessert.unique.flavor, description:"cupcake", price:rand(5..20), pairing:"wine")
# end

Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Coconut", description:"Get your coconut fix! Rich and light coconut cupcake with a creamy coconut frosting, sprinkled with shredded coconut.", price:rand(25-100), pairing:"Marlborough", img_url:"cupcakes/coconut.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Espresso", description:"If you're a fan of chocolate-covered espresso beans, then you are going to love these espresso cupcakes with espresso cream cheese frosting!", price:rand(25-100), pairing:"Cantina Di negrar", img_url:"cupcakes/espresso.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Vanilla", description: "A light and fluffy vanilla cupcake is topped with rich whipped buttercream and colorful sprinkles", price: rand(25..100), pairing: "Villa Lucia", img_url: "cupcakes/vanilla.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Chocolate", description: "Classic chocolate iced with chocolate ganache, topped with assorted sprinkles.", price: rand(25..100), pairing: "Moda", img_url: "cupcakes/choco.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Funfetti", description: "A rich buttery old-fashioned cake, with a colorful mix of confetti sprinkles inside, topped with raspberry buttercream frosting and confetti sprinkles.", price: rand(25..100), pairing: "Ata Rangi", img_url: "cupcakes/Funfetti.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Salted Caramel", description: "A light and fluffy sponge cake with a layer of salted caramel sauce under the buttercream frosting, topped with chocolate shavings.", price: rand(25..100), pairing: "Bicicleta", img_url: "cupcakes/caramel.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Rocky Road", description: "You'll love this delicious rocky road cupcake filled wit marshmallow fluff, topped with decadent chocolate buttercream, almonds and toasted marshmallows!", price: rand(25..100), pairing: "La Fleur Baron", img_url: "cupcakes/rocky road.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Birthday Cake",	description: "Every birthday party needs birthday cupcakes, they are perfectly delicious with vanilla frosting and rainbow sprinkles!", price: rand(25..100), pairing: "Campo Viejo", img_url: "cupcakes/bday2.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Pumpkin Spice",	description: "This hearty pumpkin cupcake with a cinammon cream cheese frosting is wonderful in the fall or any other time of the year!", price: rand(25..100), pairing: "Jacob's Creek", img_url: "cupcakes/pumpkin.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Lemon",	description: "This sunshine-sweeet lemon cupcake is bursting with lemon flavor and topped with our favorite vanilla buttercream frosting.", price: rand(25..100), pairing: "Ata Rangi", img_url: "cupcakes/lemon.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Pistachio",	description: "Simply perfect vanilla cupcake with teeny pistachio crumbs makes afor a deliciously sweet and nutty flavor, topped with strawberry frosting.", price: rand(25..100), pairing: "Roche Mazet", img_url: "cupcakes/pistachio.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Red Velvet", description: "This traditional red velvet cupcake is cholatey delicous topped with cream cheese frosting.", price: rand(25..100), pairing: "Niel Joubert", img_url: "cupcakes/velvet.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Green Tea",	description: "Light and fluffy matcha/green tea cupcake with cream cheese frosting.", price: rand(25..100), pairing: "Los Monteros", img_url: "cupcakes/matcha.png")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Mint Chocolate", description: "Decadent chocolate cupcake, topped with thick and creamy mint chocolate chip frosting.",	price: rand(25..100), pairing: "Dreaming Tree", img_url: "cupcakes/Mint Chocolate.jpg")
Cupcake.create(bakery_id:Bakery.all.sample.id, name: "Butter Pecan", description: "This cupcake is not only full of toasted butter pecans, it also has a touch of cinammon for a nod towards the transition to fall.", price: rand(25..100), pairing: "Grand Barossa", img_url: "cupcakes/butter pecan.png")



Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Moda", grape:"Montepulciano", origin:"Italy", price:rand(25-100), pairing:"Chocolate", img_url:"wines/Moda.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Niel Joubert", grape:"Shiraz", origin:"South Africa", price:rand(25-100), pairing:"Red Velvet", img_url:"wines/Niel.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Roche Mazet", grape: "Chardonnay", origin: "France", price: rand(25..100), pairing: "Pistachio", img_url: "wines/Roche.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Grand Barossa", grape: "Shiraz", origin: "Australia", price: rand(25..100), pairing: "Butter Pecan", img_url: "wines/Barossa.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "La Fleur Baron", grape: "Merlot-Cabernet Sauvignon", origin: "France", price: rand(25..100), pairing: "Rocky Road", img_url: "wines/LaFleur.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Marlborough", grape: "Sauvignon Blanc", origin: "New Zealand", price: rand(25..100), pairing: "Coconut", img_url: "wines/Marlborough.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Cantina Di Negrar", grape: "Amarone", origin: "Italy", price: rand(25..100), pairing: "Espresso", img_url: "wines/Amarone.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Ata Rangi",	grape: "Riesling", origin: "New Zealand", price: rand(25..100), pairing: "Funfetti", img_url: "wines/Martinborough.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Dreaming Tree",	grape: "Red Blend", origin: "California", price: rand(25..100), pairing: "Mint Chocolate", img_url: "wines/Dreaming Tree.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Jacob's Creek - Double Barrel Matured",	grape: "Shiraz",	origin: "Australia", price: rand(25..100), pairing: "Pumpkin Spice", img_url: "wines/Jacobs Creek.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Bicicleta",	grape: "Sauvignon Blanc", origin: "Chile", price: rand(25..100), pairing: "Salted Caramel", img_url: "wines/Bicicleta.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Kooliburra", grape: "Malbec", origin: "Australia", price: rand(25..100), pairing: "Red Velvet", img_url: "wines/Kooliburra.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Campo Viejo",	grape: "Rioja (red blend)", origin: "Spain", price: rand(25..100), pairing: "Mint Chocolate", img_url: "wines/Campo Viejo.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Villa Lucia", grape: "Sangiovese",	origin: "Italy", price: rand(25..100), pairing: "Vanilla", img_url: "wines/Villa Lucia.jpg")
Wine.create(wine_shop_id:WineShop.all.sample.id, name: "Los Monteros", grape: "Cava", origin: "Spain", price: rand(25..100), pairing: "Birthday Cake", img_url: "wines/Los Monteros.jpg")

# "this is a test"