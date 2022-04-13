puts "Enter Your Ages"
age = gets.chomp().to_i

case age
when 0..16
    puts "You are child"
when 16..24
    puts "You are now adult"
when 24..35
    puts "You are a man"
when 35..100
    puts "Now you are grown man"
else
    puts "Sorry"
end