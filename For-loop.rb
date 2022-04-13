for num in 1...10 do
    puts num
end

# Different between .. and ... is ... means between .. mean <= >= 

for num in 1..10 do
    puts num
end

# Loop 
i = 20
loop do
    i -= 1
    puts "#{i}"
    break if i <= 0
end


array = ["runner" , "zed" , "gragas" , "ahri" , "nasus"]

for item in array
    puts item.capitalize!
end

array.each do |item|
    puts item
end

# can use Integer Number For Loop
6.times do |data|
    puts data
end