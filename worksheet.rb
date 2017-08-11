########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
driver
ride
date, money, riderid, rating
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
driver: hash
ride: array
date, money, riderid, rating: hash
########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv
drivers = {
DR0001: [
  {date: "Feb 3, 2016", money: 10, riderid: "RD0003", rating: 3},
  {date: "Feb 5, 2016", money: 45, riderid: "RD0003", rating: 2}
],
DR0002: [
  {date: "Feb 3, 2016", money: 25, riderid: "RD0073", rating: 5},
  {date: "Feb 5, 2016", money: 15, riderid: "RD0013", rating: 4},
  {date: "Feb 5, 2016", money: 35, riderid: "RD0066", rating: 5}
],
DR0003: [
  {date: "Feb 4, 2016", money: 5, riderid: "RD0066", rating: 5},
  {date: "Feb 5, 2016", money: 50, riderid: "RD0003", rating: 2}
],
DR0004:[
  {date: "Feb 3, 2016", money: 5, riderid: "RD0022", rating: 5},
  {date: "Feb 4, 2016", money: 10, riderid: "RD0022", rating: 4},
  {date: "Feb 5, 2016", money: 20 , riderid: "RD0073", rating: 5}
]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

drivers.each do |driver, rides|
  money = 0
  totalrating = 0.0
  numrides = rides.length
  rides.each do |rides, details|
    money += rides[:money]
    totalrating += rides[:rating]
  end
  avgrating = totalrating/numrides
  puts "Driver number #{driver} gave #{numrides} rides and made #{money} dollars with an average rating of #{avgrating.round(2)}"
end
