

# (Park Street) => Kendall => Central => Harvard => Porter => Davis => Alewife 
# Government Center => (Park Street) => Boylston => Arlington => Copley => Hynes => Kenmore
# North Station => Haymarket=> (Park Street)=> State=> Downtown Crossing=>Chinatown=> Back Bay=>Forest Hills 

# puts 'which staion you are at?'
# beg_staion = gets.chomp
# puts 'which staion you stopping at?'
# stop_station = gets.chomp

def stops_between_stations (start_line,start_staion ,end_line, end_station )
   
    lines{
 red =[ 'South Station','Park Street', 'Kendall','Central','Harvard', 'Porter', 'Davis', 'Alewife']
green = ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes','Kenmore']
orange =['North Station','Haymarket','Park Street','State','Downtown Crossing','Chinatown','Back Bay','Forest Hills']
    }
    

      # return "You have #{start_station - red_line.index("South Station")} to go " 
        if start_line == end_line # Both dests are in in same line 
            return start_line.index(start_staion) - end_line.index(stop_station) # i'd use abs = absloute here to avoid negative values 

        else puts 'I have no clue what to do here -.-'
       
        end 
        
    end 

 puts stops_between_stations red , 'Kendall' , red , 'South Station'


 # failed attempts
# for line_one in red_line do
#   puts line_one
# end

# red.index("Alewife") - red.index("South Station")

# for line_two in green_line do
#   puts line_two
# end

# for line_three in orange_line do
#   puts line_three
# end
# intersection ==> Park street 
# stops_between_stations 