# Calculate : Total Divers Earnings and Number of Rides
# Last Edited 8/13/17

ride_share = {
  "dr0001" => [
                {"date" => "3rd feb 2016", "cost" => 10, "rider_id" => "RDOO03", "rating" =>  3},
                {"date" => "3rd feb 2016", "cost" => 30, "rider_id" => "RDOO15", "rating" =>  4},
                {"date" => "5th feb 2016", "cost" => 45, "rider_id" => "RDOO03", "rating" =>  2}
              ],
  "dr0002" => [
                {"date" => "3rd Feb 2016", "cost" => 25, "rider_id" => "RDOO73", "rating" =>  5},
                {"date" => "4th Feb 2016", "cost" => 15, "rider_id" => "RDOO13", "rating" =>  1},
                {"date" => "5th Feb 2016", "cost" => 35, "rider_id" => "RDOO66", "rating" =>  3}
              ],
  "dr0003" => [
                {"date" => "4th Feb 2016", "cost" =>  5, "rider_id" => "RDOO66", "rating" =>  5},
                {"date" => "5th Feb 2016", "cost" => 50, "rider_id" => "RDOO03", "rating" =>  2}
              ],
  "dr0004" => [
                {"date" => "3rd Feb 2016", "cost" =>  5, "rider_id" => "RDOO22", "rating" =>  5},
                {"date" => "4th Feb 2016", "cost" => 10, "rider_id" => "RDOO22", "rating" =>  4},
                {"date" => "5th Feb 2016", "cost" => 20, "rider_id" => "RDOO73", "rating" =>  5}
              ]
              }

# puts rideshare  #test
# puts ride_share["dr0001"][0]["date"]  #test

# counters for # of rides and cost of rides
ride_count    = 0
ride_cost     = 0

# calculate total driver earnings and number of rides
  ride_share.each do |key,value|
    value.each do |v2|
      ride_cost += v2["cost"]
      ride_count += 1
      # puts "#{v2["cost"]}"  #test
      # puts "#{v2["date"]}"  #test
    end
    puts ride_count
    puts ride_cost
  end
