#   ########################################################
#   # Step 1: Establish the layers
#
#     # Write a list of the layers here
#
#     #drivers
#       #driver IDS
#       #driver ride histories
#         # ride cost
#         # ride date
#         # riderID for that ride (can further nest this so that you have a hash for each unique rider and store the information of each of the riders' rides (cost,rating,date))
#         # rating
#
#   ########################################################
#   # Step 2: Assign a data structure to each layer
#     # Copy your list from above, and write what data structure each layer should have
#
#   #drivers - array of hashes, where each driver has their own hash, and the following key-value pairs
#     # driver IDS- string
#     # ride costs - array
#     # ride dates - array
#     # riderID for that ride - array
#     # rating - array
#
#
#   ########################################################
#   # Step 3: Make the data structure!
  drivers = [
    {
      driver_id: "DR0001",
      ridecosts: [10,30,45],
      riderIDs: ["RD0003", "RD0015", "RD0003"],
      ridedates: ["3rd Feb 2016", "3rd Feb 2016", "5th Feb 2016"],
      ratings: [3,4,2]
    },
    {
      driver_id: "DR0002",
      ridecosts: [25,15,35],
      riderIDs: ["RD0073", "RD0013", "RD0066"],
      ridedates: ["3rd Feb 2016", "4th Feb 2016", "5th Feb 2016"],
      ratings: [5,1,3]
    },
    {
      driver_id: "DR0003",
      ridecosts: [5,50],
      riderIDs: ["RD0066", "RD0003"],
      ridedates: ["4th Feb 2016", "5th Feb 2016"],
      ratings: [5,2]
    },
    {
      driver_id: "DR0004",
      ridecosts: [5,10,20],
      riderIDs: ["RD0022", "RD0022", "RD0073"],
      ridedates: ["3rd Feb 2016", "4th Feb 2016", "5th Feb 2016"],
      ratings: [5,4,5]

    }

  ]
#
#   # puts drivers[0][:rides][:ridecost].reduce(:+)
#       # Setup the data strcture and manually write in data presented in rides.csv
#
#   ########################################################
#   # Step 4: Total Divers Earnings and Number of Rides
#     # Use an iteration block to print driver's total rides and money made
#
  drivers.each do |driver_info|
    num_rides = driver_info[:ridecosts].length
    sum_ratings= driver_info[:ratings].reduce(:+)
    avg_ratings = (sum_ratings.to_f) / num_rides
    total_cost = driver_info[:ridecosts].reduce(:+)

    puts "Driver #{driver_info[:driver_id]} had #{num_rides} ride(s) and made $#{total_cost}, with an average rating of #{avg_ratings.round(2)} stars. "
  end
