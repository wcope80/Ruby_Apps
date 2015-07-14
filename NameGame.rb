def name_game(name)
	
	if ['a', 'e', 'i', 'o', 'u', 'y'].include?(name[0])
		ame = name
	else
		ame = name[1..-1]
	end	
	puts "#{name.capitalize}, #{name.capitalize} bo B#{ame}"
	puts "Bonana fanna fo F#{ame}"
	puts "Fee fy mo M#{ame}"
	puts "#{name.capitalize}!"

end
print "Enter name: "
nm = gets.chomp

name_game(nm)

