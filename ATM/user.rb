class User
	
	attr_accessor :name, :pin, :balance

	def initialize(name, pin, balance, login = 0)
		@name = name
		@pin = pin
		@balance = balance
		@login == 0
	end

	def login
		puts "Please input your pin:"
		pin = gets
		if pin = @pin
			puts "Hello #{name}, you have a balance of #{balance} dollars"
			@login = 1
		end
	end

	def to_s
		"#{name} your pin is #{pin} and you have a balance of #{balance}"
	end

	def deposit(amount)
		if @login == 1
			@balance = @balance + amount
			puts "You have deposited #{amount} dollars"
			puts "#{name} your new balance is #{@balance} dollars"
		else
			puts "Please log in first"
		end	
	end

	def withdraw(amount)
		if @login == 1
			@balance = @balance - amount
			puts "#{name} you have withdrawn #{amount} dollars."
			puts "Your new balance is #{@balance} dollars"
		else
			puts "Please log in first"
		end
	end
	

end