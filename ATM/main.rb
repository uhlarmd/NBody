require_relative "user"

Joey = User.new('Joey', 1899, 1000)
puts Joey
Joey.deposit(50)
Joey.withdraw(50)
Joey.login
Joey.withdraw(50)