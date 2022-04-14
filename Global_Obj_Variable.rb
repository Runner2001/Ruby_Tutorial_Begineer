class Person
    @@count = 0
    def initialize
        @@count += 1
    end
    def self.get_count
        @@count
    end
end

people1 = Person.new
people2 = Person.new

puts Person.get_count