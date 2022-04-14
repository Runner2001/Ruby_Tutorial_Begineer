class Animal
    def initialize(name)
        @name = name
    end
end

class Cat < Animal
    def initialize(name, age)
        super(name)
        @age = age
    end
    def out_put
        puts "Name is #{@name} & Age is #{@age}"
    end
end

cat1 = Cat.new("kitty", 12)
cat1.out_put