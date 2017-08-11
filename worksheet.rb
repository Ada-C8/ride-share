########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
  # rides (main data)
  # driver_id, date, cost, rider_id, rating (these are all the same layer)

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  # rides - array
  # driver_id, date, cost, rider_id, rating - hash
########################################################
# Step 3: Make the data structure!

  # Setup the data strcture and manually write in data presented in rides.csv

  rides = [
    {
      driver_id: "DR0004",
      date: "3rd Feb 2016",
      cost: 5,
      rider_id: "RD0022",
      rating: 5
    },
    {
      driver_id: "DR0001",
      date: "3rd Feb 2016",
      cost: 10,
      rider_id: "RD0003",
      rating: 3
    },
    {
      driver_id: "DR0002",
      date: "3rd Feb 2016",
      cost: 25,
      rider_id: "RD0073",
      rating: 5
    },
    {
      driver_id: "DR0001",
      date: "3rd Feb 2016",
      cost: 30,
      rider_id: "RD0015",
      rating: 4
    },
    {
      driver_id: "DR0003",
      date: "4th Feb 2016",
      cost: 5,
      rider_id: "RD0066",
      rating: 5
    },
    {
      driver_id: "DR0004",
      date: "4th Feb 2016",
      cost: 10,
      rider_id: "RD0022",
      rating: 4
    },
    {
      driver_id: "DR0002",
      date: "4th Feb 2016",
      cost: 15,
      rider_id: "RD0013",
      rating: 1
    },
    {
      driver_id: "DR0003",
      date: "5th Feb 2016",
      cost: 50,
      rider_id: "RD0003",
      rating: 2
    },
    {
      driver_id: "DR0002",
      date: "5th Feb 2016",
      cost: 35,
      rider_id: "RD0066",
      rating: 3
    },
    {
      driver_id: "DR0004",
      date: "5th Feb 2016",
      cost: 20,
      rider_id: "RD0073",
      rating: 5
    },
    {
      driver_id: "DR0001",
      date: "5th Feb 2016",
      cost: 45,
      rider_id: "RD0003",
      rating: 2
    }
  ]
########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

# hash to store all the data
# of the form {driver_id: num_rides, money, total_rating}
driver_info_list = {}

rides.each do |ride|
  driver = ride[:driver_id] # this is a string
  money = ride[:cost]
  rating = ride[:rating]

  # if driver not already in driver info array
  if !driver_info_list.has_key? driver.to_sym  # driver id stored as sym in hash

    # add to driver info array
    driver_info_list[driver.to_sym] = {num_rides: 1, money: money, total_rating: rating}

  # if driver already in array, update vals
  else
    driver_info = driver_info_list[driver.to_sym]
    driver_info[:num_rides] += 1
    driver_info[:money] += money
    driver_info[:total_rating] += rating
  end
end
