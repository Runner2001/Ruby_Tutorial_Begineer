=begin
OpenStruct (or OStruct) acts very similarly to Struct, except that it doesn't have
 a defined list of attributes.To use OStruct, we need to include the 
 corresponding library using the require statement. 
=end

require "ostruct"

person = OpenStruct.new
person.name = "Jhon"
person.age = 20
person.work = "IT Support"

puts person.name

# Another Way

people = OpenStruct.new(name: "Runner", age: 21, work: "IT Soluation")
puts people.name