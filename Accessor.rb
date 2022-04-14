=begin
Ruby has a built-in way to automatically 
create these getter and setter methods 
using the attr_accessor method. 

for getter method we can use attr_reader
for setter method we can use att_writer
for both we can use att_accessor
=end

class Person
    attr_accessor :name, :age, :work
    def initialize(name, age, work)
        @name = name
        @age = age
        @work = work
    end
    def change(n,a)
        self.name = n
        self.age = a
    end
    def show
        puts "Name is #{self.name}, age is #{self.age}"
    end
end

people1 = Person.new("Runner", 21, "IT support")
people1.show
people1.change("Min Thein", 22)
people1.show