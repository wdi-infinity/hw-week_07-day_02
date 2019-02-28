$lines{
    "Red"=>["South Station","Park Street","Kendall","Central","Harvard", "Porter","Davis","Alewife"],
    "Green"=>["Government Center", "Park Street", "Boylston","Arlington", "Copley", "Hynes", "Kenmore"],
    "Orange"=>["North Station", "Haymarket", "ParkStreet", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}


def count_stops(line, station1, station2)
    station1_index = line.index(station1)
    station2_index = line.index(station2)

    real_stops = []
    if station1_index <= station2_index
        real_stops = line[station1_index..station2_index]
    else
        real_stops = line[station2_index..station1_index]
    end

    real_stops.length - 1
end

def stops_between_stations(start_line, start_station, end_line, end_stations)

end
