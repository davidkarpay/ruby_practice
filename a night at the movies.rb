movies = {
    Memento:92,
    American_Hustle:90,
    ET:98,
    Insidious:55,
    Plan_9_From_Outer_Space:65
}
puts "What would you like to do?"
puts "-----To add a movie with its rating, enter \"add\"."
puts "-----To update a movie and its rating, enter \"update\"."
puts "-----To show a movie with its rating, enter \"display\"."
puts "-----To remove a movie from the list, enter \"delete\"."
choice = gets.chomp

case choice
when "add"
    puts "What is the title of the movie you would like to add?"
    title = gets.chomp.to_sym
    if movies[title] = nil?
        puts "What is the rating for #{title}?"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "You have added #{title} and given it a rating of #{rating}."
    else
        puts "#{title} already exists with a rating of #{rating}."
    end
when "update"
    puts "Which title would you like to update?"
    title = gets.chomp.to_sym
    if movies[title] = nil?
        puts "That movie does not exist. Try running this program again to add it."
    else
        puts "What rating would you like to give #{title}?"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "You have updated #{title} and given it a rating of #{rating}."
    end
when "display"
    movies.each do |k, v| 
        puts "#{k}: #{v}"
    end
when "delete"
    puts "Which title would you like to delete?"
    title = gets.chomp.to_sym
    if movies[title] = nil?
        puts "I'm sorry, but I don't have that movie. Try adding it."
    else
        puts "Are you sure you want to delete #{title}?"
        y_n = gets.chomp.downcase
        if y_n == "yes"
            movies.delete(title)
            puts "Deleted #{title} from list of movies."
        else
            puts "Alright. I won't delete #{title}."
        end
    end
else
    puts "I'm sorry, I don't know what #{choice} means."
end
