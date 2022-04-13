for x in (0...10) do
    puts x 
    break if x == 8 # if x is equal to 8 for loop will break down
end

x = 10

if x == 10
    puts "Hello"
else
    puts "Sorry"
end

# Shortcut way for above if
puts x == 10 ? "Hello" : "Sorry"