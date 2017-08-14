########################################################
# Step 1: Establish the layers

  # Layer 1: Drivers - Includes the drivers id and their associated ride information
  # Layer 2: Rides - Houses each drivers set of ride information.
  # Layer 3: Ride Information - Includes each ride's information (date, cost, rating, rider_id)

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

    # Layer 1: Drivers, Data Structure: Hash
    # Layer 2: Rides,  Data Structure: Array
    # Layer 3: Ride Information, Data Structure: Hash

########################################################
# Step 3: Make the data structure!

# stores each driver's information for given rides
drivers = {
  "DR0001" => [
      {date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 5},
      {date: "3rd Feb 2016", cost: 30, rider_id: "RD0015", rating: 4},
      {date: "5th Feb 2016", cost: 45, rider_id: "RD003", rating: 2},
  ],
  "DR0002" => [
      {date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
      {date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1},
      {date: "5th Feb 2016", cost: 35, rider_id: "RD0066", rating: 3},
  ],
  "DR0003" => [
      {date: "4th Feb 2016", cost: 5, rider_id: "RD0066", rating: 5},
      {date: "5th Feb 2016", cost: 50, rider_id: "RD0003", rating: 2}
  ],
  "DR0004" => [
      {date: "3rd Feb 2016", cost: 5, rider_id: "RD002", rating: 5},
      {date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
      {date: "5th Feb 2016", cost: 20, rider_id: "RD0073", rating: 5}
  ]
}
########################################################
# Step 4: Total Divers Earnings and Number of Rides

# prints each drivers' id, number of rides given, earnings, and average rating
puts "Driver Information"
drivers.each do |driver_id, rides|
  earnings, sum_ratings = 0, 0
  puts "Driver_ID #{driver_id}: \n\tRides: #{rides.length}"
  rides.each do |ride|
      earnings += ride[:cost]
      sum_ratings += ride[:rating]
    end
    puts"\tEarnings: $#{"%.2f" %  earnings}\n\tAverage Rating: #{(sum_ratings.to_f/rides.length).round(2)}"
end
