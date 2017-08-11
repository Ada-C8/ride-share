########################################################
# Step 1: Establish the layers

  # Write a list of the layers here

  # Layer 1: DRIVER_IDS
  # Layer 2: Each Driver's ID
  # Layer 3: All rides each driver has
  # Layer 4: Each rides
  # Layer 5: Info from each ride

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  # Layer 1: DRIVER_IDS (Hash)
  # Layer 2: Each Driver's ID (Hash)
  # Layer 3: All rides each driver has (Key: Array)
  # Layer 4: Each ride (Hash)
  # Layer 5: Info from each ride (Symbol: String/Int)

########################################################
# Step 3: Make the data structure!

# Setup the data strcture and manually write in data presented in rides.csv

driver_IDs = { #Hash with all driver IDs (key) and their individial rides (value)
  DR0001: [ #Array that contains all rides
    { #Each ride's info
      date: "3RD FEB 2016",
      cost: 10,
      rider_ID: "RD0022",
      rating: 5
    },
    {
      date: "3RD FEB 2016",
      cost: 30,
      rider_ID: "RD0015",
      rating: 4
    },
    {
      date: "5TH FEB 2016",
      cost: 45,
      rider_ID: "RD0003",
      rating: 2
    },
  ],
  DR0002: [
    {
      date: "3rd Feb 2016",
      cost: 25,
      rider_ID: "RD0073",
      rating: 5
    },
    {
      date: "4th Feb 2016",
      cost: 15,
      rider_ID: "RD0013",
      rating: 1
    },
    {
      date: "5th Feb 2016",
      cost: 35,
      rider_ID: "RD0066",
      rating: 3
    }
  ],
  DR0003: [
    {
      date: "4th Feb 2016",
      cost: 5,
      rider_ID: "RD0066",
      rating: 5
    },
    {
      date: "5th Feb 2016",
      cost: 50,
      rider_ID: "RD0066",
      rating: 2
    }
  ],
  DR0004: [
    {
      date: "3rd Feb 2016",
      cost: 5,
      rider_ID: "RD0022",
      rating: 5
    },
    {
      date: "4th Feb 2016",
      cost: 10,
      rider_ID: "RD0022",
      rating: 4
    },
    {
      date: "5th Feb 2016",
      cost: 20,
      rider_ID: "RD0073",
      rating: 5
    }
  ]
}


########################################################
# Step 4: Total Divers Earnings and Number of Rides

# Use an iteration block to print driver's total rides and money made
puts "============================"
puts "Total money for drivers:"
puts "============================\n\n"


driver_IDs.each do |id, rides_list|
  puts "Driver ID: #{id.to_s}"
  total = 0
  avg_rating = 0.0
  rides_list.each do |ride|
    total += ride[:cost]
    avg_rating += ride[:rating]
  end
  puts "Total: $#{total}"
  puts "Average Rating: #{'%.2f' % (avg_rating / rides_list.length)}\n\n"
end
