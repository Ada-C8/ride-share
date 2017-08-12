########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

# driver id: ride events
# ride events
# details of each ride event

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  # driver id: ride events - hash
  # ride events - array
  # details of each ride event - hash

########################################################
# Step 3: Make the data structure!

    # Setup the data structure and manually write in data presented in rides.csv

drivers = {
  DR0001: [
    {date: "02-03-16", cost: 10, rider_id: "RD0003", rating: 3},
    {date: "02-03-16", cost: 30, rider_id: "RD0015", rating: 4},
    {date: "02-05-16", cost: 45, rider_id: "RD0003", rating: 2}
  ],

  DR0002: [
    {date: "02-03-16", cost: 25, rider_id: "RD0073", rating: 5},
    {date: "02-04-16", cost: 15, rider_id: "RD0013", rating: 1},
    {date: "02-05-16", cost: 35, rider_id: "RD0066", rating: 3}
  ],

  DR0003: [
    {date: "02-04-16", cost: 5, rider_id: "RD0066", rating: 5},
    {date: "02-05-16", cost: 50, rider_id: "RD0003", rating: 2}
  ],

  DR0004: [
    {date: "02-03-16", cost: 5, rider_id: "RD0022", rating: 5},
    {date: "02-04-16", cost: 10, rider_id: "RD0022", rating: 4},
    {date: "02-05-16", cost: 20, rider_id: "RD0073", rating: 5}
  ]
  }

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

#placeholders to store money earned and amount of rides
money = 0
number_of_rides = []

#1st layer (hash) - drivers by their id and their ride events
drivers.each do |driver_id, rides|
  puts "Driver: #{driver_id}"

  #2nd layer (array) - break down by cost key
  rides.each do |ride_event_array|
    #add money earned
    money += ride_event_array[:cost]

    #shovel cost into own array and use .length for # of rides
    #num of costs == num of rides
    number_of_rides << ride_event_array[:cost]
  end
  puts "Number of Rides: #{number_of_rides.length}"
  puts "Earned: $#{money}\n\n"

  #reset values for next loop
  money = 0
  number_of_rides = []
end
