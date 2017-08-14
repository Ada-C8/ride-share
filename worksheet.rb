########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
  # Hash, Array, Hash.

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  # Driver id HASH (key = id#) to an ARRAY (value) of all rides under
  # that id. Then a HASH of information from each of their rides.

########################################################
# Step 3: Make the data structure!

  # Setup the data structure and manually write in data presented in rides.csv

  driver_id_rides = {

    "DR0001": [
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
    "DR0002": [
      {
        date: "3rd Feb 2016",
        cost: 25,
        rider_id: "RD0073",
        rating: 5
      },
      {
        date: "4th Feb 2016",
        cost: 15,
        rider_id: "RD0013",
        rating: 1
      },
      {
        date: "5th Feb 2016",
        cost: 35,
        rider_id: "RD0066",
        rating: 3
      }
    ],
    "DR0003": [
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
    "DR0004": [
      {
        date: "3rd Feb 2016",
        cost: 5,
        rider_id: "RD0022",
        rating: 5
      },
      {
        date: "4th Feb 2016",
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

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

  # Inside the first hash, key=driver_id_rides value=array
  driver_id_rides.each do |key, value|
    puts "\n-----------------"
    puts "Driver Id: " + key.to_s
    puts "-----------------"
    puts "Has given #{value.length} rides and"

    cost_array = []
    rating_array = []

    value.each do |index|
      # For each matching key, it adds the value to the selected array
      index.each {|key2,value2| cost_array << value2 if key2 == :cost}
      index.each {|key2,value2| rating_array << value2 if key2 == :rating}
    end

    puts "has earned $" + cost_array.inject(:+).to_s + " dollars"
    puts "Average rating: " + (rating_array.inject(:+).to_f / rating_array.length).round.to_s
  end
