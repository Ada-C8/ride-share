########################################################
# Step 1: Establish the layers

# Write a list of the layers here

#  Option 1
# Rides
#-Driver, -Date, Cost, Rider, Rating

# Option 2
# Driver (by ID)
#-Rides
#-Date, Cost, Rider, Rating

########################################################
# Step 2: Assign a data structure to each layer
# Copy your list from above, and write what data structure each layer should have
#  Option 1
# Rides Array
#Hash for each Ride
#Hash includes following keys: #-Driver, -Date, Cost, Rider, Rating

# Option 2
# Array of Drivers (by ID)
#Ride Hash for Each Ride from that driver
#Hash includes following keys: Date, Cost, Rider, Rating

# I think Option 2 might be easier to work with the data for this assignment

#In the end I used this:
# Array of Drivers Hashes
# Each Drivers Hash contains Driver info incl avg rating, total rides, earnings,
# and an Array of Hashes for each ride Driver has completed.

# I found doing it that way made it easy to read and easy to get the data for each individual driver.
# I'm also thinking it would allow for easy modification in the future, if you would want to add more
# data points per driver or per ride, etc.

########################################################
# Step 3: Make the data structure!

# Setup the data strcture and manually write in data presented in rides.csv

drivers_array = [
  dr0001 = {
    ID: "DR0001", Earnings: 0, Total_Rides: 0, Average_Rating: 0,
    Rides: [
      { "Date" => "3rd Feb 2016", :Cost => 10, "RiderID" => "RD0003", :Rating => 3 },
      { "Date" => "3rd Feb 2016", :Cost => 30, "RiderID" => "RD0015", :Rating => 4 },
      { "Date" => "5th Feb 2016", :Cost => 45, "RiderID" => "RD0003", :Rating => 2 }
    ]
  },
  dr0002 = {
    ID: "DR0002", Earnings: 0, Total_Rides: 0, Average_Rating: 0,
    Rides: [
      { "Date" => "3rd Feb 2016", :Cost => 25, "RiderID" => "RD0073", :Rating => 5 },
      { "Date" => "4th Feb 2016", :Cost => 15, "RiderID" => "RD0013", :Rating => 1 },
      { "Date" => "5th Feb 2016", :Cost => 35, "RiderID" => "RD0066", :Rating => 3 }
    ]
  },
  dr0003 = {
    ID: "DR0003", Earnings: 0, Total_Rides: 0, Average_Rating: 0,
    Rides: [
      { "Date" => "4th Feb 2016", :Cost => 5, "RiderID" => "RD0066", :Rating => 5 },
      { "Date" => "5th Feb 2016", :Cost => 50, "RiderID" => "RD0003", :Rating => 2 }
    ]
  },
  dr0004 = {
    ID: "DR0004", Earnings: 0, Total_Rides: 0, Average_Rating: 0,
    Rides: [
      { "Date" => "3rd Feb 2016", :Cost => 5, "RiderID" => "RD0022", :Rating => 5 },
      { "Date" => "4th Feb 2016", :Cost => 10, "RiderID" => "RD0022", :Rating => 4 },
      { "Date" => "5th Feb 2016", :Cost => 20, "RiderID" => "RD0073", :Rating => 5 }
    ]
  }
]

########################################################
# Step 4: Total Divers Earnings and Number of Rides

#   # Use an iteration block to print driver's total rides and money made

drivers_array.count.times do |i|
  earnings = 0
  rating_sum = 0
  drivers_array[i][:Rides].length.times do |n|
    earnings += drivers_array[i][:Rides][n][:Cost]
    rating_sum += drivers_array[i][:Rides][n][:Rating]
  end
  drivers_array[i][:Earnings] = earnings
  drivers_array[i][:Total_Rides] = drivers_array[i][:Rides].length
  drivers_array[i][:Average_Rating] = rating_sum / drivers_array[i][:Rides].length
end


drivers_array.count.times do |i|
  puts "#{drivers_array[i][:ID]}:
  Total Rides: #{drivers_array[i][:Total_Rides]}
  Earnings: $#{drivers_array[i][:Earnings]}
  Average Rating: #{drivers_array[i][:Average_Rating]}\n\n"
end
