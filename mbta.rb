red_line = ["South Station",
            "Park Street",
            "Kendall",
            "Central",
            "Harvard", 
            "porter", 
            "Davis", 
            "Alewife"]
green_line = ["Goverment Center",
            "Park Street",
            "Boylston",
            "Arlington",
            "Copley", 
            "Hynes", 
            "Kenmore"]
orange_line = ["North Station",
            "Haymarket",
            "Park Street",
            "State",
            "Downtown Crossing", 
            "Chinatown", 
            "Back Bay",
            "Forst Hills"]
# your solution here
def stops_between_stations(startLine, startStation, endLine, endStation)
    # stops = 0
    if startLine == endLine
        stops = (startLine.index(startStation) - startLine.index(endStation)).abs
        puts stops
        if startLine.index(startStation) > startLine.index(startStation)
            for i in startLine.index(startStation)..startLine.index(endStation)
                puts startLine[i]
            end
        else
            for i in startLine.index(endStation)..startLine.index(startStation)
                puts startLine[i]
            end
        end
    else 
        start = (startLine.index(startStation) - startLine.index("Park Street")).abs
        final = (endLine.index(endStation) - endLine.index("Park Street")).abs
        stops = (start - final).abs
        puts stops
    end
end

stops_between_stations red_line, 'Alewife', red_line, 'Alewife'
stops_between_stations red_line, 'Alewife', red_line, 'South Station' 
stops_between_stations red_line, 'South Station', green_line, 'Kenmore'