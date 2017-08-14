########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

## There will be two layers.  The first layer will be based on the number of rows and the second layer will be based on the columns. Future data structures will be created from this inital layering of data.

############################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
#Layer One: An array. Each array will correlate to a row of data.
#Layer TWo: A hash. The key for each hash will be the column heading. The value for each hash will be the value in the cell.

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

    #DRIVER_ID,DATE,COST,RIDER_ID,RATING
    # data = [
    # {driver_id: "DR0004", date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5},
    # {driver_id: "DR0001", date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
    # {driver_id: "DR0002", date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
    # {driver_id: "DR0001", date: "3rd Feb 2016", cost: 30, rider_id: "RD0015", rating: 4},
    # {driver_id: "DR0003", date: "4th Feb 2016", cost: 5, rider_id: "RD0066", rating: 5},
    # {driver_id: "DR0004", date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
    # {driver_id: "DR0002", date: "4th Feb 2016", cost: 15, rider_id: "RD0013", rating: 1},
    # {driver_id: "DR0003", date: "5th Feb 2016", cost: 50, rider_id: "RD0003", rating: 2},
    # {driver_id: "DR0002", date: "5th Feb 2016", cost: 35, rider_id: "RD0066", rating: 3},
    # {driver_id: "DR0004", date: "5th Feb 2016", cost: 20, rider_id: "RD0073", rating: 5},
    # {driver_id: "DR0001", date: "5th Feb 2016", cost: 45, rider_id: "RD0003", rating: 2}]

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

  driver_ids = []
  driver_earnings = []
  driver_rides = []
  driver_average_rating = []

  data.each do |rides|
    driver_ids << rides[:driver_id]
  end

  driver_ids = driver_ids.uniq

  i = 0
  driver_ids.each do |driver|
    driver_earnings[i] = 0
    driver_rides[i] = 0
    driver_rating = []
    data.each do |rides|
      if rides[:driver_id] == driver
        driver_earnings[i] += rides[:cost]
        driver_rides[i] += 1
        driver_rating << rides[:rating]
      end
    end
    driver_average_rating[i] = driver_rating.inject(0){|sum,x| sum + x}/driver_rating.length.to_f
    puts "Driver #{driver_ids[i]} made #{driver_earnings[i]} shekels, completed #{driver_rides[i]} rides and had an average rating of #{driver_average_rating[i]}"
    i += 1
  end
