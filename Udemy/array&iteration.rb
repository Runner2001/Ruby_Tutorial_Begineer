range = 1..10

# to_a mean change to array
array = range.to_a

# add item to array
array << 11

puts array.empty?
puts array.include?(2)

puts array.join("-")
puts array.split("-")

puts array.first
puts array.last


# array iteration
array.each do
  |item|
  print item + " "
end

array.each{|item| print item + " "}


z = (1..100).to_a.shuffle
puts z.select { |item| item.odd?  }



# tips
# this will show all of the array methods that can use out of the box
puts z.methods
