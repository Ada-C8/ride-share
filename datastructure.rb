# Method that creates a hash containing two empty arrays to store earnings and ratings
def driver_hash(id)
  return {
    earnings: [],
    ratings: []
  }
end

# Method that prints a car to screen
def car
  puts '       _______'
  puts '      //  ||\ \ '
  puts '_____//___||_\ \___'
  puts ')  _          _    \ '
  puts '|_/ \________/ \___|'
  puts '___\_/________\_/______'
end


# Ride Data organized as an array of many hashes
rides = [
  {
    driver_id: "DR0004",
    date: "3rd Feb 2016",
    cost: 5,
    rider_id: "RD0022",
    rating: 5,
  },
  {
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    cost: 10,
    rider_id: "RD0003",
    rating: 3,
  },
  {
    driver_id: "DR0002",
    date: "3rd Feb 2016	",
    cost: 25,
    rider_id: "RD0073",
    rating: 5,
  },
  {
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    cost: 30,
    rider_id: "RD0015",
    rating: 4,
  },
  {
    driver_id: "DR0003",
    date: "4th Feb 2016",
    cost: 5,
    rider_id: "RD0066",
    rating: 5,
  },
  {
    driver_id: "DR0004" ,
    date: "4th Feb 2016" ,
    cost: 10,
    rider_id: "RD0022",
    rating: 4,
  },
  {
    driver_id: "DR0002" ,
    date: "4th Feb 2016",
    cost: 15,
    rider_id: "RD0013",
    rating: 1,
  },
  {
    driver_id: "DR0003",
    date: "5th Feb 2016",
    cost: 50,
    rider_id: "RD0003",
    rating: 2,
  },
  {
    driver_id: "DR0002",
    date: "5th Feb 2016",
    cost: 35,
    rider_id: "RD0066",
    rating: 3,
  },
  {
    driver_id: "DR0004",
    date: "5th Feb 2016" ,
    cost: 20,
    rider_id: "RD0073",
    rating: 5,
  },
  {
    driver_id: "DR0001" ,
    date: "5th Feb 2016",
    cost: 45,
    rider_id: "RD0003",
    rating: 2,
  },
]

puts "Each ride is stored as a hash within an array"
puts rides
puts ""
# Creates empty hash to store and organize data on each driver
unique_driver_data = {}

# Iterates through ride data and adds each unique driver id to the unique_driver_data
# The key is the driver's id and it's value is a hash with an empty earnings array and ratings array
rides.each do |ride|
  driver_key = "#{ride[:driver_id]}"
  if ! (unique_driver_data.include? "#{driver_key}")
  driver_data = driver_hash("#{ride[:driver_id]}")
  unique_driver_data[driver_key] = driver_data
  else
  end
end

# Prints the unique_driver_data sorted
puts "Initialize Unique Driver Data"
puts  unique_driver_data.sort
puts ""

# Iterates through ride data
# If the ride's driver id is equal to a driver id in the unique_driver_data hash it will push
# the ride's cost and rating to that driver's data
rides.each do |ride|
  unique_driver_data.each do |driver, data|
    if "#{ride[:driver_id]}" == "#{driver}"
      unique_driver_data[driver][:earnings].push (ride[:cost])
      unique_driver_data[driver][:ratings].push (ride[:rating])
    else
    end
  end
end

# Prints the populated unique_driver_data hash sorted
puts "Populate Unique Driver Data"
puts unique_driver_data.sort
puts ""

# Prints total number of drivers
puts "There are #{unique_driver_data.length} drivers."

# Iterates through unique_driver_data hash
# Counts the length of the earnings array to determine total number of rides made by driver
# Sums the earnings array to find the total earnings made by driver
# Find average rating by summing the ratings array and dividing by it's length
# Prints a car
# Prints the driver's id, total earnings, total rides and average rating
unique_driver_data.sort.each do |driver, data|
  total_rides = 0
  total_earnings = 0
  total_rating = 0
  total_rides = unique_driver_data[driver][:earnings].length
  unique_driver_data[driver][:earnings].each {|e| total_earnings += e.to_i}
  unique_driver_data[driver][:ratings].each {|a| total_rating += a}
  avg_rating = total_rating / (unique_driver_data[driver][:ratings].length)
  car
  puts "Driver #{driver} made $#{total_earnings} over #{total_rides} rides with an average rating of #{avg_rating}.\n\n"
end
