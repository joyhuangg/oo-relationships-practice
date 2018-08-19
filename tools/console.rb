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

dank = Dessert.new(bakery: bakery1, name: "Dank")
dank2 = Dessert.new(bakery: bakery2, name: "Dank")
dank3 = Dessert.new(bakery: bakery3, name: "Dank")
cheesecake = Dessert.new(bakery: bakery1, name: "Cheesecake")
bagel_with_lox = Dessert.new(bakery: bakery2, name: "Bagel with Lox" )
bagel_with_lox2 = Dessert.new(bakery: bakery3, name: "Bagel with Lox" )
doughnut = Dessert.new(bakery: bakery3, name: "Doughnut" )
tiramisu = Dessert.new(bakery: bakery2, name: "Tiramisu")
tiramisu2 = Dessert.new(bakery: bakery1, name: "Tiramisu")
banana_pie = Dessert.new(bakery: bakery1, name: "Banana pie" )
baklava = Dessert.new(bakery: bakery3, name: "Baklava" )

sugar = Ingredient.new(dessert: cheesecake, name: "sugar", calorie_count:50)
sugar2 = Ingredient.new(dessert: doughnut, name: "sugar", calorie_count:50)
sugar3 = Ingredient.new(dessert: tiramisu , name: "sugar", calorie_count:50)
sugar4 = Ingredient.new(dessert: tiramisu2 , name: "sugar", calorie_count:50)
sugar5 = Ingredient.new(dessert: banana_pie , name: "sugar", calorie_count:50)
sugar6 = Ingredient.new(dessert: baklava , name: "sugar", calorie_count:50)
flour = Ingredient.new(dessert: bagel_with_lox, name: "flour", calorie_count:60)
flour2 = Ingredient.new(dessert: bagel_with_lox2, name: "flour", calorie_count:60)
eggs = Ingredient.new(dessert:dank, name:"eggs", calorie_count:70)
eggs = Ingredient.new(dessert:dank2, name:"eggs", calorie_count:70)
eggs = Ingredient.new(dessert:dank3, name:"eggs", calorie_count:70)
eggs = Ingredient.new(dessert:cheesecake, name:"eggs", calorie_count:70)
eggs = Ingredient.new(dessert:doughnut, name:"eggs", calorie_count:70)
eggs = Ingredient.new(dessert:banana_pie, name:"eggs", calorie_count:70)
eggs = Ingredient.new(dessert:baklava, name:"eggs", calorie_count:70)

chocolate = Ingredient.new(dessert:tiramisu, name:"chocolate", calorie_count:65)
chocolate = Ingredient.new(dessert:tiramisu2, name:"chocolate", calorie_count:65)
chocolate = Ingredient.new(dessert:doughnut, name:"chocolate", calorie_count:65)
chocolate = Ingredient.new(dessert:dank2, name:"chocolate", calorie_count:65)
white_chocolate = Ingredient.new(dessert: cheesecake, name:"white chocolate", calorie_count:85)
strawberry = Ingredient.new(dessert:cheesecake, name:"strawberry", calorie_count:40)
cream = Ingredient.new(dessert: banana_pie, name:"cream", calorie_count:60)
banana = Ingredient.new(dessert:banana_pie, name:"banana", calorie_count:55)
chocolate_sprinkles = Ingredient.new(dessert: doughnut, name:"chocolate_sprinkles", calorie_count:50)

joy = Passenger.new(name:"Joy")
vicki = Passenger.new(name: "Vicki")
lisa = Passenger.new(name:"Lisa")

kai = Driver.new(name:"Kai")
tiffany = Driver.new(name:"Tiffany")
bob = Driver.new(name:"Bob")

ride1= Ride.new(passenger:joy , driver:kai, distance:10.7)
ride2= Ride.new(passenger:joy , driver:kai, distance:100.4)
ride3= Ride.new(passenger:joy , driver:tiffany, distance:25.0)
ride4= Ride.new(passenger:joy , driver:bob, distance:12.1)
ride5= Ride.new(passenger:joy , driver:tiffany, distance:5.5)
ride6= Ride.new(passenger:vicki, driver:kai, distance:5.5)
ride7= Ride.new(passenger:vicki, driver:bob, distance:20.2)
ride8= Ride.new(passenger:lisa, driver:bob, distance:100.2)
ride9= Ride.new(passenger:lisa, driver:tiffany, distance:99.9)





Pry.start
