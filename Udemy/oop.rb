class Student

  attr_accessor :name, :email, :password, :major

  def initialize(name, email, password, major)
    @name = name
    @email = email
    @password = password
    @major = major
  end
end

student1 = Student.new("Runner", "mintheinkyaw",  "Third Year", "CS")