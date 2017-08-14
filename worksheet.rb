########################################################
# Step 1: Establish the layers

  parent
  driver id
  passenger, date, price, rating

########################################################
# Step 2: Assign a data structure to each layer

  parent - hash
  driver id - array
  passenger, date, price, rating - hash

########################################################
# Step 3: Make the data structure!

   driver_id = {
  DR0001: [ 
    {passenger: "RD0003", date: "02/03/2016", price: 10, rating: 3},
    {passenger: "RD0015", date: "02/03/2016", price: 30, rating: 4},
    {passenger: "RD0003", date: "02/05/2016", price: 45, rating: 2}
  ],
  DR0002: [
    {passenger: "RD0073", date: "02/03/2016", price: 25, rating: 5},
    {passenger: "RD0013", date: "02/04/2016", price: 15, rating: 1},
    {passenger: "RD0066", date: "02/05/2016", price: 35, rating: 3}
  ],
  DR0003: [
    {passenger: "RD0066", date: "02/04/2016", price: 5, rating: 5},
    {passenger: "RD0003", date: "02/05/2016", price: 50, rating: 2}
  ],
  DR0004: [
    {passenger: "RD0022", date: "02/03/2016", price: 5, rating: 5},
    {passenger: "RD0022", date: "02/04/2016", price: 10, rating: 4},
    {passenger: "RD0073", date: "02/05/2016", price: 20, rating: 5}
  ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  driver_id.each do | id, driver_record |

  total_rides = 0
  total_earned = 0
  average_rating = 0

  puts "Driver #{id}: "
  driver_record.each do | record | 
    total_rides += 1 
    total_earned += record[:price] 
    average_rating += record[:rating] 
  end
 
  puts "Total rides given: #{total_rides}"
  puts "Total earned: $#{total_earned}"
  puts "Average rating: #{(average_rating.to_f/total_rides).round(1)}/5"
  puts
end
