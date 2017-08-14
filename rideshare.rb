########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
  # 1. Information for each driver
  # 2. List of each driver's rides
  # 3. Iinformation about each ride: date, rider ID, cost, and rating
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  # HASH >> 1. Information for each driver
  # ARRAY >> 2. List of each driver's rides
  # HASH >> 3. Iinformation about each ride: date, rider ID, cost, and rating

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv
    drivers = {
      "DR0001" => [
        {date: "3rd Feb 2016", cost: 10, rider: "RD0003", rating: 3},
        {date: "3rd Feb 2016", cost: 30, rider: "RD0015", rating: 4},
        {date: "5th Feb 2016", cost: 45, rider: "RD0003", rating: 2}
      ],
      "DR0002" => [
        {date: "3rd Feb 2016", cost: 25, rider: "RD0073", rating: 5},
        {date: "4th Feb 2016", cost: 15, rider: "RD0013", rating: 1},
        {date: "5th Feb 2016", cost: 35, rider: "RD0066", rating: 3}
      ],
      "DR0003" => [
        {date: "4th Feb 2016", cost: 5, rider: "RD0066", rating: 5},
        {date: "5th Feb 2016", cost: 50, rider: "RD0003", rating: 2}
      ],
      "DR0004" => [
        {date: "3rd Feb 2016", cost: 5, rider: "RD0022", rating: 5},
        {date: "4th Feb 2016", cost: 10, rider: "RD0022", rating: 4},
        {date: "5th Feb 2016", cost: 20, rider: "RD0073", rating: 5}
      ]
    }
########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

  # Total Rides, Money Made, and Average Rating
  drivers.each do | driver, rides |
    total = 0
    average = 0
    rides.each do | ride |
      total += ride[:cost]
      average += ride[:rating]
    end
    average /= rides.length.to_f
    puts "Driver ##{driver} gave #{rides.length} rides, made $#{total}, and averaged a #{sprintf("%.1f",(average))} rating."
  end
