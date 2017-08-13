########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

# layer 1: hash
# layer 2: array
# layer 3: hash

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  # layer 1: hash - This is hash contains all of the data.
  # layer 2: array - Within the key-value  pair of the hash above is an array. The key is a symbol while the value is an array.
  # layer 3: hash - Within the value (array) of the previous key value pairs are hashes comprised of each ride.

########################################################
# Step 3: Make the data structure!

    # Setup the data strcture and manually write in data presented in rides.csv


    # driver_info = {
    #     DR0001:
    #     [
    #       {
    #         date: "3rd Feb 2016",
    #         cost: 10,
    #         rider_id: "RD0003",
    #         rating: 3
    #       },
    #
    #       {
    #         date: "3rd Feb 2016",
    #         cost: 30,
    #         rider_id: "RD0015",
    #         rating: 4
    #       },
    #
    #       {
    #         date: "5th Feb 2016",
    #         cost: 45,
    #         rider_id: "RD0003",
    #         rating: 2
    #       }
    #     ],
    #
    #
    #     DR0002:
    #     [
    #       {
    #         date: "3rd Feb 2016",
    #         cost: 25,
    #         rider_id: "RD0073",
    #         rating: 5},
    #
    #       {
    #         date: "4th Feb 2016",
    #         cost: 15,
    #         rider_id: "RD0013",
    #         rating: 1},
    #
    #       {
    #         date: "5th Feb 2016",
    #         cost: 35,
    #         rider_id: "RD0066",
    #         rating: 3}
    #     ],
    #
    #
    #     DR0003:
    #     [
    #       {
    #         date: "4th Feb 2016",
    #         cost: 5,
    #         rider_id: "RD0066",
    #         rating: 5
    #       },
    #
    #       {
    #         date: "5th Feb 2016",
    #         cost: 50,
    #         rider_id: "RD0003",
    #         rating: 2
    #       }
    #     ],
    #
    #
    #     DR0004:[
    #       {
    #         date: "3rd Feb 2016",
    #         cost: 5,
    #         rider_id: "RD0022",
    #         rating: 5
    #       },
    #
    #       {
    #         date: "4th Feb 2016,",
    #         cost: 10,
    #         rider_id: "RD0022",
    #         rating: 4
    #       },
    #
    #       {
    #         date: "5th Feb 2016",
    #         cost: 20,
    #         rider_id: "RD0073",
    #         rating: 5
    #       }
    #     ]
    # }


########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made
  driver_info = {
        DR0001:
        [
          {
            date: "3rd Feb 2016",
            cost: 10,
            rider_id: "RD0003",
            rating: 3
          },

          {
            date: "3rd Feb 2016",
            cost: 30,
            rider_id: "RD0015",
            rating: 4
          },

          {
            date: "5th Feb 2016",
            cost: 45,
            rider_id: "RD0003",
            rating: 2
          }
        ],


        DR0002:
        [
          {
            date: "3rd Feb 2016",
            cost: 25,
            rider_id: "RD0073",
            rating: 5},

          {
            date: "4th Feb 2016",
            cost: 15,
            rider_id: "RD0013",
            rating: 1},

          {
            date: "5th Feb 2016",
            cost: 35,
            rider_id: "RD0066",
            rating: 3}
        ],


        DR0003:
        [
          {
            date: "4th Feb 2016",
            cost: 5,
            rider_id: "RD0066",
            rating: 5
          },

          {
            date: "5th Feb 2016",
            cost: 50,
            rider_id: "RD0003",
            rating: 2
          }
        ],


        DR0004:[
          {
            date: "3rd Feb 2016",
            cost: 5,
            rider_id: "RD0022",
            rating: 5
          },

          {
            date: "4th Feb 2016,",
            cost: 10,
            rider_id: "RD0022",
            rating: 4
          },

          {
            date: "5th Feb 2016",
            cost: 20,
            rider_id: "RD0073",
            rating: 5
          }
        ]
    }

    # First loop is accessing the key-value pair within the driver_info hash.
    # Created an empty array to store the cost of each ride. for the following loop.
    driver_info.each do |driver_id, rides|
      costs_array = []
      rating_array = []
      # puts "#{driver_id}"

    # Rides.each is accessing the values of the hash and iterating through each of them to pull the cost and push it to the costs_array above.
      rides.each do |ride|
        costs_array << ride[:cost]
        rating_array << ride[:rating].to_f
      end

      # summing the contents of the cost_array and pushing it to the cost_array so that it can be interpolated with driver_id and rides.length.
      # As we are iterating through rides we can call .length on it and it will tell us how many indices are in the array as the array is the value from the key-value pair.
      total_money = costs_array.sum
      average_rating = rating_array.sum / rating_array.length

      puts "Driver #{driver_id} completed #{rides.length} rides and made $#{total_money}. This drivers average rating is #{average_rating.round(2)}"

    end
