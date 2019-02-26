
# your solution here

lines = {
red_line:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
green_line:["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
orange_line: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],

}
$intersect = "Park Street"

def stops_between_stations (start_stop, start_station, end_stop, end_station)
if start_stop == end_stop
  return (start_stop.index(start_station) - end_stop.index(end_station))
   else
     return  (start_stop.index(start_station) - start_stop.index($intersect)) + (end_stop.index(end_station) - end_stop.index($intersect))

end
end

puts "starting line"
start_stop = gets.chomp.downcase 
puts "starting station?"
start_station = gets.chomp.downcase
puts "ending line?"
end_stop = gets.chomp.downcase
puts "ending station?"
end_station = gets.chomp.downcase




