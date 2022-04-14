class People
    
    def initialize(name)
        @name = name
    end

    # This is getter methods
    def get_name
        @name
    end

    # This is setter methods
    def set_name=(name)
        @name = name
    end
end

first_person = People.new("Runner")
puts first_person.get_name
first_person.set_name = "Min Thein Kyaw"
puts first_person.get_name