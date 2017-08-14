# hash = {key: value [{},{},{}]}
# hash --- array ---- hash
# drivers ---- rides ---- ride info

rides = {
  "DR0001" => [
    {date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
    {date: "3rd Feb 2016", cost: 30, rider_id: "RC0015", rating: 4},
    {date: "5th Feb 2016", cost: 45, rider_id: "RC0003", rating: 2}
  ],
  "DR0002" => [
    {date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
    {date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1},
    {date: "5th Feb 2016", cost: 35, rider_id: "RD0066", rating: 3}
  ],
  "DR0003" => [
    {date: "4th Feb 2016", cost: 5, rider_id: "RD0066", rating: 5},
    {date: "5th Feb 2016", cost: 50, rider_id: "RD0003", rating: 2},
  ],
  "DR0004" => [
    {date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5},
    {date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
    {date: "5th Feb 2016", cost: 20, rider_id: "RD0073", rating: 2}
  ]
}

def output(driver_id, total_rides, earning, ave_rating)
  puts "===== Driver #{driver_id} ====="
  puts "Total rides: #{total_rides} rides"
  puts "Total earning: #{earning}"
  puts "Average rating: #{ave_rating}"
end

# loop through first level hash (to find total rides per driver)
rides.each do | driver_id, all_ride_info |
  total_rides = all_ride_info.length

  # keep track of earnings, ratings, and number of ratings for each driver
  earning = 0
  total_rating = 0
  rides = 0

  # loop through second level array (to find info for each driver)
  all_ride_info.each do | ind_ride |
    earning += ind_ride[:cost]
    total_rating += ind_ride[:rating]
    rides += 1 # keep track of number of ratings
  end

  # find average rating
  ave_rating = total_rating / rides.to_f

  # call final_output
  final_output = output(driver_id, total_rides, earning, ave_rating)
  puts final_output
end
