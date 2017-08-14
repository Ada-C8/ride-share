########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
  #all_drivers
  #drivers
  #trips


########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  #all_drivers - hash
  #drivers - array
  #trips - hash
########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv
    drivers_all = {

      DR0001: [
        { date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
        { date: "3rd Feb 2016", cost: 30, rider_id: "RD0015", rating: 4},
        { date: "5th Feb 2016", cost: 45, rider_id: "RD0003", rating: 2},
    ],

      DR0002: [
        { date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
        { date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1},
        { date: "5th Feb 2016", cost: 35, rider_id: "RD0066", rating: 3},
      ],

      DR0003: [
        { date: "4th Feb 2016", cost: 5, rider_id: "RD0066", rating: 5},
        { date: "5th Feb 2016", cost: 50, rider_id: "RD0003", rating: 2},
      ],

      DR0004: [
        { date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5},
        { date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
        { date: "5th Feb 2016", cost: 20, rider_id: "RD0073", rating: 5},
      ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

  drivers_all.each do |drivers, trips|

  ride_cost = 0
  avg_rating = 0

  trips.each do |trip|
    trip[:cost]
    trip[:rating]
    ride_cost += trip[:cost]
    avg_rating += trip [:rating]
  end

  puts "Driver #{drivers} drove #{trips.length} trips for a total of $#{ride_cost}.00 with an average rating of #{avg_rating / trips.length}."
end
