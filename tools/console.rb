require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vicki = Guest.new(name:"Vicki")
joy = Guest.new(name:"Joy")
lisa = Guest.new(name:"Lisa")
joy2 = Guest.new(name:"Joy")


venice = Listing.new(city:"Venice")
taipei = Listing.new(city:"Taipei")
berlin = Listing.new(city:"Berlin")
seattle = Listing.new(city:"Seattle")
seattle2 = Listing.new(city:"Seattle")
seattle3 = Listing.new(city:"Seattle")
seattle4 = Listing.new(city:"Seattle")


trip1 = Trip.new(listing: venice, guest: vicki)
trip2 = Trip.new(listing:venice, guest:joy)
trip3 = Trip.new(listing:taipei, guest:joy)

trip4 = Trip.new(listing:seattle2, guest:joy2)

trip5 = Trip.new(listing:seattle3, guest:joy)

trip6 = Trip.new(listing:berlin, guest:joy)
trip7 = Trip.new(listing:berlin, guest:lisa)
trip8 = Trip.new(listing:berlin, guest:lisa)

bakery1 = Bakery.new(name:"Joy's baked goodz")
bakery2 = Bakery.new(name:"Lisa's baked goodz")
bakery3 = Bakery.new(name:"Flakery")

dank = Dessert.new(bakery: bakery1, name: "Dank", calories: 500)
dank2 = Dessert.new(bakery: bakery2, name: "Dank", calories: 600)
dank3 = Dessert.new(bakery: bakery3, name: "Dank", calories: 700)
cheesecake = Dessert.new(bakery: bakery1, name: "Cheesecake", calories: 400)
bagel_with_lox = Dessert.new(bakery: bakery2, name: "Bagel with Lox", calories: 350 )
bagel_with_lox2 = Dessert.new(bakery: bakery3, name: "Bagel with Lox", calories: 400 )
doughnut = Dessert.new(bakery: bakery3, name: "Doughnut", calories: 150 )
tiramisu = Dessert.new(bakery: bakery2, name: "Tiramisu", calories: 270)
tiramisu2 = Dessert.new(bakery: bakery1, name: "Tiramisu", calories: 300)
banana_pie = Dessert.new(bakery: bakery1, name: "Banana pie", calories: 500 )
baklava = Dessert.new(bakery: bakery3, name: "Baklava", calories: 150 )

sugar = Ingredient.new(dessert: cheesecake, name: "sugar")
sugar2 = Ingredient.new(dessert: doughnut, name: "sugar")
sugar3 = Ingredient.new(dessert: tiramisu , name: "sugar")
sugar4 = Ingredient.new(dessert: tiramisu2 , name: "sugar")
sugar5 = Ingredient.new(dessert: banana_pie , name: "sugar")
sugar6 = Ingredient.new(dessert: baklava , name: "sugar")
flour = Ingredient.new(dessert: bagel_with_lox, name: "flour")
flour2 = Ingredient.new(dessert: bagel_with_lox2, name: "flour")
eggs = Ingredient.new(dessert:dank, name:"eggs")
eggs = Ingredient.new(dessert:dank2, name:"eggs")
eggs = Ingredient.new(dessert:dank3, name:"eggs")
eggs = Ingredient.new(dessert:cheesecake, name:"eggs")
eggs = Ingredient.new(dessert:doughnut, name:"eggs")
eggs = Ingredient.new(dessert:banana_pie, name:"eggs")
eggs = Ingredient.new(dessert:baklava, name:"eggs")

chocolate = Ingredient.new(dessert:tiramisu, name:"chocolate")
chocolate = Ingredient.new(dessert:tiramisu2, name:"chocolate")
chocolate = Ingredient.new(dessert:doughnut, name:"chocolate")
chocolate = Ingredient.new(dessert:dank2, name:"chocolate")
white_chocolate = Ingredient.new(dessert: cheesecake, name:"white chocolate")
strawberry = Ingredient.new(dessert:cheesecake, name:"strawberry")
cream = Ingredient.new(dessert: banana_pie, name:"cream")
banana = Ingredient.new(dessert:banana_pie, name:"banana")
chocolate_sprinkles = Ingredient.new(dessert: doughnut, name:"chocolate_sprinkles")
Pry.start
