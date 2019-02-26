
# your solution here

def one_line_stops(line, start_stop, end_stop) 

lines = {
"red line" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
"green line" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
"orange line" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}

stops_counter = 0

  lineArray = lines[line]
station_name = ""

   start_stop_index = lineArray.index start_stop
   end_stop_index = lineArray.index end_stop

    if (start_stop_index < end_stop_index)  
      i = start_stop_index + 1 
       while i <= end_stop_index do
      station_name += lineArray[i] 
      stops_counter += 1
      i +=1
     
       end  
       return stops_counter}
    else
          i = start_stop_index - 1
       while i >= end_stop_index do
      station_name += lineArray[i] 
      stops_counter += 1
      i -=1
    
       end
       return  stops_counter
    # return station_name
   end



end

def stops_between_stations(start_line,start_stop,end_line, end_stop)
    lines = {
"red line" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
"green line" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
"orange line" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}
  lineArray = lines[line]
station_name = ""

   start_stop_index = lineArray.index start_stop
   end_stop_index = lineArray.index end_stop
stops_counter = 0
station_name = ""

    if start_line == end_line
        trip = one_line_stops(start_line, start_stop,end_stop)
           puts "your total stops are #{ trip } stops"
        else
           first_trip =  one_line_stops(start_line, start_stop, "Park Street") 
           second_trip = one_line_stops(end_line, "Park Street", end_stop)
           total_stops = first_trip + second_trip
           puts "your total stops are #{ total_stops } stops"

        end 
    end


