########################################################
# Step 1: Establish the layers

  ride_data 
    individual driver id
      for each ride: (date, cost, rating)

########################################################
# Step 2: Assign a data structure to each layer

  hash {}(the key will be driver_data)
    array []of driver_ids (4 total)
       hash {}per ride (keys will be: (date, money_made, rating) ) 

########################################################
# Step 3: Make the data structure!

    driver_data = {
  "DR001" => [
    {date: "3rd Feb 2016", money: 10, rating: 3},
    {date: "3rd Feb 2016", money: 30, rating: 4},
    {date: "5th Feb 2016", money: 45, rating: 2}
  ],

  "DR002"  => [
    {date: "3rd Feb 2016", money: 25, rating: 5},
    {date: "4th Feb 2016", money: 15, rating: 1},
    {date: "5th Feb 2016", money: 35, rating: 3}
  ],

  "DR003"  => [
    {date: "4th Feb 2016", money: 5, rating: 5},
    {date: "5th Feb 2016", money: 50, rating: 2}
  ],

  "DR004" => [
    {date: "3rd Feb 2016", money: 5, rating: 5},
    {date: "4th Feb 2016", money: 10, rating: 4},
    {date: "4th Feb 2016", money: 20, rating: 5}
  ]
}


########################################################
# Step 4: Total Divers Earnings and Number of Rides

driver_data.each do |id, rides|
  num = rides.length
  
  # money calculation AND rating (merged to one loop to DRY it up! wahooo!)
  money_total = 0
  rating_total = 0.0
  avg_rate = 0.0
  num.times do |i|
    money_total += rides[i][:money]
    rating_total += rides[i][:rating]
    avg_rate = (rating_total / num).round(1)
  end
  
  # output message information about driver
  puts
  puts "Driver #{id} drove: #{num} trips. "
  puts "They made $#{money_total} dollars total."
  puts "Their average customer rating was: #{avg_rate}"
  puts
end





