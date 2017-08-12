########################################################
# Step 1: Establish the layers
# Write a list of the layers here
# Not Uber Info
#   > Driver ID
#     > Date
#       > Cost, Rider ID, Rating
#
# ########################################################
# # Step 2: Assign a data structure to each layer
# # Copy your list from above, and write what data structure each layer should have
# Not Uber Info  -- Hash
#   > Driver ID -- Hash
#      > Date -- Array
#        > Cost, Rider ID, Rating -- Hash

########################################################
# Step 3: Make the data structure!
# Setup the data strcture and manually write in data presented in rides.csv

not_uber_info = {
  DR0001:
    [
      {
      date: 02032016,
      cost: 10,
      rider: "RD0003",
      rating: 3
      },
      {
        date: 02032016,
        cost: 30,
        rider: "RD0015",
        rating: 4
      },
      {
        date: 02052016,
        cost: 45,
        rider: "RD0003",
        rating: 2
      }
    ],
  DR0002:
    [
      {
        date: 02032016,
        cost: 25,
        rider: "RD0073",
        rating: 5
      },
      {
        date: 02042016,
        cost: 15,
        rider: "RD0013",
        rating: 1
      },
      {
        date: 02052016,
        cost: 35,
        rider: "RD0066",
        rating: 3
      }
    ],
  DR0003:
    [
      {
        date: 02042016,
        cost: 5,
        rider: "RD0066",
        rating: 5
      },
      {
        date: 02052016,
        cost: 50,
        rider: "RD0003",
        rating: 2
      }
    ],
  DR0004:
    [
      {
        date: 02032016,
        cost: 5,
        rider: "RD0022",
        rating: 5
      },
      {
        date: 02042016,
        cost: 10,
        rider: "RD0022",
        rating: 4
      },
      {
        date: 02052016,
        cost: 20,
        rider: "RD0073",
        rating: 5
      }
    ]
                          }

########################################################
# Step 4: Total Divers Earnings and Number of Rides
## Use an iteration block to print driver's total rides and money made

income = 0
rating = []

printf "%-20s%-20s%-20s%-20s\n" % ["Driver ID".upcase, "Number of Rides".upcase, "Total Income".upcase,  "Average Rating".upcase]

not_uber_info.each do |driver, every_single_ride|
    every_single_ride.each do |one_unique_ride|
      income += one_unique_ride[:cost]
      rating << one_unique_ride[:rating]
    end
      printf "%-20s%-20s%-20s%-20s\n" % [driver, every_single_ride.length, "$#{income}.00",  (rating.sum / rating.size.to_f).round(2)]
      income = 0
      rating = []
end
