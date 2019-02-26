
$lines = {
  "Red" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
  "Green" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
  "Orange" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}
# $intersect = "Park Street"

def stops_between_stations(line_one,start_station,line_two,end_station)
  start = $lines[line_one].index(start_station)
  end_s = $lines[line_two].index(end_station)
  msg = "You must travel through the following stops on the #{line_one} line: "
  if line_one == line_two
      if start>end_s
        start.downto(end_s) {|i| msg += "#{$lines[line_one][i]}, "}
      else
        start.upto(end_s) {|i| msg += "#{$lines[line_one][i]}, "}
      end
      msg += "and total Stops #{(start-end_s).abs}"
      return msg

      else 
       
        intersect_one = $lines[line_one].index("Park Street")

        if start>intersect_one
        start.downto(intersect_one) {|i| msg += "#{$lines[line_one][i]}, "}
      else
        start.upto(intersect_one) {|i| msg += "#{$lines[line_one][i]}, "}
      end
      msg += "Change at Park Street. Your trip continues through the following stops on #{line_two} line: "
        intersect_two = $lines[line_two].index("Park Street")
        # intersect_two-=1
        if intersect_two>end_s
        intersect_two.downto(end_s) {|i| msg += "#{$lines[line_two][i]}, "}
      else
        intersect_two.upto(end_s) {|i| msg += "#{$lines[line_two][i]}, "}
      end

        trip_one = (start - intersect_one).abs
        trip_two = (end_s - intersect_two).abs
        return "#{msg} #{trip_one+trip_two}"
    end

end




p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')
# p stops_between_stations(red_line, 'Alewife', red_line, 'South Station')
# p stops_between_stations red_line, 'Kendall', orange_line, 'Downtown Crossing'