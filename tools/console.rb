require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###########  AIRBNB   ########################

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


##################  BAKERY  ###########################


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


####################   LYFT   ###############################


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


###################################  IMDB  ########################################


##Create show with same title of movie
sponge_actor = Actor.new(name:"Sponge Actor")
patrick_actor = Actor.new(name: "Patrick Actor")
sponge_bob_movie = Movie.new(title:"Spongebob Squarepants")
sponge_bob_show = Show.new(title:"Spongebob Squarepants")
sponge_ep1 = Episode.new(show:sponge_bob_show, name:"Episode 1- spongebob", season:1)
sponge_ep2 = Episode.new(show:sponge_bob_show, name:"Episode 2- spongebob", season:1)
sponge_ep3 = Episode.new(show:sponge_bob_show, name:"Episode 3- spongebob", season:2)
sponge_ep4 = Episode.new(show:sponge_bob_show, name:"Episode 4- spongebob", season:2)
spongebob_squarepants = Character.new(actor:sponge_actor, name:"Spongebob", movies:[sponge_bob_movie], episodes:[sponge_ep1 , sponge_ep2, sponge_ep3, sponge_ep4])
patrick_star = Character.new(actor:patrick_actor, name:"Patrick Star", movies:[sponge_bob_movie], episodes:[sponge_ep1 , sponge_ep3, sponge_ep4])
##create a movie with lots of actors to test method
star_wars1 = Movie.new(title: "Star Wars - 1")
star_wars2 = Movie.new(title: "Star Wars - 2")
star_wars3 = Movie.new(title: "Star Wars - 3")
star_wars4 = Movie.new(title: "Star Wars - 4")

kiera_knightly = Actor.new(name:"Kiera Knightly")
olivia_wilde = Actor.new(name:"Olivia Wilde")
joy_huang = Actor.new(name:"Joy Huang")
tom_cruise = Actor.new(name:"Tom Cruise")
brad_pitt = Actor.new(name:"Brad Pitt")
meryl_streep = Actor.new(name:"Meryl Streep")
obama = Actor.new(name:"Obama")
anne_hathaway = Actor.new(name: "Anne Hathaway")

Character.new(actor:patrick_actor, name:"Yoda", movies:[star_wars1, star_wars2, star_wars3, star_wars4])
Character.new(actor:kiera_knightly, name:"starwarsactor1", movies:[star_wars1, star_wars2, star_wars3, star_wars4])
Character.new(actor: olivia_wilde, name:"starwarsactor2", movies:[star_wars1, star_wars2, star_wars3])
Character.new(actor: joy_huang, name:"starwarsactor3", movies:[star_wars1, star_wars2, star_wars3])
Character.new(actor: tom_cruise, name:"starwarsactor4", movies:[star_wars1, star_wars2])
Character.new(actor: brad_pitt, name:"starwarsactor5", movies:[star_wars1, star_wars2])
Character.new(actor: meryl_streep, name:"starwarsactor6", movies:[star_wars1])
Character.new(actor:obama, name:"starwarsactor7", movies:[star_wars1])
Character.new(actor:anne_hathaway, name:"starwarsactor8", movies:[star_wars1])
#create an actor that has lots of characters

#create character that appears many times in films/shows


#############################   GYM  ######################################


# have los angeles have the least clients
los_angeles = Location.new(location:"Los Angeles")

st_marks = Location.new(location:"St Marks")
dumbo = Location.new(location:"Brooklyn-Dumbo")
queens = Location.new(location:"Queens")

#have Joy have the most clients
joy = Trainer.new(name:"Joy", salary:5000, locations:[los_angeles, st_marks, dumbo, queens])
haley = Trainer.new(name:"Haley", salary:500, locations:[st_marks, dumbo, queens])
vadim = Trainer.new(name:"Vadim", locations:[dumbo, queens])

#assign Vicki to Joy
vicki = Client.new(name: "Vicki")
vicki.assign_trainer(joy)
sara = Client.new(name: "Sara", trainer:joy)
malcome = Client.new(name: "Malcome", trainer:joy)
eben = Client.new(name: "Eben", trainer:joy)
danny = Client.new(name: "Danny", trainer:joy)
maddie = Client.new(name: "Maddie", trainer:joy)
gina = Client.new(name: "Gina", trainer:joy)
sherzod = Client.new(name: "Sherzod", trainer:joy)
hugo = Client.new(name: "Hugo", trainer:joy)
linh = Client.new(name: "Linh", trainer:vadim)
zora = Client.new(name: "Zora", trainer:vadim)
chris = Client.new(name: "Chris", trainer:vadim)


############### Crowd Funding ###################################

#highest pledger
joy = User.new(name:"Joy")
#multipledgers : joy and vicki
vicki = User.new(name:"Vicki")
#project creators : Vicki and Lisa
lisa = User.new(name:"Lisa")


#this one has the most backers
homeless = Project.new(user:vicki, name:"Homes for the Homeless", pledge_goal_amount:50000)
#this one exceeds its pledge goal amount
sockless = Project.new(user:vicki, name:"Socks for the Sockless", pledge_goal_amount:1000)
#no one pledges for this project
tacoless = Project.new(user:lisa, name:"Tacos for the Tacoless", pledge_goal_amount:500, description:"We give tacos to people who like tacos")

Pledge.new(user:joy, project:sockless, amount:900)
Pledge.new(user:joy, project:homeless, amount:100)
Pledge.new(user:joy, project:sockless, amount:100)
Pledge.new(user:lisa, project:homeless, amount:300)
Pledge.new(user:vicki, project:homeless, amount:100)
Pledge.new(user:vicki, project:homeless, amount:500)
Pledge.new(user:vicki, project:sockless, amount:500)



Pry.start
