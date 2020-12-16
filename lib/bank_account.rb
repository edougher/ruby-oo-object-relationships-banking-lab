class BankAccount
attr_reader :name
attr_accessor :balance, :status

#@@all = []

def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"

    #@@all << self
end

def deposit(ammount)
    @balance += ammount
end

def display_balance
    "Your balance is $#{@balance}."
end

def valid?
    @balance > 0 && status == "open"
end

def close_account
    @status = "closed"
end

# def self.all 
#     @@all
# end


end
