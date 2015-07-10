puts "enter last number: "
x = gets.chomp.to_i
for i in 1..x do
	if i % 3 == 0 && i % 5 == 0
		puts "fizzbuzz"
	elsif i % 5 == 0
		puts "buzz"
	elsif i % 3 == 0 
		puts "fizz"
	else 
		puts "#{i}"
	end
end