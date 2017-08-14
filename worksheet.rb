########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
    # driver_id
    # rides
    # ride info

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
    # driver_id - hash
    # rides - array
    # ride info -hash

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

ride_share_hash = {
  "DR0001" => [
    {RIDER_ID: "RD0003", date: "3rd Feb 2016", cost: 10, rating: 3},
    {RIDER_ID: "RD0015", date: "3rd Feb 2016", cost: 30, rating: 4},
    {RIDER_ID: "RD0003", date: "5th Feb 2016", cost: 45, rating: 2},
  ],
  "DR0002" => [
    {RIDER_ID: "RD0073", date: "3rd Feb 2016", cost: 25, rating: 5},
    {RIDER_ID: "RD0013", date: "4th Feb 2016", cost: 15, rating: 1},
    {RIDER_ID: "RD0066", date: "5th Feb 2016", cost: 35, rating: 3},
  ],
  "DR0003" => [
    {RIDER_ID: "RD0066", date: "4th Feb 2016", cost: 5, rating: 5},
    {RIDER_ID: "RD0003", date: "5th Feb 2016", cost: 50, rating: 2},
  ],
  "DR0004" => [
    {RIDER_ID: "RD0022", date: "3rd Feb 2016", cost: 5, rating: 5},
    {RIDER_ID: "RD0022", date: "4th Feb 2016", cost: 10, rating: 4},
    {RIDER_ID: "RD0073", date: "5th Feb 2016", cost: 20, rating: 5},
  ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made
printf "%-20s%-20s%-20s%-20s\n" % ["Driver ID".upcase, "Number of Rides".upcase, "Total Income".upcase,  "Average Rating".upcase]

ride_share_hash.each do | driver , riders |
  money = 0
  driver_rating = []

  riders.each do |ride|
    money += ride[:cost]
    driver_rating << ride[:rating]
    # puts money
  end

  rides_total = driver_rating.length.to_i
  ave_rating = driver_rating.inject(0, :+).to_f / rides_total

  printf "%-20s%-20s%-20s%-20s\n" % [driver, rides_total, "$#{money}.00",  ave_rating.round(1)]
end
