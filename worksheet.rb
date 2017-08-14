########################################################
# Step 1: Establish the layers

  # Write a list of the layers here:
      #Data as a whole, list of drivers, list of each drivers rides and their associated data 

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have:
    #Data as a whole should be a hash
    #The list of drivers should be the keys in the outermost hash
    #The data for all the drivers rides should be listed as an array of hashes, with each ride represented as a hash. 


########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made


driver_data = {
    DR001: [
      { date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3 },
      { date: "3rd Feb 2016", cost: 30, rider_id: "RD0015", rating: 4 },
      { date: "5th Feb 2016", cost: 45 , rider_id: "RD0003", rating: 5 }
    ] ,
    DR002: [
      { date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5 },
      { date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1 },
      { date: "5th Feb 2016", cost: 35 , rider_id: "RD0066", rating: 3 }
    ],
    DR003: [
      { date: "4th Feb 2016", cost: 5 , rider_id: "RD0066", rating: 5 },
      { date: "5th Feb 2016", cost: 50 , rider_id: "RD0003", rating: 2 }
    ],
    DR004: [
      { date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5 },
      { date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4 },
      { date: "5th Feb 2016", cost: 20 , rider_id: "RD0073", rating: 5 }
    ]
  }

def driver_info(data)
  array_ratings = Array.new
  x = 0
  av_rating = 0
  total_rating = 0

  data.each do |key, value|
    id = key
    number_of_rides = value.length

    value.each do |k, v|
      # Hash.merge will run the block that follows it if it finds a diplicate key
      # We don't need an initial value for inject because it is ok to treat the first key as memo
      x = value.inject{|key_name, element| key_name.merge( element ){|k, old_v, new_v| old_v + new_v}}

      k.each do |a, b|
        if a == :rating
          array_ratings << b
          av_rating =  x[:rating]  / array_ratings.length
        end
      end
    end
    puts "Driver #{id} gave #{number_of_rides} ride(s), earned $#{x[:cost]}, and has an average rating of #{av_rating}"
  end
end

driver_info(driver_data)
