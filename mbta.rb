# One subway, all of the lines for that subway
class Subway
    attr_reader :lines
  
    def initialize(lines, intersection_stop)
      @lines = lines
      @intersection_stop = intersection_stop
    end
  
    def stops_between_stations(start_line_input, start_station_input, end_line_input, end_station_input)
        # find start and end line
        start_line = @lines.find {|line| line.name == start_line_input}
        end_line = @lines.find {|line| line.name == end_line_input}
        # find index of start station and end station
        start_station_index = start_line.stations.index {|station| station.name == start_station_input}
        end_station_index = end_line.stations.index {|station| station.name == end_station_input}

        # if same line then 
        if start_line.name === end_line.name
            # return difference between start station and end station index
            (start_station_index - end_station_index).abs
        # if between two lines
        else
            # get index of intersection stop for start and end line
            intersection_start_index = start_line.stations.index {|station| station.name == @intersection_stop}
            intersection_end_index = end_line.stations.index {|station| station.name == @intersection_stop}
            # return distance between start station and intersection station 
            # plus distance between end station and intersection station
            (start_station_index - intersection_start_index).abs + (end_station_index - intersection_end_index).abs
        end
    end
  end
  
# One line, all the stations on that line
class Line
    attr_reader :stations
    attr_reader :name

    def initialize(name, stations)
        @name = name
        @stations = stations
    end
end

# One station
class Station
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

# create stations for lines
red_stations = ['South Station', 'Park Street', 'Kendall', 
            'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'].map {|name| Station.new(name)}
green_stations = ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 
            'Arlington', 'Copley', 'Hynes', 'Kenmore'].map {|name| Station.new(name)}
orange_stations = ['South Station', 'Park Street', 'Kendall', 'Central', 
                    'Harvard', 'Porter', 'Davis', 'Alewife'].map {|name| Station.new(name)}

# create lines for a subway
lines = [Line.new('Red', red_stations), Line.new('Green', green_stations), Line.new('Orange', orange_stations)]  

# create a subway
mbta = Subway.new(lines, 'Park Street')

# distance when same stop
puts mbta.stops_between_stations('Red', 'Kendall', 'Red', 'Kendall')

# distance when same line
puts mbta.stops_between_stations('Red', 'Kendall', 'Red', 'South Station')

# distance when between two lines
puts mbta.stops_between_stations('Red', 'Kendall', 'Green', 'Kenmore')