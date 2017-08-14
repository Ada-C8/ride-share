#ride-share program
rides_csv = {
	"DR0001" => [
		{date: "3rd Feb 2016", cost: 10, rider_id: "RD0003", rating: 3},
		{date: "3rd Feb 2016", cost: 30, rider_id: "RD0015", rating: 4},
		{date: "5th Feb 2016", cost: 45, rider_id: "RD0003", rating: 2}
	],
	"DR0002" => [
		{date: "3rd Feb 2016", cost: 25, rider_id:"RD0073", rating: 5},
		{date: "4th Fev 2016", cost: 15, rider_id: "RD0013", rating: 1},
		{date: "5th Feb 2016", cost: 35, rider_id: "RD0003", rating: 3 }
	],
	"DR0003" => [
		{date: "4th Feb 2016", cost: 5, rider_id:"RD0066", rating:5},
		{date: "5th Feb 2016", cost: 5, rider_id:"RD0003", rating: 2}
	],
	"DR0004" => [
		{date: "3rd Feb 2016", cost: 5, rider_id: "RD0022", rating: 5},
		{date: "4th Feb 2016", cost: 10, rider_id: "RD0022", rating: 4},
		{date: "5th Feb 2016", cost: 20 , rider_id: "RD0073", rating: 5}
	]
}
rides_csv.each do |driverid, items|
	cost = 0
	rating = 0.0
	items.each do |info|
		cost += info[:cost]
		rating += info[:rating]
	end
	puts "#{driverid} has given #{items.length} rides and has made $#{cost} with an average rating of #{(rating / items.length).round(2)}"
end
