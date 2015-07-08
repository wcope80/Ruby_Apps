movies = {Snatch: "5"}

loop do
	puts "Make a choice: "
	choice = gets.chomp.downcase

	case choice
	when "exit"
		break
	when "help"
		puts "add, update, display, delete, exit"
	when "add"
		puts "Movie Title: "
		title = gets.chomp
		puts "Rating: "
		rating = gets.chomp.to_i
		if movies[title.to_sym] = nil
			movies[title.to_sym] = rating
		else
			puts "#{title} already exists." 
		end
	when "update"
		puts "Enter title to update"
		title = gets.chomp.to_sym
		if movies[title] = nil
			puts "#{title} does not exist"
		else
			puts "enter new rating for #{title}: "
			rating = gets.chomp.to_i
			movies[title]  = rating
		end
    
	when "display"
		movies.each do |title, rating|
			puts "#{title}: #{rating}"    
		end

	when "delete"
		puts "enter movie to delete"
		title = gets.chomp.to_sym
		if movies[title] = nil
			puts "no movie by that name"
		else
			movies.delete(title)
		end
	else
		puts "not a valid command, type help for list of commands"
	end
end