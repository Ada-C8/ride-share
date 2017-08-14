########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

# There will be 3 layers => 1) hash => 2) arrays (values in hash), 3) hash(es) (elements in arrays)  
# hash = {key: value [{},{},{}]}

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

# 1) hash => driver's ids as keys
# 2) arrays (value of hash) => all ride information for each driver as values 
# 3) hash(es) (as elements in array) => storing information of each individual ride
# all_data = {drivers_id: [{ride1_date: ""}, {ride1_cost: 0}, {ride1_rider_id: ""}, {ride1_rating: 0]}

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

rides = {
  "DR0001" => [
    {date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
    {date: "3rd Feb 2016", cost: 30, rider_id: "RC0015", rating: 4},
    {date: "5th Feb 2016", cost: 45, rider_id: "RC0003", rating: 2}
  ],
  "DR0002" => [
    {date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
    {date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1},
    {date: "5th Feb 2016", cost: 35, rider_id: "RD0066", rating: 3}
  ],
  "DR0003" => [
    {date: "4th Feb 2016", cost: 5, rider_id: "RD0066", rating: 5},
    {date: "5th Feb 2016", cost: 50, rider_id: "RD0003", rating: 2},
  ],
  "DR0004" => [
    {date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5},
    {date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
    {date: "5th Feb 2016", cost: 20, rider_id: "RD0073", rating: 2}
  ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made
  # If you have time, also display what the drivers average rating is

# method to output final result
def output(driver_id, total_rides, earning, ave_rating)
  puts "===== Driver #{driver_id} ====="
  puts "Total rides: #{total_rides} rides"
  puts "Total earning: #{earning}"
  puts "Average rating: #{ave_rating}"
end

# loop through first level hash (to find total rides per driver)
rides.each do | driver_id, all_ride_info |
  total_rides = all_ride_info.length

  # keep track of earnings and ratings
  earning = 0
  rating = 0

  # loop through second level array (to find earnings and ratings for each driver)
  all_ride_info.each do | ind_ride |
    earning += ind_ride[:cost]  # add to total earnings
    rating += ind_ride[:rating] # add to total ratings
  end

  # find average rating
  ave_rating = rating / total_rides.to_f

  # call final_output
  final_output = output(driver_id, total_rides, earning, ave_rating)
  puts final_output
end
