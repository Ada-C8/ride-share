# Layers:
# 1. All driver IDs
# 2. All rides for each driver
# 3. Ride info
#   - date
#   - rider_id
#   - cost
#   - rating
#
# Data Structure For Each Layer:
# 1. Hash
# 2. Array
# 3. Hash
#
# Data Structure:

driver_data_hash = {
  "DR0004" => [
    {
      "date" => "3rdFeb2016",
      "rider_id" => "RD0003",
      "cost" => 5,
      "rating" => 5
    },
    {
      "date" => "4thFeb2016",
      "rider_id" => "RD0022",
      "cost" => 10,
      "rating" => 4
    },
    {
      "date" => "5thFeb2016",
      "rider_id" => "RD0003",
      "cost" => 20,
      "rating" => 5
    }
  ],
  "DR0001" => [
    {
      "date" => "3rdFeb2016",
      "rider_id" => "RD0022",
      "cost" => 10,
      "rating" => 3
    },
    {
      "date" => "3rdFeb2016",
      "rider_id" => "RD0015",
      "cost" => 30,
      "rating" => 4
      },
    {
      "date" => "5thFeb2016",
      "rider_id" => "RD0015",
      "cost" => 45,
      "rating" => 2
    },
  ],
  "DR0002" => [
    {
      "date" => "3rdFeb2016",
      "rider_id" => "RD0015",
      "cost" => 25,
      "rating" => 4
    },
    {
      "date" => "4thFeb2016",
      "rider_id" => "RD0013",
      "cost" => 10,
      "rating" => 1
    },
    {
      "date" => "5thFeb2016",
      "rider_id" => "RD0066",
      "cost" => 35,
      "rating" => 3
    },
  ],
  "DR0003" => [
    {
      "date" => "4thFeb2016",
      "rider_id" => "RD0066",
      "cost" => 5,
      "rating" => 5
    },
    {
      "date" => "5thFeb2016",
      "rider_id" => "RD0003",
      "cost" => 50,
      "rating" => 2
    },
  ]
}


# Iterate over each driver and get cost for each ride
driver_data_hash.each do |driver_id, rides|
  current_driver_total_cost = 0
  current_driver_total_rating = 0
  # Iterate
  rides.each do |ride|
    # Adds the current ride cost to the total ride cost / avg rating
    current_driver_total_cost += ride["cost"]
    current_driver_total_rating += ride["rating"]
  end
  # Divide sum of rating by number of rides
  avg_driver_rating = (current_driver_total_rating / rides.length.to_f)
  # Print the current driver driver_id, total rides, cost, avg rating
  puts "DRIVER ID: #{driver_id}"
  puts "Total rides: #{rides.length}"
  puts "Total cost: #{current_driver_total_cost}"
  puts "Average Rating: #{avg_driver_rating}"
  puts
end
