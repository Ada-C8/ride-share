driver_id = { # hash
  DR0001: [ # key: v(array)
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

driver_id.each do | id, driver_record |

  total_rides = 0
  total_earned = 0
  average_rating = 0

  puts "Driver #{id}: "
  driver_record.each do | record | # is this the best way to dig this deep?
    total_rides += 1 # really just the total number of indexes in each array
    total_earned += record[:price] # adds total to itself
    average_rating += record[:rating] # where the rating TOTAL is stored so it can be divided later
  end
  # display desired info
  puts "Total rides given: #{total_rides}"
  puts "Total earned: $#{total_earned}"
  puts "Average rating: #{(average_rating.to_f/total_rides).round(1)}/5"
  puts
end

# might as well show all the data inputted!
puts "Would you like to view the rest of the data? Y/N"
user_response = gets.chomp.downcase

if user_response == "y"
  driver_id.each do | id, driver_record |
    puts "Driver #{id}: "
    puts
    driver_record.each do | record |
      puts "#{record[:date]} - Passenger ##{record[:passenger]} - Fare: $#{record[:price]} - Rating: #{record[:rating]}/5"
    end
  end
else
  puts "Ride safely!"
end
