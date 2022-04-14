# Hashes
ages = {
        "Runner" => 21,
        "Min" =>    20
        "Zed" => 18
}

# Symbols
people1 = {
    :name => "Runner",
    :age => 21,
    :work => "IT Support"
}
puts people1[:name]

# This is shorter way of above
people2 = {
    name : "Runner",
    age : 21
    work : "IT Support"
}
puts people2[:name]


# Nested hashes
cars = {
    bmw: { year:2016, color:"red"},
    mercedes: { year:2012, color:"black"},
    porsche: { year:2014, color:"white"}
}

puts cars[:bmw][:color]


# There are useful methods available for manipulating hashes:
# hash.delete(key) removes the key-value pair from hash by key.
# hash.key(value) returns the key for the given value in hash, nil if no matching value is found.
# hash.invert creates a new hash, reversing keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
# hash.keys returns a new array with keys from hash.
# hash.values returns a new array containing all the values of hash.
# hash.length returns the length of hash as an integer. 