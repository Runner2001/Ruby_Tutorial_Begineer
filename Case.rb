puts "Enter Day With Shortcut"
day = gets.chomp.downcase

case day
when "mon"
    day_name = "Monday"
when "tue"
    day_name = "Tueday"
when "web"
    day_name = "Webday"
when "thu"
    day_name = "Tusday"
when "fir"
    day_name = "Friday"
when "sat"
    day_name = "Saturday"
when "sun"
    day_name = "Sunday"
else
    day_name = "Wrong Entering"
end

puts "Now Your Enter Is Change to #{day_name}"