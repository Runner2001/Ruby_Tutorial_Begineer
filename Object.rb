Person = {
    "name" => "Runner",
    "age" => 23,
    "school" => "Computer University",
    # :work is same as "work"
    :work => "IT Support",
    :gender => "male",
    1 => "Nothing"
}

puts Person["name"]
puts Person[:work]