
class NUMBER
	def initialize
		puts "enter your value"
	end

	def perform
		a = gets.to_i
		i = 1
		sum = 0
		while i<=a do
			x = a%i
			if x == 0
				sum = sum + i
			end
			i = i+1
		end

		if sum == a+1
			puts "prime"
		else
			puts " not prime"
		end
	end

end

object = NUMBER.new
object.perform


