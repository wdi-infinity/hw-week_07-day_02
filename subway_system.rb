
# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the journey and the total number of stops for the trip in the console:
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
# "You must travel through the following stops on the Red line:"
# "South Station and Park Street"
# "Change at Park Street."
# "Your trip continues through the following stops on Green Line:" 
# "Boylston, Arlington, Copley, Hines, and Kenmore."
# "7 stops in total."
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# Green line
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
# All 3 subway lines intersect at Park Street, but there are no other intersection points.


# 1. create an array for the red line
red_staiton = ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
green_staion = ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"]

# function for one line
def subway_metro(red_staiton,start_point,,end_point)
   
    count_number_of_steps = 0
    # 2. get the index of the start
    from_index = red_staiton.index(start_point)
    # 3. get the index of the last
    to_index = red_staiton.index(end_point) 
    # If the start index less than the end index Go forward
    if from_index < to_index 
    for i in from_index...to_index
        count_number_of_steps+=1
    end
    # If the start index greater than the end index Go backward
    else 
    for i in to_index...from_index
        count_number_of_steps+=1  
    end
    end
    puts "hi #{count_number_of_steps}" 
end

#  subway_metro(red_staiton,"Alewife","South Station")

# function for two staions
def subway_metro_two_staions(red_staiton,start_point,green_staion,end_point)
    # call the subway_metro metro
    subway_metro(red_staiton,start_point,"Park Street")
    subway_metro(green_staion,"Park Street",end_point)
end


# subway_metro_two_staions(red_staiton,"South Station",green_staion,"'Kenmore'")






