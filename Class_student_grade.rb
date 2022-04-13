class Student
    attr_accessor :name, :major, :grade
    
    def initialize(name, major, grade)
        @name = name
        @major = major
        @grade = grade
    end

    def honor
        if @grade >= 80
            puts ("#{@name} is Pass the Exam with Honor")
        elsif @grade >= 50
            puts ("#{@name} is Pass the Exam")
        else
            puts ("#{@name} is Fail the  Exam")
        end
    end

end

student1 = Student.new("Runner", "CS", 87)
print (student1.honor())

studen2 = Student.new("Mario", "IT", 40)
print (studen2.honor())