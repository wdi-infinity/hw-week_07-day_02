# i love MTA so much! it so fun to solve it! its make me remember my firs weeks at GA and my first WDI AI Mouath <3
$lines = {
  "red" => ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
  "green" => ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
  "orange" => ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}

$num_of_stops = 0;
$result = "\n\n" #this is the output that the user shoud see
$flag = false 
=begin
this flag above, to determine if the user switches to the other line or not yet! this piece of info helps me to display
the name of stops for the NEW line ONLY without the common stop between lines, which is here "Park Street"! 
=end

def stops_between_stations(start_line, start_station, end_line, end_station)

if start_line == end_line # Stops in same line
$result += "You must travel through the following stops on the #{start_line.split.map(&:capitalize).join(' ')} Line:\n"
stops_for_one_line(start_line, start_station, end_station)
$result += "#{$num_of_stops} stops in total."
puts $result

else # Stops NOT in same line
   
   $result += "You must travel through the following stops on the #{start_line.split.map(&:capitalize).join(' ')} Line:\n"
   stops_for_one_line(start_line, start_station, "Park Street")
   $result += "Change at Park Street.\n"
   $result += "Your trip continues through the following stops on #{end_line.split.map(&:capitalize).join(' ')} Line:\n"
   $flag = true # flags set to true to knew that the user is about to switch the lines
   stops_for_one_line(end_line, "Park Street", end_station)
   $result += "#{$num_of_stops} stops in total. \n\n"
   puts $result

end

end

def stops_for_one_line(line, start_station, end_station)
    line_arr = $lines[line] #assign the corresponding line
    start_station_index = $lines[line].index(start_station) #find the index of start_station in the line array
    end_station_index = $lines[line].index(end_station) #find the index of end_station in the line array
    stations = [] #array for stations the user must travel through in this line!
    if start_station_index < end_station_index
        stations = line_arr[start_station_index .. end_station_index]
        if $flag #this is means If the user switch the lines then Delete the first element of stations array! bucuse it is a "Park Street" the common stop!
            stations.shift 
        end
        $num_of_stops += end_station_index - start_station_index
        else
        stations = line_arr[end_station_index .. start_station_index].reverse
        $num_of_stops += start_station_index - end_station_index
        if $flag #this is means If the user switch the lines then Delete the first element of stations array! bucuse it is a "Park Street" the common stop!
            stations.shift 
        end
    end
# this loop for printing the stations name to the user!
    stations.each do |element|
        if stations.last == element #will yeah I have the perfect output syndrome :)! this is to check if it is a last element or not to print "." at the end.
            $result += element +". \n"
        else
            $result += element +", "
        end
    end
end 

# this method to check the user line name input if it really exist in my data dictionary "hash" or NOT!
def check_line(line, position)
    while !$lines.has_key?(line) do
    puts "Sorry no such line!, Enter your #{position} line again:"
    line = gets.chomp.downcase # i convert the user line name input to downcase to make it mach my data! 
    end
    line
end
# this method to check the user station name input if it really exist in my data dictionary "hash" or NOT!
def check_station(station, line, position)
    while !$lines[line].include?(station) do
    puts "Sorry no such station!, Enter your #{position} station again:"
    station= gets.chomp.split.map(&:capitalize).join(' ') # i capitalize the user station name input to make it mach my data! 
    end
    station
end


puts "Enter your start line:"
start_line = check_line(gets.chomp.downcase, "start")

puts "Enter your start station:"
start_station= check_station(gets.chomp.split.map(&:capitalize).join(' '), start_line, "start")

puts "Enter your end line:"
end_line = check_line(gets.chomp.downcase, "end")

puts "Enter your end station:"
end_station = check_station(gets.chomp.split.map(&:capitalize).join(' '), end_line, "end")

stops_between_stations(start_line, start_station, end_line, end_station)

# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6