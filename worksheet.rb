########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
# Driver IDs
  # all rides given
    # each ride's info
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
# hash of driver IDs
  # array of all rides given by driver
    # hashes of information about each individual ride
########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv
# DRIVER_ID    DATE    COST    RIDER_ID    RATING
# DR0004    3rd Feb 2016    5    RD0022    5
# DR0001    3rd Feb 2016    10    RD0003    3
# DR0002    3rd Feb 2016    25    RD0073    5
# DR0001    3rd Feb 2016    30    RD0015    4
# DR0003    4th Feb 2016    5    RD0066    5
# DR0004    4th Feb 2016    10    RD0022    4
# DR0002    4th Feb 2016    15    RD0013    1
# DR0003    5th Feb 2016    50    RD0003    2
# DR0002    5th Feb 2016    35    RD0066    3
# DR0004    5th Feb 2016    20    RD0073    5
# DR0001    5th Feb 2016    45    RD0003    2
########################################################
# Step 4: Total Divers Earnings and Number of Rides, and Average Rating

  # Use an iteration block to print driver's total rides and money made

driver_id = {
  "DR0001" => [ #each hash is a ride
    {date: "3rd Feb 2016",
      cost: 10,
      rider: "RD0003",
      rating: 3
    },
    {date: "3rd Feb 2016",
      cost: 30,
      rider: "RD0015",
      rating: 4
    },
    {date: "5th Feb 2016",
      cost: 45,
      rider: "RD0003",
      rating: 2
    }
  ],
  "DR0002" => [
    {date: "3rd Feb 2016",
      cost: 25,
      rider: "RD0073",
      rating: 5
    },
    {date: "4th Feb 2016",
      cost: 15,
      rider: "RD0013",
      rating: 1
    },
    {date: "5th Feb 2016",
      cost: 35,
      rider: "RD0066",
      rating: 3
    }
  ],
  "DR0003" => [
    {date: "4th Feb 2016",
      cost: 5,
      rider: "RD0066",
      rating: 5
    },
    {date: "5th Feb 2016",
      cost: 50,
      rider: "RD0003",
      rating: 2
    }
  ],
  "DR0004" => [
    {date: "3rd Feb 2016",
      cost: 5,
      rider: "RD0022",
      rating: 5
    },
    {date: "4th Feb 2016",
      cost: 10,
      rider: "RD0022",
      rating: 4
    },
    {date: "5th Feb 2016",
      cost: 20,
      rider: "RD0073",
      rating: 5
    }
  ]
}

driver_id.each do |id, rides_total_arr|
  puts "Driver's ID: #{id}"
  puts "Total rides given: #{rides_total_arr.length}"
  
  ## not sure if this is better for total rides given
  # id.each do |rides_total|
  #   puts "This driver has given #{rides_total.length} rides."
  # end
  
  total_money = 0
  rides_total_arr.each do |index|
    total_money = total_money + index[:cost]
  end
  puts "Total earned: $#{total_money}"
  
  rating_total = 0.0
  rides_total_arr.each do |index|
    rating_total = rating_total + index[:rating]
  end
  puts "Average rating: #{(rating_total / rides_total_arr.length).round(1)} stars"
  
  puts
  puts "-" * 20
  puts
  
end
# puts driver_id["DR0004"][0][:date] # test
