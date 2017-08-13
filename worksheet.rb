########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

#1. List of rides
#2. Individual rides' info
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  #1. List of drivers: array
  #2. Individual rides info: hash

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

rides =
  [
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
    },
  ]
########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made



drivers_id_list = [] #Checks if a driver ID has appeared before
earnings_per_driver = []

rides.each do |ride|
  if drivers_id_list.include? ride[:driver_id]
    earnings_per_driver.each do |drivers_data|
      if drivers_data[:id] == ride[:driver_id]
        drivers_data[:earnings] += ride[:cost].to_i
        drivers_data[:number_of_rides] += 1
        drivers_data[:total_rating] += ride[:rating].to_f
      end
    end
  else
    earnings_per_driver << {id: ride[:driver_id], earnings: ride[:cost].to_i,
      total_rating: ride[:rating].to_f, number_of_rides: 1}
    drivers_id_list << ride[:driver_id]
  end
end

earnings_per_driver.each do |drivers_data|
  puts "\n\nDriver #{drivers_data[:id]} gave #{drivers_data[:number_of_rides]} rides and made $#{drivers_data[:earnings]}. \nHis average rating is #{'%.2f' % (drivers_data[:total_rating]/(drivers_data[:number_of_rides]))}"
end
