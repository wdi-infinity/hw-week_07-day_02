



def getStopsString(line, startStop, endStop) 
    lines = {
  "r" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis" , "Alewife"],
  "g" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley" , "Hynes" , "Kenmore"],
  "o" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay" ,"Forest Hills"]

}
stopsCount =0
  lineArray = lines[line]
   stopsString = ""
  
   startStationIndex = lineArray.index startStop
   endStationIndex = lineArray.index endStop

    if (startStationIndex < endStationIndex)  
      i = startStationIndex + 1 
       while i <= endStationIndex do
      stopsString += lineArray[i] 
      stopsCount += 1
      i +=1
     
       end  
       return puts "numbers of stops are #{stopsCount}"
    else
          i = startStationIndex - 1
       while i >= endStationIndex do
      stopsString += lineArray[i] 
      stopsCount += 1
      i -=1
    
       end
    #    return  puts "numbers of stops are #{stopsCount}"
    return stopsString
   end



end


# getStopsString("r" , "South Station" , "Porter")




def  planTrip(startLine, startStop, endLine, endStop) 
  stopsCount = 0

      if (startLine == endLine) 

       returnedStopsString = getStopsString startLine, startStop, endStop
       puts "You must travel through the following stops on the #{startLine}  line:  #{returnedStopsString} "
      

     else
    # Trip 1 - startStop to Union Square
     returnedStopsStringTrip1 = getStopsString startLine, startStop, "Park Street"
     puts "You must travel through the following stops on the #{startLine}  line:  #{returnedStopsString} "

    # Change at US
     puts "Change at Park Street."

    #Trip 2 - Union Square to endStop

     returnedStopsStringTrip2 = getStopsString(endLine, "Park Street", endStop);
     return  puts "You must travel through the following stops on the #{startLine}  line:  #{returnedStopsString} "
     end

  puts "#{stopsCount} stops in total."
end

planTrip "r", "South Station", "g", "Boylston"
