class Book
    attr_accessor :title, :author, :paper

    # Initialize is like a constructor
    def initialize(title, author, page)
        @title = title
        @author = author
        @paper = paper

        return puts ("Title Of The Book Is #{@title}\nAuthor Of The Book is #{@author}\nNo Of Paper is #{@paper}")
    end

    # This is custom methods
    def hello
        puts "This is Hello Method"
    end

end

book1 = Book.new("Mario" , "Runner" , 200)
# book1.title = "Mario"
# book1.author = "Runner"
# book1.paper = 200