# Goal is to do the following.
  # 1. Total number of rides each driver gave.
  # 2. Total amount of made per driver.
  # 3. (If there is time find average driver rating.)

# Step 1: Establish the layers
#
# Step 2: Assign a data structure to each layer
#
# Step 3: Make the data structure!
#
# Step 4: Total Divers Earnings and Number of Rides
#

# Stored rides data.
rides = [
  {
    driver_id: "DR0004",
    date: "3rd Feb 2016",
    earnings: 5,
    rider_id: "RD0022",
    rating: 5
  },

  {
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    earnings: 10,
    rider_id: "RD0003",
    rating: 3
  },

  {
    driver_id: "DR0002",
    date: "3rd Feb 2016",
    earnings: 25,
    rider_id: "RD0073",
    rating: 5
  },

  {
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    earnings: 30,
    rider_id: "RD0015",
    rating: 4
  },

  {
    driver_id: "DR0003",
    date: "4th Feb 2016",
    earnings: 5,
    rider_id: "RD0066",
    rating: 5
  },

  {
    driver_id: "DR0004",
    date: "4th Feb 2016",
    earnings: 10,
    rider_id: "RD0022",
    rating: 4
  },

  {
    driver_id: "DR0002",
    date: "4th Feb 2016",
    earnings: 15,
    rider_id: "RD0013",
    rating: 1
  },

  {
    driver_id: "DR0003",
    date: "5th Feb 2016",
    earnings: 50,
    rider_id: "RD0003",
    rating: 2
  },

  {
    driver_id: "DR0002",
    date: "5th Feb 2016",
    earnings: 35,
    rider_id: "RD0066",
    rating: 3
  },

  {
    driver_id: "DR0004",
    date: "5th Feb 2016",
    earnings: 20,
    rider_id: "RD0073",
    rating: 5
  },

  {
    driver_id: "DR0004",
    date: "5th Feb 2016",
    earnings: 20,
    rider_id: "RD0073",
    rating: 5
  }
]



# iterate over the hash of hashes. If the driver id is x then
# add one ride to the tally.



# Storage for number of rides per driver
rides_per_driver = {
  "DR0001" => 0,
  "DR0002" => 0,
  "DR0003" => 0,
  "DR0004" => 0
}

# Storage driver's earnings
driver_earnings = {
  "DR0001" => 0,
  "DR0002" => 0,
  "DR0003" => 0,
  "DR0004" => 0
}

rides.each do |x|
  # This works Keep it
  d = x[:driver_id]
  rides_per_driver[d] += 1
  # This works keep it
  driver_earnings[d] += x[:earnings]
end


# Output to user per driver both the number of rides and earnings.
# I recognize the output message could have been "Driver ____ made ____ ride and earned $____"
# However, that required combining rides_per_driver and driver_earnings into a hash of hashes 
# and I did not have the bandwidth to puzzle and find a solution.

rides_per_driver.each do |k, v|
  puts "Driver #{k} made #{v} rides."
end

driver_earnings.each do |k, v|
  puts "Driver #{k} earned $#{v}"
end



# Below are my attemps and failures. If you like read on.
#
# rides_per_driver.each do |x|
#   if rides_per_driver.has_key?(rides_per_driver[x])
#     rides.each do|ride_num, ride_data|
#       rides.each do |k, v|
#         rides_per_driver += 1
#       end
#     end
#   else
#     rides.each do|ride_num, ride_data|
#       rides.each do |k, v|
#         rides_per_driver = 1
#       end
#     end
#   end

#
# end

# Goal 1. Total number of rides per driver.
# iterate over hash to find which drivers gave and then store number of rides.

# rides.each do |ride_num, ride_data|
#   rides.each do |k, v|
#     puts v
  # # drivers.each do |x|
  #   if rides_per_driver.has_key?(drivers[driver])
  #     rides_per_driver[drivers] += 1
  #   else
  #     rides_per_driver[drivers] = 1
  #   end
  # # end
  # # puts rides_per_driver
#   end
# end

# puts rides_by_driver
# drivers.each do |driver|
#   if rides_per_driver.has_key?(driver)
#     rides_per_driver[driver] += 1
#   else
#
#   end
#   # if candidates.has_key?(userSelection)
#   #   candidates[userSelection] += 1
#   # elsif
#   #   candidates[userSelection] = 1
#   # end
# end
#






















puts
