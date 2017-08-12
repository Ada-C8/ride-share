########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

# Overall database
#   Driver ID Number
      # Info about each ride
      #   date
      #   Cost
      #   rider id
      #   rating

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  # Overall database - hash
  #   Driver ID Number - the keys in the overall hash
        # Info about each ride - stored as an array, the value to the driver id keys
        #   date - stored in hash
        #   Cost - stored in hash
        #   rider id - stored in hash
        #   rating - stored in hash

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv

    ride_database = {
      DR0001:
      [
        {
          Date: "2016_02_03",
          Cost: 10,
          Rider_Id: "RD0003",
          Rating: 3
        },
        {
          Date: "2016_02_03",
          Cost: 30,
          Rider_Id: "RD0015",
          Rating: 4
        },
        {
          Date: "2016_02_05",
          Cost: 45,
          Rider_Id: "RD0003",
          Rating: 2
        }
      ],
      DR0002:
      [
        {
          Date: "2016_02_05",
          Cost: 35,
          Rider_Id: "RD0066",
          Rating: 3
        },
        {
          Date: "2016_02_03",
          Cost: 25,
          Rider_Id: "RD0073",
          Rating: 5
        },
        {
          Date: "2016_02_04",
          Cost: 15,
          Rider_Id: "RD0013",
          Rating: 1
        }
      ],
      DR0003:
      [
        {
          Date: "2016_02_05",
          Cost: 50,
          Rider_Id: "RD0003",
          Rating: 2
        },
        {
          Date: "2016_02_04",
          Cost: 5,
          Rider_Id: "RD0066",
          Rating: 5
        }
      ],
      DR0004:
      [
        {
          Date: "2016_02_03",
          Cost: 5,
          Rider_Id: "RD0022",
          Rating: 5
        },
        {
          Date: "2016_02_04",
          Cost: 10,
          Rider_Id: "RD0022",
          Rating: 5
        },
        {
          Date: "2016_02_05",
          Cost: 20,
          Rider_Id: "RD0073",
          Rating: 5
        }
      ]
    }

########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

  ride_database.each do |driver_id, rides|
    puts "Driver Id: #{driver_id} -- "

    total_earned = 0
    number_of_rides = 0
    rating_total = 0

    rides.each do |data|
      total_earned += data[:Cost]
      rating_total += data[:Rating]
      number_of_rides = rides.length
    end

    print "Driver #{driver_id} gave #{number_of_rides} rides. They earned $#{'%.2f' % total_earned} and had an average rating of #{rating_total / number_of_rides.to_f }.\n\n"
  end
