class Chef
    def make_Food
        puts "He can make Food"
    end
    def make_Decorade
        puts "He can make Decorade"
    end
    def make_Foreign_food
        puts "He can make Foreign Food"
    end
end

# inheritance to Chef class
# italian chef can overwrite Chef methods
class Italian_chef < Chef
    def make_Foreign_food
        puts "He can make 5 Foreign Foods"
    end
    def italian_food
        puts "Italian Chef can make italian food"
    end
end

italian_chef = Italian_chef.new
puts italian_chef.make_Foreign_food
puts italian_chef.italian_food