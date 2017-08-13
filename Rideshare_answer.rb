########################################################
# Step 1: Establish the layers

# Write a list of the layers here
=begin
Layer 1. The collection of drivers
Layer 2: The collection of rides by each driver
Layer 3: The collection of information on each ride


########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and write what data structure each layer should have
1. Hash
2. Array
3. Hash


=end
########################################################
# Step 3: Make the data structure!

# Setup the data structure and manually write in data presented in rides.csv

ride_share = {
  DR0001:    [
    {ride_num: 1, date: "3rd Feb 2016", rider_id: "RD0003", cost: 10, rating: 3},
    {ride_num: 2, date: "3rd Feb 2016", rider_id: "RD0015", cost: 30, rating: 4},
    {ride_num: 3, date: "5th Feb 2016", rider_id: "RD0003", cost: 45, rating: 2}
  ],
  DR0002:    [
    {ride_num: 1, date: "3rd Feb 2016", rider_id: "RD0073", cost: 25, rating: 5},
    {ride_num: 2, date: "4th Feb 2016", rider_id: "RD0013", cost: 15, rating: 1},
    {ride_num: 3, date: "5th Feb 2016", rider_id: "RD0066", cost: 35, rating: 3}
  ],
  DR0003:    [
    {ride_num: 1, date: "4th Feb 2016", rider_id: "RD0066", cost: 5, rating: 5},
    {ride_num: 2, date: "5th Feb 2016", rider_id: "RD0003", cost: 50, rating: 2}
  ],
  DR0004:   [
    {ride_num: 1, date: "3rd Feb 2016", rider_id: "RD0022", cost: 5, rating: 5},
    {ride_num: 2, date: "4th Feb 2016", rider_id: "RD0022", cost: 10, rating: 4},
    {ride_num: 3, date: "5th Feb 2016", rider_id: "RD0073", cost: 20, rating: 5}
  ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

# Use an iteration block to print driver's total rides and money made
ride_share.each do |driver, info_array|
  money = 0
  tot_rating = 0
  info_array.each do |rides|
    money = money + rides[:cost]
    rides[:rating]= rides[:rating].to_f
    tot_rating = tot_rating + rides[:rating]
  end
  avg_rating = (tot_rating/info_array.length).round(2)
  puts "\nDriver ID #{driver}:"
  puts "Number of rides: #{info_array.length}"
  puts "Total money made: $#{money}"
  puts "Average rating: #{avg_rating}"
  puts "-----"
end
