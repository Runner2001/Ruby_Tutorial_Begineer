class Cat
    attr_accessor :name, :age
    include Comparable

    def initialize(name, age)
        self.name = name
        self.age = age
    end
    def <=>(other)
        self.age <=> other.age
    end
end

c1 = Cat.new("Kitty", 2)
c2 = Cat.new("Shu", 3)

puts c1 < c2