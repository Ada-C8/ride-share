########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
  # Drivers -> Driver rides -> Ride details

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  # Drivers (hash)
  # driver rides (array)
  # Ride details (hash)

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv
drivers = {
  "DR0004" => [
    {date: 2016-02-03,
      cost: 5,
      rider_id: "RD0022",
      rating: 5},
    {date: 2016-02-04,
      cost: 10,
      rider_id: "RD0022",
      rating: 4},
    {date: 2016-02-03,
      cost: 20,
      rider_id: "RD0022",
      rating: 5}
    ],
  "DR0001" => [
    {date: 2016-02-03,
      cost: 10,
      rider_id: "RD0003",
      rating: 3},
    {date: 2016-02-03,
      cost: 30,
      rider_id: "RD0015",
      rating: 4},
    {date: 2016-02-05,
      cost: 45,
      rider_id: "RD0003",
      rating: 2}
  ],
  "DR0002" => [
    {date: 2016-02-03,
      cost: 25,
      rider_id: "RD0073",
      rating: 5},
    {date: 2016-02-04,
      cost: 15,
      rider_id: "RD0013",
      rating: 1},
    {date: 2016-02-05,
      cost: 35,
      rider_id: "RD0066",
      rating: 3}
  ],
  "DR0003" => [
    {date: 2016-02-04,
      cost: 5,
      rider_id: "RD0066",
      rating: 5},
    {date: 2016-02-05,
      cost: 50,
      rider_id: "RD0003",
      rating: 2}
  ]
}

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

# loop through each driver, rides pair in the drivers hash
drivers.each do |driver, rides|
  # set variables for needed info
  pay = 0
  ratings = []
  count = 0
  # loop through each ride in the rides array and calculate the pay and ride count, and save ratings in  an array
  rides.each do |ride|
    pay += ride[:cost]
    ratings.push(ride[:rating])
    count += 1
  end
  # initialize sum variable to calculate average rating
  sum = 0
  # loop through the ratings array and sum all elements
  ratings.each do |rate|
    sum += rate
  end
  # divide sum by array length to get average rating
  avg_rating = (sum.to_f/ratings.length).round(1)

  # display requested information
  puts "Driver #{driver.to_s} has provided #{count} rides and earned $#{pay}. Their average rating ia #{avg_rating}"
end
