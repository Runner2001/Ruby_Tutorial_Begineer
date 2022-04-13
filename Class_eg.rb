class Account
    attr_reader :name
    attr_reader :balance
  
    def initialize(name, balance = 100)
      @name = name
      @balance = balance
    end

    public
    def display_balance(pin_number)
      if pin_number == 1234
           puts "Balance is: $#{@balance}"
      else
          puts pin_error
      end
    end
  
    public
    def pin
      @pin = 1234
    end
  
    private
    def pin_error
      return "Access denied: incorrect PIN."
    end
  
end

create = Account.new("min", 200)
create.display_balance(1234)



