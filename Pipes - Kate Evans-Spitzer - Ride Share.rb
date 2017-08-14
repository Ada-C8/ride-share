########################################################
# Step 1: Establish the layers

# Write a list of the layers here

"
drivers
  driver id
    trip
      date
      cost
      rider
      rating
"

########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and write what data structure each layer should have

"drivers = {
  driver id: [
    trip: {
      date: integer (YYYYMMDD)
      cost: float (15.95)     # these are integers in the CSV but if they represent currency should probably be floats
      rider: symbol           # could be string, but this is consistent with driver IDs
      rating: integer
"

########################################################
# Step 3: Make the data structure!

# Setup the data strcture and manually write in data presented in rides.csv

drivers = {
  DR0001: [
    {
      date: 20160203,
      cost: 10.0,
      rider_id: :RD0003,
      rating: 3,
    },
    {
      date: 20160203,
      cost: 30.0,
      rider_id: :RD0015,
      rating: 4,
    },
    {
      date: 20160205,
      cost: 45.0,
      rider_id: :RD0003,
      rating: 2,
    }
  ],
  DR0002: [
    {
      date: 20160203,
      cost: 25.0,
      rider_id: :RD0073,
      rating: 5,
    },
    {
      date: 20160204,
      cost: 15.0,
      rider_id: :RD0013,
      rating: 1,
    },
    {
      date: 20160205,
      cost: 35.0,
      rider_id: :RD0066,
      rating: 3,
    }
  ],
  DR0003: [
    {
      date: 20160204,
      cost: 5.0,
      rider_id: :RD0066,
      rating: 5,
    },
    {
      date: 20160205,
      cost: 50.0,
      rider_id: :RD0003,
      rating: 2,
    }
  ],
  DR0004: [
    {
      date: 20160203,
      cost: 5.0,
      rider_id: :RD0022,
      rating: 5,
    },
    {
      date: 20160204,
      cost: 10.0,
      rider_id: :RD0022,
      rating: 4,
    },
    {
      date: 20160205,
      cost: 20.0,
      rider_id: :RD0073,
      rating: 5,
    }
  ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

# Use an iteration block to print driver's total rides and money made
puts

drivers.each do |driver, drives|
  puts "Recent drive data for driver #{driver}:"
  total_rides = 0
  total_money = 0.0
  average_rating = 0
  drives.each do |drive|
    total_rides += 1
    total_money += drive[:cost]
    average_rating += drive[:rating]
  end
  average_rating *= 1.0      # So those poor drivers don't get their ratings rounded down by integers
  average_rating /= total_rides
  puts "Total rides: #{total_rides}"
  puts "Total earnings: $#{"%.2f" % total_money}"
  puts "Average rating: #{"%.1f" % average_rating}"
  puts
end
