puts "Enter a number: "
input = gets.chomp.to_i
puts "Enter exponent: "
y = gets.chomp.to_i
cycle = Array.new

sum=0
num = input
 while sum != input
	sum=0
	newNum = num.to_s.split('')
	newNum.each do |x|
		sum += x.to_i**y
	end
   
	cycle << sum
	num = sum
	print "#{sum} ,"
		
end
	

print cycle