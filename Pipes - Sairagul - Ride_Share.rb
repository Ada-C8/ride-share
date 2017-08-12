########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

# Layer 1: root (ride and share)
# Layer 2: Driver ID to rides' data mapping
# Layer 3: Ride information

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
# Layer 1 = Hash (driver ID)
# Layer 2 = array (rides)
# Layer 3 = hash (ride information)

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

ride_share = {

  "DR0001" => [
              {date: "3rd Feb 2016", cost: 10, rider: "RD0003", rate: 3},
              {date: "3rd Feb 2016", cost: 30, rider: "RD0015", rate: 4},
              {date: "5th Feb 2016", cost: 45, rider: "RD0003", rate: 2}
            ],

  "DR0002" => [
              {date: "3rd Feb 2016", cost: 25, rider: "RD0073", rate: 5},
              {date: "4th Feb 2016", cost: 15, rider: "RD0013", rate: 1},
              {date: "5th Feb 2016", cost: 35, rider: "RD0066", rate: 3}
            ],

  "DR0003" => [
              {date: "4th Feb 2016", cost: 5, rider: "RD0066", rate: 5},
              {date: "5th Feb 2016", cost: 50, rider: "RD0003", rate: 2}
            ],

  "DR0004" => [
              {date: "3rd Feb 2016", cost: 5, rider: "RD0022", rate: 5},
              {date: "4th Feb 2016", cost: 10, rider: "RD0022", rate: 4},
              {date: "5th Feb 2016", cost: 20, rider: "RD0073", rate: 5}
            ]
}

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

ride_share.each do |driver, ride_list|
  money = 0
  rating = 0.to_f
  ride_list.each do |ride|
    money += ride[:cost]
    rating += ride[:rate]
  end
  n = ride_list.length
  puts "#{driver}: number of rides = #{n}, total money = #{money}, average rating = #{rating/n} "
end
