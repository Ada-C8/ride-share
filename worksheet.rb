########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
#3 separate layers; drivers, driver id, driver ride info
########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
   #Drivers = hash, driver id = array, info = hash
########################################################
# Step 3: Make the data structure!

    # Setup the data structure and manually write in data presented in rides.csv
    drivers_all = {

          DR0001: [
            {date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
            {date: "3rd Feb 2016", cost: 30,rider_id: "RD0015",rating: 4},
            {date: "5rd Feb 2016", cost: 45,rider_id: "RD0003",rating: 2}],

          DR0002: [
            {date: "3rd Feb 2016", cost: 25, rider_id: "RD0073", rating: 5},
            {date: "4rd Feb 2016", cost: 15,rider_id: "RD0013",rating: 1},
            {date: "5rd Feb 2016", cost: 35,rider_id: "RD0066",rating: 3}
          ],

          DR0003: [
            {date: "4rd Feb 2016", cost: 5,rider_id: "RD0066",rating: 5},
            {date: "5rd Feb 2016", cost: 50,rider_id: "RD0003",rating: 2}
          ],
          DR0004: [
            {date: "4rd Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
            {date: "3rd Feb 2016", cost: 5,rider_id: "RD0022",rating: 5},
            {date: "5rd Feb 2016", cost: 20,rider_id: "RD0073",rating: 5}
          ]}
########################################################
# Step 4: Total Divers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made


drivers_all.each do |driver_id, driver_info|
  money_made = 0
  ride_num = 0
  ave_rate = 0
  puts
  puts "#{driver_id} gave "
    driver_info.each do |ride|
      ride_num = driver_info.length
        ride.each do |info_type, value|
          if info_type == :cost
            money_made += value.to_i
          end

          if info_type == :rating
            ave_rate += value.to_f
          end
        end
      end
      ave_rate = ave_rate / ride_num
      puts "#{ride_num} rides, "
      puts "and made #{money_made} dollars."
      puts "Their average rating is #{ave_rate}."
  end
