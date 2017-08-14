########################################################
# Step 1: Establish the layers

# Write a list of the layers here
# => drivers
# => each driver
# => each driver record



########################################################
# Step 2: Assign a data structure to each layer

# Copy your list from above, and write what data structure each layer should have
# => an object called drivers
# => each driver is the key and value is an array
# => within each value (array) there is an object for each ride - the key/value pairs are the date, cost, rider and rating data.
########################################################
# Step 3: Make the data structure!

# Setup the data strcture and manually write in data presented in rides.csv

drivers = {
  :dr0001 => [
    {:date => "3rd Feb 2016", :cost => 10, :rider_id => "RD0003", :rating => 3},
    {:date => "3rd Feb 2016", :cost => 30, :rider_id => "RD0015", :rating => 4},
    {:date => "5th Feb 2016", :cost => 45, :rider_id => "RD0003", :rating => 2}
  ],
  :dr0002 => [
    {:date => "3rd Feb 2016", :cost => 25, :rider_id => "RD0073" , :rating => 5},
    {:date => "4th Feb 2016", :cost => 15, :rider_id => "RD0013", :rating => 1},
    {:date => "5th Feb 2016", :cost => 35, :rider_id => "RD0066", :rating => 3}
  ],
  :dr0003 => [
    {:date => "4th Feb 2016", :cost => 5, :rider_id => "RD0066", :rating => 5},
    {:date => "5th Feb 2016", :cost => 50, :rider_id => "RD0003", :rating => 2}
  ],
  :dr0004 => [
    {:date => "3rd Feb 2016", :cost => 5, :rider_id => "RD0022", :rating => 5},
    {:date => "4th Feb 2016	", :cost => 10, :rider_id => "RD0022", :rating => 4},
    {:date => "5th Feb 2016	", :cost => 20, :rider_id => "RD0073", :rating => 5}
  ]
}
########################################################
# Step 4: Total Divers Earnings and Number of Rides


# Use an iteration block to print driver's total rides and money made

drivers.each do |driver, driver_records|
  total = 0
  # puts "Driver #{driver} gave #{driver_records.length} rides."
  driver_records.each do |record|
    total = total + record[:cost]
  end
  ride_average = total.to_f / driver_records.length
  puts "Driver #{driver} gave #{driver_records.length} rides and made a total of $#{total}. Their average was $#{'% .2f' % ride_average}."
  puts "*" * 10
end
