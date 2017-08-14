########################################################
# Step 1: Establish the layers

Layer One: Drivers 
Layer Two: Rides
Layer Three: Ride Specifics (Date, Cost, Riders, Rating)


########################################################
# Step 2: Assign data structure to each layer

Layer One: Drivers -- Hash with Driver ID's as keys and Rides (next layer) as values.
Layer Two: Rides -- Array containing all the rides for the Driver. 
Layer Three: Ride Specifics (Date, Cost, Riders, Rating) -- Hash with Date/Cost/Rider/Rating as the keys and the specific information for each ride as the values. 


########################################################
# Step 3: Make the data structure!

drivers = {

:DR0001 => [
  {:date => "2/3/2016", :cost => 10, :rider => "RD0003", :rating => 3},
  {:date => "2/3/2016", :cost => 30, :rider => "RD0015", :rating => 4},
  {:date => "2/5/2016", :cost => 45, :rider => "RD0003", :rating => 2}
],

:DR0002 => [
  {:date => "2/3/2016", :cost => 25, :rider => "RD0073", :rating => 5},
  {:date => "2/5/2016", :cost => 35, :rider => "RD0066", :rating => 3},
  {:date => "2/4/2016", :cost => 15, :rider => "RD0013", :rating => 1}
],

:DR0003 => [
  {:date => "2/4/2016", :cost => 5, :rider => "RD0066", :rating => 5},
  {:date => "2/5/2016", :cost => 50, :rider => "RD0003", :rating => 2},
],

:DR0004 => [
  {:date => "2/4/2016", :cost => 10, :rider => "RD0022", :rating => 4},
  {:date => "2/3/2016", :cost => 5, :rider => "RD0022", :rating => 5},
  {:date => "2/5/2016", :cost => 20, :rider => "RD0073", :rating => 5}
  ]
}


########################################################
# Step 4: Total Drivers Earnings and Number of Rides

drivers.each do |id, rides|
  driver_total = 0
  driver_ratings = 0
  rides.each_with_index do |ride, index|
    driver_total += rides[index][:cost]
    driver_ratings += rides[index][:rating]
  end
  puts "Drier ID: #{id}\t Total Earnings: $#{driver_total}\t Ride Count: #{rides.length}\t Average Rating: #{(driver_ratings/rides.length.to_f).round(1)}"
end
