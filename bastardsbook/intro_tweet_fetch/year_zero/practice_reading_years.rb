require "open-uri"
start_year = 1988
end_year = 2014
remote_base_url = "http://en.wikipedia.org/wiki/"
compilation_file = open("copy_of_#{start_year}-#{end_year}.html", "w")

(start_year..end_year).each do |y|
#	url = open("#{remote_base_url}#{y}")
#	text = url.read
	text = open("#{remote_base_url}#{y}").read
	compilation_file.write(text)
	puts "Copied #{y}'s wikipedia page to file."
end
