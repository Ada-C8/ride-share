# Bianca Fernandez - Pipes 
########################################################
# Step 1: Establish the layers
  # Write a list of the layers here
    # 1st - driver_id 
    # 2nd - date
    # 3rd - corresponding data related to that date 
########################################################
# Step 2: Assign a data structure to each layer
  # Copy your list from above, and write what data structure each layer should have
    #1st layer = hash of driver_ids
    #2nd later = array - holding a hash of key values 
    #3rd later - hash contains each respective date with accompanying information. each data set is made into a key (no repeats and meant
    #for variables to stay the same.) 
########################################################
# Step 3: Make the data structure!
    # Setup the data structure and manually write in data presented in rides.csv

ride_share = {
	DR0001: [
		{date: "2-3-16", cost: 10, rating: 3},
		{date: "2-3-16", cost: 30, rating: 4},
		{date: "2-5-16", cost: 45, rating: 2}
	],
	DR0002: [
		{date: "2-3-16", cost: 25, rating: 5},
		{date: "2-4-16", cost: 15, rating: 1},
		{date: "2-5-16", cost: 35, rating: 3}
	],
	DR0003: [
		{date: "2-4-16", cost: 5, rating: 5},
		{date: "2-5-16", cost: 50, rating: 2}
	],
	DR0004: [
		{date: "2-3-16", cost: 5, rating: 5},
		{date: "2-4-16", cost: 10, rating: 4},
		{date: "2-5-16", cost: 20, rating: 5}
	]
}
########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

total = 0
total_rides = 0

ride_share.each do |driver_id, array_of_rides|
	puts "** #{driver_id}:"
	array_of_rides.each do |dates|
		total += dates[:cost]
		total_rides = array_of_rides.length
	end
	puts "Driver #{driver_id} gave #{total_rides} rides and made $#{total}."
	total = 0
end


  #iteration block to demonstrate average ratings 
  # If you have time, also display what the drivers average rating is.

total = 0
total_rides = 0
total_rating = 0
avg_rating = 0

ride_share.each do |driver_id, array_of_rides|
	puts "** #{driver_id}:"
	array_of_rides.each do |dates|
		total += dates[:cost]
		# puts "The total: #{total}."
		total_rides = array_of_rides.length
		# puts "The total rides: #{total_rides}."
		total_rating += dates[:rating]
		# puts "The total rating: #{total_rating}."
		avg_rating = total_rating / total_rides
		# puts "The avg rating is #{avg_rating}."
	end
	puts "Driver #{driver_id} gave #{total_rides} rides and made $#{total}."
	puts "The average rating is #{avg_rating}."
	total = 0
	total_rating = 0
end
