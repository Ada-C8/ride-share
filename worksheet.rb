########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
=begin
  Driver_id
    ride - Date, Rider_id, Cost, Rating
=end
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
=begin
layer 1 = Hash of Driver ids(key)
layer 2 = Array of rides
layer 3 = Hash of ride details(rider_id, cost, rating, date)
=end
########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

    ride = {
      DR0001: [{id:"RD0003",cost:10,rating:3,date:"feb0316"},
              {id:"RD0015",cost:30,rating:4,date:"feb0316"},
              {id:"RD0003",cost:45,rating:2,date:"feb0516"}],

      DR0002: [{id:"RD0073",cost:25,rating:3,date:"feb0316"},
              {id:"RD0013",cost:15,rating:1,date:"feb0416"},
              {id:"RD0066",cost:35,rating:3,date:"feb0516"}],

      DR0003: [{id:"RD0066",cost:5 ,rating:5,date:"feb0416"},
              {id:"RD0003",cost:50,rating:2,date:"feb0516"}],

      DR0004: [{id:"RD0022",cost:5 ,rating:5,date:"feb0316"},
              {id:"RD0022",cost:10,rating:4,date:"feb0416"},
              {id:"RD0073",cost:20,rating:5,date:"feb0516"}]
            }

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

  ride.each do |driver,rides|
    money = 0
    rating = 0
    n = rides.length
    n.times do |i|
      money += rides[i][:cost]
      rating += rides[i][:rating]
    end
    puts "#{driver}:"
    puts "Number of rides: #{n}"
    puts "Total: $#{money}"
    printf("Average rating: %.01f\n", rating.to_f/n)
    puts "------------"
  end
